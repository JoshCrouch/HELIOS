/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: hw_control.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Low level control and initialization of the synthesizer hardware
 *
 */ 


#include <avr/io.h>

#include "hw_control.h"
#include "globals.h"
#include "system_init.h"

#include <util/delay.h>




/*
************************************************************************************************************************************************
SPI initialization. The hardware uses two wire SPI (transmit only) between the processor and various peripherals, which are addressed by 
dedicated chip select lines.
*/

void spi_init(void)
{
	PORTA.DIRSET = PIN4_bm | PIN6_bm;														// Configure SDA and SCK lines as outputs
	PORTA.DIRCLR = PIN5_bm;																	// Configure (unused) SDI pin as input
	PORTA.DIRCLR = PIN7_bm;																	// Configure (unused) SS pin as input
	
	SPI0.CTRLA |=    SPI_MASTER_bm;															// Configure as master
	SPI0.CTRLA |=    SPI_PRESC_DIV4_gc;														// Set prescaler to divide by 4
	SPI0.CTRLA |=    SPI_CLK2X_bm;															// and enable doubler, i.e., SPI clock frequency is 1.25 MHz
	SPI0.CTRLA &=   ~SPI_DORD_bm;															// Select MSB first transmission as default
	
	SPI0.CTRLB |=    SPI_SSD_bm;															// Disable slave select (SS) pin
	SPI0.CTRLB &=   ~SPI_BUFEN_bm;															// Select normal (unbuffered) mode
	SPI0.CTRLB &= ~( SPI_MODE0_bm | SPI_MODE1_bm );											// Clock line low idle, sample on rising edge (SPI mode 0)
	
	SPI0.CTRLA |=    SPI_ENABLE_bm;															// Enable SPI
}


static void spi_output_reg(uint8_t *addr_ptr, uint8_t len, uint8_t ord)						// Write len bytes from address starting at addr_ptr to the SPI interface with order ord,
{																							// where ord=0: transmit most significant byte first; ord=1: transmit least significant byte first
	if(!len)
		return;
	if(ord)																					// Transmit data LSB first?
	{
		SPI0.CTRLA |= SPI_DORD_bm;															// Transmit byte LSB first
		for( int8_t i = 0; i < len; i++ )
		{
			SPI0.DATA = *(addr_ptr + i);													// Write to SPI data register beginning at addr_ptr (the AVR is little endian)
			while( !(SPI0_INTFLAGS & SPI_IF_bm) )											// Wait until data is exchanged
				;
		}
	}
	else																					// Transmit data MSB first
	{
		SPI0.CTRLA &= ~SPI_DORD_bm;															// Transmit byte MSB first		
		for( int8_t i = len-1; i >= 0; i-- )	
		{
			SPI0.DATA = *(addr_ptr + i);													// Write to SPI data register beginning at addr_ptr + len - 1 (the AVR is little endian)
			while( !(SPI0_INTFLAGS & SPI_IF_bm) )											// Wait until data is exchanged
				;
		}
	}
}




/*
************************************************************************************************************************************************
Port configuration for devices under control
*/

// Define pin number bit masks for hardware connected to the controller
// Chip enable, reset and update lines:
#define SLE					PIN0_bm
#define MPLL_CS				PIN1_bm
#define	DDS_CS				PIN2_bm
#define REFPLL_CS			PIN3_bm
#define DAC_CS				PIN0_bm
#define DDS_UPDATE			PIN4_bm
#define DDS_RESET			PIN5_bm

// Harmonic filter:
#define HFILTER0			PIN1_bm
#define HFILTER1			PIN2_bm
#define HFILTER2			PIN3_bm
#define HFILTER_BYPASS		PIN7_bm

// Attenuator:
#define ATTEN_D0			PIN0_bm
#define ATTEN_D1			PIN1_bm
#define ATTEN_D2			PIN2_bm
#define ATTEN_D3			PIN3_bm
#define ATTEN_LE			PIN4_bm

// Reference mode selection lines:
#define INT_SEL				PIN5_bm
#define EXT_SEL				PIN6_bm

// USB bridge:
#define USB_RESET			PIN0_bm

// Status indicator lines
#define REFPLL_LOCK			PIN4_bm
#define MPLL_LOCK			PIN5_bm
#define MPLL_MUX			PIN6_bm
#define UNLVLD				PIN7_bm

// Status LEDs
#define STSLED_1			PIN0_bm
#define STSLED_2			PIN1_bm
#define FPLED_RED			PIN2_bm
#define FPLED_GREEN			PIN3_bm


// Define port connections
#define DDS_PORT			PORTB
#define PLL_PORT			PORTB
#define REFPLL_PORT			PORTB
#define DAC_PORT			PORTE
#define HFILTER_PORT		PORTC															// Harmonic filter
#define BYPASS_PORT			PORTD															// Bypass switch for harmonic filter
#define ATTEN_PORT			PORTD
#define SPI_PORT			PORTB															// Chip select lines
#define REFSEL_PORT			PORTD															// Reference mode selection lines
#define USB_BRIDGE_PORT		PORTC
#define STATUS_PORT			PORTC															// Status indicator lines
#define STSLED_PORT			PORTF															// Status LED lines


// Define chip select and de-select macros for devices connected to the SPI
#define SELECT_DDS			DDS_PORT.OUTCLR    = DDS_CS
#define DESELECT_DDS		DDS_PORT.OUTSET    = DDS_CS
#define SELECT_MPLL			PLL_PORT.OUTSET    = MPLL_CS
#define DESELECT_MPLL		PLL_PORT.OUTCLR    = MPLL_CS
#define SELECT_REFPLL		REFPLL_PORT.OUTSET = REFPLL_CS
#define DESELECT_REFPLL		REFPLL_PORT.OUTCLR = REFPLL_CS
#define SELECT_DAC			DAC_PORT.OUTCLR    = DAC_CS
#define DESELECT_DAC		DAC_PORT.OUTSET    = DAC_CS
#define SELECT_ATTEN		ATTEN_PORT.OUTSET  = ATTEN_LE
#define DESELECT_ATTEN		ATTEN_PORT.OUTCLR  = ATTEN_LE

// Define LE select and de-select macros
#define SELECT_LE			SPI_PORT.OUTSET = SLE
#define DESELECT_LE			SPI_PORT.OUTCLR = SLE

// Define DDS I/O-Update macro
#define SELECT_DDSUPDT		DDS_PORT.OUTSET = DDS_UPDATE
#define DESELECT_DDSUPDT	DDS_PORT.OUTCLR = DDS_UPDATE


static void hw_port_init(void)
{	// Configure pin directions
	// Status indicator lines
	STATUS_PORT.DIRCLR = REFPLL_LOCK | MPLL_LOCK | MPLL_MUX | UNLVLD;						// Configure status indicator lines as input
	
	// USB Bridge
	USB_BRIDGE_PORT.DIRSET = USB_RESET;														// Configure USB bridge reset line as output
	
	// SPI Latch Enable 
	SPI_PORT.DIRSET = SLE;																	// Configure latch enable line as output
	
	// DDS Synthesizer
	DDS_PORT.DIRSET = DDS_CS | DDS_RESET | DDS_UPDATE;										// Configure CS, UPDATE and RESET lines for DDS-Synthesizer as output
	
	// Main PLL
	PLL_PORT.DIRSET = MPLL_CS;																// Configure CS for main PLL as output
	STATUS_PORT.DIRCLR = MPLL_LOCK | MPLL_MUX;												// Configure lock indication and MUX output of main PLL as inputs
	
	// Ref PLL
	REFPLL_PORT.DIRSET = REFPLL_CS;															// Configure CS for reference PLL as output
	STATUS_PORT.DIRCLR = REFPLL_LOCK;														// Configure lock indication of reference PLL as input
	
	// DAC
	DAC_PORT.DIRSET = DAC_CS;																// Configure DAC CE as output
	
	// Harmonic filter
	HFILTER_PORT.DIRSET = HFILTER0 | HFILTER1 | HFILTER2;									// Configure harmonic filter control lines as outputs
	BYPASS_PORT.DIRSET  = HFILTER_BYPASS;													// Configure bypass switch line as output 
	
	// Attenuator
	ATTEN_PORT.DIRSET = ATTEN_D0 | ATTEN_D1 | ATTEN_D2 | ATTEN_D3 | ATTEN_LE;				// Configure attenuator control lines as outputs
	
	// Reference mode selection
	REFSEL_PORT.DIRSET = INT_SEL | EXT_SEL;													// Configure reference mode selection lines as outputs
	
	// Status LED outputs
	STSLED_PORT.DIRSET = STSLED_1 | STSLED_2;												// Configure status LED lines as outputs
	
	// Front panel LED outputs
	STSLED_PORT.DIRSET = FPLED_RED | FPLED_GREEN;											// Configure front panel LED lines as output


	// At power up: initial condition and resets
	// De-select all chip enable lines
	DESELECT_LE;
	DESELECT_DDS;
	DESELECT_MPLL;
	DESELECT_REFPLL;
	DESELECT_DAC;
	DESELECT_ATTEN;

	// Reset DDS chip
	DESELECT_DDSUPDT;																		// Make sure DDS I/O-Update line is not high
	_delay_ms(10);
	DDS_PORT.OUTSET = DDS_RESET;															// Reset is active high
	_delay_ms(20);
	DDS_PORT.OUTCLR = DDS_RESET;
}




/*
************************************************************************************************************************************************
Stuff for byte conversions
REMEMBER: The AVR is little endian, i.e., var.byte[0] is the least significant byte in var.
*/

typedef union
{
	uint32_t i16;
	uint8_t byte[2];
} convert16to8;

typedef union
{
	uint32_t i32;
	uint8_t byte[4];
} convert32to8;

typedef union
{
	uint32_t i64;
	uint8_t byte[8];
} convert64to8;




/*
************************************************************************************************************************************************
Basic routines to write data to the device registers, functions are call-by-value except dds_write_reg
*/

static void mpll_write_reg(uint32_t reg)													// Writes a 32 bit value to to the ADF4351 main PLL and VCO circuit
{
	DESELECT_LE;	
	SELECT_MPLL;
	_delay_us(0.005);
		convert32to8 buffer;
		buffer.i32 = reg;
		spi_output_reg(buffer.byte, 4, 0);
	_delay_us(0.005);
	SELECT_LE;
	_delay_us(0.5);
	DESELECT_LE;
	DESELECT_MPLL;
}


static void dds_write_reg(uint8_t instruct, uint8_t *addr_ptr, uint8_t len)					// Writes len bytes starting at addr_ptr to the AD9951 DDS synthesizer, preceded by instruct byte
{
	DESELECT_LE;
	SELECT_DDS;
	DESELECT_DDSUPDT;
	_delay_us(0.005);
		spi_output_reg(&instruct, 1, 0);
		spi_output_reg(addr_ptr, len, 0);
	_delay_us(0.005);
	SELECT_DDSUPDT;																			// Pull DDS I/O-Update line high for 0.5 µs
	_delay_us(0.5);
	DESELECT_DDSUPDT;
	DESELECT_DDS;
}


static void refpll_write_reg(uint32_t reg)													// Writes the first 24 bit in reg to the ADF4002 reference PLL
{
	DESELECT_LE;
	SELECT_REFPLL;
	_delay_us(0.005);
		convert32to8 buffer;
		buffer.i32 = reg;
		spi_output_reg(buffer.byte, 3, 0);
	_delay_us(0.005);
	SELECT_LE;
	_delay_us(0.5);
	DESELECT_LE;
	DESELECT_REFPLL;
}


static void dac_write_reg(uint16_t reg)														// Writes a 16 bit value to the MCP4921 DAC
{
	DESELECT_LE;
	SELECT_DAC;
	_delay_us(0.01);
		convert16to8 buffer;
		buffer.i16 = reg;
		spi_output_reg(buffer.byte, 2, 0);
	_delay_us(0.01);
	DESELECT_DAC;
}




/*
************************************************************************************************************************************************
Write to various hardware registers, e.g. frequency, DAC val, etc., and read hardware status information;
to be accessible from outside this file
*/

void dds_write_tunewd(uint32_t tunewd)														// Write 32 bit tune word to DDS chip
{
	convert32to8 buffer;
	buffer.i32 = tunewd;
	dds_write_reg(0x04, buffer.byte, 4);
}


void dac_write_val(uint16_t val)															// Write 12 bit value to DAC
{
	uint16_t reg = 0;
	reg = val & 0xFFF;
	reg |= (1<<13) | (1<<12);																// Set bit 13: output gain times 1, bit 12: no power down 
	dac_write_reg(reg);
}


void refpll_write_mult(uint8_t mult)														// Set reference multiplier, where mult = 100 MHz / (reference frequency)
{
	uint32_t n_counter_latch = 0;
	n_counter_latch   = (1UL<<0)	| (0UL<<1)	|	// Address n counter latch
	(mult << 8)						|				// Set n counter to 10 (100 MHz VCO frequency)
	(0UL<<21);										// Charge pump current setting 1 is permanently used
	refpll_write_reg(n_counter_latch);
}


void mpll_write_params(uint16_t int_tunewd, uint8_t prescaler, uint8_t rf_div)				// Write N divider, prescaler mode and RF active divider to main PLL chip
{
	uint32_t reg0 = 0, reg1 = 0, reg4 = 0;
	reg0 = (0UL<<0) | (0UL<<1) | (0UL<<2)	|		// Address register 0
		   ((uint32_t)int_tunewd<<15);
	reg1 = (1UL<<0) | (0UL<<1) | (0UL<<2)	|		// Address register 1
		   ((uint32_t)(!!prescaler) << 27);			// prescaler = 0: 4/5; prescaler = 1: 8/9
	reg4 = (0UL<<0) | (0UL<<1) | (1UL<<2)	|		// Address register 4
		   ((uint32_t)(rf_div&0x07) << 20)	|		// Set RF divider
		   (1UL<<5)							|		// Enable main output
		   (1UL<<3) | (1UL<<4)				|		// Set main output power to +5 dBm
		   (140UL << 12)					|		// Set VCO band select logic clock divider to 140, yields approx. 250 kHz band select clock; requires band select clock mode to be set to 'high' in register 3
		   (1UL<<23);								// Feedback select: fundamental; VCO output is fed back to the PLL N dividers
	mpll_write_reg(reg1);
	mpll_write_reg(reg4);
	mpll_write_reg(reg0);
}


void set_ref(uint8_t mode)																	// Switch between internal and external reference, mode = 0: internal, mode = 1: external
{
	if(mode)																				// Use external reference?
	{
		REFSEL_PORT.OUTSET = EXT_SEL;
		REFSEL_PORT.OUTCLR = INT_SEL;
		refpll_write_mult(ref_mult);														// Set reference multiplier to value of corresponding global variable
	}
	else																					// Use internal reference
	{
		REFSEL_PORT.OUTSET = INT_SEL;
		REFSEL_PORT.OUTCLR = EXT_SEL;
		refpll_write_mult(10);																// Set reference multiplier to match internal 10 MHz reference
	}
}


void set_atten(uint8_t att_val)																// Select output attenuator value
{
	DESELECT_ATTEN;
	if( att_val > 15 )																		// Maximal attenuator value = 2^4 - 1 = 15
		ATTEN_PORT.OUTCLR = ATTEN_D0 | ATTEN_D1 | ATTEN_D2 | ATTEN_D3;
	else
	{
		ATTEN_PORT.OUTCLR = ATTEN_D0 | ATTEN_D1 | ATTEN_D2 | ATTEN_D3;
		ATTEN_PORT.OUTSET = (ATTEN_D0 | ATTEN_D1 | ATTEN_D2 | ATTEN_D3) & ~att_val;		
	}
	_delay_us(0.02);
	SELECT_ATTEN;																			// Attenuator latch enable line high for 50 ns
	_delay_us(0.05);
	DESELECT_ATTEN;
}


void set_hfilter(uint8_t val)																// Set harmonic filter; val = 0...7: filter numbers, val = 8: filter 6 and bypass switch
{
	if( val > 8 )
		return;
	if( val == 8 )																			// Check if bypass switch must be engaged
	{
		val = 6;
		BYPASS_PORT.OUTSET = HFILTER_BYPASS;
	}
	else
		BYPASS_PORT.OUTCLR = HFILTER_BYPASS;
	HFILTER_PORT.OUTCLR = HFILTER0 | HFILTER1 | HFILTER2;
	HFILTER_PORT.OUTSET = (HFILTER0 | HFILTER1 | HFILTER2) & (val<<1);
}


void set_stsled_1(uint8_t led_on)															// Switch status LED 1
{
	if(led_on)
		STSLED_PORT.OUTSET = STSLED_1;
	else
		STSLED_PORT.OUTCLR = STSLED_1;
}


void set_stsled_2(uint8_t led_on)															// Switch status LED 2
{
	if(led_on)
		STSLED_PORT.OUTSET = STSLED_2;
	else
		STSLED_PORT.OUTCLR = STSLED_2;
}


void toggle_stsled_2(void)																	// Toggle status LED 2
{
	STSLED_PORT.OUTTGL = STSLED_2;
}


void set_fpled_err(uint8_t err_status)														// Set front panel indicator LED, led_status = 0: green, led_status = 1: red
{
	if(!err_status)
	{
		STSLED_PORT.OUTSET = FPLED_GREEN;
		STSLED_PORT.OUTCLR = FPLED_RED;	
	}
	else
	{
		STSLED_PORT.OUTCLR = FPLED_GREEN;
		STSLED_PORT.OUTSET = FPLED_RED;
	}
}


uint8_t get_refpll_unlk(void)																// Get reference PLL lock status
{
	if(STATUS_PORT.IN & REFPLL_LOCK)
		return FALSE;
	else
		return TRUE;
}


uint8_t get_mpll_unlk(void)																	// Get main PLL lock status
{
	if(STATUS_PORT.IN & MPLL_LOCK)
		return FALSE;
	else
		return TRUE;
}


uint8_t get_alc_unlvld(void)																// Get ALC status
{
	if(STATUS_PORT.IN & UNLVLD)
		return TRUE;
	else
		return FALSE;
}




/*
************************************************************************************************************************************************
Port and device initialization
*/

static void refpll_init(void)
{
	uint32_t ref_counter_latch = 0, n_counter_latch = 0, funct_latch = 0, init_latch = 0;
	ref_counter_latch = (0UL<<0)  | (0UL<<1)      |		// Address reference counter latch
						(1UL<<2)  |						// Set reference divider to 1
						(0UL<<16) | (0UL<<17)     |		// 2.9ns anti-backslash pulse width
						(0UL<<20) ;						// Fast lock detect
	n_counter_latch   = (1UL<<0)  | (0UL<<1)      |		// Address n counter latch
						(0x000A << 8)             |		// Set n counter to 10 (100 MHz VCO frequency)
						(0UL<<21) ;						// Charge pump current setting 1 is permanently used
	funct_latch       = (0UL<<0)  | (1UL<<1)      |		// Address function latch
						(0UL<<2)  |						// Counter normal operation
						(0UL<<21) | (0UL<<3)      |		// No power-down, normal operation
						(0UL<<6)|(0UL<<5)|(1UL<<4)|		// MUXOUT digital lock detect
						(1UL<<7)  |						// PFD polarity positive
						(0UL<<8)  |						// CP not in three state
						(0UL<<9)  | (0UL<<10)     |		// Fast lock disabled
						(0x0007 << 11)            |		// Charge pump current setting 1 (5 mA)
						(0x0007 << 14) ;       			// Charge pump current setting 2 (5 mA)
	init_latch		  = (0UL<<1)  | (1UL<<1)      |		// Address initialization latch
						(0UL<<2)  |						// Counter normal operation
						(0UL<<21) | (0UL<<3)      |		// No power-down, normal operation
						(0UL<<6)|(0UL<<5)|(1UL<<4)|		// MUXOUT digital lock detect
						(1UL<<7)  |						// PFD polarity positive
						(0UL<<8)  |						// CP not in three state
						(0UL<<9)  | (0UL<<10)     |		// Fast lock disabled
						(0x0007 << 11)            |		// Charge pump current setting 1 (5 mA)
						(0x0007 << 14) ;      			// Charge pump current setting 2 (5 mA)
	refpll_write_reg(init_latch);
	refpll_write_reg(funct_latch);
	refpll_write_reg(ref_counter_latch);
	refpll_write_reg(n_counter_latch);
}


static void dds_hw_reg_init(void)
{
	convert32to8 register1, register2;
	register1.i32 = 0;
	register2.i32 = 0;
	register1.i32 |= (1<<1)  |					// Disable SYNC_CLK
					 (1<<9)  |					// SDIO configured as input only
					 (1<<13) ;					// Auto-clear phase accumulator
	register2.i32 |= (0x00 << 3)  |				// Set reference clock multiplier to 0 (bypass multiplication)    
					 (0<<2)  |					// Set VCO range to 100 ... 250 MHz (default)
					 (0<<1)  | (1<<0) ;			// Set charge pump current to 100 µA
	dds_write_reg(0x00, register1.byte, 4);
	dds_write_reg(0x01, register2.byte, 3);
}


static void mpll_init(void)
{
	uint32_t reg0 = 0, reg1 = 0, reg2 = 0, reg3 = 0, reg4 = 0, reg5 = 0;
	reg0 = (0UL<<0) | (0UL<<1) | (0UL<<2)	|		// Address register 0
		   (100<<15)						;		// Set N tune word to 100 for initialization
	reg1 = (1UL<<0) | (0UL<<1) | (0UL<<2)	|		// Address register 1
		   (0UL<<27)						;		// Set prescaler to 4/5
	reg2 = (0UL<<0) | (1UL<<1) | (0UL<<2)	|		// Address register 2
		   (1UL<<6)							|		// Select positive PD polarity for a passive loop filter
		   (1UL<<7) | (1UL<<8)				|		// Set lock detector function and precision for integer-N operation
		   (1UL<<9)|(1UL<<10)|(1UL<<11)|(1UL<<12)|	// Set charge pump current to 5 mA
		   (1UL<<14)						|		// Set 10 bit R-counter to divide by 1
		   (0UL<<24)						|		// Disable reference divider by 2
		   (0UL<<25)						|		// Disable reference doubler
		   (0UL<<26)|(0UL<<27)|(1UL<<28)	|		// Set MUX-OUT to three-state (set to N-div output for test)
		   (0UL<<29)|(0UL<30)				;		// Select low noise mode		   
	reg3 = (1UL<<0) | (1UL<<1) | (0UL<<2)	|		// Address register 3
		   (1UL<<3)							|		// Set clock divider value to 1
		   (1UL<<21)						|		// Enable charge cancellation for integer-N operation
		   (1UL<<22)						|		// Set anti-backslash pulse width to 3 ns for integer-N operation
		   (1UL<<23)						;		// Set band select clock mode to 'high', which is required by the band select logic clock setting		   
	reg4 = (0UL<<0) | (0UL<<1) | (1UL<<2)	|		// Address register 4
		   ((uint32_t)(1&0x07) << 20)		|		// Set RF divider to 1
		   (0UL<<5)							|		// Disable main output; will be enabled by calling pll_write_params()
		   (1UL<<3) | (1UL<<4)				|		// Set main output power to +5 dBm
		   (112UL << 12)					|		// Set VCO band select logic clock divider to 112, yields approx. 400 kHz band select clock; requires band select clock mode to be set to 'high' in register 3
		   (1UL<<23)						;		// Feedback select: fundamental; VCO output is fed back to the PLL N dividers	
	reg5 = (1UL<<0) | (0UL<<1) | (1UL<<2)	|		// Address register 5
		   (1UL<<22) | (0UL<<23)			;		// Set lock detect pin to digital lock detect mode
	mpll_write_reg(reg5);
	mpll_write_reg(reg4);
	mpll_write_reg(reg3);
	mpll_write_reg(reg2);
	mpll_write_reg(reg1);
	mpll_write_reg(reg0);
}


void hw_init(void)																			// To be called in main once at system startup
{
	hw_port_init();
	refpll_init();
	dds_hw_reg_init();
	mpll_init();
	mpll_write_params(27, 0, 0);
}
/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: uart.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * UART read and write routines to the USB bridge
 *
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>

#include "globals.h"
#include "system_init.h"
#include "uart.h"

#include <util/delay.h>




/*
************************************************************************************************************************************************
UART initialization:
*/

#define USB_BR_BAUDRATE			56000														// Baud rate for USART0, which is connected to the USB bridge
																							// Calculates value for baud rate register of the ATmega4809
#define BAUD_RATE_REG(BAUD_RATE) ((float)(F_CLK_PER * 64 / (16 * (float)BAUD_RATE)) + 0.5)

#define F_TCA0_INT				10000UL														// Frequency for TCA0 compare match approx. 10 kHz, used to call UART transmit character routine
#define CMP_REG(FREQ)			( (float)F_CLK_PER / (float)FREQ ) + 0.5					// Compare match register value


void uart_init(void)
{
	// Reset USB bridge:
	PORTC.DIRSET = PIN0_bm;																	// Select USB bridge !RESET line as output
	PORTC.OUTCLR = PIN0_bm;																	// Set reset line low
	_delay_ms(10);																			// Wait
	PORTC.OUTSET = PIN0_bm;																	// Set reset line high
	
	// USART0 configuration:
	USART0.BAUD = (uint16_t)BAUD_RATE_REG(USB_BR_BAUDRATE);									// Set USB bridge baud rate ( USART0_BAUD = (64 x f_CLK_PER)/(16 x BAUD) )
		
	USART0.CTRLC &= ~( USART_CMODE0_bm | USART_CMODE1_bm );									// Set UART to asynchronous mode
	USART0.CTRLC |=    USART_PMODE1_bm;														// Select UART even parity
	USART0.CTRLC &=   ~USART_SBMODE_bm;														// Select one stop bit
	USART0.CTRLC |=  ( USART_CHSIZE0_bm | USART_CHSIZE1_bm );								// UART character size 8 bit
	
	PORTA.DIRSET = PIN0_bm;																	// Set PA0 as output (TxD)
	PORTA.DIRCLR = PIN1_bm;																	// Set PA1 as input (RxD)
	
	USART0.CTRLB &= ~( USART_RXMODE0_bm | USART_RXMODE1_bm );								// Normal UART mode and standard transmission speed
	USART0.CTRLA  =    USART_RXCIE_bm;														// Enable receive complete interrupt
	USART0.CTRLB |=  ( USART_RXEN_bm | USART_TXEN_bm );										// Enable UART RX and TX
	
	// Timer TCA0 settings for write register polling:
	TCA0.SINGLE.CTRLA   &= ( TCA_SINGLE_CLKSEL0_bm | TCA_SINGLE_CLKSEL1_bm |				// Clock select: timer clock equal to peripherals clock (CLK_PER)
						     TCA_SINGLE_CLKSEL2_bm );
	TCA0.SINGLE.CTRLB    = 0x00;															// No waveform generation. nomral operation
	TCA0.SINGLE.CTRLD   &= ~TCA_SINGLE_SPLITM_bm;											// De-select 'split' mode (i.e., select 'single' mode)
	TCA0.SINGLE.PER      = (uint16_t)CMP_REG(F_TCA0_INT);									// Set period (i.e., top count) register equal to compare register
	TCA0.SINGLE.INTCTRL |= TCA_SINGLE_OVF_bm;												// Enable timer overflow interrupt
	TCA0.SINGLE.CTRLA   |= TCA_SINGLE_ENABLE_bm;											// Enable timer TCA0 in 'single' mode
}




/*
************************************************************************************************************************************************
Basic UART operation: send and receive buffers as well as sending and receiving from the buffers over the UART:
*/

#define	UART_BUFLEN			60																// UART read and write buffer length (max. 255)

typedef struct {
	char    buf[UART_BUFLEN];
	uint8_t	read;																			// Always points to the oldest byte
	uint8_t write;																			// Always points to the next byte that can be written
} Buffer_t;

static volatile Buffer_t rx_buffer, tx_buffer = {{}, 0, 0};									// Define and initialize receive and transmit FIFO buffers for the UART connected to the USB bridge


static uint8_t buffer_put(volatile Buffer_t *buffer, char byte)								// Put one byte in FIFO buffer
{
	if( ( buffer->read == buffer->write + 1 ) ||
	    ( buffer->read == 0 && (buffer->write + 1 == UART_BUFLEN) ) )						// Receive buffer full?
		return FAIL;
	(*buffer).buf[buffer->write] = byte;
	(buffer->write)++;
	if( buffer->write >= UART_BUFLEN )
		buffer->write = 0;
	return SUCCESS;
}	


static uint8_t buffer_get(volatile Buffer_t *buffer, char *target_ptr)						// Read one byte from FIFO buffer and store at target_ptr
{
	if( buffer->read == buffer->write )														// Buffer empty?
		return FAIL;
	*target_ptr = (*buffer).buf[buffer->read];
	(buffer->read)++;
	if( buffer->read >= UART_BUFLEN )
		buffer->read = 0;
	return SUCCESS;
}


ISR(USART0_RXC_vect)																		// ISR called when a character is received by USART0, which is connected to USB bridge
{
	char new_byte = USART0.RXDATAL;															// Always read byte from UART hardware in order to clear RXC interrupt (byte will be discarded if rx_buffer is full
	USART0.STATUS |= USART_RXCIE_bm;
	// USART0.TXDATAL = new_byte;															// Loopback test for debugging
    buffer_put(&rx_buffer, new_byte);														// Put received character in receive buffer
}


ISR(TCA0_OVF_vect)																			// Timer ISR that writes byte from tx_buffer to USART0, called periodically by TCA0 compare match
{
	if( (tx_buffer.read != tx_buffer.write) && (USART0_STATUS & USART_DREIF_bm) )			// Is any data in tx_buffer and USART0 ready to send?
	{
		char new_byte = 0;	
		buffer_get(&tx_buffer, &new_byte);
		USART0.TXDATAL = new_byte;
	}
	TCA0.SINGLE.INTFLAGS |= TCA_SINGLE_OVF_bm;												// Clear interrupt flag (this is not automatic on the megaAVR 0 series)
}




/*
************************************************************************************************************************************************
Sending and receiving strings over the UART which is connected to the USB bridge:
*/

struct Received_Data received_data = {"", 0};
struct Transmit_Data transmit_data = {"", 0};


static void read_rx_buffer(void)
{
	if(!received_data.ready)
	{
		cli();																				// Disable interrupts globally before accessing rx_buffer
		while( (rx_buffer.read != rx_buffer.write) &&										// While any data is in rx_buffer
		       (strlen(received_data.str) < RECEIVE_STRLEN) )								// and the received_data string storage is not full
		{
			char next_char = 0;
			buffer_get(&rx_buffer, &next_char);
			char next_str[] = {next_char, '\0'};				
			strcat(received_data.str, next_str);
			if( next_char == '\n' || next_char == '\r' || 
			    next_char == ';'  || next_char == '?' )										// Received character is LF, CR, ';' or '?'? 
			{
				received_data.ready = TRUE;													// Then set data ready flag
				break;																		// and exit loop		
			}
		}
		sei();
		if( strlen(received_data.str) >= RECEIVE_STRLEN )									// Check if received_data.str storage is full and set data ready flag in case no CR or LF was received
			received_data.ready = TRUE;
	}
}


static void write_tx_buffer(void)
{
	static uint8_t nbytes_read;	
	if(transmit_data.ready)
	{
		cli();																				// Disable interrupts globally before accessing tx_buffer
		while( !( ( tx_buffer.read == tx_buffer.write + 1 ) ||
		          ( tx_buffer.read == 0 && (tx_buffer.write + 1 == UART_BUFLEN) ) )	&&		// While tx_buffer is not full
				  ( nbytes_read < strlen(transmit_data.str) ) )								// and transmit_data.str has not been fully read
		{
			char next_byte = transmit_data.str[nbytes_read];
			buffer_put(&tx_buffer, next_byte);
			nbytes_read++;
		}
		sei();
		if( nbytes_read >= strlen(transmit_data.str) )										// Have all characters in transmit_data been read?
		{
			nbytes_read = 0;																// Then reset nbytes_read,
			transmit_data.ready = FALSE;													// clear ready flag 
			transmit_data.str[0] = '\0';													// and delete string
		}
	}
}


void uart_process(void)																		// To be called periodically in main
{
	read_rx_buffer();
	write_tx_buffer();
}
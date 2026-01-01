/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: system_init.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Basic hardware setup and defines
 *
 */


#include <avr/io.h>
#include <avr/interrupt.h>

#include "system_init.h"
#include "system_operation.h"
#include "hw_control.h"
#include "globals.h"




/*
************************************************************************************************************************************************
Overall hardware initialization and basic setups:
*/


void processor_init(void)																	// To be called in main once at system startup
{
	// Clock settings:
	CLKCTRL.MCLKCTRLA |= CLKCTRL_CLKSEL_OSC20M_gc;											// Select internal 20 MHz oscillator
	CLKCTRL.MCLKCTRLB  = CLKCTRL_PDIV_64X_gc | CLKCTRL_PEN_bm;								// Select prescaler division to 6, i.e., CLK_PER = 33.333 MHz, enable peripheral clock prescaler
	CLKCTRL.MCLKLOCK  |= CLKCTRL_LOCKEN_bm;													// Lock main clock control settings until next hardware reset
	
	
	// Port multiplexer settings:
	PORTMUX.USARTROUTEA  = 0x00;															// USART0 default pin connections
	PORTMUX.TWISPIROUTEA = 0x00;															// SPI default pin connections

	
	// Watchdog settings:
	WDT_CTRLA |= WDT_PERIOD_4KCLK_gc;														// Activate watchdog and set a WDT timeout of 4.1 sec
}


void init_state(void)																		// Set initial system state, to be called once after startup
{
	set_fpled_err(FALSE);																	// Turn on green front panel LED
	recall_setup(0);																		// Read instrument setup from EEPROM (memory 0) or use default setup if EEPROM is blank, and set frequency, output level and reference status
}
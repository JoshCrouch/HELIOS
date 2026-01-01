/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: main.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * This is the firmware for the experimental RF synthesizer.
 *
 * Target Device:	ATMEL/Microchip ATmega4809
 * CPU Clock:		20 MHz
 * VDD:				3.3 V
 *
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include "globals.h"
#include "system_init.h"
#include "uart.h"
#include "command_parser.h"
#include "hw_control.h"
#include "system_operation.h"

#include <util/delay.h>




int main(void)
{
	_delay_ms(500);																			// Wait 0.5 sec for supply voltages to stabilize
	
	processor_init();																		// Basic hardware and peripherals setup, also initializes the watchdog
	uart_init();																			// Initialize UART
	spi_init();																				// Initialize SPI
	hw_init();																				// Initialize inputs and outputs, and the devices on main board

	_delay_ms(500);																			// Wait 0.5 sec before initialization and output activation
	
	init_state();																			// Load initial system state
	
	sei();																					// Enable global interrupts

	
	while(TRUE)																				// Main loop
    {
		uart_process();																		// UART data processing, copy data to/from send/receive FIFO to globals for further processing
		command_process();																	// Parse and execute commands from the UART data stream
		selftest();																			// Execute periodic self test
		
		wdt_reset();																		// Reset watchdog timer
    }
}
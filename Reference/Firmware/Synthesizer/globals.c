/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: globals.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Some global variable declarations for basic functions (further globals are defined in other header files) and #defines in globals.h.
 * Global const variables are defined here.
 *
 */


#include <avr/io.h>

#include "globals.h"




/*
************************************************************************************************************************************************
Global variable definitions:
*/

volatile uint64_t frequency;																// Synthesizer output frequency in Hz
volatile int16_t  output_level;																// Output level in multiples of 0.1 dBm
volatile uint8_t  ref_mult;																	// Reference multiplier; ref_mult = 100 MHz / (reference frequency)
volatile struct Status status;																// Bitfield containing system status and error information

const uint8_t version_major = 1;															// Firmware version number integer
const uint8_t version_minor = 0;															// Firmware version number decimal
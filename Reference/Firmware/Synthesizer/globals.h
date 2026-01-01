/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: globals.h
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Some global variable declarations for basic functions (further globals are defined in other header files) and #defines.
 * Global const variables are defined in globals.c
 *
 */


#ifndef GLOBALS_H_
#define GLOBALS_H_


// Global variables
extern volatile uint64_t frequency;															// Synthesizer output frequency in Hz
extern volatile int16_t output_level;														// Output level in multiples of 0.1 dBm
extern volatile uint8_t ref_mult;															// Reference multiplier; ref_mult = 100 MHz / (reference frequency)
extern const uint8_t version_major;															// Firmware version number integer
extern const uint8_t version_minor;															// Firmware version number decimal


struct Status {																				// System status bitfield
	uint8_t extref : 1;																		// Reference mode, extref = 0: internal, extref = 1: external
	uint8_t err : 1;																		// Hardware error detected
	uint8_t refpll_unlock : 1;																// Reference PLL unlocked
	uint8_t mpll_unlock : 1;																// Main PLL unlocked
	uint8_t alc_unlvld : 1;																	// Output unleveled, ALC range exhausted
	uint8_t arg_range : 1;																	// Argument of last command out of range, is cleared when the error status is read
};

extern volatile struct Status status;														// Declare system status bitfield


// Constants
#define MAX_FREQ			4400000000														// Maximum output frequency in Hz
#define MIN_FREQ			35000000														// Minimum output frequency in Hz
#define MAX_LEV				100																// Maximum output level in multiples of 0.1 dBm = 10 dBm
#define MIN_LEV				-450															// Minimum output level in multiples of 0.1 dBm = -45 dBm
#define MAX_REFMULT			255																// Maximum reference multiplier value (corresponding to f_ref = 392.156862 kHz)
#define MIN_REFMULT			10																// Minimum reference multiplier value (corresponding to f_ref = 10 MHz)
#define MAX_LCORR_VAL		5000															// Maximum output level correction value = 50 dB
#define MIN_LCORR_VAL		-5000															// Minimum output level correction value = -50 dB
#define MAX_FCORR_VAL		1000															// Maximum reference frequency correction value = 1000 Hz
#define MIN_FCORR_VAL		-1000															// Minimum reference frequency correction value = -1000 Hz
#define MAX_SLCORR_VAL		30000															// Maximum detector slope correction value = 300 mV/dB
#define MIN_SLCORR_VAL		-30000															// Minimum detector slope correction value = -300 mV/dB
#define NMEM				9																// Number of instrument setup memories (counted from 0)


// Boolean
#define SUCCESS				1
#define FAIL				0
#define TRUE				1
#define FALSE				0
#define ON					1
#define OFF					0


#endif /* GLOBALS_H_ */
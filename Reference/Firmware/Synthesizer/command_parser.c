/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: command_parser.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Command parsing and execution
 *
 */


#include <avr/io.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#include "command_parser.h"
#include "system_operation.h"
#include "hw_control.h"
#include "globals.h"
#include "uart.h"



/*
************************************************************************************************************************************************
Command definitions:
*/

// Commands in an array of strings: cmd[i] is a string containing the i-th command
static const char cmd[][4] = {"FRQ", "LVL", "REF", "RFQ", "ERR", "LCR", "FCR", "SCR", "INF", "VER", "SVE", "RCL"};
static const uint8_t ncmd = 12;

// Command literal numbers, as they are represented in cmd:
#define FRQ					1
#define LVL					2
#define REF					3
#define RFQ					4
#define ERR					5
#define LCR					6
#define FCR					7
#define SCR					8
#define INF					9
#define VER					10
#define SVE					11
#define RCL					12

// UART commands			Command Code			RS232 Command												Remark
#define GET_INFO			1					//	INF?														Get info string
#define GET_VER				2					//	VER?														Get firmware version
#define GET_ERR				3					//	ERR?														Get error status

#define GET_FREQ			4					//	FRQ?														Get current output frequency in Hz
#define GET_LEVEL			5					//	LVL?														Get current output level in multiples of 0.1 dBm
#define SET_FREQ			6					//	FRQ [frequency in Hz];										Set output frequency
#define SET_LEVEL			7					//	LVL [level in multiples of 0.1 dBm];						Set output level

#define GET_REF				8					//  REF?														Get reference status (0: internal, 1: external)
#define SET_REF				9					//  REF [0: internal reference, 1: external reference]			Set reference status
#define GET_REFMULT			10					//  RFQ?														Get reference multiplier
#define SET_REFMULT			11					//  RFQ [reference multiplier]									Set reference multiplier (10 ... 255)

#define SETUP_SAV			12					//  SVE	[memory no (0 ... 9)]									Save current instrument setup to specified memory (0 ... 9) in EEPROM 
#define SETUP_RCL			13					//  RCL	[memory no (0 ... 9)]									Recall saved instrument setup from specified memory (0 ... 9) in EEPROM
												//																Instrument will power up with setup stored in memory 0
#define GET_LCORR			14					//  LCR?														Get level correction value for current frequency
#define SET_LCORR			15					//  LCR [corr val in multiples of 0.01 dB]						Set level correction value for current frequency
#define GET_FCORR			16					//  FCR?														Get frequency correction value in Hz for internal 10 MHz reference
#define SET_FCORR			17					//  FCR [corr val in Hz]										Set frequency correction value in Hz for internal 10 MHz reference
#define GET_SLCORR			18					//  SCR?														Get detector slope correction value in 0.01 mV/dB
#define SET_SLCORR			19					//  SCR [corr val in 0.01 mV/dB]								Set detector slope correction value in 0.01 mV/dB


typedef union
{
	uint64_t i64;
	uint32_t nibble32[2];
} convert64to32;




/*
************************************************************************************************************************************************
Parsing the data stream from the UART:
*/

static uint8_t newcmd_cde = 0;																// Code of last command literal that has been found in the UART data stream, must be cleared by command handler
static uint8_t newcmd_itr = 0;																// Category of last command, 0: normal, 1: interrogation command
static int64_t newcmd_arg = 0;																// Argument of the last command that has been found in the UART data stream


static void remove_space(char *str)															// Removes all white space from string str
{
	uint8_t count = 0;
	for( uint8_t i = 0; str[i]; i++)
	{
		if( !isspace(str[i]) )
			str[count++] = str[i];
	}
	str[count] = '\0';
}


static void extract_digits(char *str)														// Removes all characters from string str that are not digits
{
	uint8_t count = 0;
	for( uint8_t i = 0; str[i]; i++)
	{
		if( isdigit(str[i]) || str[i] == '-' )
			str[count++] = str[i];
	}
	str[count] = '\0';
}


static void ltrim(char *str, char *ptr, uint8_t ntrim)										// Trim string str from the left beginning at ptr, plus ntrim characters
{
	if( ntrim <= strlen(ptr) ) 
	{
		uint8_t remain = strlen(ptr + ntrim);	
		memmove(str, ptr + ntrim, remain + 1);		
	}
}


static int64_t atoi64(char *str)															// Convert a string to a 64 bit integer, string must be only numerals (including sign) to avoid undefined behavior
{
	uint8_t sign = FALSE;
	int64_t retval = 0;
	if( *str == '\0' )
		return 0;
	if( str[0] == '-' )
		sign = TRUE;
	for( uint8_t i = sign; str[i] != '\0'; ++i )
		retval = 10 * retval + ( str[i] - '0' );
	if(sign)
		return -retval;
	else
		return retval;
}


static void parse_cmd(void)																	// Parses data stream from UART and stores detected command and argument in new_cmd and new_arg
{
	if( received_data.ready )																// Has a new string been received by UART?
	{
		uint8_t i = 0;
		char *ptr;
		do
		{
			ptr = strstr(received_data.str, cmd[i]);										// Search for command literal in string received by UART, ptr points to the first character of command found
			i++;
		} while( !ptr && i < ncmd );
		
		if(ptr)																				// Command literal found in received string?
		{
			uint8_t cmd_found = i;															// cmd_found is the number of the command detected
			ltrim(received_data.str, ptr, strlen(cmd[i-1]));								// Discard characters ahead of the command literal detected, as well as the command literal	itself			
			remove_space(received_data.str);												// Remove all white space
			if( received_data.str[0] == '?' )												// Is next character a '?', i.e., the command an interrogation?
			{
				newcmd_itr = TRUE;															// Set interrogation flag
				switch(cmd_found)															// Store command code
				{
					case FRQ:
						newcmd_cde = GET_FREQ;
						break;
					case LVL:
						newcmd_cde = GET_LEVEL;	
						break;
					case REF:
						newcmd_cde = GET_REF;
						break;
					case RFQ:
						newcmd_cde = GET_REFMULT;
						break;
					case ERR:
						newcmd_cde = GET_ERR;
						break;												
					case LCR:
						newcmd_cde = GET_LCORR;
						break;				
					case FCR:
						newcmd_cde = GET_FCORR;
						break;
					case SCR:
						newcmd_cde = GET_SLCORR;
						break;
					case INF:
						newcmd_cde = GET_INFO;
						break;
					case VER:
						newcmd_cde = GET_VER;
						break;
					default:
						newcmd_cde = 0;
						break;
				}
			}
			else																			// Command not an interrogation
			{
				newcmd_itr = FALSE;															// Clear interrogation flag
				switch(cmd_found)															// Store command code
				{
					case FRQ:
						newcmd_cde = SET_FREQ;
						break;
					case LVL:
						newcmd_cde = SET_LEVEL;
						break;
					case REF:
						newcmd_cde = SET_REF;
						break;
					case RFQ:
						newcmd_cde = SET_REFMULT;
						break;
					case SVE:
						newcmd_cde = SETUP_SAV;
						break;
					case RCL:
						newcmd_cde = SETUP_RCL;
						break;
					case LCR:
						newcmd_cde = SET_LCORR;
						break;
					case FCR:
						newcmd_cde = SET_FCORR;
						break;
					case SCR:
						newcmd_cde = SET_SLCORR;
						break;
					default:
						newcmd_cde = 0;
						break;					
				}
				extract_digits(received_data.str);											// Remove all characters which are not digits (i.e., 1234567890-)
				received_data.str[12] = '\0';												// Truncate to 12 characters maximum
				newcmd_arg = atoi64(received_data.str);										// Convert to int64_t
			}
		}
		received_data.ready = FALSE;														// Reset flag
		received_data.str[0] = '\0';														// and delete string
	}
}




/*
************************************************************************************************************************************************
Execute the commands that have been parsed:
*/

static void execute_cmd(void)
{
	if(newcmd_cde)																			// New command in queue?
	{
		if(newcmd_itr)																		// Interrogation command?
		{
			if( !transmit_data.ready )														// Is UART send queue empty? (else discard command)
			{
				switch(newcmd_cde)															// Then identify and execute command
				{
					case GET_INFO:
						sprintf(transmit_data.str, "Signal Generator, Dr. Mario Hellmich, Salzgitter\r\n");
						break;
					case GET_VER:
						sprintf(transmit_data.str, "Firmware Version %u.%u\r\n", version_major, version_minor);
						break;
					case GET_ERR:
						sprintf(transmit_data.str, "ERR %u\r\n", get_errcode());
						status.arg_range = FALSE;											// When reading errcode over USB, reset 'last argument out of range' error
						break;
					case GET_FREQ:
							;
						convert64to32 freq_print;
						freq_print.i64 = frequency;
						if(freq_print.nibble32[1])
							sprintf(transmit_data.str, "FRQ %lu%lu\r\n", freq_print.nibble32[1], freq_print.nibble32[0]);
						else
							sprintf(transmit_data.str, "FRQ %lu\r\n", freq_print.nibble32[0]);
						break;
					case GET_LEVEL:
						sprintf(transmit_data.str, "LVL %d\r\n", output_level);
						break;
					case GET_REF:
						sprintf(transmit_data.str, "REF %u\r\n", status.extref);
						break;
					case GET_REFMULT:
						sprintf(transmit_data.str, "REFMULT %u\r\n", ref_mult);
						break;						
					case GET_LCORR:
						sprintf(transmit_data.str, "LEVEL-CORR %d\r\n", get_lcorr_val());
						break;
					case GET_FCORR:
						sprintf(transmit_data.str, "FREQ-CORR %d\r\n", get_fcorr_val());
						break;
					case GET_SLCORR:
						sprintf(transmit_data.str, "SLOPE-CORR %d\r\n", get_slcorr_val());
				}
				transmit_data.ready = TRUE;													// Set transmit_data.ready flag for data to be collected
			}			
		}
		else																				// Command is not an interrogation command
		{
			switch(newcmd_cde)																// Identify and execute command
			{
				case SET_FREQ:
						;
					uint64_t new_freq = (uint64_t)newcmd_arg;
					if( !( new_freq > MAX_FREQ || new_freq < MIN_FREQ ) )
					{
						status.arg_range = FALSE;							
						if( new_freq != frequency )
						{
							frequency = new_freq;											// Update global variable
							set_freq(frequency);											// Update hardware registers
						}
					}		
					else																	// Argument out of range
						status.arg_range = TRUE;
					break;
				case SET_LEVEL:
						;
					int16_t new_level = (int16_t)newcmd_arg;
					if( !( new_level > MAX_LEV || new_level < MIN_LEV ) )
					{
						status.arg_range = FALSE;					
						if( new_level != output_level )
						{
							output_level = new_level;										// Update global variable
							set_level(output_level);										// Update hardware registers
						}
					}
					else 																	// Argument out of range
						status.arg_range = TRUE;
					break;
				case SET_REF:
						;
					uint8_t new_ref = (uint8_t)newcmd_arg;
					status.extref = !!new_ref;												// Update global variable
					set_ref(status.extref);													// Update hardware setting
					set_freq(frequency);													// Re-set frequency to update frequency and level correction
					status.arg_range = FALSE;
					break;
				case SET_REFMULT:
						;
					uint8_t new_refmult = (uint8_t)newcmd_arg;
					if( new_refmult >= MIN_REFMULT )
					{
						ref_mult = new_refmult;												// Update global variable
						set_ref(status.extref);												// Update hardware setting (set_ref will also write new multiplier to reference PLL chip when set to external)
						set_freq(frequency);												// Re-set frequency to update frequency and level correction
						status.arg_range = FALSE;
					}
					else
						status.arg_range = TRUE;
					break;
				case SETUP_SAV:
						;
					uint8_t new_mem_save = (uint8_t)newcmd_arg;
					if(new_mem_save <= 9)
					{
						save_setup(new_mem_save);											// Save current instrument setup to EEPROM
						status.arg_range = FALSE;
					}
					else
						status.arg_range = TRUE;
					break;	
				case SETUP_RCL:
						;
					uint8_t new_mem_rcl = (uint8_t)newcmd_arg;
					if(new_mem_rcl <= 9)
					{
						recall_setup(new_mem_rcl);											// Recall current instrument setup from EEPROM
						status.arg_range = FALSE;
					}
					else
						status.arg_range = TRUE;
					break;
				case SET_LCORR:
						;
					int16_t new_lcorr = (int16_t)newcmd_arg;
					if( !( new_lcorr > MAX_LCORR_VAL || new_lcorr < MIN_LCORR_VAL ) )
					{
						set_lcorr_val(new_lcorr);											// Update correction value in EEPROM
						set_level(output_level);											// Update hardware registers
						status.arg_range = FALSE;
					}
					else 																	// Argument out of range
						status.arg_range = TRUE;
					break;
				case SET_FCORR:
						;
					int16_t new_fcorr = (int16_t)newcmd_arg;
					if( !( new_fcorr > MAX_FCORR_VAL || new_fcorr < MIN_FCORR_VAL ) )
					{
						set_fcorr_val(new_fcorr);											// Update correction value in EEPROM
						set_freq(frequency);												// Update hardware registers
						status.arg_range = FALSE;
					}
					else  																	// Argument out of range
						status.arg_range = TRUE;
					break;
				case SET_SLCORR:
					;
				int16_t new_slcorr = (int16_t)newcmd_arg;
					if( !( new_slcorr > MAX_SLCORR_VAL || new_slcorr < MIN_SLCORR_VAL ) )
					{
						set_slcorr_val(new_slcorr);											// Update correction value in EEPROM
						set_level(output_level);											// Update hardware registers
						status.arg_range = FALSE;
					}
					else  																	// Argument out of range
						status.arg_range = TRUE;
					break;				
			}
		}
		newcmd_cde = 0;																		// Clear flags
		newcmd_itr = FALSE;
	}
}


void command_process(void)																	// To be called periodically in main
{
	parse_cmd();
	execute_cmd();
}
/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: system_operation.c
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * High level control of the synthesizer hardware
 *
 */ 


#include <avr/io.h>
#include <avr/eeprom.h>
#include <math.h>

#include "system_operation.h"
#include "command_parser.h"
#include "hw_control.h"
#include "globals.h"




/*
************************************************************************************************************************************************
Frequency setting:
*/

#define pow2(x) (1ULL << x)																	// Powers of two, x = 0, 1, 2, ...

static const uint64_t f_vco_min = 2200000000;												// Minimum VCO frequency, 2.2 GHz
static const uint64_t f_vco_max = 4400000000;												// Maximum VCO frequency, 4.4 GHz
static const uint64_t f_pfd_max = 35000000;													// Maximum PFD frequency for the setup used in this project, 35 MHz
static const float    f_presc   = 3.6E9;													// Frequency up to which the 4/5 prescaler of the main PLL chip can be used
static const uint64_t int_ref   = 10000000;													// Internal reference frequency, 10 MHz
static const uint8_t  dds_mult  = 10;														// Quotient of DDS clock and reference frequency, set to 10 (100 MHz nominal DDS clock)

// Corner frequencies of the harmonic filters 0 to 8, in Hz
static const uint64_t hfilt_range_end[] = {60000000, 100000000, 170000000, 290000000, 490000000, 830000000, 1400000000, 2400000000, MAX_FREQ};

static uint16_t EEMEM fcorr_stor = 0xFFFF;													// EEPROM storage of internal reference frequency correction value


void set_fcorr_val(int16_t corr_val)														// Write new reference frequency correction value to EEPROM
{
	int16_t store_val = ~corr_val;															// Value to be stored; the bitwise NOT ensures that a blank EEPROM (all bytes set to 0xFF) is interpreted as a correction value of zero
	eeprom_busy_wait();
	eeprom_update_word(&fcorr_stor, store_val);
}


int16_t get_fcorr_val(void)																	// Read reference frequency correction value from EEPROM
{
	int16_t corr_val = ~eeprom_read_word(&fcorr_stor);
	return corr_val;
}


void set_freq(uint64_t new_freq)															// Set synthesizer to new_freq, must be less than MAX_FREQ
{
	uint8_t rf_div = 0;																		// Main PLL RF divider, 2^rf_div = division ratio
	while( new_freq * pow2(rf_div) < f_vco_min )											// Determine the main PLL RF divider setting that yields the smallest permissible VCO frequency for the given new_freq
		rf_div++;
	
	uint16_t n_div;
	n_div = (uint16_t)( new_freq * pow2(rf_div) / f_pfd_max ) + 1;							// Determine main PLL int divider
	
	uint8_t ret_flag;																		// Return flag, set to 1 if n_div needs to be incremented, then the loop is repeated
	long double f_dds;																		// DDS frequency
	float f_vco;
	uint8_t prescaler;	
	do {
		f_dds = ( (long double)new_freq / n_div ) * pow2(rf_div);							// Calculate DDS frequency
		f_vco = f_dds * n_div ;																// Calculate VCO frequency		
		if( f_vco <= f_presc )																// Determine prescaler setting; 4/5 prescaler for VCO freqencies <= 3.6E9 Hz, else 8/9 prescaler
			prescaler = 0;																	// 4/5 prescaler
		else
			prescaler = 1;																	// 8/9 prescaler
		if( (prescaler == 0 && n_div <= 23) || (prescaler == 1 && n_div <= 75) )			// Check: n-div must be greater than 23 for the 4/5 prescaler (this is always the case for f_pfd_max used here), and greater than 75 for the 8/9 prescaler
		{
			n_div++;																		// Increment n-div 
			ret_flag = TRUE;																// and set return flag to re-enter loop
		}
		else																				// n-div is commensurable with prescaler setting
			ret_flag = FALSE;																// Clear flag and do nothing
	} while(ret_flag);
	
	uint64_t dds_clk;																		// DDS clock frequency
	if(!status.extref)																		// Is the internal frequency reference used?
		dds_clk = ( int_ref + get_fcorr_val() ) * dds_mult;									// Then calculate corrected DDS clock
	else
		dds_clk = int_ref * dds_mult;														// For external reference use uncorrected DDS clock	
	
	uint32_t dds_tunewd = lroundf( ( f_dds / dds_clk ) * pow2(32) );						// Determine DDS tune word
		
	dds_write_tunewd(dds_tunewd);															// Write result to DDS chip
	mpll_write_params(n_div, prescaler, rf_div);											// Write result to main PLL chip
	
	uint8_t hfiltnumber = 0;
	while( new_freq > hfilt_range_end[hfiltnumber] )										// Determine harmonic filter to be switched into the signal path for the set frequency
		hfiltnumber++;
	set_hfilter(hfiltnumber);																// Switch harmonic filter
	set_level(output_level);																// Re-set output level to update level correction for new frequency
}




/*
************************************************************************************************************************************************
Level setting and error correction/calibration:
*/

static const uint16_t vref        = 3300;													// DAC reference voltage in mV, 3300 mV = 3.3 V
static const float intercpt_lvl   = 25;														// Level intercept point in dBm of level detector
static const float slope_lvl      = 25;														// Level slope in mV/dB of level detector
static const uint8_t dac_nbits    = 12;														// Number of bits of DAC
static const int16_t nlvl_pre_att = -12;														// Nominal level before attenuator in dBm
static const uint8_t att_loss     = 3;														// Attenuator insertion loss in dB
static const uint8_t nsteps       = 15;														// Number of attenuator steps
static const uint8_t db_step      = 3;														// Attenuator step in dB
static const uint8_t impedance    = 50;														// System impedance 50 ohms
static const float dbm_reflevel   = 0.001;													// Reference power level 1 mW

#define CORR_SPACING		100000000ULL													// Spacing of correction values = 100 MHz (44 values in total), must be a divisor of MAX_FREQ
static uint16_t EEMEM lcorr_stor[MAX_FREQ / CORR_SPACING]									// EEPROM storage of level correction values (to be incremented)
	= { [0 ... MAX_FREQ / CORR_SPACING - 1] = 0xFFFF };

static uint16_t EEMEM slcorr_stor = 0xFFFF;													// EEPROM storage of detector slope correction value
		

void set_lcorr_val(int16_t corr_val)														// Write level correction value for current output frequency (should be a multiple of CORR_SPACING, or be equal to MIN_FREQ) in 1/100 dBm to EEPROM
{
	uint8_t ncorr = frequency / CORR_SPACING;												// Calculate number of the current correction value
	int16_t store_val = ~corr_val;															// Value to be stored; the bitwise NOT ensures that a blank EEPROM (all bytes set to 0xFF) is interpreted as a correction value of zero
	eeprom_busy_wait();
	eeprom_update_word(lcorr_stor + ncorr, store_val);										// Write store_val to EEPROM
}


static float get_lcorr(uint64_t freq)														// Level correction in dBm interpolated for a given frequency
{
	uint8_t left_corr = freq / CORR_SPACING;
	uint8_t right_corr;
	if( freq < MAX_FREQ )
		right_corr = left_corr + 1;
	else
		right_corr = left_corr;
	float left_val  = (int16_t)( ~eeprom_read_word(lcorr_stor + left_corr) ) / (float)100;
	float right_val = (int16_t)( ~eeprom_read_word(lcorr_stor + right_corr) ) / (float)100;
	float corr = left_val + ( (right_val-left_val)/CORR_SPACING ) *							// Linear interpolation between left_val and right_val
	                        ( freq - left_corr * CORR_SPACING );
	return corr;
}


int16_t get_lcorr_val(void)																	// Read level correction value from EEPROM at current frequency (should be a multiple of CORR_SPACING, or be equal to MIN_FREQ)
{
	uint8_t ncorr = frequency / CORR_SPACING;
	int16_t corr_val = ~eeprom_read_word(lcorr_stor + ncorr);
	return corr_val;
}


void set_slcorr_val(int16_t corr_val)														// Write new detector slope correction value in 0.01 mV/dBm to EEPROM
{
	int16_t store_val = ~corr_val;															// Value to be stored; the bitwise NOT ensures that a blank EEPROM (all bytes set to 0xFF) is interpreted as a correction value of zero
	eeprom_busy_wait();
	eeprom_update_word(&slcorr_stor, store_val);
}


int16_t get_slcorr_val(void)																// Read detector slope correction value from EEPROM
{
	int16_t corr_val = ~eeprom_read_word(&slcorr_stor);
	return corr_val;
}


static float get_slcorr(void)																// Read detector slope correction value from EEPROM and output in mV/dB
{
	int16_t corr_val = ~eeprom_read_word(&slcorr_stor);
	float out_val = (float)corr_val / 100;
	return out_val;	
}


void set_level(int16_t new_level)															// Set output level to new_level (in multiples of 0.1 dBm)
{
	float new_level_dbm = (float)new_level / 10;											// Convert to dBm
	
	float out_lvl_corr = new_level_dbm + get_lcorr(frequency);								// Corrected (theoretical) output level
	uint8_t atten;																			// Attenuator setting	
	if( nlvl_pre_att - out_lvl_corr >= 0 )													// Attenuation required?
	{
		atten = (nlvl_pre_att - out_lvl_corr) / db_step;
		if( atten > nsteps )
			atten = nsteps;
	}
	else																					// No attenuation required
		atten = 0;
	set_atten(atten);																		// Set attenuator
	
	float lvl_pre_atten = out_lvl_corr + (atten * db_step) + att_loss;
	uint16_t dac_val;																		// Calculate DAC value
	if( intercpt_lvl - lvl_pre_atten >= 0 )
		dac_val = roundf( ( ( (float)slope_lvl + get_slcorr() ) * pow2(dac_nbits) / vref ) * 
		                  ( intercpt_lvl - lvl_pre_atten ) );
	else
		dac_val = 0;
	dac_write_val(dac_val);																	// Write DAC value
}




/*
************************************************************************************************************************************************
Error handling:
*/

uint8_t get_errcode(void)																	// Read errors from status bitfield and generate 8-bit error code
{
	uint8_t errcode = 0;
	errcode |= (!!status.mpll_unlock<<0) | (!!status.refpll_unlock<<1) | (!!status.alc_unlvld<<2) | (!!status.arg_range<<3);
	return errcode;
}


void selftest(void)																			// Check for error condition, update globals and flash status LEDs
{
	status.refpll_unlock = get_refpll_unlk();	
	status.mpll_unlock = get_mpll_unlk();
	status.alc_unlvld = get_alc_unlvld();
	if(get_errcode())
	{
		status.err = TRUE;
		set_stsled_1(ON);
		set_fpled_err(TRUE);
	}
	else
	{
		status.err = FALSE;
		set_stsled_1(OFF);
		set_fpled_err(FALSE);
	}
	static uint16_t count;																	// Toggle status LED 2 during operation
	count++;
	if(count >= 1024)
	{
		toggle_stsled_2();
		count = 0;
	}
}




/*
************************************************************************************************************************************************
Instrument setup save and recall:
*/

static uint16_t EEMEM freq_stor[NMEM+1][4] = { [0 ... NMEM][0 ... 3] = 0xFFFF };			// EEPROM storage of output frequency for setup save and recall
static uint16_t EEMEM level_stor[NMEM+1] = { [0 ... NMEM] = 0xFFFF };						// EEPROM storage of output level for setup save and recall
static uint16_t EEMEM refsts_stor[NMEM+1] = { [0 ... NMEM] = 0xFFFF };						// EEPROM storage of reference status for setup save and recall
static uint16_t EEMEM refmult_stor[NMEM+1] = { [0 ... NMEM] = 0xFFFF };						// EEPROM storage of reference multiplier

typedef union
{
	uint64_t i64;
	uint16_t nibble16[4];
} convert64to16;


static void default_setup(void)																// Recall default setup: 1 GHz, -20 dBm, internal reference
{	
	frequency = 1000000000;																	// Default frequency 1 GHz
	output_level = -200;																	// Default output level -20 dBm
	status.extref = FALSE;																	// Default reference mode: internal
	ref_mult = 10;																			// Reference multiplier set up for 10 MHz reference frequency
}


void save_setup(uint8_t mem)																// Save current setup (output frequency, output level, reference status) to memory mem in EEPROM
{
	convert64to16 freq_buf;
	freq_buf.i64 = frequency;
	for(uint8_t i = 0; i<=3; i++)
		eeprom_update_word(freq_stor[mem] + i, freq_buf.nibble16[i]);						// Store frequency in EEPORM
	eeprom_update_word(&level_stor[mem], output_level);										// Store output level in EEPROM
	eeprom_update_word(&refsts_stor[mem], ~(!!status.extref));								// Store reference status in EEPROM
	eeprom_update_word(&refmult_stor[mem], ref_mult);										// Store reference multiplier
}


void recall_setup(uint8_t mem)																// Recall setup (output frequency, output level, reference status) from memory mem in EEPROM
{
	convert64to16 freq_buf;
	int16_t level_buf;
	uint8_t extref_buf;
	uint8_t refmult_buf;
	for(uint8_t i = 0; i<=3; i++)
		freq_buf.nibble16[i] = eeprom_read_word(freq_stor[mem] + i);						// Read frequency from EEPROM
	level_buf = eeprom_read_word(&level_stor[mem]);											// Read output level from EEPROM
	extref_buf = !!( ~eeprom_read_word(&refsts_stor[mem]) );								// Read reference status from EEPROM
	refmult_buf = eeprom_read_word(&refmult_stor[mem]);										// Read reference multiplier from EEPROM
	if( freq_buf.i64 > MAX_FREQ || freq_buf.i64 < MIN_FREQ || level_buf > MAX_LEV || level_buf < MIN_LEV || refmult_buf < MIN_REFMULT ) // Are frequency or output level data read from EEPROM out of permissible range?
		default_setup();																	// Then use default values
	else
	{
		frequency = freq_buf.i64;
		output_level = level_buf;
		status.extref = extref_buf;
		ref_mult = refmult_buf;
	}
	set_ref(status.extref);																	// Set external/internal reference; this also writes ref_mult to reference PLL chip
	set_freq(frequency);																	// Set output frequency; this also sets level appropriate to output_level
}
/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: system_operation.h
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


#ifndef SYSTEM_OPERATION_H_
#define SYSTEM_OPERATION_H_


/* Variables */
// none


/* Functions */
extern void set_freq(uint64_t new_freq);
extern void set_level(int16_t set_level);
extern void set_lcorr_val(int16_t corr_val);
extern int16_t get_lcorr_val(void);
extern void set_slcorr_val(int16_t corr_val);
extern int16_t get_slcorr_val(void);
extern void set_fcorr_val(int16_t corr_val);
extern int16_t get_fcorr_val(void);
extern uint8_t get_errcode(void);
extern void selftest(void);
extern void save_setup(uint8_t mem);
extern void recall_setup(uint8_t mem);


#endif /* SYSTEM_OPERATION_H_ */
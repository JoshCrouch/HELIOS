/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: system_init.h
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


#ifndef SYSINIT_H_
#define SYSINIT_H_


/*Defines to be globally available*/
#define F_OSC					20000000UL													// CPU clock
#define PRESC					6
#define F_CLK_PER				F_OSC / PRESC												// Peripherals clock frequency is 2.5 MHz (prescaler 8)
#define F_CPU					F_CLK_PER													// CPU clock is 20 MHz


/* Variables */
// none


/* Functions */
extern void processor_init(void);
extern void init_state(void);


#endif /* SYSINIT_H_ */
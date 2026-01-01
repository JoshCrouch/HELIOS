/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: uart.h
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


#ifndef UART_H_
#define UART_H_


/* Variables */
#define RECEIVE_STRLEN		30
#define SEND_STRLEN			60

struct Received_Data {
	char str[RECEIVE_STRLEN+1];
	uint8_t ready;
};

struct Transmit_Data  {
	char str[SEND_STRLEN+1];
	uint8_t ready;
};

extern struct Received_Data received_data;
extern struct Transmit_Data transmit_data;


/* Functions */
extern void uart_init(void);
extern void uart_process(void);


#endif /* UART_H_ */
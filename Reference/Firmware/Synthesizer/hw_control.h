/*
 * *********************************************************************************************************************************************
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Mario Hellmich <mario.hellmich@web.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * Mario Hellmich
 * *********************************************************************************************************************************************
 * File: hw_control.h
 *
 * Version 1.0
 *
 * Created: 16.07.2020
 * Author:  Mario Hellmich <mario.hellmich@web.de>
 * Project: RF Synthesizer Firmware
 *
 * Low level control and initialization of the synthesizer hardware
 *
 */ 

#ifndef HW_CONTROL_H_
#define HW_CONTROL_H_


/* Variables */
// none


/* Functions */
extern void spi_init(void);
extern void hw_init(void);
extern void dds_write_tunewd(uint32_t tunewd);
extern void dac_write_val(uint16_t val);
extern void mpll_write_params(uint16_t int_tunewd, uint8_t prescaler, uint8_t rf_div);
extern void refpll_write_mult(uint8_t mult);
extern void set_ref(uint8_t);
extern void set_atten(uint8_t att_val);
extern void set_hfilter(uint8_t val);
extern void set_stsled_1(uint8_t led_on);
extern void set_stsled_2(uint8_t led_on);
extern void toggle_stsled_2(void);
extern void set_fpled_err(uint8_t led_status);
extern uint8_t get_refpll_unlk(void);
extern uint8_t get_mpll_unlk(void);
extern uint8_t get_alc_unlvld(void);


#endif /* HW_CONTROL_H_ */
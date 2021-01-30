/*
 *        adc_driver.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */

/*
 *        Analog Input and Output Driver header
 */

#ifndef ADC_DRIVER_H_INCLUDED
#define ADC_DRIVER_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
/*------------------------------End include------------------------------*/

#ifdef ADC_DRIVER
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare driver------------------------------*/
 

EXTERN void ADC_Config(void);

EXTERN uint16_t ADC_1_Get(void);
EXTERN uint16_t ADC_2_Get(void);
EXTERN uint16_t ADC_3_Get(void);
EXTERN uint16_t ADC_4_Get(void);
EXTERN uint16_t ADC_5_Get(void);
EXTERN uint16_t ADC_6_Get(void);

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
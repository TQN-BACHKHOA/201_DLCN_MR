/*
 *        adc_convert.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   3/9/2017
 */

/*
 *         Library header
 *         Convert Raw value into Eng. Value
 */

#ifndef ADCConvert_H_INCLUDED
#define ADCConvert_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include <stdint.h>
#include "adc_service.h"
/*------------------------------End include------------------------------*/

#ifdef ADCConvert
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare library------------------------------*/

EXTERN double ADC_Scale(uint8_t sensorNumber, uint16_t Raw_Value);

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
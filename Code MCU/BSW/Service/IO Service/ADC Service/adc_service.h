/*
 *        adc_service.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */
/*
 *        Analog Input Service header
 */

#ifndef ADC_SERVICE_H_INCLUDED
#define ADC_SERVICE_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
/*------------------------------End include------------------------------*/

#ifdef ADC_SERVICE
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare service------------------------------*/
#define VREF 3.288
struct sensorPara{
     float REF_Val[6];
     float RAW_Val[6];
     float Zero[6];
     float Span[6];
} EXTERN SensorPara;
EXTERN void ADC_Init_v(void);
EXTERN uint16_t ADC_Read_uint16(uint8_t channel);

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
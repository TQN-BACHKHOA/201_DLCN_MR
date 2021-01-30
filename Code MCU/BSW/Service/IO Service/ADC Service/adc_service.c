/*
 *        adc_service.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */
/*
 *        Analog Input Service
 */

#define ADC_SERVICE
/*------------------------------Include header file------------------------------*/
#include "adc_service.h"
#include "adc_driver.h"
/*------------------------------End include------------------------------*/

void ADC_Init_v(void)
{
     ADC_Config();
     
     SensorPara.REF_Val[0]     = 100;
     SensorPara.REF_Val[1]     = 100;
     SensorPara.REF_Val[2]     = 100;
     SensorPara.REF_Val[3]     = 300;
     SensorPara.REF_Val[4]     = 100;
     SensorPara.REF_Val[5]     = 100;
     
     SensorPara.RAW_Val[0]    = 100;
     SensorPara.RAW_Val[1]    = 100;
     SensorPara.RAW_Val[2]    = 100;
     SensorPara.RAW_Val[3]    = 300;
     SensorPara.RAW_Val[4]    = 100;
     SensorPara.RAW_Val[5]    = 100;
     
     SensorPara.Span[0]     = 1;
     SensorPara.Span[1]     = 1;
     SensorPara.Span[2]     = 1;
     SensorPara.Span[3]     = 1;
     SensorPara.Span[4]     = 1;
     SensorPara.Span[5]     = 1;
     
     SensorPara.Zero[0]    = 0;
     SensorPara.Zero[1]    = 0;
     SensorPara.Zero[2]    = 0;
     SensorPara.Zero[3]    = 0;
     SensorPara.Zero[4]    = 0;
     SensorPara.Zero[5]    = 0;
}

uint16_t ADC_Read_uint16(uint8_t channel)
{
     uint16_t value = 0;
     switch(channel)
     {
           case 1:
                 value = ADC_1_Get();
                 break;
           case 2:
                 value = ADC_2_Get();
                 break;
           case 3:
                 value = ADC_3_Get();
                 break;
           case 4:
                 value = ADC_4_Get();
                 break;
           case 5:
                 value = ADC_5_Get();
                 break;
           case 6:
                 value = ADC_6_Get();
                 break;
     }
     return value;
}

#undef ADC_SERVICE
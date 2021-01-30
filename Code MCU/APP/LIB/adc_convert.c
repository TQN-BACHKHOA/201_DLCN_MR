/*
 *        adc_convert.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   3/9/2017
 */

/*
 *         Library define
 *         Convert Raw value into Eng. Value
 */

#define ADCCovert

/*------------------------------Include header file------------------------------*/
#include <stdint.h>

#include "adc_convert.h"
/*------------------------------End include------------------------------*/

double ADC_Scale(uint8_t sensorNumber, uint16_t Raw_Value)
{
     double tmp = 0;
     double span = 0;
     double zero = 0;
     if(Raw_Value > 4095) 
        Raw_Value = 4095;
     tmp = Raw_Value*SensorPara.Span[sensorNumber-1] + SensorPara.Zero[sensorNumber-1];
     return tmp;
}

#undef ADCCovert
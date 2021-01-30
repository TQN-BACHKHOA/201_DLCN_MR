/*
 *        adc_driver.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */


/*
 *        Analog Input/Output Driver
 */

#define ADC_DRIVER

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
#include "adc_driver.h"

/*------------------------------End include------------------------------*/

void ADC_Config(void)
{
        //ADC
        ADC_Set_Input_Channel(_ADC_CHANNEL_10|_ADC_CHANNEL_11|_ADC_CHANNEL_12|
                              _ADC_CHANNEL_13|_ADC_CHANNEL_14|_ADC_CHANNEL_15);
        ADC1_Init();        
}

//ADC
uint16_t ADC_1_Get(void)
{
        uint16_t value = ADC1_Get_Sample(10);
        return value;
}
uint16_t ADC_2_Get(void)
{
        uint16_t value = ADC1_Get_Sample(11);
        return value;
}
uint16_t ADC_3_Get(void)
{
        uint16_t value = ADC1_Get_Sample(12);
        return value;
}
uint16_t ADC_4_Get(void)
{
        uint16_t value = ADC1_Get_Sample(13);
        return value;
}
uint16_t ADC_5_Get(void)
{
        uint16_t value = ADC1_Get_Sample(14);
        return value;
}
uint16_t ADC_6_Get(void)
{
        uint16_t value = ADC1_Get_Sample(15);
        return value;
}

#undef ADC_DRIVER
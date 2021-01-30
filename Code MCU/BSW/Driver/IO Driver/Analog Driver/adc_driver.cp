#line 1 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Analog Driver/adc_driver.c"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/analog driver/adc_driver.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 28 "f:/mr_dlcn/code mcu/bsw/driver/io driver/analog driver/adc_driver.h"
  void ADC_Config(void);

  uint16_t ADC_1_Get(void);
  uint16_t ADC_2_Get(void);
  uint16_t ADC_3_Get(void);
  uint16_t ADC_4_Get(void);
  uint16_t ADC_5_Get(void);
  uint16_t ADC_6_Get(void);
#line 21 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Analog Driver/adc_driver.c"
void ADC_Config(void)
{

 ADC_Set_Input_Channel(_ADC_CHANNEL_10|_ADC_CHANNEL_11|_ADC_CHANNEL_12|
 _ADC_CHANNEL_13|_ADC_CHANNEL_14|_ADC_CHANNEL_15);
 ADC1_Init();
}


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

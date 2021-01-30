#line 1 "F:/MR_DLCN/Code MCU/BSW/Service/IO Service/ADC Service/adc_service.c"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/adc service/adc_service.h"
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
#line 26 "f:/mr_dlcn/code mcu/bsw/service/io service/adc service/adc_service.h"
struct sensorPara{
 float REF_Val[6];
 float RAW_Val[6];
 float Zero[6];
 float Span[6];
}   SensorPara;
  void ADC_Init_v(void);
  uint16_t ADC_Read_uint16(uint8_t channel);
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/analog driver/adc_driver.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 28 "f:/mr_dlcn/code mcu/bsw/driver/io driver/analog driver/adc_driver.h"
 extern  void ADC_Config(void);

 extern  uint16_t ADC_1_Get(void);
 extern  uint16_t ADC_2_Get(void);
 extern  uint16_t ADC_3_Get(void);
 extern  uint16_t ADC_4_Get(void);
 extern  uint16_t ADC_5_Get(void);
 extern  uint16_t ADC_6_Get(void);
#line 17 "F:/MR_DLCN/Code MCU/BSW/Service/IO Service/ADC Service/adc_service.c"
void ADC_Init_v(void)
{
 ADC_Config();

 SensorPara.REF_Val[0] = 100;
 SensorPara.REF_Val[1] = 100;
 SensorPara.REF_Val[2] = 100;
 SensorPara.REF_Val[3] = 300;
 SensorPara.REF_Val[4] = 100;
 SensorPara.REF_Val[5] = 100;

 SensorPara.RAW_Val[0] = 100;
 SensorPara.RAW_Val[1] = 100;
 SensorPara.RAW_Val[2] = 100;
 SensorPara.RAW_Val[3] = 300;
 SensorPara.RAW_Val[4] = 100;
 SensorPara.RAW_Val[5] = 100;

 SensorPara.Span[0] = 1;
 SensorPara.Span[1] = 1;
 SensorPara.Span[2] = 1;
 SensorPara.Span[3] = 1;
 SensorPara.Span[4] = 1;
 SensorPara.Span[5] = 1;

 SensorPara.Zero[0] = 0;
 SensorPara.Zero[1] = 0;
 SensorPara.Zero[2] = 0;
 SensorPara.Zero[3] = 0;
 SensorPara.Zero[4] = 0;
 SensorPara.Zero[5] = 0;
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

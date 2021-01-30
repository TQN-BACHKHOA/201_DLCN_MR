#line 1 "F:/MR_DLCN/Code MCU/APP/LIB/adc_convert.c"
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
#line 1 "f:/mr_dlcn/code mcu/app/lib/adc_convert.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/adc service/adc_service.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 26 "f:/mr_dlcn/code mcu/bsw/service/io service/adc service/adc_service.h"
struct sensorPara{
 float REF_Val[6];
 float RAW_Val[6];
 float Zero[6];
 float Span[6];
}  extern  SensorPara;
 extern  void ADC_Init_v(void);
 extern  uint16_t ADC_Read_uint16(uint8_t channel);
#line 29 "f:/mr_dlcn/code mcu/app/lib/adc_convert.h"
 extern  double ADC_Scale(uint8_t sensorNumber, uint16_t Raw_Value);
#line 21 "F:/MR_DLCN/Code MCU/APP/LIB/adc_convert.c"
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

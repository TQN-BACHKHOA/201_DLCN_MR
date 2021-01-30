#line 1 "F:/MR_DLCN/Code MCU/BSW/Service/IO Service/DIO Service/dio_service.c"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/dio service/dio_service.h"
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
#line 26 "f:/mr_dlcn/code mcu/bsw/service/io service/dio service/dio_service.h"
  void DIO_Init_v(void);
  uint8_t DI_Get_uint8(uint8_t pin);
  uint8_t DO_Get_uint8(uint8_t pin);
  void DO_Set_v(uint8_t pin, uint8_t value);
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/digital driver/dio_driver.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/io driver/digital driver/dio_driver.h"
 extern  void DIO_Config(void);

 extern  uint8_t DI_0_Get(void);
 extern  uint8_t DI_1_Get(void);
 extern  uint8_t DI_2_Get(void);
 extern  uint8_t DI_3_Get(void);
 extern  uint8_t DI_4_Get(void);
 extern  uint8_t DI_5_Get(void);
 extern  uint8_t DI_6_Get(void);
 extern  uint8_t DI_7_Get(void);
 extern  uint8_t DI_8_Get(void);

 extern  uint8_t DO_0_Get(void);
 extern  uint8_t DO_1_Get(void);
 extern  uint8_t DO_2_Get(void);
 extern  uint8_t DO_3_Get(void);
 extern  uint8_t DO_4_Get(void);
 extern  uint8_t DO_5_Get(void);
 extern  uint8_t DO_6_Get(void);
 extern  uint8_t DO_7_Get(void);
 extern  uint8_t DO_8_Get(void);

 extern  void DO_0_Set(uint8_t value);
 extern  void DO_1_Set(uint8_t value);
 extern  void DO_2_Set(uint8_t value);
 extern  void DO_3_Set(uint8_t value);
 extern  void DO_4_Set(uint8_t value);
 extern  void DO_5_Set(uint8_t value);
 extern  void DO_6_Set(uint8_t value);
 extern  void DO_7_Set(uint8_t value);
 extern  void DO_8_Set(uint8_t value);
#line 17 "F:/MR_DLCN/Code MCU/BSW/Service/IO Service/DIO Service/dio_service.c"
void DIO_Init_v(void)
{
 DIO_Config();
}


uint8_t DI_Get_uint8(uint8_t pin)
{
 uint8_t value = 0;
 switch(pin)
 {
 case 0:
 value = DI_0_Get();
 break;
 case 1:
 value = DI_1_Get();
 break;
 case 2:
 value = DI_2_Get();
 break;
 case 3:
 value = DI_3_Get();
 break;
 case 4:
 value = DI_4_Get();
 break;
 case 5:
 value = DI_5_Get();
 break;
 case 6:
 value = DI_6_Get();
 break;
 case 7:
 value = DI_7_Get();
 break;
 case 8:
 value = DI_8_Get();
 break;
 }
 return value;
}


uint8_t DO_Get_uint8(uint8_t pin)
{
 uint8_t value = 0;
 switch(pin)
 {
 case 0:
 value = DO_0_Get();
 break;
 case 1:
 value = DO_1_Get();
 break;
 case 2:
 value = DO_2_Get();
 break;
 case 3:
 value = DO_3_Get();
 break;
 case 4:
 value = DO_4_Get();
 break;
 case 5:
 value = DO_5_Get();
 break;
 case 6:
 value = DO_6_Get();
 break;
 case 7:
 value = DO_7_Get();
 break;
 case 8:
 value = DO_8_Get();
 break;
 }
 return value;
}

void DO_Set_v(uint8_t pin, uint8_t value)
{
 switch(pin)
 {
 case 0:
 DO_0_Set(value);
 break;
 case 1:
 DO_1_Set(value);
 break;
 case 2:
 DO_2_Set(value);
 break;
 case 3:
 DO_3_Set(value);
 break;
 case 4:
 DO_4_Set(value);
 break;
 case 5:
 DO_5_Set(value);
 break;
 case 6:
 DO_6_Set(value);
 break;
 case 7:
 DO_7_Set(value);
 break;
 case 8:
 DO_8_Set(value);
 break;
 }
}

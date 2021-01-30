#line 1 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Digital Driver/dio_driver.c"
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
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/digital driver/dio_driver.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/io driver/digital driver/dio_driver.h"
  void DIO_Config(void);

  uint8_t DI_0_Get(void);
  uint8_t DI_1_Get(void);
  uint8_t DI_2_Get(void);
  uint8_t DI_3_Get(void);
  uint8_t DI_4_Get(void);
  uint8_t DI_5_Get(void);
  uint8_t DI_6_Get(void);
  uint8_t DI_7_Get(void);
  uint8_t DI_8_Get(void);

  uint8_t DO_0_Get(void);
  uint8_t DO_1_Get(void);
  uint8_t DO_2_Get(void);
  uint8_t DO_3_Get(void);
  uint8_t DO_4_Get(void);
  uint8_t DO_5_Get(void);
  uint8_t DO_6_Get(void);
  uint8_t DO_7_Get(void);
  uint8_t DO_8_Get(void);

  void DO_0_Set(uint8_t value);
  void DO_1_Set(uint8_t value);
  void DO_2_Set(uint8_t value);
  void DO_3_Set(uint8_t value);
  void DO_4_Set(uint8_t value);
  void DO_5_Set(uint8_t value);
  void DO_6_Set(uint8_t value);
  void DO_7_Set(uint8_t value);
  void DO_8_Set(uint8_t value);
#line 21 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Digital Driver/dio_driver.c"
sbit DI1 at GPIOD_IDR.B0;
sbit DI2 at GPIOD_IDR.B1;
sbit DI3 at GPIOC_IDR.B14;
sbit DI4 at GPIOC_IDR.B15;
sbit DI5 at GPIOD_IDR.B4;
sbit DI6 at GPIOD_IDR.B5;
sbit DI7 at GPIOD_IDR.B6;
sbit DI8 at GPIOD_IDR.B7;

sbit DO1 at GPIOD_ODR.B8;
sbit DO2 at GPIOD_ODR.B9;
sbit DO3 at GPIOD_ODR.B10;
sbit DO4 at GPIOD_ODR.B11;
sbit DO5 at GPIOD_ODR.B12;
sbit DO6 at GPIOD_ODR.B13;
sbit DO7 at GPIOD_ODR.B14;
sbit DO8 at GPIOD_ODR.B15;

void DIO_Config(void)
{


 GPIO_Digital_Input(&GPIOC_BASE,_GPIO_PINMASK_14|_GPIO_PINMASK_15);

 GPIO_Digital_Input(&GPIOD_BASE,_GPIO_PINMASK_0|_GPIO_PINMASK_1|_GPIO_PINMASK_4|
 _GPIO_PINMASK_5|_GPIO_PINMASK_6|_GPIO_PINMASK_7);

 GPIO_Digital_Output(&GPIOD_BASE,_GPIO_PINMASK_HIGH);

 GPIOD_ODR = 0;
}


uint8_t DI_0_Get(void)
{
 uint8_t tmp;
 tmp.F0 = DI1;
 tmp.F1 = DI2;
 tmp.F2 = DI3;
 tmp.F3 = DI4;
 tmp.F4 = DI5;
 tmp.F5 = DI6;
 tmp.F6 = DI7;
 tmp.F7 = DI8;
 return tmp;
}

uint8_t DI_1_Get(void)
{
 uint8_t tmp = DI1;
 return tmp;
}

uint8_t DI_2_Get(void)
{
 uint8_t tmp = DI2;
 return tmp;
}

uint8_t DI_3_Get(void)
{
 uint8_t tmp = DI3;
 return tmp;
}

uint8_t DI_4_Get(void)
{
 uint8_t tmp = DI4;
 return tmp;
}

uint8_t DI_5_Get(void)
{
 uint8_t tmp = DI5;
 return tmp;
}

uint8_t DI_6_Get(void)
{
 uint8_t tmp = DI6;
 return tmp;
}

uint8_t DI_7_Get(void)
{
 uint8_t tmp = DI7;
 return tmp;
}

uint8_t DI_8_Get(void)
{
 uint8_t tmp = DI8;
 return tmp;
}

void DO_0_Set(uint8_t value)
{
 DO1 = value.F0;
 DO2 = value.F1;
 DO3 = value.F2;
 DO4 = value.F3;
 DO5 = value.F4;
 DO6 = value.F5;
 DO7 = value.F6;
 DO8 = value.F7;
}

void DO_1_Set(uint8_t value)
{
 DO1 = value;
}

void DO_2_Set(uint8_t value)
{
 DO2 = value;
}

void DO_3_Set(uint8_t value)
{
 DO3 = value;
}

void DO_4_Set(uint8_t value)
{
 DO4 = value;
}

void DO_5_Set(uint8_t value)
{
 DO5 = value;
}

void DO_6_Set(uint8_t value)
{
 DO6 = value;
}

void DO_7_Set(uint8_t value)
{

 if(value==0)
 GPIOD_BSRRbits.BR14 = 1;
 else
 GPIOD_BSRRbits.BS14 = 1;
}

void DO_8_Set(uint8_t value)
{

 if(value==0)
 GPIOD_BSRRbits.BR15 = 1;
 else
 GPIOD_BSRRbits.BS15 = 1;
}


uint8_t DO_0_Get(void)
{
 uint8_t tmp;
#line 190 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Digital Driver/dio_driver.c"
 tmp = GPIOD_ODR>>8;
 return tmp;
}

uint8_t DO_1_Get(void)
{
 uint8_t tmp = DO1;
 return tmp;
}

uint8_t DO_2_Get(void)
{
 uint8_t tmp = DO2;
 return tmp;
}

uint8_t DO_3_Get(void)
{
 uint8_t tmp = DO3;
 return tmp;
}

uint8_t DO_4_Get(void)
{
 uint8_t tmp = DO4;
 return tmp;
}

uint8_t DO_5_Get(void)
{
 uint8_t tmp = DO5;
 return tmp;
}

uint8_t DO_6_Get(void)
{
 uint8_t tmp = DO6;
 return tmp;
}

uint8_t DO_7_Get(void)
{
 uint8_t tmp = DO7;
 return tmp;
}

uint8_t DO_8_Get(void)
{
 uint8_t tmp = DO8;
 return tmp;
}

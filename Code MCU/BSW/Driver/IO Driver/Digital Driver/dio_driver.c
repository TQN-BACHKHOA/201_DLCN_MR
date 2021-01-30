/*
 *        dio_driver.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 17/8/2017
 */


/*
 *        Digital Input/Output Driver
 */

#define DIO_DRIVER

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
#include "dio_driver.h"

/*------------------------------End include------------------------------*/
//Inputs
sbit DI1 at GPIOD_IDR.B0;
sbit DI2 at GPIOD_IDR.B1;
sbit DI3 at GPIOC_IDR.B14;
sbit DI4 at GPIOC_IDR.B15;
sbit DI5 at GPIOD_IDR.B4;
sbit DI6 at GPIOD_IDR.B5;
sbit DI7 at GPIOD_IDR.B6;
sbit DI8 at GPIOD_IDR.B7;
//Outputs
sbit DO1 at GPIOD_ODR.B8;
sbit DO2 at GPIOD_ODR.B9;
sbit DO3 at GPIOD_ODR.B10;
sbit DO4 at GPIOD_ODR.B11;
sbit DO5 at GPIOD_ODR.B12; //gLED
sbit DO6 at GPIOD_ODR.B13; //oLED
sbit DO7 at GPIOD_ODR.B14; //rLED
sbit DO8 at GPIOD_ODR.B15; //bLED

void DIO_Config(void)
{
        
        //Inputs 3 and 4
        GPIO_Digital_Input(&GPIOC_BASE,_GPIO_PINMASK_14|_GPIO_PINMASK_15);
        //Inputs
        GPIO_Digital_Input(&GPIOD_BASE,_GPIO_PINMASK_0|_GPIO_PINMASK_1|_GPIO_PINMASK_4|
                                       _GPIO_PINMASK_5|_GPIO_PINMASK_6|_GPIO_PINMASK_7);
        //Outputs
        GPIO_Digital_Output(&GPIOD_BASE,_GPIO_PINMASK_HIGH);
        //Reset all outputs
        GPIOD_ODR = 0;
}

//Digital inputs
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
//Digital input 1
uint8_t DI_1_Get(void)
{
     uint8_t tmp = DI1;
     return tmp;
}
//Digital input 2
uint8_t DI_2_Get(void)
{
     uint8_t tmp = DI2;
     return tmp;
}
//Digital input 3
uint8_t DI_3_Get(void)
{
     uint8_t tmp = DI3;
     return tmp;
}
//Digital input 4
uint8_t DI_4_Get(void)
{
     uint8_t tmp = DI4;
     return tmp;
}
//Digital input 5
uint8_t DI_5_Get(void)
{
     uint8_t tmp = DI5;
     return tmp;
}
//Digital input 6
uint8_t DI_6_Get(void)
{
     uint8_t tmp = DI6;
     return tmp;
}
//Digital input 7
uint8_t DI_7_Get(void)
{
     uint8_t tmp = DI7;
     return tmp;
}
//Digital input 8
uint8_t DI_8_Get(void)
{
     uint8_t tmp = DI8;
     return tmp;
}
//Write digital outputs
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
//Write digital output 1
void DO_1_Set(uint8_t value)
{
     DO1 = value;
}
//Write digital output 2
void DO_2_Set(uint8_t value)
{
     DO2 = value;
}
//Write digital output 3
void DO_3_Set(uint8_t value)
{
     DO3 = value;
}
//Erite digital output 4
void DO_4_Set(uint8_t value)
{
     DO4 = value;
}
//Write digital output 5
void DO_5_Set(uint8_t value)
{
     DO5 = value;
}
//Write digital output 6
void DO_6_Set(uint8_t value)
{
     DO6 = value;
}
//Write digital output 7
void DO_7_Set(uint8_t value)
{
     //DO7 = value;
     if(value==0)
         GPIOD_BSRRbits.BR14 = 1;
     else
         GPIOD_BSRRbits.BS14 = 1;
}
//Write digital output 8
void DO_8_Set(uint8_t value)
{
     //DO8 = value;
     if(value==0)
         GPIOD_BSRRbits.BR15 = 1;
     else
         GPIOD_BSRRbits.BS15 = 1;
}

//Read digital outputs
uint8_t DO_0_Get(void)
{
     uint8_t tmp;
     /*
     tmp.F0 = DO1;
     tmp.F1 = DO2;
     tmp.F2 = DO3;
     tmp.F3 = DO4;
     tmp.F4 = DO5;
     tmp.F5 = DO6;
     tmp.F6 = DO7;
     tmp.F7 = DO8;
     */
     tmp = GPIOD_ODR>>8;
     return tmp;
}
//Read digital output 1
uint8_t DO_1_Get(void)
{
     uint8_t tmp = DO1;
     return tmp;
}
//Read digital output 2
uint8_t DO_2_Get(void)
{
     uint8_t tmp = DO2;
     return tmp;
}
//Read digital output 3
uint8_t DO_3_Get(void)
{
     uint8_t tmp = DO3;
     return tmp;
}
//Read digital output 4
uint8_t DO_4_Get(void)
{
     uint8_t tmp = DO4;
     return tmp;
}
//Read digital output 5
uint8_t DO_5_Get(void)
{
     uint8_t tmp = DO5;
     return tmp;
}
//Read digital output 6
uint8_t DO_6_Get(void)
{
     uint8_t tmp = DO6;
     return tmp;
}
//Read digital output 7
uint8_t DO_7_Get(void)
{
     uint8_t tmp = DO7;
     return tmp;
}
//Read digital output 8
uint8_t DO_8_Get(void)
{
     uint8_t tmp = DO8;
     return tmp;
}
#undef DIO_DRIVER
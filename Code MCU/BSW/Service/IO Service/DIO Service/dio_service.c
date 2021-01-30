/*
 *        dio_service.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */
/*
 *        Digital Input and Output Service
 */

#define DIO_SERVICE
/*------------------------------Include header file------------------------------*/
#include "dio_service.h"
#include "dio_driver.h"
/*------------------------------End include------------------------------*/

void DIO_Init_v(void)
{
     DIO_Config();
}

//Inputs
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

//Read onputs
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
//Write outputs
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

#undef DIO_SERVICE
/*
 *        dio_service.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */
/*
 *        Digital Input and Output Service header
 */

#ifndef DIO_SERVICE_H_INCLUDED
#define DIO_SERVICE_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
/*------------------------------End include------------------------------*/

#ifdef DIO_SERVICE
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare service------------------------------*/

EXTERN void DIO_Init_v(void);
EXTERN uint8_t DI_Get_uint8(uint8_t pin);
EXTERN uint8_t DO_Get_uint8(uint8_t pin);
EXTERN void DO_Set_v(uint8_t pin, uint8_t value);

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
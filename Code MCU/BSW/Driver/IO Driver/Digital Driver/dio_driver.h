/*
 *        dio_driver.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date: 3/9/2017
 */

/*
 *        Digital Input/Output Driver header
 */

#ifndef DIO_DRIVER_H_INCLUDED
#define DIO_DRIVER_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
/*------------------------------End include------------------------------*/

#ifdef DIO_DRIVER
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare driver------------------------------*/

EXTERN void DIO_Config(void);

EXTERN uint8_t DI_0_Get(void);
EXTERN uint8_t DI_1_Get(void);
EXTERN uint8_t DI_2_Get(void);
EXTERN uint8_t DI_3_Get(void);
EXTERN uint8_t DI_4_Get(void);
EXTERN uint8_t DI_5_Get(void);
EXTERN uint8_t DI_6_Get(void);
EXTERN uint8_t DI_7_Get(void);
EXTERN uint8_t DI_8_Get(void);

EXTERN uint8_t DO_0_Get(void);
EXTERN uint8_t DO_1_Get(void);
EXTERN uint8_t DO_2_Get(void);
EXTERN uint8_t DO_3_Get(void);
EXTERN uint8_t DO_4_Get(void);
EXTERN uint8_t DO_5_Get(void);
EXTERN uint8_t DO_6_Get(void);
EXTERN uint8_t DO_7_Get(void);
EXTERN uint8_t DO_8_Get(void);

EXTERN void DO_0_Set(uint8_t value);
EXTERN void DO_1_Set(uint8_t value);
EXTERN void DO_2_Set(uint8_t value);
EXTERN void DO_3_Set(uint8_t value);
EXTERN void DO_4_Set(uint8_t value);
EXTERN void DO_5_Set(uint8_t value);
EXTERN void DO_6_Set(uint8_t value);
EXTERN void DO_7_Set(uint8_t value);
EXTERN void DO_8_Set(uint8_t value);


/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
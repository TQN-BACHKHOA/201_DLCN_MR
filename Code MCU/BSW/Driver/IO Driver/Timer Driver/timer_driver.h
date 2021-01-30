/*
 *        timer_driver.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:        20/8/2017
 */

/*
 *        Timer Driver header
 */

#ifndef TIMER_DRIVER_H_INCLUDED
#define TIMER_DRIVER_H_INCLUDED

/*------------------------------Include header file------------------------------*/

/*------------------------------End include------------------------------*/

#ifdef TIMER_DRIVER
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare driver------------------------------*/

EXTERN void TIMER6_Config_v(void);
EXTERN void TIMER6_Enable_v(void);
EXTERN void TIMER6_Disable_v(void);
EXTERN void TIMER6_Clear_v(void);
EXTERN void TIMER7_Config_v(void);
EXTERN void TIMER7_Enable_v(void);
EXTERN void TIMER7_Disable_v(void);
EXTERN void TIMER7_Clear_v(void);

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
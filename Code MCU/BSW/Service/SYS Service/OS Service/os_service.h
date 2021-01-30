/*
 *         os_service.h
 *        Revision: 1.0
 *  Author: NDH
 *        Date:        20/8/2017
 */

/*
 *        OS Service header
 */

#ifndef OS_SERVICE_H_INCLUDED
#define OS_SERVICE_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include <stdint.h>
/*------------------------------End include------------------------------*/

#ifdef OS_SERVICE
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare service------------------------------*/

EXTERN void OS_ConfigPeriodTask_v(void);
EXTERN void OS_ConfigInterruptTask_v(void);
EXTERN void OS_PeriodTask1_Enable_v(void);
EXTERN void OS_PeriodTask2_Enable_v(void);
EXTERN void OS_InterruptTask1_Enable_v(void);        //RS-232-RX
EXTERN void OS_InterruptTask2_Enable_v(void);        //RS-485
EXTERN void OS_InterruptTask3_Enable_v(void);        //CAN
EXTERN void OS_InterruptTask4_Enable_v(void);        //USB

EXTERN void OS_PeriodTask1_Disable_v(void);
EXTERN void OS_PeriodTask2_Disable_v(void);
EXTERN void OS_InterruptTask1_Disable_v(void);       //RS-232-RX
EXTERN void OS_InterruptTask3_Disable_v(void);       //CAN

EXTERN void OS_PeriodTask1_FlagClear_v(void);
EXTERN void OS_PeriodTask2_FlagClear_v(void);
EXTERN void OS_InterruptTask1_FlagClear_v(void);
EXTERN void OS_InterruptTask2_FlagClear_v(void);
EXTERN void OS_InterruptTask3_FlagClear_v(void);
EXTERN void OS_InterruptTask4_FlagClear_v(void);


/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
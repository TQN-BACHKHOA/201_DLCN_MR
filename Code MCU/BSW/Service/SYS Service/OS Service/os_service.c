/*
 *         os_service.c
 *        Revision: 1.0
 *  Author: NDH
 *        Date:        20/8/2017
 */

/*
 *        OS Service
 */

#define OS_SERVICE

/*------------------------------Include header file------------------------------*/
#include <stdint.h>
#include "os_service.h"
#include "timer_driver.h"
#include "rs232_driver.h"

/*------------------------------End include------------------------------*/

void OS_ConfigPeriodTask_v(void)
{
        //Config Timer Interrupt
        TIMER6_Config_v();
        TIMER7_Config_v();
        
        return;
}

void OS_ConfigInterruptTask_v(void)
{
        //Config RS-232 Interrupt
        RS232_Config();
        

        return;
}

void OS_PeriodTask1_Enable_v(void)
{
        // Enable Timer
        TIMER7_Enable_v();

        return;
}

void OS_PeriodTask2_Enable_v(void)
{
        // Enable Timer
        TIMER6_Enable_v();

        return;
}

void OS_PeriodTask1_Disable_v(void)
{
        // Enable Timer
        TIMER6_Disable_v();

        return;
}

void OS_PeriodTask2_Disable_v(void)
{
        // Enable Timer
        TIMER7_Disable_v();

        return;
}

void OS_InterruptTask1_Enable_v(void)
{
        // Enable RS-232-RX Interrupt
        RS232_IntRx_Enable();
        return;
}

void OS_InterruptTask1_Disable_v(void)
{
        // Enable RS-232-RX Interrupt
        RS232_IntRx_Disable();
        return;
}


void OS_InterruptTask2_Enable_v(void)
{
        // Enable RS-485 Interrupt

        return;
}

void OS_InterruptTask3_Enable_v(void)
{
        // Enable CAN Interrupt

        return;
}

void OS_InterruptTask3_Disable_v(void)
{
        // Disable CAN Interrupt

        return;
}

void OS_InterruptTask4_Enable_v(void)
{
        // Enable USB Interrupt

        return;
}

void OS_PeriodTask2_FlagClear_v(void)
{
        //Clear Timer Flag
        TIMER6_Clear_v();
        return;
}

void OS_PeriodTask1_FlagClear_v(void)
{
        //Clear Timer Flag
        TIMER7_Clear_v();
        return;
}

void OS_InterruptTask1_FlagClear_v(void)
{
        //Clear RS-232-RX Flag 
        RS232_IntRx_Clear();
        return;
}


void OS_InterruptTask2_FlagClear_v(void)
{
        //Clear RS-485 Flag

        return;
}

void OS_InterruptTask3_FlagClear_v(void)
{
        //Clear CAN Flag

        return;
}

void OS_InterruptTask4_FlagClear_v(void)
{
        //Clear USB Flag

        return;
}
#undef OS_SERVICE
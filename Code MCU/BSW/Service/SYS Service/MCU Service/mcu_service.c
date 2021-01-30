/*
 *        mcu_service.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   20/8/2017
 */

/*
 *        MCU Service
 */

#define MCU_SERVICE

/*------------------------------Include header file------------------------------*/
#include "mcu_service.h"

#include "os_service.h"
#include "dio_service.h"
#include "adc_service.h"
#include "hmi_service.h"
#include "timer_driver.h"
/*------------------------------End include------------------------------*/

void MCU_Init_v(void)
{
        //        Disable All Interrupt
        DisableInterrupts();

        //        Configure HMI
        HMI_Init_v();

        //        Configure Tasks
        OS_ConfigPeriodTask_v();
        OS_ConfigInterruptTask_v();
    
        
        
        
        //        Configure Digital IO
        DIO_Init_v();

        //        Configure Analog
        ADC_Init_v();
        
        

        return;
}

void MCU_Enable_v(void)
{
        //        Enable Joint

        //        Enable All Interrupt
        EnableInterrupts();

        //        Enable HMI
        HMI_Enable_v();
        
        //        Enable task 1 for control actuator
        OS_PeriodTask1_Enable_v();
        OS_PeriodTask2_Enable_v();

        return;
}

#undef MCU_SERVICE
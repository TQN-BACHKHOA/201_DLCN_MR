/*
 *        main.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:        20/8/2017
 */

/*
 *        Run Time Enviroment
 */
#define DAQ

/*------------------------------Include header file------------------------------*/

//        Include "_run.h"
#include "FCN_run.h"
#include "RDS_run.h"

//        Include "_service.h"
#include "mcu_service.h"
#include "os_service.h"
#include "hmi_service.h"

//debug
#include "FCN_in.h"
#include "FCN_out.h"
#include "RDS_in.h"
#include "RDS_out.h"
/*------------------------------End include------------------------------*/


void Task_T100ms_v() iv IVT_INT_TIM6_DAC ics ICS_AUTO
{
        OS_PeriodTask2_FlagClear_v();
        RDS_Run_v();
        return;
}

void Task_T10ms_v() iv IVT_INT_TIM7 ics ICS_AUTO
{
        OS_PeriodTask1_FlagClear_v();        
        //RDS_run_v();
                
        return;
}
//RS232
void Task_Interrupt_1_v() iv IVT_INT_DMA1_Stream1 ics ICS_AUTO
{
        OS_InterruptTask1_FlagClear_v();
        RDS_Read_v();
        return;
}

void Task_Interrupt_2_v(void)
{
        OS_InterruptTask2_FlagClear_v();

        return;
}



void Task_Init_v(void)
{
        //        Init MCU
        MCU_Init_v();        

        //        Enable Tasks
        OS_PeriodTask1_Enable_v();
        OS_InterruptTask1_Enable_v();
        OS_InterruptTask2_Enable_v();
       
        //        Init Components        
        FCN_Init_v();
        RDS_Init_v();

        //        Enable MCU
        MCU_Enable_v();

        return;
}

void Task_Background_v(void)
{

}

void main(void)
{
        Task_Init_v();
        Task_Background_v();
}

#undef DAQ
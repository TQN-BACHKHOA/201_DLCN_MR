/*
 *        hmi_service.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   19/8/2017
 */

/*
 *        HMI Service
 */

#define HMI_SERVICE

/*------------------------------Include header file------------------------------*/
#include "hmi_service.h"
#include "rs232_driver.h"
/*------------------------------End include------------------------------*/

void HMI_Init_v(void)
{
        //        Init and configure RS232
        RS232_Init();
        
        return;
}

void HMI_Enable_v(void)
{
        //        Enable RS232
        RS232_Enable();

        return;
}

void HMI_FrameRead_v(void)
{
        
        RS232_Read();
        
        return;
}

void HMI_FrameWrite_v(void)
{        
        
        //        RS232 port
        RS232_Write();
        
        return;
}

#undef HMI_SERVICE
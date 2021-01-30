/*
 *        FCN_controler.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   19/8/2017
 */

/*
 *        Functional component
 *        Input: HMI Data
 *        Output: Receiver Data
 */

#define FCN

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
#include "FCN_in.h"
#include "FCN_out.h"
#include "FCN_run.h"
#include "adc_convert.h"

//        Include "_pub.h"

//        Include "_service.h"
#include "hmi_service.h"
#include "dio_service.h"
#include "adc_service.h"

/*------------------------------End include------------------------------*/

void FCN_Read(void)
{
     HMI_FrameRead_v();
     return;
}

void FCN_Write(void)
{
     //Copy ID and Function code
     g_HMI_SendID_uint16   = g_HMI_ReceiverID_uint16;
     g_HMI_SendCode_uint16 = g_HMI_ReceiverCode_uint16;
     HMI_FrameWrite_v();
     //Delay_ms(50);
     return;
}


//IO 
void FCN_DIO_v(void)
{
       switch(g_HMI_ReceiverCode_uint16)
       {             
             case OUT0_CODE:
                  DO_Set_v(0,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(0);                  
                  break;
             case OUT1_CODE:
                  DO_Set_v(1,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(1);
                  break;
             case OUT2_CODE:
                  DO_Set_v(2,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(2);
                  break;
             case OUT3_CODE:
                  DO_Set_v(3,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(3);
                  break;
             case OUT4_CODE:
                  DO_Set_v(4,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(4);
                  break;
             case OUT5_CODE:
                  DO_Set_v(5,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(5);
                  break;
             case OUT6_CODE:
                  DO_Set_v(6,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(6);
                  break;
             case OUT7_CODE:
                  DO_Set_v(7,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(7);
                  break;
             case OUT8_CODE:
                  DO_Set_v(8,g_HMI_ReceiverDO_uint8);
                  g_HMI_SendDataDO_uint8 = DO_Get_uint8(8);
                  break;
       }      
}


void FCN_Run_v(void)
{
        //Read data
        //FCN_Read();
        
        //Process digital IOs
        FCN_DIO_v();        
        
        return;
}

void FCN_Init_v(void)
{
        ;        
        return;
}
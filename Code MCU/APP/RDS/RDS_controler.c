/*
 *        RDS_controler.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   21/12/2020
 */

/*
 *        Functional component
 *        Input: Sensor Raw Data
 *        Output: Sensor Eng. Data
 */

#define RDS

/*------------------------------Include header file------------------------------*/
#include "stdint.h"
#include "RDS_in.h"
#include "RDS_out.h"
#include "RDS_run.h"
#include "adc_convert.h"

//        Include "_pub.h"

//        Include "_service.h"
#include "hmi_service.h"
#include "dio_service.h"
#include "adc_service.h"

/*------------------------------End include------------------------------*/



void RDS_Write(void)
{
     //Copy ID and Function code
     g_HMI_SendID_uint16   = 0x4646;//g_HMI_ReceiverID_uint16;
     g_HMI_SendCode_uint16 = 0x4130;//g_HMI_ReceiverCode_uint16;
     HMI_FrameWrite_v();
     //VREF_HIGH_Channel_1 = 20.0;
     //Delay_ms(50);
     return;
}


//ADC 
void RDS_ADC_v(void)
{
       uint16_t value = 0;
       value = ADC_Read_uint16(1);
       g_HMI_SendDataEng_Data1_double = ADC_Scale(1, value);
       value = ADC_Read_uint16(2);
       g_HMI_SendDataEng_Data2_double = ADC_Scale(2, value);
       value = ADC_Read_uint16(3);
       g_HMI_SendDataEng_Data3_double = ADC_Scale(3, value);
       value = ADC_Read_uint16(4);
       g_HMI_SendDataEng_Data4_double = ADC_Scale(4, value);
       value = ADC_Read_uint16(5);
       g_HMI_SendDataEng_Data5_double = ADC_Scale(5, value);
       value = ADC_Read_uint16(6);
       g_HMI_SendDataEng_Data6_double = ADC_Scale(6, value);
       //Write data
       RDS_Write();       
}

//IO 
void RDS_DIO_v(void)
{
       g_HMI_SendDataDO_uint8 = DO_Get_uint8(0);
       g_HMI_SendDataDI_uint8 = DI_Get_uint8(0);
       g_HMI_SendDataRaw_Data1_int32 = (g_HMI_SendDataDO_uint8<<8) + g_HMI_SendDataDI_uint8;
       RDS_Write();       
}

void RDS_Read_v(void)
{
     uint8_t cnt = 0;
     if (cnt == 0)
        DO_Set_v(7, 1);
     else
        DO_Set_v(7, 0);
       switch(g_HMI_ReceiverCode_uint16)
       {
               case ADC1_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[0]  = ADC_Read_uint16(1);
                         //SensorPara.REF_Val[0]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[0]     = /*SensorPara.REF_Val[0]*/ - SensorPara.RAW_Val[0];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[0]  = (ADC_Read_uint16(1) > 4095)? 4095:ADC_Read_uint16(1);
                         SensorPara.REF_Val[0]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[0]     = (SensorPara.REF_Val[0] - SensorPara.Zero[0])/SensorPara.RAW_Val[0];

                    }
                    break;
               case ADC2_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[1]  = (ADC_Read_uint16(2) > 4095)? 4095:ADC_Read_uint16(2);
                         //SensorPara.REF_Val[1]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[1]     = /*SensorPara.REF_Val[1]*/ - SensorPara.RAW_Val[1];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[1]  = (ADC_Read_uint16(2) > 4095)? 4095:ADC_Read_uint16(2);
                         SensorPara.REF_Val[1]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[1]     = (SensorPara.REF_Val[1] - SensorPara.Zero[1])/SensorPara.RAW_Val[1];
                    }
                    break;
               case ADC3_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[2]  = (ADC_Read_uint16(3) > 4095)? 4095:ADC_Read_uint16(3);
                         //SensorPara.REF_Val[2]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[2]     = /*SensorPara.REF_Val[2]*/ - SensorPara.RAW_Val[2];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[2]  = (ADC_Read_uint16(3) > 4095)? 4095:ADC_Read_uint16(3);
                         SensorPara.REF_Val[2]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[2]     = (SensorPara.REF_Val[2] - SensorPara.Zero[2])/SensorPara.RAW_Val[2];
                    }
                    break;
               case ADC4_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[3]  = (ADC_Read_uint16(4) > 4095)? 4095:ADC_Read_uint16(4);
                         //SensorPara.REF_Val[3]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[3]     = /*SensorPara.REF_Val[3]*/ - SensorPara.RAW_Val[3];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[3]  = (ADC_Read_uint16(4) > 4095)? 4095:ADC_Read_uint16(4);
                         SensorPara.REF_Val[3]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[3]     = (SensorPara.REF_Val[3] - SensorPara.Zero[3])/SensorPara.RAW_Val[3];
                    }
                    break;
               case ADC5_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[4]  = (ADC_Read_uint16(5) > 4095)? 4095:ADC_Read_uint16(5);
                        // SensorPara.REF_Val[4]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[4]     = /*SensorPara.REF_Val[4]*/ - SensorPara.RAW_Val[4];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[4]  = (ADC_Read_uint16(5) > 4095)? 4095:ADC_Read_uint16(5);
                         SensorPara.REF_Val[4]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[4]     = (SensorPara.REF_Val[4] - SensorPara.Zero[4])/SensorPara.RAW_Val[4];
                    }
                    break;
               case ADC6_CODE:
                    if(g_HMI_ReceiverID_uint16 == 0x464C){
                         SensorPara.RAW_Val[5]  = (ADC_Read_uint16(6) > 4095)? 4095:ADC_Read_uint16(6);
                         //SensorPara.REF_Val[5]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Zero[5]     = /*SensorPara.REF_Val[5]*/ - SensorPara.RAW_Val[5];
                    }
                    if(g_HMI_ReceiverID_uint16 == 0x4648){
                         SensorPara.RAW_Val[5]  = (ADC_Read_uint16(6) > 4095)? 4095:ADC_Read_uint16(6);
                         SensorPara.REF_Val[5]  = g_HMI_ADC_EngVale_double;
                         SensorPara.Span[5]     = (SensorPara.REF_Val[5] - SensorPara.Zero[5])/SensorPara.RAW_Val[5];
                    }
                    break;
       }
}

void RDS_Run_v(void)
{        
        //Process analog
        RDS_ADC_v();
        
        //Process digital IOs
        //RDS_DIO_v();
        
        return;
}

void RDS_Init_v(void)
{
        ;        
        return;
}
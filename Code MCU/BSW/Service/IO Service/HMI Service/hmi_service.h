/*
 *        hmi_service.h
 *        Revision: 2.0
 *        Author: NDH
 *        Date:   3/9/2017
 */

/*
 *        HMI Service header
 */

#ifndef HMI_SERVICE_H_INCLUDED
#define HMI_SERVICE_H_INCLUDED

/*------------------------------Include header file------------------------------*/
#include <stdint.h>
/*------------------------------End include------------------------------*/

#ifdef HMI_SERVICE
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare service------------------------------*/

//        Define HMI frame
#define HMI_SEND_DATA_LENGTH          32
#define HMI_RECEIVER_DATA_LENGTH      12


typedef union
{
        uint8_t SendData_puint8[HMI_SEND_DATA_LENGTH];
        struct
        {
                uint16_t ID;                                    //2
                uint16_t Code_uint16;                           //2
                int32_t  Data_pint32[6];     //data             //24
                uint16_t Subcode_uint16;                        //2
                uint16_t CRC;                                   //2
        } SendDataRaw_st;
        struct
        {
                uint16_t ID;                                    //2
                uint16_t Code_uint16;                           //2
                double   Data_pdouble[6];     //data            //24
                uint16_t Subcode_uint16;                        //2
                uint16_t CRC;                                   //2
        } SendDataEng_st;
} HMI_TX_FRAME_UN;

enum HMI_SEND_CODE_EN
{
        HMI_DATA = (uint16_t)0xABCD,
};

typedef union
{
        uint8_t ReceiverData_puint8[HMI_RECEIVER_DATA_LENGTH];        
        struct
        {
              uint16_t ID;
              uint16_t Code_uint16;
              double   EngValue;       // for writing DAC in eng. value (0.0-3.3V)
              uint16_t RawValue;       // not used
              uint16_t CRC;
        }ADC_st;       
        struct
        {
                uint16_t ID;
                uint16_t Code_uint16;
                uint16_t Index_uint16;  
                uint16_t Data_uint16;
                int16_t Velocity_int16; 
                uint16_t CRC_uint16;
        } ReceiverData_st;
} HMI_RX_FRAME_UN;

enum HMI_RECEIVER_CODE_EN
{       
        STATUS_CODE= 0x5353,        //SS  --> get status of system        
        RESET_CODE = 0x5245,        //RE  --> reset errors       


        //for editing program
        EDIT_CODE  = 0x4544,        //ED  --> begin of program
        E_CODE     = 0x4545,        //EE  --> end of program
        EXE_CODE   = 0x4558,        //EX  --> execute program
        NOT_CODE   = 0x4E4F,        //NO  --> not (NOT cond)
        AND_CODE   = 0x414E,        //AN  --> and (AND cond1 cond2)
        OR_CODE    = 0x4F52,        //OR  --> or  (OR cond1 cond2)
        WAIT_CODE  = 0x5741,        //WA  --> wait
        IF_CODE    = 0x4946,        //IF  --> if command
        WHILE_CODE = 0x5748,        //WH  --> while command
        END_CODE   = 0x454E,        //EN  --> end of WHILE, FOR, IF
        GOTO_CODE  = 0x474F,        //GO  --> goto command        
        

        //for digital IOs
        IO_CODE       = 0x494F,               //IO  --> read status of all digital inputs and outputs
        IN0_CODE      = 0x4930,               //I0  --> read all digital inputs
        IN1_CODE      = 0x4931,               //I1  --> read digital input 1
        IN2_CODE      = 0x4932,               //I2  --> read digital input 2
        IN3_CODE      = 0x4933,               //I3  --> read digital input 3
        IN4_CODE      = 0x4934,               //I4  --> read digital input 4
        IN5_CODE      = 0x4935,               //I5  --> read digital input 5
        IN6_CODE      = 0x4936,               //I6  --> read digital input 6
        IN7_CODE      = 0x4937,               //I7  --> read digital input 7
        IN8_CODE      = 0x4938,               //I8  --> read digital input 8
        
        OUT0_CODE     = 0x4F30,               //O0  --> write all digital outputs
        OUT1_CODE     = 0x4F31,               //O1  --> write digital output 1
        OUT2_CODE     = 0x4F32,               //O2  --> write digital output 2
        OUT3_CODE     = 0x4F33,               //O3  --> write digital output 3
        OUT4_CODE     = 0x4F34,               //O4  --> write digital output 4
        OUT5_CODE     = 0x4F35,               //O5  --> write digital output 5
        OUT6_CODE     = 0x4F36,               //O6  --> write digital output 6
        OUT7_CODE     = 0x4F37,               //O7  --> write digital output 7
        OUT8_CODE     = 0x4F38,               //O8  --> write digital output 8

        //for analog
        ADC0_CODE     = 0x4130,               //A0  --> read all analog inputs
        ADC1_CODE     = 0x4131,               //A1  --> read analog input 1
        ADC2_CODE     = 0x4132,               //A2  --> read analog input 2
        ADC3_CODE     = 0x4133,               //A3  --> read analog input 3
        ADC4_CODE     = 0x4134,               //A4  --> read analog input 4
        ADC5_CODE     = 0x4135,               //A5  --> read analog input 5
        ADC6_CODE     = 0x4136,               //A6  --> read analog input 6
        

};

EXTERN void HMI_Init_v(void);
EXTERN void HMI_Enable_v(void);
EXTERN void HMI_FrameRead_v(void);
EXTERN void HMI_FrameWrite_v(void);
/*------------------------------End declare------------------------------*/
/*------------------------------Declare component variables------------------------------*/
EXTERN HMI_RX_FRAME_UN g_HMI_ReceiverData_un;

#define g_HMI_ReceiverData_puint8        g_HMI_ReceiverData_un.ReceiverData_puint8

//DIOs
#define g_HMI_ReceiverDI_uint8           g_HMI_ReceiverData_puint8[4]
#define g_HMI_ReceiverDO_uint8           g_HMI_ReceiverData_puint8[5]
//ADCs
#define g_HMI_ReceiverADC_Lo_uint8       g_HMI_ReceiverData_puint8[4]
#define g_HMI_ReceiverADC_Hi_uint8       g_HMI_ReceiverData_puint8[5]
#define g_HMI_ADC_RawValue_uint16        g_HMI_ReceiverData_un.ADC_st.RawValue
#define g_HMI_ADC_EngVale_double         g_HMI_ReceiverData_un.ADC_st.EngValue

//Common
#define g_HMI_ReceiverID_uint16          g_HMI_ReceiverData_un.ReceiverData_st.ID
#define g_HMI_ReceiverCode_uint16        g_HMI_ReceiverData_un.ReceiverData_st.Code_uint16
#define g_HMI_ReceiverCRC_uint16         g_HMI_ReceiverData_un.ReceiverData_st.CRC_uint16

EXTERN HMI_TX_FRAME_UN g_HMI_SendData_un;
#define g_HMI_SendData_puint8             g_HMI_SendData_un.SendData_puint8

#define g_HMI_SendID_uint16               g_HMI_SendData_un.SendDataRaw_st.ID
#define g_HMI_SendCode_uint16             g_HMI_SendData_un.SendDataRaw_st.Code_uint16
#define g_HMI_SendSubcode_uint16          g_HMI_SendData_un.SendDataRaw_st.Subcode_uint16
#define g_HMI_SendCRC_uint16              g_HMI_SendData_un.SendDataRaw_st.CRC

//IO data
#define g_HMI_SendDataDI_uint8            g_HMI_SendData_un.SendData_puint8[4]
#define g_HMI_SendDataDO_uint8            g_HMI_SendData_un.SendData_puint8[5]

//Raw data
#define g_HMI_SendDataRaw_pint32          g_HMI_SendData_un.SendDataRaw_st.Data_pint32
#define g_HMI_SendDataRaw_Data1_int32     g_HMI_SendDataRaw_pint32[0]
#define g_HMI_SendDataRaw_Data2_int32     g_HMI_SendDataRaw_pint32[1]
#define g_HMI_SendDataRaw_Data3_int32     g_HMI_SendDataRaw_pint32[2]
#define g_HMI_SendDataRaw_Data4_int32     g_HMI_SendDataRaw_pint32[3]
#define g_HMI_SendDataRaw_Data5_int32     g_HMI_SendDataRaw_pint32[4]
#define g_HMI_SendDataRaw_Data6_int32     g_HMI_SendDataRaw_pint32[5]
//Eng. data
#define g_HMI_SendDataEng_pdouble         g_HMI_SendData_un.SendDataEng_st.Data_pdouble
#define g_HMI_SendDataEng_Data1_double    g_HMI_SendDataEng_pdouble[0]
#define g_HMI_SendDataEng_Data2_double    g_HMI_SendDataEng_pdouble[1]
#define g_HMI_SendDataEng_Data3_double    g_HMI_SendDataEng_pdouble[2]
#define g_HMI_SendDataEng_Data4_double    g_HMI_SendDataEng_pdouble[3]
#define g_HMI_SendDataEng_Data5_double    g_HMI_SendDataEng_pdouble[4]
#define g_HMI_SendDataEng_Data6_double    g_HMI_SendDataEng_pdouble[5]


/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
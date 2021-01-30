#line 1 "F:/MR_DLCN/Code MCU/APP/Run Time/main.c"
#line 1 "f:/mr_dlcn/code mcu/app/fcn/fcn_run.h"
#line 26 "f:/mr_dlcn/code mcu/app/fcn/fcn_run.h"
 extern  void FCN_Init_v(void);
 extern  void FCN_Run_v(void);
#line 1 "f:/mr_dlcn/code mcu/app/rds/rds_run.h"
#line 26 "f:/mr_dlcn/code mcu/app/rds/rds_run.h"
 extern  void RDS_Init_v(void);
 extern  void RDS_Run_v(void);
 extern  void RDS_Read_v(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/service/sys service/mcu service/mcu_service.h"
#line 26 "f:/mr_dlcn/code mcu/bsw/service/sys service/mcu service/mcu_service.h"
 extern  void MCU_Init_v(void);
 extern  void MCU_Enable_v(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/service/sys service/os service/os_service.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 27 "f:/mr_dlcn/code mcu/bsw/service/sys service/os service/os_service.h"
 extern  void OS_ConfigPeriodTask_v(void);
 extern  void OS_ConfigInterruptTask_v(void);
 extern  void OS_PeriodTask1_Enable_v(void);
 extern  void OS_PeriodTask2_Enable_v(void);
 extern  void OS_InterruptTask1_Enable_v(void);
 extern  void OS_InterruptTask2_Enable_v(void);
 extern  void OS_InterruptTask3_Enable_v(void);
 extern  void OS_InterruptTask4_Enable_v(void);

 extern  void OS_PeriodTask1_Disable_v(void);
 extern  void OS_PeriodTask2_Disable_v(void);
 extern  void OS_InterruptTask1_Disable_v(void);
 extern  void OS_InterruptTask3_Disable_v(void);

 extern  void OS_PeriodTask1_FlagClear_v(void);
 extern  void OS_PeriodTask2_FlagClear_v(void);
 extern  void OS_InterruptTask1_FlagClear_v(void);
 extern  void OS_InterruptTask2_FlagClear_v(void);
 extern  void OS_InterruptTask3_FlagClear_v(void);
 extern  void OS_InterruptTask4_FlagClear_v(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 32 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
typedef union
{
 uint8_t SendData_puint8[ 32 ];
 struct
 {
 uint16_t ID;
 uint16_t Code_uint16;
 int32_t Data_pint32[6];
 uint16_t Subcode_uint16;
 uint16_t CRC;
 } SendDataRaw_st;
 struct
 {
 uint16_t ID;
 uint16_t Code_uint16;
 double Data_pdouble[6];
 uint16_t Subcode_uint16;
 uint16_t CRC;
 } SendDataEng_st;
} HMI_TX_FRAME_UN;

enum HMI_SEND_CODE_EN
{
 HMI_DATA = (uint16_t)0xABCD,
};

typedef union
{
 uint8_t ReceiverData_puint8[ 12 ];
 struct
 {
 uint16_t ID;
 uint16_t Code_uint16;
 double EngValue;
 uint16_t RawValue;
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
 STATUS_CODE= 0x5353,
 RESET_CODE = 0x5245,



 EDIT_CODE = 0x4544,
 E_CODE = 0x4545,
 EXE_CODE = 0x4558,
 NOT_CODE = 0x4E4F,
 AND_CODE = 0x414E,
 OR_CODE = 0x4F52,
 WAIT_CODE = 0x5741,
 IF_CODE = 0x4946,
 WHILE_CODE = 0x5748,
 END_CODE = 0x454E,
 GOTO_CODE = 0x474F,



 IO_CODE = 0x494F,
 IN0_CODE = 0x4930,
 IN1_CODE = 0x4931,
 IN2_CODE = 0x4932,
 IN3_CODE = 0x4933,
 IN4_CODE = 0x4934,
 IN5_CODE = 0x4935,
 IN6_CODE = 0x4936,
 IN7_CODE = 0x4937,
 IN8_CODE = 0x4938,

 OUT0_CODE = 0x4F30,
 OUT1_CODE = 0x4F31,
 OUT2_CODE = 0x4F32,
 OUT3_CODE = 0x4F33,
 OUT4_CODE = 0x4F34,
 OUT5_CODE = 0x4F35,
 OUT6_CODE = 0x4F36,
 OUT7_CODE = 0x4F37,
 OUT8_CODE = 0x4F38,


 ADC0_CODE = 0x4130,
 ADC1_CODE = 0x4131,
 ADC2_CODE = 0x4132,
 ADC3_CODE = 0x4133,
 ADC4_CODE = 0x4134,
 ADC5_CODE = 0x4135,
 ADC6_CODE = 0x4136,


};

 extern  void HMI_Init_v(void);
 extern  void HMI_Enable_v(void);
 extern  void HMI_FrameRead_v(void);
 extern  void HMI_FrameWrite_v(void);


 extern  HMI_RX_FRAME_UN g_HMI_ReceiverData_un;
#line 158 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
 extern  HMI_TX_FRAME_UN g_HMI_SendData_un;
#line 1 "f:/mr_dlcn/code mcu/app/fcn/fcn_in.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
#line 1 "f:/mr_dlcn/code mcu/app/fcn/fcn_out.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
#line 1 "f:/mr_dlcn/code mcu/app/rds/rds_in.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/dio service/dio_service.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 26 "f:/mr_dlcn/code mcu/bsw/service/io service/dio service/dio_service.h"
 extern  void DIO_Init_v(void);
 extern  uint8_t DI_Get_uint8(uint8_t pin);
 extern  uint8_t DO_Get_uint8(uint8_t pin);
 extern  void DO_Set_v(uint8_t pin, uint8_t value);
#line 1 "f:/mr_dlcn/code mcu/app/rds/rds_out.h"
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
#line 32 "F:/MR_DLCN/Code MCU/APP/Run Time/main.c"
void Task_T100ms_v() iv IVT_INT_TIM6_DAC ics ICS_AUTO
{
 OS_PeriodTask2_FlagClear_v();
 RDS_Run_v();
 return;
}

void Task_T10ms_v() iv IVT_INT_TIM7 ics ICS_AUTO
{
 OS_PeriodTask1_FlagClear_v();


 return;
}

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

 MCU_Init_v();


 OS_PeriodTask1_Enable_v();
 OS_InterruptTask1_Enable_v();
 OS_InterruptTask2_Enable_v();


 FCN_Init_v();
 RDS_Init_v();


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

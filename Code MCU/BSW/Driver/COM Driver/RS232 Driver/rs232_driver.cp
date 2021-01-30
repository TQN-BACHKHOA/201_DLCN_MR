#line 1 "F:/MR_DLCN/Code MCU/BSW/Driver/COM Driver/RS232 Driver/rs232_driver.c"
#line 15 "F:/MR_DLCN/Code MCU/BSW/Driver/COM Driver/RS232 Driver/rs232_driver.c"
void DMA1_Rx_UART_Config(void);
void DMA1_Tx_UART_Config(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/com driver/rs232 driver/rs232_driver.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/com driver/rs232 driver/rs232_driver.h"
  void RS232_Config(void);
  void RS232_Init(void);
  void RS232_Enable(void);
  void RS232_Read(void);
  void RS232_Write(void);
  void RS232_IntRx_Enable(void);
  void RS232_IntRx_Disable(void);
  void RS232_IntRx_Clear(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/service/io service/hmi service/hmi_service.h"
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
#line 24 "F:/MR_DLCN/Code MCU/BSW/Driver/COM Driver/RS232 Driver/rs232_driver.c"
void RS232_Config(void)
{
 RCC_AHB1ENRbits.DMA1EN = 1;
 Delay_ms(100);

 DMA1_Rx_UART_Config();








 UART3_Init_Advanced(9600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_USART3_PB10_11);
 USART3_CR3.DMAR = 1;
 USART3_CR3.DMAT = 1;

 return;
}

void RS232_Init(void)
{
 return;
}

void RS232_Enable(void)
{
 DMA1_S1CRbits.EN = 1;
 return;
}

void RS232_Read(void)
{
 DMA1_S1CRbits.EN = 1;
 return;
}

void RS232_Write(void)
{
 DMA1_Tx_UART_Config();
 DMA1_S3CRbits.EN = 1;

 return;
}

void RS232_IntRx_Enable(void)
{
 NVIC_IntEnable(IVT_INT_DMA1_Stream1);
 return;
}

void RS232_IntRx_Disable(void)
{
 NVIC_IntDisable(IVT_INT_DMA1_Stream1);
 return;
}

void RS232_IntRx_Clear(void)
{
 DMA1_LIFCRbits.CTCIF1 = 1;
 return;
}

void DMA1_Rx_UART_Config(void)
{
 DMA1_S1CR = 0;

 while(DMA1_S1CRbits.EN);
 DMA1_S1FCRbits.DMDIS = 0;
 DMA1_S1CR = 0x08030510;
 DMA1_S1PAR = &USART3_DR;
 DMA1_S1M0AR=  g_HMI_ReceiverData_un.ReceiverData_puint8 ;
 DMA1_S1NDTR=  12 ;
 DMA1_LIFCRbits.CTCIF1 = 1;
}

void DMA1_Tx_UART_Config(void)
{
 DMA1_S3CR = 0;

 while(DMA1_S3CRbits.EN);
 DMA1_S3FCRbits.DMDIS = 0;
 DMA1_S3CR = 0x08000450;
 DMA1_S3PAR = &USART3_DR;
 DMA1_S3M0AR=  g_HMI_SendData_un.SendData_puint8 ;
 DMA1_S3NDTR=  32 ;
 DMA1_LIFCRbits.CTCIF3 = 1;
}

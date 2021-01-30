/*
 *        rs232_driver.c
 *        Revision: 2.0
 *        Author: NDH
 *        Date:   19/8/2017
 */

/*
 *        RS232 Driver using USART3
 *        Read and Write through DMA
 */

#define RS232_DRIVER

void DMA1_Rx_UART_Config(void);
void DMA1_Tx_UART_Config(void);
/*------------------------------Include header file------------------------------*/
#include "rs232_driver.h"
#include "hmi_service.h"
//#include "FCN_in.h"
//#include "FCN_out.h"
/*------------------------------End include------------------------------*/

void RS232_Config(void)
{
        RCC_AHB1ENRbits.DMA1EN = 1;   //enable DMA Clock
        Delay_ms(100);
        //Config DMA Rx
        DMA1_Rx_UART_Config();

        //Config DMA Tx
        //DMA1_Tx_UART_Config();

        //        Configure UART: Baudrate = 9600
        //                                          Data: 8 bits
        //                                          Parity: No
        //                                          Stop: 1 bit
        UART3_Init_Advanced(9600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_USART3_PB10_11);
        USART3_CR3.DMAR = 1;                      //enable Rx DMA
        USART3_CR3.DMAT = 1;                      //enable Tx DMA

        return;
}

void RS232_Init(void)
{
        return;
}

void RS232_Enable(void)
{
        DMA1_S1CRbits.EN = 1;                     //Stream rx enabled to read buffer at first time
        return;
}

void RS232_Read(void)
{
        DMA1_S1CRbits.EN = 1;                     //Stream rx enabled --> read buffer (unnecessary as circular mode
        return;
}

void RS232_Write(void)
{
        DMA1_Tx_UART_Config();
        DMA1_S3CRbits.EN = 1;                     //Stream tx enabled --> write buffer
        //UART3_Write_Text(g_HMI_SendData_puint8);
        return;
}

void RS232_IntRx_Enable(void)
{
        NVIC_IntEnable(IVT_INT_DMA1_Stream1);                     //Interrupt rx enabled
        return;
}

void RS232_IntRx_Disable(void)
{
        NVIC_IntDisable(IVT_INT_DMA1_Stream1);                     //Interrupt rx enabled
        return;
}

void RS232_IntRx_Clear(void)
{
        DMA1_LIFCRbits.CTCIF1  = 1;                                     //Clear Interrupt rx Flag
        return;
}

void DMA1_Rx_UART_Config(void)
{
        DMA1_S1CR = 0;
        //Delay_ms(100);
        while(DMA1_S1CRbits.EN);            //wait untill stream is ready to be configured
        DMA1_S1FCRbits.DMDIS = 0;                 //Direct mode enabled
        DMA1_S1CR = 0x08030510;
        DMA1_S1PAR = &USART3_DR;                  //set address of uart_dr register (&USART_DR)
        DMA1_S1M0AR= g_HMI_ReceiverData_puint8;                     //memory addres
        DMA1_S1NDTR= HMI_RECEIVER_DATA_LENGTH;                          //receive 12 bytes
        DMA1_LIFCRbits.CTCIF1  = 1;          //Clear stream 1 transfer complete interrupt flag
}

void DMA1_Tx_UART_Config(void)
{
        DMA1_S3CR = 0;
        //Delay_ms(100);
        while(DMA1_S3CRbits.EN);            //wait untill stream is ready to be configured
        DMA1_S3FCRbits.DMDIS = 0;           //Direct mode enabled
        DMA1_S3CR = 0x08000450;
        DMA1_S3PAR = &USART3_DR;                  //set address of uart_dr register (&USART_DR)
        DMA1_S3M0AR= g_HMI_SendData_puint8;                     //memory addres
        DMA1_S3NDTR= HMI_SEND_DATA_LENGTH;                      //send 32 bytes
        DMA1_LIFCRbits.CTCIF3  = 1;         //Clear stream 3 transfer complete interrupt flag
}
#undef RS232_DRIVER
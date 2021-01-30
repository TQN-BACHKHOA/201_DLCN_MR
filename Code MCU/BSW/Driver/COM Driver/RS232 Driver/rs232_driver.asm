_RS232_Config:
;rs232_driver.c,24 :: 		void RS232_Config(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;rs232_driver.c,26 :: 		RCC_AHB1ENRbits.DMA1EN = 1;   //enable DMA Clock
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(RCC_AHB1ENRbits+0)
MOVT	R0, #hi_addr(RCC_AHB1ENRbits+0)
_SX	[R0, ByteOffset(RCC_AHB1ENRbits+0)]
;rs232_driver.c,27 :: 		Delay_ms(100);
MOVW	R7, #4521
MOVT	R7, #4
NOP
NOP
L_RS232_Config0:
SUBS	R7, R7, #1
BNE	L_RS232_Config0
NOP
NOP
;rs232_driver.c,29 :: 		DMA1_Rx_UART_Config();
BL	_DMA1_Rx_UART_Config+0
;rs232_driver.c,38 :: 		UART3_Init_Advanced(9600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_USART3_PB10_11);
MOVW	R0, #lo_addr(__GPIO_MODULE_USART3_PB10_11+0)
MOVT	R0, #hi_addr(__GPIO_MODULE_USART3_PB10_11+0)
PUSH	(R0)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
MOVW	R0, #9600
BL	_UART3_Init_Advanced+0
ADD	SP, SP, #4
;rs232_driver.c,39 :: 		USART3_CR3.DMAR = 1;                      //enable Rx DMA
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(USART3_CR3+0)
MOVT	R0, #hi_addr(USART3_CR3+0)
_SX	[R0, ByteOffset(USART3_CR3+0)]
;rs232_driver.c,40 :: 		USART3_CR3.DMAT = 1;                      //enable Tx DMA
MOVW	R0, #lo_addr(USART3_CR3+0)
MOVT	R0, #hi_addr(USART3_CR3+0)
_SX	[R0, ByteOffset(USART3_CR3+0)]
;rs232_driver.c,42 :: 		return;
;rs232_driver.c,43 :: 		}
L_end_RS232_Config:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RS232_Config
_RS232_Init:
;rs232_driver.c,45 :: 		void RS232_Init(void)
SUB	SP, SP, #4
;rs232_driver.c,47 :: 		return;
;rs232_driver.c,48 :: 		}
L_end_RS232_Init:
ADD	SP, SP, #4
BX	LR
; end of _RS232_Init
_RS232_Enable:
;rs232_driver.c,50 :: 		void RS232_Enable(void)
SUB	SP, SP, #4
;rs232_driver.c,52 :: 		DMA1_S1CRbits.EN = 1;                     //Stream rx enabled to read buffer at first time
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_S1CRbits+0)
MOVT	R0, #hi_addr(DMA1_S1CRbits+0)
_SX	[R0, ByteOffset(DMA1_S1CRbits+0)]
;rs232_driver.c,53 :: 		return;
;rs232_driver.c,54 :: 		}
L_end_RS232_Enable:
ADD	SP, SP, #4
BX	LR
; end of _RS232_Enable
_RS232_Read:
;rs232_driver.c,56 :: 		void RS232_Read(void)
SUB	SP, SP, #4
;rs232_driver.c,58 :: 		DMA1_S1CRbits.EN = 1;                     //Stream rx enabled --> read buffer (unnecessary as circular mode
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_S1CRbits+0)
MOVT	R0, #hi_addr(DMA1_S1CRbits+0)
_SX	[R0, ByteOffset(DMA1_S1CRbits+0)]
;rs232_driver.c,59 :: 		return;
;rs232_driver.c,60 :: 		}
L_end_RS232_Read:
ADD	SP, SP, #4
BX	LR
; end of _RS232_Read
_RS232_Write:
;rs232_driver.c,62 :: 		void RS232_Write(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;rs232_driver.c,64 :: 		DMA1_Tx_UART_Config();
BL	_DMA1_Tx_UART_Config+0
;rs232_driver.c,65 :: 		DMA1_S3CRbits.EN = 1;                     //Stream tx enabled --> write buffer
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_S3CRbits+0)
MOVT	R0, #hi_addr(DMA1_S3CRbits+0)
_SX	[R0, ByteOffset(DMA1_S3CRbits+0)]
;rs232_driver.c,67 :: 		return;
;rs232_driver.c,68 :: 		}
L_end_RS232_Write:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RS232_Write
_RS232_IntRx_Enable:
;rs232_driver.c,70 :: 		void RS232_IntRx_Enable(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;rs232_driver.c,72 :: 		NVIC_IntEnable(IVT_INT_DMA1_Stream1);                     //Interrupt rx enabled
MOVW	R0, #28
BL	_NVIC_IntEnable+0
;rs232_driver.c,73 :: 		return;
;rs232_driver.c,74 :: 		}
L_end_RS232_IntRx_Enable:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RS232_IntRx_Enable
_RS232_IntRx_Disable:
;rs232_driver.c,76 :: 		void RS232_IntRx_Disable(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;rs232_driver.c,78 :: 		NVIC_IntDisable(IVT_INT_DMA1_Stream1);                     //Interrupt rx enabled
MOVW	R0, #28
BL	_NVIC_IntDisable+0
;rs232_driver.c,79 :: 		return;
;rs232_driver.c,80 :: 		}
L_end_RS232_IntRx_Disable:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RS232_IntRx_Disable
_RS232_IntRx_Clear:
;rs232_driver.c,82 :: 		void RS232_IntRx_Clear(void)
SUB	SP, SP, #4
;rs232_driver.c,84 :: 		DMA1_LIFCRbits.CTCIF1  = 1;                                     //Clear Interrupt rx Flag
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_LIFCRbits+0)
MOVT	R0, #hi_addr(DMA1_LIFCRbits+0)
_SX	[R0, ByteOffset(DMA1_LIFCRbits+0)]
;rs232_driver.c,85 :: 		return;
;rs232_driver.c,86 :: 		}
L_end_RS232_IntRx_Clear:
ADD	SP, SP, #4
BX	LR
; end of _RS232_IntRx_Clear
_DMA1_Rx_UART_Config:
;rs232_driver.c,88 :: 		void DMA1_Rx_UART_Config(void)
SUB	SP, SP, #4
;rs232_driver.c,90 :: 		DMA1_S1CR = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(DMA1_S1CR+0)
MOVT	R0, #hi_addr(DMA1_S1CR+0)
STR	R1, [R0, #0]
;rs232_driver.c,92 :: 		while(DMA1_S1CRbits.EN);            //wait untill stream is ready to be configured
L_DMA1_Rx_UART_Config2:
MOVW	R0, #lo_addr(DMA1_S1CRbits+0)
MOVT	R0, #hi_addr(DMA1_S1CRbits+0)
_LX	[R0, ByteOffset(DMA1_S1CRbits+0)]
CMP	R0, #0
IT	EQ
BEQ	L_DMA1_Rx_UART_Config3
IT	AL
BAL	L_DMA1_Rx_UART_Config2
L_DMA1_Rx_UART_Config3:
;rs232_driver.c,93 :: 		DMA1_S1FCRbits.DMDIS = 0;                 //Direct mode enabled
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_S1FCRbits+0)
MOVT	R0, #hi_addr(DMA1_S1FCRbits+0)
_SX	[R0, ByteOffset(DMA1_S1FCRbits+0)]
;rs232_driver.c,94 :: 		DMA1_S1CR = 0x08030510;
MOVW	R1, #1296
MOVT	R1, #2051
MOVW	R0, #lo_addr(DMA1_S1CR+0)
MOVT	R0, #hi_addr(DMA1_S1CR+0)
STR	R1, [R0, #0]
;rs232_driver.c,95 :: 		DMA1_S1PAR = &USART3_DR;                  //set address of uart_dr register (&USART_DR)
MOVW	R1, #lo_addr(USART3_DR+0)
MOVT	R1, #hi_addr(USART3_DR+0)
MOVW	R0, #lo_addr(DMA1_S1PAR+0)
MOVT	R0, #hi_addr(DMA1_S1PAR+0)
STR	R1, [R0, #0]
;rs232_driver.c,96 :: 		DMA1_S1M0AR= g_HMI_ReceiverData_puint8;                     //memory addres
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+0)
MOVW	R0, #lo_addr(DMA1_S1M0AR+0)
MOVT	R0, #hi_addr(DMA1_S1M0AR+0)
STR	R1, [R0, #0]
;rs232_driver.c,97 :: 		DMA1_S1NDTR= HMI_RECEIVER_DATA_LENGTH;                          //receive 12 bytes
MOVS	R1, #12
MOVW	R0, #lo_addr(DMA1_S1NDTR+0)
MOVT	R0, #hi_addr(DMA1_S1NDTR+0)
STR	R1, [R0, #0]
;rs232_driver.c,98 :: 		DMA1_LIFCRbits.CTCIF1  = 1;          //Clear stream 1 transfer complete interrupt flag
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_LIFCRbits+0)
MOVT	R0, #hi_addr(DMA1_LIFCRbits+0)
_SX	[R0, ByteOffset(DMA1_LIFCRbits+0)]
;rs232_driver.c,99 :: 		}
L_end_DMA1_Rx_UART_Config:
ADD	SP, SP, #4
BX	LR
; end of _DMA1_Rx_UART_Config
_DMA1_Tx_UART_Config:
;rs232_driver.c,101 :: 		void DMA1_Tx_UART_Config(void)
SUB	SP, SP, #4
;rs232_driver.c,103 :: 		DMA1_S3CR = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(DMA1_S3CR+0)
MOVT	R0, #hi_addr(DMA1_S3CR+0)
STR	R1, [R0, #0]
;rs232_driver.c,105 :: 		while(DMA1_S3CRbits.EN);            //wait untill stream is ready to be configured
L_DMA1_Tx_UART_Config4:
MOVW	R0, #lo_addr(DMA1_S3CRbits+0)
MOVT	R0, #hi_addr(DMA1_S3CRbits+0)
_LX	[R0, ByteOffset(DMA1_S3CRbits+0)]
CMP	R0, #0
IT	EQ
BEQ	L_DMA1_Tx_UART_Config5
IT	AL
BAL	L_DMA1_Tx_UART_Config4
L_DMA1_Tx_UART_Config5:
;rs232_driver.c,106 :: 		DMA1_S3FCRbits.DMDIS = 0;           //Direct mode enabled
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_S3FCRbits+0)
MOVT	R0, #hi_addr(DMA1_S3FCRbits+0)
_SX	[R0, ByteOffset(DMA1_S3FCRbits+0)]
;rs232_driver.c,107 :: 		DMA1_S3CR = 0x08000450;
MOVW	R1, #1104
MOVT	R1, #2048
MOVW	R0, #lo_addr(DMA1_S3CR+0)
MOVT	R0, #hi_addr(DMA1_S3CR+0)
STR	R1, [R0, #0]
;rs232_driver.c,108 :: 		DMA1_S3PAR = &USART3_DR;                  //set address of uart_dr register (&USART_DR)
MOVW	R1, #lo_addr(USART3_DR+0)
MOVT	R1, #hi_addr(USART3_DR+0)
MOVW	R0, #lo_addr(DMA1_S3PAR+0)
MOVT	R0, #hi_addr(DMA1_S3PAR+0)
STR	R1, [R0, #0]
;rs232_driver.c,109 :: 		DMA1_S3M0AR= g_HMI_SendData_puint8;                     //memory addres
MOVW	R1, #lo_addr(_g_HMI_SendData_un+0)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+0)
MOVW	R0, #lo_addr(DMA1_S3M0AR+0)
MOVT	R0, #hi_addr(DMA1_S3M0AR+0)
STR	R1, [R0, #0]
;rs232_driver.c,110 :: 		DMA1_S3NDTR= HMI_SEND_DATA_LENGTH;                      //send 32 bytes
MOVS	R1, #32
MOVW	R0, #lo_addr(DMA1_S3NDTR+0)
MOVT	R0, #hi_addr(DMA1_S3NDTR+0)
STR	R1, [R0, #0]
;rs232_driver.c,111 :: 		DMA1_LIFCRbits.CTCIF3  = 1;         //Clear stream 3 transfer complete interrupt flag
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(DMA1_LIFCRbits+0)
MOVT	R0, #hi_addr(DMA1_LIFCRbits+0)
_SX	[R0, ByteOffset(DMA1_LIFCRbits+0)]
;rs232_driver.c,112 :: 		}
L_end_DMA1_Tx_UART_Config:
ADD	SP, SP, #4
BX	LR
; end of _DMA1_Tx_UART_Config

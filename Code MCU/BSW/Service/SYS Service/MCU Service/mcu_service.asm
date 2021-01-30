_MCU_Init_v:
;mcu_service.c,24 :: 		void MCU_Init_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;mcu_service.c,27 :: 		DisableInterrupts();
BL	_DisableInterrupts+0
;mcu_service.c,30 :: 		HMI_Init_v();
BL	_HMI_Init_v+0
;mcu_service.c,33 :: 		OS_ConfigPeriodTask_v();
BL	_OS_ConfigPeriodTask_v+0
;mcu_service.c,34 :: 		OS_ConfigInterruptTask_v();
BL	_OS_ConfigInterruptTask_v+0
;mcu_service.c,40 :: 		DIO_Init_v();
BL	_DIO_Init_v+0
;mcu_service.c,43 :: 		ADC_Init_v();
BL	_ADC_Init_v+0
;mcu_service.c,47 :: 		return;
;mcu_service.c,48 :: 		}
L_end_MCU_Init_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _MCU_Init_v
_MCU_Enable_v:
;mcu_service.c,50 :: 		void MCU_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;mcu_service.c,55 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;mcu_service.c,58 :: 		HMI_Enable_v();
BL	_HMI_Enable_v+0
;mcu_service.c,61 :: 		OS_PeriodTask1_Enable_v();
BL	_OS_PeriodTask1_Enable_v+0
;mcu_service.c,62 :: 		OS_PeriodTask2_Enable_v();
BL	_OS_PeriodTask2_Enable_v+0
;mcu_service.c,64 :: 		return;
;mcu_service.c,65 :: 		}
L_end_MCU_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _MCU_Enable_v

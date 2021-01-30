_ADC_Config:
;adc_driver.c,21 :: 		void ADC_Config(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,25 :: 		_ADC_CHANNEL_13|_ADC_CHANNEL_14|_ADC_CHANNEL_15);
MOVW	R0, #64512
BL	_ADC_Set_Input_Channel+0
;adc_driver.c,26 :: 		ADC1_Init();
BL	_ADC1_Init+0
;adc_driver.c,27 :: 		}
L_end_ADC_Config:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_Config
_ADC_1_Get:
;adc_driver.c,30 :: 		uint16_t ADC_1_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,32 :: 		uint16_t value = ADC1_Get_Sample(10);
MOVS	R0, #10
BL	_ADC1_Get_Sample+0
;adc_driver.c,33 :: 		return value;
;adc_driver.c,34 :: 		}
L_end_ADC_1_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_1_Get
_ADC_2_Get:
;adc_driver.c,35 :: 		uint16_t ADC_2_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,37 :: 		uint16_t value = ADC1_Get_Sample(11);
MOVS	R0, #11
BL	_ADC1_Get_Sample+0
;adc_driver.c,38 :: 		return value;
;adc_driver.c,39 :: 		}
L_end_ADC_2_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_2_Get
_ADC_3_Get:
;adc_driver.c,40 :: 		uint16_t ADC_3_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,42 :: 		uint16_t value = ADC1_Get_Sample(12);
MOVS	R0, #12
BL	_ADC1_Get_Sample+0
;adc_driver.c,43 :: 		return value;
;adc_driver.c,44 :: 		}
L_end_ADC_3_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_3_Get
_ADC_4_Get:
;adc_driver.c,45 :: 		uint16_t ADC_4_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,47 :: 		uint16_t value = ADC1_Get_Sample(13);
MOVS	R0, #13
BL	_ADC1_Get_Sample+0
;adc_driver.c,48 :: 		return value;
;adc_driver.c,49 :: 		}
L_end_ADC_4_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_4_Get
_ADC_5_Get:
;adc_driver.c,50 :: 		uint16_t ADC_5_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,52 :: 		uint16_t value = ADC1_Get_Sample(14);
MOVS	R0, #14
BL	_ADC1_Get_Sample+0
;adc_driver.c,53 :: 		return value;
;adc_driver.c,54 :: 		}
L_end_ADC_5_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_5_Get
_ADC_6_Get:
;adc_driver.c,55 :: 		uint16_t ADC_6_Get(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_driver.c,57 :: 		uint16_t value = ADC1_Get_Sample(15);
MOVS	R0, #15
BL	_ADC1_Get_Sample+0
;adc_driver.c,58 :: 		return value;
;adc_driver.c,59 :: 		}
L_end_ADC_6_Get:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_6_Get

_ADC_Init_v:
;adc_service.c,17 :: 		void ADC_Init_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;adc_service.c,19 :: 		ADC_Config();
BL	_ADC_Config+0
;adc_service.c,21 :: 		SensorPara.REF_Val[0]     = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+0)
MOVT	R0, #hi_addr(_SensorPara+0)
VSTR	#1, S0, [R0, #0]
;adc_service.c,22 :: 		SensorPara.REF_Val[1]     = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+4)
MOVT	R0, #hi_addr(_SensorPara+4)
VSTR	#1, S0, [R0, #0]
;adc_service.c,23 :: 		SensorPara.REF_Val[2]     = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+8)
MOVT	R0, #hi_addr(_SensorPara+8)
VSTR	#1, S0, [R0, #0]
;adc_service.c,24 :: 		SensorPara.REF_Val[3]     = 300;
MOVW	R0, #0
MOVT	R0, #17302
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+12)
MOVT	R0, #hi_addr(_SensorPara+12)
VSTR	#1, S0, [R0, #0]
;adc_service.c,25 :: 		SensorPara.REF_Val[4]     = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+16)
MOVT	R0, #hi_addr(_SensorPara+16)
VSTR	#1, S0, [R0, #0]
;adc_service.c,26 :: 		SensorPara.REF_Val[5]     = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+20)
MOVT	R0, #hi_addr(_SensorPara+20)
VSTR	#1, S0, [R0, #0]
;adc_service.c,28 :: 		SensorPara.RAW_Val[0]    = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+24)
MOVT	R0, #hi_addr(_SensorPara+24)
VSTR	#1, S0, [R0, #0]
;adc_service.c,29 :: 		SensorPara.RAW_Val[1]    = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+28)
MOVT	R0, #hi_addr(_SensorPara+28)
VSTR	#1, S0, [R0, #0]
;adc_service.c,30 :: 		SensorPara.RAW_Val[2]    = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+32)
MOVT	R0, #hi_addr(_SensorPara+32)
VSTR	#1, S0, [R0, #0]
;adc_service.c,31 :: 		SensorPara.RAW_Val[3]    = 300;
MOVW	R0, #0
MOVT	R0, #17302
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+36)
MOVT	R0, #hi_addr(_SensorPara+36)
VSTR	#1, S0, [R0, #0]
;adc_service.c,32 :: 		SensorPara.RAW_Val[4]    = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+40)
MOVT	R0, #hi_addr(_SensorPara+40)
VSTR	#1, S0, [R0, #0]
;adc_service.c,33 :: 		SensorPara.RAW_Val[5]    = 100;
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+44)
MOVT	R0, #hi_addr(_SensorPara+44)
VSTR	#1, S0, [R0, #0]
;adc_service.c,35 :: 		SensorPara.Span[0]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+72)
MOVT	R0, #hi_addr(_SensorPara+72)
VSTR	#1, S0, [R0, #0]
;adc_service.c,36 :: 		SensorPara.Span[1]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+76)
MOVT	R0, #hi_addr(_SensorPara+76)
VSTR	#1, S0, [R0, #0]
;adc_service.c,37 :: 		SensorPara.Span[2]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+80)
MOVT	R0, #hi_addr(_SensorPara+80)
VSTR	#1, S0, [R0, #0]
;adc_service.c,38 :: 		SensorPara.Span[3]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+84)
MOVT	R0, #hi_addr(_SensorPara+84)
VSTR	#1, S0, [R0, #0]
;adc_service.c,39 :: 		SensorPara.Span[4]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+88)
MOVT	R0, #hi_addr(_SensorPara+88)
VSTR	#1, S0, [R0, #0]
;adc_service.c,40 :: 		SensorPara.Span[5]     = 1;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_SensorPara+92)
MOVT	R0, #hi_addr(_SensorPara+92)
VSTR	#1, S0, [R0, #0]
;adc_service.c,42 :: 		SensorPara.Zero[0]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+48)
MOVT	R0, #hi_addr(_SensorPara+48)
VSTR	#1, S0, [R0, #0]
;adc_service.c,43 :: 		SensorPara.Zero[1]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+52)
MOVT	R0, #hi_addr(_SensorPara+52)
VSTR	#1, S0, [R0, #0]
;adc_service.c,44 :: 		SensorPara.Zero[2]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+56)
MOVT	R0, #hi_addr(_SensorPara+56)
VSTR	#1, S0, [R0, #0]
;adc_service.c,45 :: 		SensorPara.Zero[3]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+60)
MOVT	R0, #hi_addr(_SensorPara+60)
VSTR	#1, S0, [R0, #0]
;adc_service.c,46 :: 		SensorPara.Zero[4]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+64)
MOVT	R0, #hi_addr(_SensorPara+64)
VSTR	#1, S0, [R0, #0]
;adc_service.c,47 :: 		SensorPara.Zero[5]    = 0;
MOV	R0, #0
VMOV	S0, R0
MOVW	R0, #lo_addr(_SensorPara+68)
MOVT	R0, #hi_addr(_SensorPara+68)
VSTR	#1, S0, [R0, #0]
;adc_service.c,48 :: 		}
L_end_ADC_Init_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_Init_v
_ADC_Read_uint16:
;adc_service.c,50 :: 		uint16_t ADC_Read_uint16(uint8_t channel)
; channel start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; channel end address is: 0 (R0)
; channel start address is: 0 (R0)
;adc_service.c,52 :: 		uint16_t value = 0;
; value start address is: 4 (R1)
MOVW	R1, #0
;adc_service.c,53 :: 		switch(channel)
IT	AL
BAL	L_ADC_Read_uint160
; channel end address is: 0 (R0)
; value end address is: 4 (R1)
;adc_service.c,55 :: 		case 1:
L_ADC_Read_uint162:
;adc_service.c,56 :: 		value = ADC_1_Get();
BL	_ADC_1_Get+0
; value start address is: 0 (R0)
;adc_service.c,57 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,58 :: 		case 2:
L_ADC_Read_uint163:
;adc_service.c,59 :: 		value = ADC_2_Get();
BL	_ADC_2_Get+0
; value start address is: 0 (R0)
;adc_service.c,60 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,61 :: 		case 3:
L_ADC_Read_uint164:
;adc_service.c,62 :: 		value = ADC_3_Get();
BL	_ADC_3_Get+0
; value start address is: 0 (R0)
;adc_service.c,63 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,64 :: 		case 4:
L_ADC_Read_uint165:
;adc_service.c,65 :: 		value = ADC_4_Get();
BL	_ADC_4_Get+0
; value start address is: 0 (R0)
;adc_service.c,66 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,67 :: 		case 5:
L_ADC_Read_uint166:
;adc_service.c,68 :: 		value = ADC_5_Get();
BL	_ADC_5_Get+0
; value start address is: 0 (R0)
;adc_service.c,69 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,70 :: 		case 6:
L_ADC_Read_uint167:
;adc_service.c,71 :: 		value = ADC_6_Get();
BL	_ADC_6_Get+0
; value start address is: 0 (R0)
;adc_service.c,72 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_ADC_Read_uint161
;adc_service.c,73 :: 		}
L_ADC_Read_uint160:
; value start address is: 4 (R1)
; channel start address is: 0 (R0)
CMP	R0, #1
IT	EQ
BEQ	L_ADC_Read_uint162
CMP	R0, #2
IT	EQ
BEQ	L_ADC_Read_uint163
CMP	R0, #3
IT	EQ
BEQ	L_ADC_Read_uint164
CMP	R0, #4
IT	EQ
BEQ	L_ADC_Read_uint165
CMP	R0, #5
IT	EQ
BEQ	L_ADC_Read_uint166
CMP	R0, #6
IT	EQ
BEQ	L_ADC_Read_uint167
; channel end address is: 0 (R0)
; value end address is: 4 (R1)
UXTH	R0, R1
L_ADC_Read_uint161:
;adc_service.c,74 :: 		return value;
; value start address is: 0 (R0)
; value end address is: 0 (R0)
;adc_service.c,75 :: 		}
L_end_ADC_Read_uint16:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ADC_Read_uint16

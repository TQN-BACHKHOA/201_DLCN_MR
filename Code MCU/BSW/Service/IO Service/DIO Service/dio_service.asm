_DIO_Init_v:
;dio_service.c,17 :: 		void DIO_Init_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;dio_service.c,19 :: 		DIO_Config();
BL	_DIO_Config+0
;dio_service.c,20 :: 		}
L_end_DIO_Init_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DIO_Init_v
_DI_Get_uint8:
;dio_service.c,23 :: 		uint8_t DI_Get_uint8(uint8_t pin)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
;dio_service.c,25 :: 		uint8_t value = 0;
; value start address is: 4 (R1)
MOVS	R1, #0
;dio_service.c,26 :: 		switch(pin)
IT	AL
BAL	L_DI_Get_uint80
; pin end address is: 0 (R0)
; value end address is: 4 (R1)
;dio_service.c,28 :: 		case 0:
L_DI_Get_uint82:
;dio_service.c,29 :: 		value = DI_0_Get();
BL	_DI_0_Get+0
; value start address is: 0 (R0)
;dio_service.c,30 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,31 :: 		case 1:
L_DI_Get_uint83:
;dio_service.c,32 :: 		value = DI_1_Get();
BL	_DI_1_Get+0
; value start address is: 0 (R0)
;dio_service.c,33 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,34 :: 		case 2:
L_DI_Get_uint84:
;dio_service.c,35 :: 		value = DI_2_Get();
BL	_DI_2_Get+0
; value start address is: 0 (R0)
;dio_service.c,36 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,37 :: 		case 3:
L_DI_Get_uint85:
;dio_service.c,38 :: 		value = DI_3_Get();
BL	_DI_3_Get+0
; value start address is: 0 (R0)
;dio_service.c,39 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,40 :: 		case 4:
L_DI_Get_uint86:
;dio_service.c,41 :: 		value = DI_4_Get();
BL	_DI_4_Get+0
; value start address is: 0 (R0)
;dio_service.c,42 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,43 :: 		case 5:
L_DI_Get_uint87:
;dio_service.c,44 :: 		value = DI_5_Get();
BL	_DI_5_Get+0
; value start address is: 0 (R0)
;dio_service.c,45 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,46 :: 		case 6:
L_DI_Get_uint88:
;dio_service.c,47 :: 		value = DI_6_Get();
BL	_DI_6_Get+0
; value start address is: 0 (R0)
;dio_service.c,48 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,49 :: 		case 7:
L_DI_Get_uint89:
;dio_service.c,50 :: 		value = DI_7_Get();
BL	_DI_7_Get+0
; value start address is: 0 (R0)
;dio_service.c,51 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,52 :: 		case 8:
L_DI_Get_uint810:
;dio_service.c,53 :: 		value = DI_8_Get();
BL	_DI_8_Get+0
; value start address is: 0 (R0)
;dio_service.c,54 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DI_Get_uint81
;dio_service.c,55 :: 		}
L_DI_Get_uint80:
; value start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_DI_Get_uint82
CMP	R0, #1
IT	EQ
BEQ	L_DI_Get_uint83
CMP	R0, #2
IT	EQ
BEQ	L_DI_Get_uint84
CMP	R0, #3
IT	EQ
BEQ	L_DI_Get_uint85
CMP	R0, #4
IT	EQ
BEQ	L_DI_Get_uint86
CMP	R0, #5
IT	EQ
BEQ	L_DI_Get_uint87
CMP	R0, #6
IT	EQ
BEQ	L_DI_Get_uint88
CMP	R0, #7
IT	EQ
BEQ	L_DI_Get_uint89
CMP	R0, #8
IT	EQ
BEQ	L_DI_Get_uint810
; pin end address is: 0 (R0)
; value end address is: 4 (R1)
UXTB	R0, R1
L_DI_Get_uint81:
;dio_service.c,56 :: 		return value;
; value start address is: 0 (R0)
; value end address is: 0 (R0)
;dio_service.c,57 :: 		}
L_end_DI_Get_uint8:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DI_Get_uint8
_DO_Get_uint8:
;dio_service.c,60 :: 		uint8_t DO_Get_uint8(uint8_t pin)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
;dio_service.c,62 :: 		uint8_t value = 0;
; value start address is: 4 (R1)
MOVS	R1, #0
;dio_service.c,63 :: 		switch(pin)
IT	AL
BAL	L_DO_Get_uint811
; pin end address is: 0 (R0)
; value end address is: 4 (R1)
;dio_service.c,65 :: 		case 0:
L_DO_Get_uint813:
;dio_service.c,66 :: 		value = DO_0_Get();
BL	_DO_0_Get+0
; value start address is: 0 (R0)
;dio_service.c,67 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,68 :: 		case 1:
L_DO_Get_uint814:
;dio_service.c,69 :: 		value = DO_1_Get();
BL	_DO_1_Get+0
; value start address is: 0 (R0)
;dio_service.c,70 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,71 :: 		case 2:
L_DO_Get_uint815:
;dio_service.c,72 :: 		value = DO_2_Get();
BL	_DO_2_Get+0
; value start address is: 0 (R0)
;dio_service.c,73 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,74 :: 		case 3:
L_DO_Get_uint816:
;dio_service.c,75 :: 		value = DO_3_Get();
BL	_DO_3_Get+0
; value start address is: 0 (R0)
;dio_service.c,76 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,77 :: 		case 4:
L_DO_Get_uint817:
;dio_service.c,78 :: 		value = DO_4_Get();
BL	_DO_4_Get+0
; value start address is: 0 (R0)
;dio_service.c,79 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,80 :: 		case 5:
L_DO_Get_uint818:
;dio_service.c,81 :: 		value = DO_5_Get();
BL	_DO_5_Get+0
; value start address is: 0 (R0)
;dio_service.c,82 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,83 :: 		case 6:
L_DO_Get_uint819:
;dio_service.c,84 :: 		value = DO_6_Get();
BL	_DO_6_Get+0
; value start address is: 0 (R0)
;dio_service.c,85 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,86 :: 		case 7:
L_DO_Get_uint820:
;dio_service.c,87 :: 		value = DO_7_Get();
BL	_DO_7_Get+0
; value start address is: 0 (R0)
;dio_service.c,88 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,89 :: 		case 8:
L_DO_Get_uint821:
;dio_service.c,90 :: 		value = DO_8_Get();
BL	_DO_8_Get+0
; value start address is: 0 (R0)
;dio_service.c,91 :: 		break;
; value end address is: 0 (R0)
IT	AL
BAL	L_DO_Get_uint812
;dio_service.c,92 :: 		}
L_DO_Get_uint811:
; value start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_DO_Get_uint813
CMP	R0, #1
IT	EQ
BEQ	L_DO_Get_uint814
CMP	R0, #2
IT	EQ
BEQ	L_DO_Get_uint815
CMP	R0, #3
IT	EQ
BEQ	L_DO_Get_uint816
CMP	R0, #4
IT	EQ
BEQ	L_DO_Get_uint817
CMP	R0, #5
IT	EQ
BEQ	L_DO_Get_uint818
CMP	R0, #6
IT	EQ
BEQ	L_DO_Get_uint819
CMP	R0, #7
IT	EQ
BEQ	L_DO_Get_uint820
CMP	R0, #8
IT	EQ
BEQ	L_DO_Get_uint821
; pin end address is: 0 (R0)
; value end address is: 4 (R1)
UXTB	R0, R1
L_DO_Get_uint812:
;dio_service.c,93 :: 		return value;
; value start address is: 0 (R0)
; value end address is: 0 (R0)
;dio_service.c,94 :: 		}
L_end_DO_Get_uint8:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DO_Get_uint8
_DO_Set_v:
;dio_service.c,96 :: 		void DO_Set_v(uint8_t pin, uint8_t value)
; value start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; value end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; value start address is: 4 (R1)
;dio_service.c,98 :: 		switch(pin)
IT	AL
BAL	L_DO_Set_v22
; pin end address is: 0 (R0)
;dio_service.c,100 :: 		case 0:
L_DO_Set_v24:
;dio_service.c,101 :: 		DO_0_Set(value);
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_0_Set+0
;dio_service.c,102 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,103 :: 		case 1:
L_DO_Set_v25:
;dio_service.c,104 :: 		DO_1_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_1_Set+0
;dio_service.c,105 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,106 :: 		case 2:
L_DO_Set_v26:
;dio_service.c,107 :: 		DO_2_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_2_Set+0
;dio_service.c,108 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,109 :: 		case 3:
L_DO_Set_v27:
;dio_service.c,110 :: 		DO_3_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_3_Set+0
;dio_service.c,111 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,112 :: 		case 4:
L_DO_Set_v28:
;dio_service.c,113 :: 		DO_4_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_4_Set+0
;dio_service.c,114 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,115 :: 		case 5:
L_DO_Set_v29:
;dio_service.c,116 :: 		DO_5_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_5_Set+0
;dio_service.c,117 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,118 :: 		case 6:
L_DO_Set_v30:
;dio_service.c,119 :: 		DO_6_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_6_Set+0
;dio_service.c,120 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,121 :: 		case 7:
L_DO_Set_v31:
;dio_service.c,122 :: 		DO_7_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_7_Set+0
;dio_service.c,123 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,124 :: 		case 8:
L_DO_Set_v32:
;dio_service.c,125 :: 		DO_8_Set(value);
; value start address is: 4 (R1)
UXTB	R0, R1
; value end address is: 4 (R1)
BL	_DO_8_Set+0
;dio_service.c,126 :: 		break;
IT	AL
BAL	L_DO_Set_v23
;dio_service.c,127 :: 		}
L_DO_Set_v22:
; value start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_DO_Set_v24
CMP	R0, #1
IT	EQ
BEQ	L_DO_Set_v25
CMP	R0, #2
IT	EQ
BEQ	L_DO_Set_v26
CMP	R0, #3
IT	EQ
BEQ	L_DO_Set_v27
CMP	R0, #4
IT	EQ
BEQ	L_DO_Set_v28
CMP	R0, #5
IT	EQ
BEQ	L_DO_Set_v29
CMP	R0, #6
IT	EQ
BEQ	L_DO_Set_v30
CMP	R0, #7
IT	EQ
BEQ	L_DO_Set_v31
CMP	R0, #8
IT	EQ
BEQ	L_DO_Set_v32
; pin end address is: 0 (R0)
; value end address is: 4 (R1)
L_DO_Set_v23:
;dio_service.c,128 :: 		}
L_end_DO_Set_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DO_Set_v

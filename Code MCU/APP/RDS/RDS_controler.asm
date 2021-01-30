_RDS_Write:
;RDS_controler.c,34 :: 		void RDS_Write(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;RDS_controler.c,37 :: 		g_HMI_SendID_uint16   = 0x4646;//g_HMI_ReceiverID_uint16;
MOVW	R1, #17990
MOVW	R0, #lo_addr(_g_HMI_SendData_un+0)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+0)
STRH	R1, [R0, #0]
;RDS_controler.c,38 :: 		g_HMI_SendCode_uint16 = 0x4130;//g_HMI_ReceiverCode_uint16;
MOVW	R1, #16688
MOVW	R0, #lo_addr(_g_HMI_SendData_un+2)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+2)
STRH	R1, [R0, #0]
;RDS_controler.c,39 :: 		HMI_FrameWrite_v();
BL	_HMI_FrameWrite_v+0
;RDS_controler.c,42 :: 		return;
;RDS_controler.c,43 :: 		}
L_end_RDS_Write:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RDS_Write
_RDS_ADC_v:
;RDS_controler.c,47 :: 		void RDS_ADC_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;RDS_controler.c,49 :: 		uint16_t value = 0;
;RDS_controler.c,50 :: 		value = ADC_Read_uint16(1);
MOVS	R0, #1
BL	_ADC_Read_uint16+0
;RDS_controler.c,51 :: 		g_HMI_SendDataEng_Data1_double = ADC_Scale(1, value);
UXTH	R1, R0
MOVS	R0, #1
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+4)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+4)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,52 :: 		value = ADC_Read_uint16(2);
MOVS	R0, #2
BL	_ADC_Read_uint16+0
;RDS_controler.c,53 :: 		g_HMI_SendDataEng_Data2_double = ADC_Scale(2, value);
UXTH	R1, R0
MOVS	R0, #2
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+8)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+8)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,54 :: 		value = ADC_Read_uint16(3);
MOVS	R0, #3
BL	_ADC_Read_uint16+0
;RDS_controler.c,55 :: 		g_HMI_SendDataEng_Data3_double = ADC_Scale(3, value);
UXTH	R1, R0
MOVS	R0, #3
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+12)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+12)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,56 :: 		value = ADC_Read_uint16(4);
MOVS	R0, #4
BL	_ADC_Read_uint16+0
;RDS_controler.c,57 :: 		g_HMI_SendDataEng_Data4_double = ADC_Scale(4, value);
UXTH	R1, R0
MOVS	R0, #4
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+16)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+16)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,58 :: 		value = ADC_Read_uint16(5);
MOVS	R0, #5
BL	_ADC_Read_uint16+0
;RDS_controler.c,59 :: 		g_HMI_SendDataEng_Data5_double = ADC_Scale(5, value);
UXTH	R1, R0
MOVS	R0, #5
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+20)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+20)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,60 :: 		value = ADC_Read_uint16(6);
MOVS	R0, #6
BL	_ADC_Read_uint16+0
;RDS_controler.c,61 :: 		g_HMI_SendDataEng_Data6_double = ADC_Scale(6, value);
UXTH	R1, R0
MOVS	R0, #6
BL	_ADC_Scale+0
MOVW	R0, #lo_addr(_g_HMI_SendData_un+24)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+24)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,63 :: 		RDS_Write();
BL	_RDS_Write+0
;RDS_controler.c,64 :: 		}
L_end_RDS_ADC_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RDS_ADC_v
_RDS_DIO_v:
;RDS_controler.c,67 :: 		void RDS_DIO_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;RDS_controler.c,69 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(0);
MOVS	R0, #0
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;RDS_controler.c,70 :: 		g_HMI_SendDataDI_uint8 = DI_Get_uint8(0);
MOVS	R0, #0
BL	_DI_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+4)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+4)
STRB	R0, [R1, #0]
;RDS_controler.c,71 :: 		g_HMI_SendDataRaw_Data1_int32 = (g_HMI_SendDataDO_uint8<<8) + g_HMI_SendDataDI_uint8;
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
LDRB	R1, [R1, #0]
LSLS	R1, R1, #8
UXTH	R1, R1
ADDS	R1, R1, R0
UXTH	R1, R1
MOVW	R0, #lo_addr(_g_HMI_SendData_un+4)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+4)
STR	R1, [R0, #0]
;RDS_controler.c,72 :: 		RDS_Write();
BL	_RDS_Write+0
;RDS_controler.c,73 :: 		}
L_end_RDS_DIO_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RDS_DIO_v
_RDS_Read_v:
;RDS_controler.c,75 :: 		void RDS_Read_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;RDS_controler.c,77 :: 		uint8_t cnt = 0;
; cnt start address is: 0 (R0)
MOVS	R0, #0
;RDS_controler.c,78 :: 		if (cnt == 0)
CMP	R0, #0
IT	NE
BNE	L_RDS_Read_v0
; cnt end address is: 0 (R0)
;RDS_controler.c,79 :: 		DO_Set_v(7, 1);
MOVS	R1, #1
MOVS	R0, #7
BL	_DO_Set_v+0
IT	AL
BAL	L_RDS_Read_v1
L_RDS_Read_v0:
;RDS_controler.c,81 :: 		DO_Set_v(7, 0);
MOVS	R1, #0
MOVS	R0, #7
BL	_DO_Set_v+0
L_RDS_Read_v1:
;RDS_controler.c,82 :: 		switch(g_HMI_ReceiverCode_uint16)
IT	AL
BAL	L_RDS_Read_v2
;RDS_controler.c,84 :: 		case ADC1_CODE:
L_RDS_Read_v4:
;RDS_controler.c,85 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v5
;RDS_controler.c,86 :: 		SensorPara.RAW_Val[0]  = ADC_Read_uint16(1);
MOVS	R0, #1
BL	_ADC_Read_uint16+0
VMOV	S0, R0
VCVT.F32	#0, S0, S0
MOVW	R0, #lo_addr(_SensorPara+24)
MOVT	R0, #hi_addr(_SensorPara+24)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,88 :: 		SensorPara.Zero[0]     = /*SensorPara.REF_Val[0]*/ - SensorPara.RAW_Val[0];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+48)
MOVT	R0, #hi_addr(_SensorPara+48)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,89 :: 		}
L_RDS_Read_v5:
;RDS_controler.c,90 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v6
;RDS_controler.c,91 :: 		SensorPara.RAW_Val[0]  = (ADC_Read_uint16(1) > 4095)? 4095:ADC_Read_uint16(1);
MOVS	R0, #1
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v7
; ?FLOC___RDS_Read_v?T24 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T24 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v8
L_RDS_Read_v7:
MOVS	R0, #1
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T24 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T24 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v8:
; ?FLOC___RDS_Read_v?T24 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T24 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+24)
MOVT	R2, #hi_addr(_SensorPara+24)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,92 :: 		SensorPara.REF_Val[0]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+0)
MOVT	R0, #hi_addr(_SensorPara+0)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,93 :: 		SensorPara.Span[0]     = (SensorPara.REF_Val[0] - SensorPara.Zero[0])/SensorPara.RAW_Val[0];
MOVW	R0, #lo_addr(_SensorPara+48)
MOVT	R0, #hi_addr(_SensorPara+48)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+72)
MOVT	R0, #hi_addr(_SensorPara+72)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,95 :: 		}
L_RDS_Read_v6:
;RDS_controler.c,96 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,97 :: 		case ADC2_CODE:
L_RDS_Read_v9:
;RDS_controler.c,98 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v10
;RDS_controler.c,99 :: 		SensorPara.RAW_Val[1]  = (ADC_Read_uint16(2) > 4095)? 4095:ADC_Read_uint16(2);
MOVS	R0, #2
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v11
; ?FLOC___RDS_Read_v?T36 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T36 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v12
L_RDS_Read_v11:
MOVS	R0, #2
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T36 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T36 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v12:
; ?FLOC___RDS_Read_v?T36 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T36 end address is: 0 (R0)
MOVW	R0, #lo_addr(_SensorPara+28)
MOVT	R0, #hi_addr(_SensorPara+28)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,101 :: 		SensorPara.Zero[1]     = /*SensorPara.REF_Val[1]*/ - SensorPara.RAW_Val[1];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+52)
MOVT	R0, #hi_addr(_SensorPara+52)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,102 :: 		}
L_RDS_Read_v10:
;RDS_controler.c,103 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v13
;RDS_controler.c,104 :: 		SensorPara.RAW_Val[1]  = (ADC_Read_uint16(2) > 4095)? 4095:ADC_Read_uint16(2);
MOVS	R0, #2
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v14
; ?FLOC___RDS_Read_v?T44 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T44 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v15
L_RDS_Read_v14:
MOVS	R0, #2
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T44 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T44 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v15:
; ?FLOC___RDS_Read_v?T44 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T44 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+28)
MOVT	R2, #hi_addr(_SensorPara+28)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,105 :: 		SensorPara.REF_Val[1]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+4)
MOVT	R0, #hi_addr(_SensorPara+4)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,106 :: 		SensorPara.Span[1]     = (SensorPara.REF_Val[1] - SensorPara.Zero[1])/SensorPara.RAW_Val[1];
MOVW	R0, #lo_addr(_SensorPara+52)
MOVT	R0, #hi_addr(_SensorPara+52)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+76)
MOVT	R0, #hi_addr(_SensorPara+76)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,107 :: 		}
L_RDS_Read_v13:
;RDS_controler.c,108 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,109 :: 		case ADC3_CODE:
L_RDS_Read_v16:
;RDS_controler.c,110 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v17
;RDS_controler.c,111 :: 		SensorPara.RAW_Val[2]  = (ADC_Read_uint16(3) > 4095)? 4095:ADC_Read_uint16(3);
MOVS	R0, #3
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v18
; ?FLOC___RDS_Read_v?T56 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T56 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v19
L_RDS_Read_v18:
MOVS	R0, #3
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T56 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T56 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v19:
; ?FLOC___RDS_Read_v?T56 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T56 end address is: 0 (R0)
MOVW	R0, #lo_addr(_SensorPara+32)
MOVT	R0, #hi_addr(_SensorPara+32)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,113 :: 		SensorPara.Zero[2]     = /*SensorPara.REF_Val[2]*/ - SensorPara.RAW_Val[2];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+56)
MOVT	R0, #hi_addr(_SensorPara+56)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,114 :: 		}
L_RDS_Read_v17:
;RDS_controler.c,115 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v20
;RDS_controler.c,116 :: 		SensorPara.RAW_Val[2]  = (ADC_Read_uint16(3) > 4095)? 4095:ADC_Read_uint16(3);
MOVS	R0, #3
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v21
; ?FLOC___RDS_Read_v?T64 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T64 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v22
L_RDS_Read_v21:
MOVS	R0, #3
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T64 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T64 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v22:
; ?FLOC___RDS_Read_v?T64 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T64 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+32)
MOVT	R2, #hi_addr(_SensorPara+32)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,117 :: 		SensorPara.REF_Val[2]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+8)
MOVT	R0, #hi_addr(_SensorPara+8)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,118 :: 		SensorPara.Span[2]     = (SensorPara.REF_Val[2] - SensorPara.Zero[2])/SensorPara.RAW_Val[2];
MOVW	R0, #lo_addr(_SensorPara+56)
MOVT	R0, #hi_addr(_SensorPara+56)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+80)
MOVT	R0, #hi_addr(_SensorPara+80)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,119 :: 		}
L_RDS_Read_v20:
;RDS_controler.c,120 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,121 :: 		case ADC4_CODE:
L_RDS_Read_v23:
;RDS_controler.c,122 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v24
;RDS_controler.c,123 :: 		SensorPara.RAW_Val[3]  = (ADC_Read_uint16(4) > 4095)? 4095:ADC_Read_uint16(4);
MOVS	R0, #4
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v25
; ?FLOC___RDS_Read_v?T76 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T76 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v26
L_RDS_Read_v25:
MOVS	R0, #4
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T76 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T76 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v26:
; ?FLOC___RDS_Read_v?T76 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T76 end address is: 0 (R0)
MOVW	R0, #lo_addr(_SensorPara+36)
MOVT	R0, #hi_addr(_SensorPara+36)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,125 :: 		SensorPara.Zero[3]     = /*SensorPara.REF_Val[3]*/ - SensorPara.RAW_Val[3];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+60)
MOVT	R0, #hi_addr(_SensorPara+60)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,126 :: 		}
L_RDS_Read_v24:
;RDS_controler.c,127 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v27
;RDS_controler.c,128 :: 		SensorPara.RAW_Val[3]  = (ADC_Read_uint16(4) > 4095)? 4095:ADC_Read_uint16(4);
MOVS	R0, #4
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v28
; ?FLOC___RDS_Read_v?T84 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T84 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v29
L_RDS_Read_v28:
MOVS	R0, #4
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T84 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T84 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v29:
; ?FLOC___RDS_Read_v?T84 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T84 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+36)
MOVT	R2, #hi_addr(_SensorPara+36)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,129 :: 		SensorPara.REF_Val[3]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+12)
MOVT	R0, #hi_addr(_SensorPara+12)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,130 :: 		SensorPara.Span[3]     = (SensorPara.REF_Val[3] - SensorPara.Zero[3])/SensorPara.RAW_Val[3];
MOVW	R0, #lo_addr(_SensorPara+60)
MOVT	R0, #hi_addr(_SensorPara+60)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+84)
MOVT	R0, #hi_addr(_SensorPara+84)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,131 :: 		}
L_RDS_Read_v27:
;RDS_controler.c,132 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,133 :: 		case ADC5_CODE:
L_RDS_Read_v30:
;RDS_controler.c,134 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v31
;RDS_controler.c,135 :: 		SensorPara.RAW_Val[4]  = (ADC_Read_uint16(5) > 4095)? 4095:ADC_Read_uint16(5);
MOVS	R0, #5
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v32
; ?FLOC___RDS_Read_v?T96 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T96 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v33
L_RDS_Read_v32:
MOVS	R0, #5
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T96 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T96 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v33:
; ?FLOC___RDS_Read_v?T96 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T96 end address is: 0 (R0)
MOVW	R0, #lo_addr(_SensorPara+40)
MOVT	R0, #hi_addr(_SensorPara+40)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,137 :: 		SensorPara.Zero[4]     = /*SensorPara.REF_Val[4]*/ - SensorPara.RAW_Val[4];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+64)
MOVT	R0, #hi_addr(_SensorPara+64)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,138 :: 		}
L_RDS_Read_v31:
;RDS_controler.c,139 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v34
;RDS_controler.c,140 :: 		SensorPara.RAW_Val[4]  = (ADC_Read_uint16(5) > 4095)? 4095:ADC_Read_uint16(5);
MOVS	R0, #5
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v35
; ?FLOC___RDS_Read_v?T104 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T104 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v36
L_RDS_Read_v35:
MOVS	R0, #5
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T104 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T104 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v36:
; ?FLOC___RDS_Read_v?T104 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T104 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+40)
MOVT	R2, #hi_addr(_SensorPara+40)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,141 :: 		SensorPara.REF_Val[4]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+16)
MOVT	R0, #hi_addr(_SensorPara+16)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,142 :: 		SensorPara.Span[4]     = (SensorPara.REF_Val[4] - SensorPara.Zero[4])/SensorPara.RAW_Val[4];
MOVW	R0, #lo_addr(_SensorPara+64)
MOVT	R0, #hi_addr(_SensorPara+64)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+88)
MOVT	R0, #hi_addr(_SensorPara+88)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,143 :: 		}
L_RDS_Read_v34:
;RDS_controler.c,144 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,145 :: 		case ADC6_CODE:
L_RDS_Read_v37:
;RDS_controler.c,146 :: 		if(g_HMI_ReceiverID_uint16 == 0x464C){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17996
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v38
;RDS_controler.c,147 :: 		SensorPara.RAW_Val[5]  = (ADC_Read_uint16(6) > 4095)? 4095:ADC_Read_uint16(6);
MOVS	R0, #6
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v39
; ?FLOC___RDS_Read_v?T116 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T116 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v40
L_RDS_Read_v39:
MOVS	R0, #6
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T116 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T116 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v40:
; ?FLOC___RDS_Read_v?T116 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T116 end address is: 0 (R0)
MOVW	R0, #lo_addr(_SensorPara+44)
MOVT	R0, #hi_addr(_SensorPara+44)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,149 :: 		SensorPara.Zero[5]     = /*SensorPara.REF_Val[5]*/ - SensorPara.RAW_Val[5];
VNEG.F32	S0, S0
MOVW	R0, #lo_addr(_SensorPara+68)
MOVT	R0, #hi_addr(_SensorPara+68)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,150 :: 		}
L_RDS_Read_v38:
;RDS_controler.c,151 :: 		if(g_HMI_ReceiverID_uint16 == 0x4648){
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #17992
CMP	R1, R0
IT	NE
BNE	L_RDS_Read_v41
;RDS_controler.c,152 :: 		SensorPara.RAW_Val[5]  = (ADC_Read_uint16(6) > 4095)? 4095:ADC_Read_uint16(6);
MOVS	R0, #6
BL	_ADC_Read_uint16+0
MOVW	R1, #4095
CMP	R0, R1
IT	LS
BLS	L_RDS_Read_v42
; ?FLOC___RDS_Read_v?T124 start address is: 0 (R0)
MOVW	R0, #4095
; ?FLOC___RDS_Read_v?T124 end address is: 0 (R0)
IT	AL
BAL	L_RDS_Read_v43
L_RDS_Read_v42:
MOVS	R0, #6
BL	_ADC_Read_uint16+0
; ?FLOC___RDS_Read_v?T124 start address is: 4 (R1)
UXTH	R1, R0
; ?FLOC___RDS_Read_v?T124 end address is: 4 (R1)
UXTH	R0, R1
L_RDS_Read_v43:
; ?FLOC___RDS_Read_v?T124 start address is: 0 (R0)
VMOV	S0, R0
VCVT.F32	#0, S0, S0
; ?FLOC___RDS_Read_v?T124 end address is: 0 (R0)
MOVW	R2, #lo_addr(_SensorPara+44)
MOVT	R2, #hi_addr(_SensorPara+44)
VSTR	#1, S0, [R2, #0]
;RDS_controler.c,153 :: 		SensorPara.REF_Val[5]  = g_HMI_ADC_EngVale_double;
MOVW	R1, #lo_addr(_g_HMI_ReceiverData_un+4)
MOVT	R1, #hi_addr(_g_HMI_ReceiverData_un+4)
VLDR	#1, S0, [R1, #0]
MOVW	R0, #lo_addr(_SensorPara+20)
MOVT	R0, #hi_addr(_SensorPara+20)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,154 :: 		SensorPara.Span[5]     = (SensorPara.REF_Val[5] - SensorPara.Zero[5])/SensorPara.RAW_Val[5];
MOVW	R0, #lo_addr(_SensorPara+68)
MOVT	R0, #hi_addr(_SensorPara+68)
VLDR	#1, S1, [R0, #0]
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VSUB.F32	S1, S0, S1
MOV	R0, R2
VLDR	#1, S0, [R0, #0]
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_SensorPara+92)
MOVT	R0, #hi_addr(_SensorPara+92)
VSTR	#1, S0, [R0, #0]
;RDS_controler.c,155 :: 		}
L_RDS_Read_v41:
;RDS_controler.c,156 :: 		break;
IT	AL
BAL	L_RDS_Read_v3
;RDS_controler.c,157 :: 		}
L_RDS_Read_v2:
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16689
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v4
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16690
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v9
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16691
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v16
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16692
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v23
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16693
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v30
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #16694
CMP	R1, R0
IT	EQ
BEQ	L_RDS_Read_v37
L_RDS_Read_v3:
;RDS_controler.c,158 :: 		}
L_end_RDS_Read_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RDS_Read_v
_RDS_Run_v:
;RDS_controler.c,160 :: 		void RDS_Run_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;RDS_controler.c,163 :: 		RDS_ADC_v();
BL	_RDS_ADC_v+0
;RDS_controler.c,168 :: 		return;
;RDS_controler.c,169 :: 		}
L_end_RDS_Run_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _RDS_Run_v
_RDS_Init_v:
;RDS_controler.c,171 :: 		void RDS_Init_v(void)
SUB	SP, SP, #4
;RDS_controler.c,174 :: 		return;
;RDS_controler.c,175 :: 		}
L_end_RDS_Init_v:
ADD	SP, SP, #4
BX	LR
; end of _RDS_Init_v

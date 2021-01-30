_FCN_Read:
;FCN_controler.c,32 :: 		void FCN_Read(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;FCN_controler.c,34 :: 		HMI_FrameRead_v();
BL	_HMI_FrameRead_v+0
;FCN_controler.c,35 :: 		return;
;FCN_controler.c,36 :: 		}
L_end_FCN_Read:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FCN_Read
_FCN_Write:
;FCN_controler.c,38 :: 		void FCN_Write(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;FCN_controler.c,41 :: 		g_HMI_SendID_uint16   = g_HMI_ReceiverID_uint16;
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+0)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_g_HMI_SendData_un+0)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+0)
STRH	R1, [R0, #0]
;FCN_controler.c,42 :: 		g_HMI_SendCode_uint16 = g_HMI_ReceiverCode_uint16;
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_g_HMI_SendData_un+2)
MOVT	R0, #hi_addr(_g_HMI_SendData_un+2)
STRH	R1, [R0, #0]
;FCN_controler.c,43 :: 		HMI_FrameWrite_v();
BL	_HMI_FrameWrite_v+0
;FCN_controler.c,45 :: 		return;
;FCN_controler.c,46 :: 		}
L_end_FCN_Write:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FCN_Write
_FCN_DIO_v:
;FCN_controler.c,50 :: 		void FCN_DIO_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;FCN_controler.c,52 :: 		switch(g_HMI_ReceiverCode_uint16)
IT	AL
BAL	L_FCN_DIO_v0
;FCN_controler.c,54 :: 		case OUT0_CODE:
L_FCN_DIO_v2:
;FCN_controler.c,55 :: 		DO_Set_v(0,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #0
BL	_DO_Set_v+0
;FCN_controler.c,56 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(0);
MOVS	R0, #0
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,57 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,58 :: 		case OUT1_CODE:
L_FCN_DIO_v3:
;FCN_controler.c,59 :: 		DO_Set_v(1,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #1
BL	_DO_Set_v+0
;FCN_controler.c,60 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(1);
MOVS	R0, #1
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,61 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,62 :: 		case OUT2_CODE:
L_FCN_DIO_v4:
;FCN_controler.c,63 :: 		DO_Set_v(2,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #2
BL	_DO_Set_v+0
;FCN_controler.c,64 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(2);
MOVS	R0, #2
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,65 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,66 :: 		case OUT3_CODE:
L_FCN_DIO_v5:
;FCN_controler.c,67 :: 		DO_Set_v(3,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #3
BL	_DO_Set_v+0
;FCN_controler.c,68 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(3);
MOVS	R0, #3
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,69 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,70 :: 		case OUT4_CODE:
L_FCN_DIO_v6:
;FCN_controler.c,71 :: 		DO_Set_v(4,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #4
BL	_DO_Set_v+0
;FCN_controler.c,72 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(4);
MOVS	R0, #4
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,73 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,74 :: 		case OUT5_CODE:
L_FCN_DIO_v7:
;FCN_controler.c,75 :: 		DO_Set_v(5,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #5
BL	_DO_Set_v+0
;FCN_controler.c,76 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(5);
MOVS	R0, #5
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,77 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,78 :: 		case OUT6_CODE:
L_FCN_DIO_v8:
;FCN_controler.c,79 :: 		DO_Set_v(6,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #6
BL	_DO_Set_v+0
;FCN_controler.c,80 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(6);
MOVS	R0, #6
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,81 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,82 :: 		case OUT7_CODE:
L_FCN_DIO_v9:
;FCN_controler.c,83 :: 		DO_Set_v(7,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #7
BL	_DO_Set_v+0
;FCN_controler.c,84 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(7);
MOVS	R0, #7
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,85 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,86 :: 		case OUT8_CODE:
L_FCN_DIO_v10:
;FCN_controler.c,87 :: 		DO_Set_v(8,g_HMI_ReceiverDO_uint8);
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+5)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+5)
LDRB	R0, [R0, #0]
UXTB	R1, R0
MOVS	R0, #8
BL	_DO_Set_v+0
;FCN_controler.c,88 :: 		g_HMI_SendDataDO_uint8 = DO_Get_uint8(8);
MOVS	R0, #8
BL	_DO_Get_uint8+0
MOVW	R1, #lo_addr(_g_HMI_SendData_un+5)
MOVT	R1, #hi_addr(_g_HMI_SendData_un+5)
STRB	R0, [R1, #0]
;FCN_controler.c,89 :: 		break;
IT	AL
BAL	L_FCN_DIO_v1
;FCN_controler.c,90 :: 		}
L_FCN_DIO_v0:
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20272
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v2
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20273
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v3
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20274
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v4
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20275
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v5
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20276
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v6
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20277
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v7
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20278
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v8
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20279
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v9
MOVW	R0, #lo_addr(_g_HMI_ReceiverData_un+2)
MOVT	R0, #hi_addr(_g_HMI_ReceiverData_un+2)
LDRH	R1, [R0, #0]
MOVW	R0, #20280
CMP	R1, R0
IT	EQ
BEQ	L_FCN_DIO_v10
L_FCN_DIO_v1:
;FCN_controler.c,91 :: 		}
L_end_FCN_DIO_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FCN_DIO_v
_FCN_Run_v:
;FCN_controler.c,94 :: 		void FCN_Run_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;FCN_controler.c,100 :: 		FCN_DIO_v();
BL	_FCN_DIO_v+0
;FCN_controler.c,102 :: 		return;
;FCN_controler.c,103 :: 		}
L_end_FCN_Run_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FCN_Run_v
_FCN_Init_v:
;FCN_controler.c,105 :: 		void FCN_Init_v(void)
SUB	SP, SP, #4
;FCN_controler.c,108 :: 		return;
;FCN_controler.c,109 :: 		}
L_end_FCN_Init_v:
ADD	SP, SP, #4
BX	LR
; end of _FCN_Init_v

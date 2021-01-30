_HMI_Init_v:
;hmi_service.c,19 :: 		void HMI_Init_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hmi_service.c,22 :: 		RS232_Init();
BL	_RS232_Init+0
;hmi_service.c,24 :: 		return;
;hmi_service.c,25 :: 		}
L_end_HMI_Init_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HMI_Init_v
_HMI_Enable_v:
;hmi_service.c,27 :: 		void HMI_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hmi_service.c,30 :: 		RS232_Enable();
BL	_RS232_Enable+0
;hmi_service.c,32 :: 		return;
;hmi_service.c,33 :: 		}
L_end_HMI_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HMI_Enable_v
_HMI_FrameRead_v:
;hmi_service.c,35 :: 		void HMI_FrameRead_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hmi_service.c,38 :: 		RS232_Read();
BL	_RS232_Read+0
;hmi_service.c,40 :: 		return;
;hmi_service.c,41 :: 		}
L_end_HMI_FrameRead_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HMI_FrameRead_v
_HMI_FrameWrite_v:
;hmi_service.c,43 :: 		void HMI_FrameWrite_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hmi_service.c,47 :: 		RS232_Write();
BL	_RS232_Write+0
;hmi_service.c,49 :: 		return;
;hmi_service.c,50 :: 		}
L_end_HMI_FrameWrite_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HMI_FrameWrite_v

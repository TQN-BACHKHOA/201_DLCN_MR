_OS_ConfigPeriodTask_v:
;os_service.c,22 :: 		void OS_ConfigPeriodTask_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,25 :: 		TIMER6_Config_v();
BL	_TIMER6_Config_v+0
;os_service.c,26 :: 		TIMER7_Config_v();
BL	_TIMER7_Config_v+0
;os_service.c,28 :: 		return;
;os_service.c,29 :: 		}
L_end_OS_ConfigPeriodTask_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_ConfigPeriodTask_v
_OS_ConfigInterruptTask_v:
;os_service.c,31 :: 		void OS_ConfigInterruptTask_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,34 :: 		RS232_Config();
BL	_RS232_Config+0
;os_service.c,37 :: 		return;
;os_service.c,38 :: 		}
L_end_OS_ConfigInterruptTask_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_ConfigInterruptTask_v
_OS_PeriodTask1_Enable_v:
;os_service.c,40 :: 		void OS_PeriodTask1_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,43 :: 		TIMER7_Enable_v();
BL	_TIMER7_Enable_v+0
;os_service.c,45 :: 		return;
;os_service.c,46 :: 		}
L_end_OS_PeriodTask1_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask1_Enable_v
_OS_PeriodTask2_Enable_v:
;os_service.c,48 :: 		void OS_PeriodTask2_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,51 :: 		TIMER6_Enable_v();
BL	_TIMER6_Enable_v+0
;os_service.c,53 :: 		return;
;os_service.c,54 :: 		}
L_end_OS_PeriodTask2_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask2_Enable_v
_OS_PeriodTask1_Disable_v:
;os_service.c,56 :: 		void OS_PeriodTask1_Disable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,59 :: 		TIMER6_Disable_v();
BL	_TIMER6_Disable_v+0
;os_service.c,61 :: 		return;
;os_service.c,62 :: 		}
L_end_OS_PeriodTask1_Disable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask1_Disable_v
_OS_PeriodTask2_Disable_v:
;os_service.c,64 :: 		void OS_PeriodTask2_Disable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,67 :: 		TIMER7_Disable_v();
BL	_TIMER7_Disable_v+0
;os_service.c,69 :: 		return;
;os_service.c,70 :: 		}
L_end_OS_PeriodTask2_Disable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask2_Disable_v
_OS_InterruptTask1_Enable_v:
;os_service.c,72 :: 		void OS_InterruptTask1_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,75 :: 		RS232_IntRx_Enable();
BL	_RS232_IntRx_Enable+0
;os_service.c,76 :: 		return;
;os_service.c,77 :: 		}
L_end_OS_InterruptTask1_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask1_Enable_v
_OS_InterruptTask1_Disable_v:
;os_service.c,79 :: 		void OS_InterruptTask1_Disable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,82 :: 		RS232_IntRx_Disable();
BL	_RS232_IntRx_Disable+0
;os_service.c,83 :: 		return;
;os_service.c,84 :: 		}
L_end_OS_InterruptTask1_Disable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask1_Disable_v
_OS_InterruptTask2_Enable_v:
;os_service.c,87 :: 		void OS_InterruptTask2_Enable_v(void)
SUB	SP, SP, #4
;os_service.c,91 :: 		return;
;os_service.c,92 :: 		}
L_end_OS_InterruptTask2_Enable_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask2_Enable_v
_OS_InterruptTask3_Enable_v:
;os_service.c,94 :: 		void OS_InterruptTask3_Enable_v(void)
SUB	SP, SP, #4
;os_service.c,98 :: 		return;
;os_service.c,99 :: 		}
L_end_OS_InterruptTask3_Enable_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask3_Enable_v
_OS_InterruptTask3_Disable_v:
;os_service.c,101 :: 		void OS_InterruptTask3_Disable_v(void)
SUB	SP, SP, #4
;os_service.c,105 :: 		return;
;os_service.c,106 :: 		}
L_end_OS_InterruptTask3_Disable_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask3_Disable_v
_OS_InterruptTask4_Enable_v:
;os_service.c,108 :: 		void OS_InterruptTask4_Enable_v(void)
SUB	SP, SP, #4
;os_service.c,112 :: 		return;
;os_service.c,113 :: 		}
L_end_OS_InterruptTask4_Enable_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask4_Enable_v
_OS_PeriodTask2_FlagClear_v:
;os_service.c,115 :: 		void OS_PeriodTask2_FlagClear_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,118 :: 		TIMER6_Clear_v();
BL	_TIMER6_Clear_v+0
;os_service.c,119 :: 		return;
;os_service.c,120 :: 		}
L_end_OS_PeriodTask2_FlagClear_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask2_FlagClear_v
_OS_PeriodTask1_FlagClear_v:
;os_service.c,122 :: 		void OS_PeriodTask1_FlagClear_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,125 :: 		TIMER7_Clear_v();
BL	_TIMER7_Clear_v+0
;os_service.c,126 :: 		return;
;os_service.c,127 :: 		}
L_end_OS_PeriodTask1_FlagClear_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_PeriodTask1_FlagClear_v
_OS_InterruptTask1_FlagClear_v:
;os_service.c,129 :: 		void OS_InterruptTask1_FlagClear_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;os_service.c,132 :: 		RS232_IntRx_Clear();
BL	_RS232_IntRx_Clear+0
;os_service.c,133 :: 		return;
;os_service.c,134 :: 		}
L_end_OS_InterruptTask1_FlagClear_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask1_FlagClear_v
_OS_InterruptTask2_FlagClear_v:
;os_service.c,137 :: 		void OS_InterruptTask2_FlagClear_v(void)
SUB	SP, SP, #4
;os_service.c,141 :: 		return;
;os_service.c,142 :: 		}
L_end_OS_InterruptTask2_FlagClear_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask2_FlagClear_v
_OS_InterruptTask3_FlagClear_v:
;os_service.c,144 :: 		void OS_InterruptTask3_FlagClear_v(void)
SUB	SP, SP, #4
;os_service.c,148 :: 		return;
;os_service.c,149 :: 		}
L_end_OS_InterruptTask3_FlagClear_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask3_FlagClear_v
_OS_InterruptTask4_FlagClear_v:
;os_service.c,151 :: 		void OS_InterruptTask4_FlagClear_v(void)
SUB	SP, SP, #4
;os_service.c,155 :: 		return;
;os_service.c,156 :: 		}
L_end_OS_InterruptTask4_FlagClear_v:
ADD	SP, SP, #4
BX	LR
; end of _OS_InterruptTask4_FlagClear_v

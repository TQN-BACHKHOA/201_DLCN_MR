_TIMER6_Config_v:
;timer_driver.c,19 :: 		void TIMER6_Config_v(void)
SUB	SP, SP, #4
;timer_driver.c,22 :: 		RCC_APB1ENR.TIM6EN = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(RCC_APB1ENR+0)
MOVT	R0, #hi_addr(RCC_APB1ENR+0)
_SX	[R0, ByteOffset(RCC_APB1ENR+0)]
;timer_driver.c,23 :: 		TIM6_CR1.CEN = 0; //Timer stop
MOVS	R2, #0
SXTB	R2, R2
MOVW	R0, #lo_addr(TIM6_CR1+0)
MOVT	R0, #hi_addr(TIM6_CR1+0)
_SX	[R0, ByteOffset(TIM6_CR1+0)]
;timer_driver.c,24 :: 		TIM6_CR1bits.CEN = 0;
MOVW	R0, #lo_addr(TIM6_CR1bits+0)
MOVT	R0, #hi_addr(TIM6_CR1bits+0)
_SX	[R0, ByteOffset(TIM6_CR1bits+0)]
;timer_driver.c,25 :: 		TIM6_PSC = 159; //Prescaler : Timer 6 clock = 8MHz = 8MHz/(159+1)
MOVS	R1, #159
MOVW	R0, #lo_addr(TIM6_PSC+0)
MOVT	R0, #hi_addr(TIM6_PSC+0)
STR	R1, [R0, #0]
;timer_driver.c,26 :: 		TIM6_ARR = 5000; //Period 100ms = 5000
MOVW	R1, #5000
MOVW	R0, #lo_addr(TIM6_ARR+0)
MOVT	R0, #hi_addr(TIM6_ARR+0)
STR	R1, [R0, #0]
;timer_driver.c,29 :: 		TIM6_SR.UIF = 0;
MOVW	R0, #lo_addr(TIM6_SR+0)
MOVT	R0, #hi_addr(TIM6_SR+0)
_SX	[R0, ByteOffset(TIM6_SR+0)]
;timer_driver.c,30 :: 		return;
;timer_driver.c,31 :: 		}
L_end_TIMER6_Config_v:
ADD	SP, SP, #4
BX	LR
; end of _TIMER6_Config_v
_TIMER6_Enable_v:
;timer_driver.c,33 :: 		void TIMER6_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;timer_driver.c,36 :: 		NVIC_IntEnable(IVT_INT_TIM6_DAC);    // Enable timer interrupt
MOVW	R0, #70
BL	_NVIC_IntEnable+0
;timer_driver.c,37 :: 		TIM6_DIER.UIE = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM6_DIER+0)
MOVT	R0, #hi_addr(TIM6_DIER+0)
_SX	[R0, ByteOffset(TIM6_DIER+0)]
;timer_driver.c,39 :: 		TIM6_CR1.CEN = 1;                     //Timer run
MOVW	R0, #lo_addr(TIM6_CR1+0)
MOVT	R0, #hi_addr(TIM6_CR1+0)
_SX	[R0, ByteOffset(TIM6_CR1+0)]
;timer_driver.c,40 :: 		return;
;timer_driver.c,41 :: 		}
L_end_TIMER6_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _TIMER6_Enable_v
_TIMER6_Disable_v:
;timer_driver.c,43 :: 		void TIMER6_Disable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;timer_driver.c,46 :: 		NVIC_IntDisable(IVT_INT_TIM6_DAC);     // Enable timer interrupt
MOVW	R0, #70
BL	_NVIC_IntDisable+0
;timer_driver.c,47 :: 		TIM6_DIER.UIE = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM6_DIER+0)
MOVT	R0, #hi_addr(TIM6_DIER+0)
_SX	[R0, ByteOffset(TIM6_DIER+0)]
;timer_driver.c,49 :: 		TIM6_CR1.CEN = 0;                      //Timer stop
MOVW	R0, #lo_addr(TIM6_CR1+0)
MOVT	R0, #hi_addr(TIM6_CR1+0)
_SX	[R0, ByteOffset(TIM6_CR1+0)]
;timer_driver.c,50 :: 		return;
;timer_driver.c,51 :: 		}
L_end_TIMER6_Disable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _TIMER6_Disable_v
_TIMER6_Clear_v:
;timer_driver.c,53 :: 		void TIMER6_Clear_v(void)
SUB	SP, SP, #4
;timer_driver.c,56 :: 		TIM6_SR.UIF = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM6_SR+0)
MOVT	R0, #hi_addr(TIM6_SR+0)
_SX	[R0, ByteOffset(TIM6_SR+0)]
;timer_driver.c,57 :: 		return;
;timer_driver.c,58 :: 		}
L_end_TIMER6_Clear_v:
ADD	SP, SP, #4
BX	LR
; end of _TIMER6_Clear_v
_TIMER7_Config_v:
;timer_driver.c,61 :: 		void TIMER7_Config_v(void)
SUB	SP, SP, #4
;timer_driver.c,64 :: 		RCC_APB1ENR.TIM7EN = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(RCC_APB1ENR+0)
MOVT	R0, #hi_addr(RCC_APB1ENR+0)
_SX	[R0, ByteOffset(RCC_APB1ENR+0)]
;timer_driver.c,65 :: 		TIM7_CR1.CEN = 0; //Timer stop
MOVS	R2, #0
SXTB	R2, R2
MOVW	R0, #lo_addr(TIM7_CR1+0)
MOVT	R0, #hi_addr(TIM7_CR1+0)
_SX	[R0, ByteOffset(TIM7_CR1+0)]
;timer_driver.c,66 :: 		TIM7_CR1bits.CEN = 0;
MOVW	R0, #lo_addr(TIM7_CR1bits+0)
MOVT	R0, #hi_addr(TIM7_CR1bits+0)
_SX	[R0, ByteOffset(TIM7_CR1bits+0)]
;timer_driver.c,67 :: 		TIM7_PSC = 159; //Prescaler : Timer 7 clock = 8MHz = 8MHz/(0+1)
MOVS	R1, #159
MOVW	R0, #lo_addr(TIM7_PSC+0)
MOVT	R0, #hi_addr(TIM7_PSC+0)
STR	R1, [R0, #0]
;timer_driver.c,68 :: 		TIM7_ARR = 500; //Period 10ms = 500
MOVW	R1, #500
MOVW	R0, #lo_addr(TIM7_ARR+0)
MOVT	R0, #hi_addr(TIM7_ARR+0)
STR	R1, [R0, #0]
;timer_driver.c,71 :: 		TIM7_SR.UIF = 0;
MOVW	R0, #lo_addr(TIM7_SR+0)
MOVT	R0, #hi_addr(TIM7_SR+0)
_SX	[R0, ByteOffset(TIM7_SR+0)]
;timer_driver.c,72 :: 		return;
;timer_driver.c,73 :: 		}
L_end_TIMER7_Config_v:
ADD	SP, SP, #4
BX	LR
; end of _TIMER7_Config_v
_TIMER7_Enable_v:
;timer_driver.c,75 :: 		void TIMER7_Enable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;timer_driver.c,78 :: 		NVIC_IntEnable(IVT_INT_TIM7);         // Enable timer interrupt
MOVW	R0, #71
BL	_NVIC_IntEnable+0
;timer_driver.c,79 :: 		TIM7_DIER.UIE = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM7_DIER+0)
MOVT	R0, #hi_addr(TIM7_DIER+0)
_SX	[R0, ByteOffset(TIM7_DIER+0)]
;timer_driver.c,81 :: 		TIM7_CR1.CEN = 1;                     //Timer run
MOVW	R0, #lo_addr(TIM7_CR1+0)
MOVT	R0, #hi_addr(TIM7_CR1+0)
_SX	[R0, ByteOffset(TIM7_CR1+0)]
;timer_driver.c,82 :: 		return;
;timer_driver.c,83 :: 		}
L_end_TIMER7_Enable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _TIMER7_Enable_v
_TIMER7_Disable_v:
;timer_driver.c,85 :: 		void TIMER7_Disable_v(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;timer_driver.c,88 :: 		NVIC_IntDisable(IVT_INT_TIM7);         // Enable timer interrupt
MOVW	R0, #71
BL	_NVIC_IntDisable+0
;timer_driver.c,89 :: 		TIM7_DIER.UIE = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM7_DIER+0)
MOVT	R0, #hi_addr(TIM7_DIER+0)
_SX	[R0, ByteOffset(TIM7_DIER+0)]
;timer_driver.c,91 :: 		TIM7_CR1.CEN = 0;                      //Timer stop
MOVW	R0, #lo_addr(TIM7_CR1+0)
MOVT	R0, #hi_addr(TIM7_CR1+0)
_SX	[R0, ByteOffset(TIM7_CR1+0)]
;timer_driver.c,92 :: 		return;
;timer_driver.c,93 :: 		}
L_end_TIMER7_Disable_v:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _TIMER7_Disable_v
_TIMER7_Clear_v:
;timer_driver.c,95 :: 		void TIMER7_Clear_v(void)
SUB	SP, SP, #4
;timer_driver.c,98 :: 		TIM7_SR.UIF = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM7_SR+0)
MOVT	R0, #hi_addr(TIM7_SR+0)
_SX	[R0, ByteOffset(TIM7_SR+0)]
;timer_driver.c,99 :: 		return;
;timer_driver.c,100 :: 		}
L_end_TIMER7_Clear_v:
ADD	SP, SP, #4
BX	LR
; end of _TIMER7_Clear_v

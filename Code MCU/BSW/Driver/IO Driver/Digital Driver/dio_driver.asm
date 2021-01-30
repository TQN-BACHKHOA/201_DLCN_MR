_DIO_Config:
;dio_driver.c,39 :: 		void DIO_Config(void)
SUB	SP, SP, #4
STR	LR, [SP, #0]
;dio_driver.c,43 :: 		GPIO_Digital_Input(&GPIOC_BASE,_GPIO_PINMASK_14|_GPIO_PINMASK_15);
MOVW	R1, #49152
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
;dio_driver.c,46 :: 		_GPIO_PINMASK_5|_GPIO_PINMASK_6|_GPIO_PINMASK_7);
MOVW	R1, #243
;dio_driver.c,45 :: 		GPIO_Digital_Input(&GPIOD_BASE,_GPIO_PINMASK_0|_GPIO_PINMASK_1|_GPIO_PINMASK_4|
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
;dio_driver.c,46 :: 		_GPIO_PINMASK_5|_GPIO_PINMASK_6|_GPIO_PINMASK_7);
BL	_GPIO_Digital_Input+0
;dio_driver.c,48 :: 		GPIO_Digital_Output(&GPIOD_BASE,_GPIO_PINMASK_HIGH);
MOVW	R1, #65280
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
;dio_driver.c,50 :: 		GPIOD_ODR = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;dio_driver.c,51 :: 		}
L_end_DIO_Config:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DIO_Config
_DI_0_Get:
;dio_driver.c,54 :: 		uint8_t DI_0_Get(void)
SUB	SP, SP, #8
;dio_driver.c,57 :: 		tmp.F0 = DI1;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #0, #1
STRB	R0, [SP, #4]
;dio_driver.c,58 :: 		tmp.F1 = DI2;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #1, #1
STRB	R0, [SP, #4]
;dio_driver.c,59 :: 		tmp.F2 = DI3;
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #2, #1
STRB	R0, [SP, #4]
;dio_driver.c,60 :: 		tmp.F3 = DI4;
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #3, #1
STRB	R0, [SP, #4]
;dio_driver.c,61 :: 		tmp.F4 = DI5;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #4, #1
STRB	R0, [SP, #4]
;dio_driver.c,62 :: 		tmp.F5 = DI6;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #5, #1
STRB	R0, [SP, #4]
;dio_driver.c,63 :: 		tmp.F6 = DI7;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #6, #1
STRB	R0, [SP, #4]
;dio_driver.c,64 :: 		tmp.F7 = DI8;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
LDRB	R0, [SP, #4]
BFI	R0, R1, #7, #1
STRB	R0, [SP, #4]
;dio_driver.c,65 :: 		return tmp;
LDRB	R0, [SP, #4]
;dio_driver.c,66 :: 		}
L_end_DI_0_Get:
ADD	SP, SP, #8
BX	LR
; end of _DI_0_Get
_DI_1_Get:
;dio_driver.c,68 :: 		uint8_t DI_1_Get(void)
SUB	SP, SP, #4
;dio_driver.c,70 :: 		uint8_t tmp = DI1;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,71 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,72 :: 		}
L_end_DI_1_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_1_Get
_DI_2_Get:
;dio_driver.c,74 :: 		uint8_t DI_2_Get(void)
SUB	SP, SP, #4
;dio_driver.c,76 :: 		uint8_t tmp = DI2;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,77 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,78 :: 		}
L_end_DI_2_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_2_Get
_DI_3_Get:
;dio_driver.c,80 :: 		uint8_t DI_3_Get(void)
SUB	SP, SP, #4
;dio_driver.c,82 :: 		uint8_t tmp = DI3;
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
;dio_driver.c,83 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,84 :: 		}
L_end_DI_3_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_3_Get
_DI_4_Get:
;dio_driver.c,86 :: 		uint8_t DI_4_Get(void)
SUB	SP, SP, #4
;dio_driver.c,88 :: 		uint8_t tmp = DI4;
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
;dio_driver.c,89 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,90 :: 		}
L_end_DI_4_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_4_Get
_DI_5_Get:
;dio_driver.c,92 :: 		uint8_t DI_5_Get(void)
SUB	SP, SP, #4
;dio_driver.c,94 :: 		uint8_t tmp = DI5;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,95 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,96 :: 		}
L_end_DI_5_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_5_Get
_DI_6_Get:
;dio_driver.c,98 :: 		uint8_t DI_6_Get(void)
SUB	SP, SP, #4
;dio_driver.c,100 :: 		uint8_t tmp = DI6;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,101 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,102 :: 		}
L_end_DI_6_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_6_Get
_DI_7_Get:
;dio_driver.c,104 :: 		uint8_t DI_7_Get(void)
SUB	SP, SP, #4
;dio_driver.c,106 :: 		uint8_t tmp = DI7;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,107 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,108 :: 		}
L_end_DI_7_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_7_Get
_DI_8_Get:
;dio_driver.c,110 :: 		uint8_t DI_8_Get(void)
SUB	SP, SP, #4
;dio_driver.c,112 :: 		uint8_t tmp = DI8;
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
;dio_driver.c,113 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,114 :: 		}
L_end_DI_8_Get:
ADD	SP, SP, #4
BX	LR
; end of _DI_8_Get
_DO_0_Set:
;dio_driver.c,116 :: 		void DO_0_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,118 :: 		DO1 = value.F0;
UBFX	R2, R0, #0, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,119 :: 		DO2 = value.F1;
UBFX	R2, R0, #1, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,120 :: 		DO3 = value.F2;
UBFX	R2, R0, #2, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,121 :: 		DO4 = value.F3;
UBFX	R2, R0, #3, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,122 :: 		DO5 = value.F4;
UBFX	R2, R0, #4, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,123 :: 		DO6 = value.F5;
UBFX	R2, R0, #5, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,124 :: 		DO7 = value.F6;
UBFX	R2, R0, #6, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,125 :: 		DO8 = value.F7;
UBFX	R2, R0, #7, #1
; value end address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,126 :: 		}
L_end_DO_0_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_0_Set
_DO_1_Set:
;dio_driver.c,128 :: 		void DO_1_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,130 :: 		DO1 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,131 :: 		}
L_end_DO_1_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_1_Set
_DO_2_Set:
;dio_driver.c,133 :: 		void DO_2_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,135 :: 		DO2 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,136 :: 		}
L_end_DO_2_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_2_Set
_DO_3_Set:
;dio_driver.c,138 :: 		void DO_3_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,140 :: 		DO3 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,141 :: 		}
L_end_DO_3_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_3_Set
_DO_4_Set:
;dio_driver.c,143 :: 		void DO_4_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,145 :: 		DO4 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,146 :: 		}
L_end_DO_4_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_4_Set
_DO_5_Set:
;dio_driver.c,148 :: 		void DO_5_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,150 :: 		DO5 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,151 :: 		}
L_end_DO_5_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_5_Set
_DO_6_Set:
;dio_driver.c,153 :: 		void DO_6_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,155 :: 		DO6 = value;
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
;dio_driver.c,156 :: 		}
L_end_DO_6_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_6_Set
_DO_7_Set:
;dio_driver.c,158 :: 		void DO_7_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,161 :: 		if(value==0)
CMP	R0, #0
IT	NE
BNE	L_DO_7_Set0
; value end address is: 0 (R0)
;dio_driver.c,162 :: 		GPIOD_BSRRbits.BR14 = 1;
MOVS	R2, #1
SXTB	R2, R2
MOVW	R1, #lo_addr(GPIOD_BSRRbits+0)
MOVT	R1, #hi_addr(GPIOD_BSRRbits+0)
_SX	[R1, ByteOffset(GPIOD_BSRRbits+0)]
IT	AL
BAL	L_DO_7_Set1
L_DO_7_Set0:
;dio_driver.c,164 :: 		GPIOD_BSRRbits.BS14 = 1;
MOVS	R2, #1
SXTB	R2, R2
MOVW	R1, #lo_addr(GPIOD_BSRRbits+0)
MOVT	R1, #hi_addr(GPIOD_BSRRbits+0)
_SX	[R1, ByteOffset(GPIOD_BSRRbits+0)]
L_DO_7_Set1:
;dio_driver.c,165 :: 		}
L_end_DO_7_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_7_Set
_DO_8_Set:
;dio_driver.c,167 :: 		void DO_8_Set(uint8_t value)
; value start address is: 0 (R0)
SUB	SP, SP, #4
; value end address is: 0 (R0)
; value start address is: 0 (R0)
;dio_driver.c,170 :: 		if(value==0)
CMP	R0, #0
IT	NE
BNE	L_DO_8_Set2
; value end address is: 0 (R0)
;dio_driver.c,171 :: 		GPIOD_BSRRbits.BR15 = 1;
MOVS	R2, #1
SXTB	R2, R2
MOVW	R1, #lo_addr(GPIOD_BSRRbits+0)
MOVT	R1, #hi_addr(GPIOD_BSRRbits+0)
_SX	[R1, ByteOffset(GPIOD_BSRRbits+0)]
IT	AL
BAL	L_DO_8_Set3
L_DO_8_Set2:
;dio_driver.c,173 :: 		GPIOD_BSRRbits.BS15 = 1;
MOVS	R2, #1
SXTB	R2, R2
MOVW	R1, #lo_addr(GPIOD_BSRRbits+0)
MOVT	R1, #hi_addr(GPIOD_BSRRbits+0)
_SX	[R1, ByteOffset(GPIOD_BSRRbits+0)]
L_DO_8_Set3:
;dio_driver.c,174 :: 		}
L_end_DO_8_Set:
ADD	SP, SP, #4
BX	LR
; end of _DO_8_Set
_DO_0_Get:
;dio_driver.c,177 :: 		uint8_t DO_0_Get(void)
SUB	SP, SP, #4
;dio_driver.c,190 :: 		tmp = GPIOD_ODR>>8;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
LDR	R0, [R0, #0]
LSRS	R0, R0, #8
;dio_driver.c,191 :: 		return tmp;
UXTB	R0, R0
;dio_driver.c,192 :: 		}
L_end_DO_0_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_0_Get
_DO_1_Get:
;dio_driver.c,194 :: 		uint8_t DO_1_Get(void)
SUB	SP, SP, #4
;dio_driver.c,196 :: 		uint8_t tmp = DO1;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,197 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,198 :: 		}
L_end_DO_1_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_1_Get
_DO_2_Get:
;dio_driver.c,200 :: 		uint8_t DO_2_Get(void)
SUB	SP, SP, #4
;dio_driver.c,202 :: 		uint8_t tmp = DO2;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,203 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,204 :: 		}
L_end_DO_2_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_2_Get
_DO_3_Get:
;dio_driver.c,206 :: 		uint8_t DO_3_Get(void)
SUB	SP, SP, #4
;dio_driver.c,208 :: 		uint8_t tmp = DO3;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,209 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,210 :: 		}
L_end_DO_3_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_3_Get
_DO_4_Get:
;dio_driver.c,212 :: 		uint8_t DO_4_Get(void)
SUB	SP, SP, #4
;dio_driver.c,214 :: 		uint8_t tmp = DO4;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,215 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,216 :: 		}
L_end_DO_4_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_4_Get
_DO_5_Get:
;dio_driver.c,218 :: 		uint8_t DO_5_Get(void)
SUB	SP, SP, #4
;dio_driver.c,220 :: 		uint8_t tmp = DO5;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,221 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,222 :: 		}
L_end_DO_5_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_5_Get
_DO_6_Get:
;dio_driver.c,224 :: 		uint8_t DO_6_Get(void)
SUB	SP, SP, #4
;dio_driver.c,226 :: 		uint8_t tmp = DO6;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,227 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,228 :: 		}
L_end_DO_6_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_6_Get
_DO_7_Get:
;dio_driver.c,230 :: 		uint8_t DO_7_Get(void)
SUB	SP, SP, #4
;dio_driver.c,232 :: 		uint8_t tmp = DO7;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,233 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,234 :: 		}
L_end_DO_7_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_7_Get
_DO_8_Get:
;dio_driver.c,236 :: 		uint8_t DO_8_Get(void)
SUB	SP, SP, #4
;dio_driver.c,238 :: 		uint8_t tmp = DO8;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
; tmp start address is: 0 (R0)
_LX	[R0, ByteOffset(GPIOD_ODR+0)]
;dio_driver.c,239 :: 		return tmp;
; tmp end address is: 0 (R0)
;dio_driver.c,240 :: 		}
L_end_DO_8_Get:
ADD	SP, SP, #4
BX	LR
; end of _DO_8_Get

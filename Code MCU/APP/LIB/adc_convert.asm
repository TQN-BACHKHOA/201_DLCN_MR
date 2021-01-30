_ADC_Scale:
;adc_convert.c,21 :: 		double ADC_Scale(uint8_t sensorNumber, uint16_t Raw_Value)
; Raw_Value start address is: 4 (R1)
; sensorNumber start address is: 0 (R0)
SUB	SP, SP, #4
; Raw_Value end address is: 4 (R1)
; sensorNumber end address is: 0 (R0)
; sensorNumber start address is: 0 (R0)
; Raw_Value start address is: 4 (R1)
;adc_convert.c,23 :: 		double tmp = 0;
;adc_convert.c,24 :: 		double span = 0;
;adc_convert.c,25 :: 		double zero = 0;
;adc_convert.c,26 :: 		if(Raw_Value > 4095)
MOVW	R2, #4095
CMP	R1, R2
IT	LS
BLS	L__ADC_Scale1
;adc_convert.c,27 :: 		Raw_Value = 4095;
MOVW	R1, #4095
; Raw_Value end address is: 4 (R1)
IT	AL
BAL	L_ADC_Scale0
L__ADC_Scale1:
;adc_convert.c,26 :: 		if(Raw_Value > 4095)
;adc_convert.c,27 :: 		Raw_Value = 4095;
L_ADC_Scale0:
;adc_convert.c,28 :: 		tmp = Raw_Value*SensorPara.Span[sensorNumber-1] + SensorPara.Zero[sensorNumber-1];
; Raw_Value start address is: 4 (R1)
SUBS	R2, R0, #1
SXTH	R2, R2
; sensorNumber end address is: 0 (R0)
LSLS	R3, R2, #2
MOVW	R2, #lo_addr(_SensorPara+72)
MOVT	R2, #hi_addr(_SensorPara+72)
ADDS	R2, R2, R3
VMOV	S1, R1
VCVT.F32	#0, S1, S1
; Raw_Value end address is: 4 (R1)
VLDR	#1, S0, [R2, #0]
VMUL.F32	S1, S1, S0
MOVW	R2, #lo_addr(_SensorPara+48)
MOVT	R2, #hi_addr(_SensorPara+48)
ADDS	R2, R2, R3
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S1, S0
;adc_convert.c,29 :: 		return tmp;
VMOV.F32	S0, S0
;adc_convert.c,30 :: 		}
L_end_ADC_Scale:
ADD	SP, SP, #4
BX	LR
; end of _ADC_Scale

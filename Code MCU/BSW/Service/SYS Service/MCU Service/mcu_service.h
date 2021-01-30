/*
 * 	mcu_service.h
 *	Revision: 1.0
 *  Author: NDH
 *	Date:	20/8/2017
 */

/*
 *	MCU Service header
 */

#ifndef MCU_SERVICE_H_INCLUDED
#define MCU_SERVICE_H_INCLUDED

/*------------------------------Include header file------------------------------*/

/*------------------------------End include------------------------------*/

#ifdef MCU_SERVICE
	#define EXTERN
#else
	#define EXTERN extern
#endif

/*------------------------------Declare service------------------------------*/
EXTERN void MCU_Init_v(void);
EXTERN void MCU_Enable_v(void);
/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif

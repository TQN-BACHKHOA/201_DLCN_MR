/*
 *         	rs232_driver.h
 *        	Revision: 2.0
 *  		Author: NDH
 *        	Date:        19/8/2017
 */

/*
 *        RS232 Driver header
 */

#ifndef RS232_DRIVER_H_INCLUDED
#define RS232_DRIVER_H_INCLUDED

/*------------------------------Include header file------------------------------*/

/*------------------------------End include------------------------------*/

#ifdef RS232_DRIVER
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare driver------------------------------*/

EXTERN void RS232_Config(void);
EXTERN void RS232_Init(void);
EXTERN void RS232_Enable(void);
EXTERN void RS232_Read(void);
EXTERN void RS232_Write(void);
EXTERN void RS232_IntRx_Enable(void);
EXTERN void RS232_IntRx_Disable(void);
EXTERN void RS232_IntRx_Clear(void);
/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
/*
 *        RDS_run.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   21/12/2020
 */

/*
 *        Step run RDS for main function
 */

#ifndef RDS_RUN_H_INCLUDED
#define RDS_RUN_H_INCLUDED

/*------------------------------Include header file------------------------------*/

/*------------------------------End include------------------------------*/

#ifdef RDS
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare component functions------------------------------*/
EXTERN void RDS_Init_v(void);
EXTERN void RDS_Run_v(void);
EXTERN void RDS_Read_v(void);
/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
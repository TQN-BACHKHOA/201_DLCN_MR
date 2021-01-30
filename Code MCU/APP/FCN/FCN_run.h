/*
 *        FCN_run.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   21/8/2017
 */

/*
 *        Step run FCN for main function
 */

#ifndef FCN_RUN_H_INCLUDED
#define FCN_RUN_H_INCLUDED

/*------------------------------Include header file------------------------------*/

/*------------------------------End include------------------------------*/

#ifdef FCN
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Declare component functions------------------------------*/
EXTERN void FCN_Init_v(void);
EXTERN void FCN_Run_v(void);
/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
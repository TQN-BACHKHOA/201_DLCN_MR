/*
 *        FCN_out.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   21/8/2017
 */

/*
 *        FCN output
 */

#ifndef FCN_OUT_H_INCLUDED
#define FCN_OUT_H_INCLUDED

/*------------------------------Include header file------------------------------*/

//        Include <_service.h>
#include "HMI_service.h"
/*------------------------------End include------------------------------*/

#ifdef FCN
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Define structs------------------------------*/

/*------------------------------End define------------------------------*/

/*------------------------------Declare component output------------------------------*/

/*------------------------------End declare------------------------------*/

#undef EXTERN
#endif
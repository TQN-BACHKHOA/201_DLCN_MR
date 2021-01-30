/*
 *        RDS_out.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:   21/12/2020
 */

/*
 *        RDS output
 */

#ifndef RDS_OUT_H_INCLUDED
#define RDS_OUT_H_INCLUDED

/*------------------------------Include header file------------------------------*/

//        Include <_service.h>
#include "HMI_service.h"
/*------------------------------End include------------------------------*/

#ifdef RDS
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
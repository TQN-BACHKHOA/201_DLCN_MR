/*
 *        RDS_in.h
 *        Revision: 1.0
 *        Author: NDH
 *        Date:        21/12/2020
 */

/*
 *        RDS input and declare RDS variables
 */

#ifndef RDS_IN_H_INCLUDED
#define RDS_IN_H_INCLUDED

/*------------------------------Include header file------------------------------*/


#include "hmi_service.h"
#include "dio_service.h"
/*------------------------------End include------------------------------*/

#ifdef RDS
        #define EXTERN
#else
        #define EXTERN extern
#endif

/*------------------------------Define structs------------------------------*/

/*------------------------------End define------------------------------*/


#undef EXTERN
#endif
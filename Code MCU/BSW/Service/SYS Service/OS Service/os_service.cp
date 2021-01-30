#line 1 "F:/MR_DLCN/Code MCU/BSW/Service/SYS Service/OS Service/os_service.c"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "f:/mr_dlcn/code mcu/bsw/service/sys service/os service/os_service.h"
#line 1 "g:/applications/mikroc/mikroc pro for arm/include/stdint.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/service/sys service/os service/os_service.h"
  void OS_ConfigPeriodTask_v(void);
  void OS_ConfigInterruptTask_v(void);
  void OS_PeriodTask1_Enable_v(void);
  void OS_PeriodTask2_Enable_v(void);
  void OS_InterruptTask1_Enable_v(void);
  void OS_InterruptTask2_Enable_v(void);
  void OS_InterruptTask3_Enable_v(void);
  void OS_InterruptTask4_Enable_v(void);

  void OS_PeriodTask1_Disable_v(void);
  void OS_PeriodTask2_Disable_v(void);
  void OS_InterruptTask1_Disable_v(void);
  void OS_InterruptTask3_Disable_v(void);

  void OS_PeriodTask1_FlagClear_v(void);
  void OS_PeriodTask2_FlagClear_v(void);
  void OS_InterruptTask1_FlagClear_v(void);
  void OS_InterruptTask2_FlagClear_v(void);
  void OS_InterruptTask3_FlagClear_v(void);
  void OS_InterruptTask4_FlagClear_v(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/timer driver/timer_driver.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/io driver/timer driver/timer_driver.h"
 extern  void TIMER6_Config_v(void);
 extern  void TIMER6_Enable_v(void);
 extern  void TIMER6_Disable_v(void);
 extern  void TIMER6_Clear_v(void);
 extern  void TIMER7_Config_v(void);
 extern  void TIMER7_Enable_v(void);
 extern  void TIMER7_Disable_v(void);
 extern  void TIMER7_Clear_v(void);
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/com driver/rs232 driver/rs232_driver.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/com driver/rs232 driver/rs232_driver.h"
 extern  void RS232_Config(void);
 extern  void RS232_Init(void);
 extern  void RS232_Enable(void);
 extern  void RS232_Read(void);
 extern  void RS232_Write(void);
 extern  void RS232_IntRx_Enable(void);
 extern  void RS232_IntRx_Disable(void);
 extern  void RS232_IntRx_Clear(void);
#line 22 "F:/MR_DLCN/Code MCU/BSW/Service/SYS Service/OS Service/os_service.c"
void OS_ConfigPeriodTask_v(void)
{

 TIMER6_Config_v();
 TIMER7_Config_v();

 return;
}

void OS_ConfigInterruptTask_v(void)
{

 RS232_Config();


 return;
}

void OS_PeriodTask1_Enable_v(void)
{

 TIMER7_Enable_v();

 return;
}

void OS_PeriodTask2_Enable_v(void)
{

 TIMER6_Enable_v();

 return;
}

void OS_PeriodTask1_Disable_v(void)
{

 TIMER6_Disable_v();

 return;
}

void OS_PeriodTask2_Disable_v(void)
{

 TIMER7_Disable_v();

 return;
}

void OS_InterruptTask1_Enable_v(void)
{

 RS232_IntRx_Enable();
 return;
}

void OS_InterruptTask1_Disable_v(void)
{

 RS232_IntRx_Disable();
 return;
}


void OS_InterruptTask2_Enable_v(void)
{


 return;
}

void OS_InterruptTask3_Enable_v(void)
{


 return;
}

void OS_InterruptTask3_Disable_v(void)
{


 return;
}

void OS_InterruptTask4_Enable_v(void)
{


 return;
}

void OS_PeriodTask2_FlagClear_v(void)
{

 TIMER6_Clear_v();
 return;
}

void OS_PeriodTask1_FlagClear_v(void)
{

 TIMER7_Clear_v();
 return;
}

void OS_InterruptTask1_FlagClear_v(void)
{

 RS232_IntRx_Clear();
 return;
}


void OS_InterruptTask2_FlagClear_v(void)
{


 return;
}

void OS_InterruptTask3_FlagClear_v(void)
{


 return;
}

void OS_InterruptTask4_FlagClear_v(void)
{


 return;
}

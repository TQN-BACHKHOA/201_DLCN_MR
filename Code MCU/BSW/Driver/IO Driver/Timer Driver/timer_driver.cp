#line 1 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Timer Driver/timer_driver.c"
#line 1 "f:/mr_dlcn/code mcu/bsw/driver/io driver/timer driver/timer_driver.h"
#line 27 "f:/mr_dlcn/code mcu/bsw/driver/io driver/timer driver/timer_driver.h"
  void TIMER6_Config_v(void);
  void TIMER6_Enable_v(void);
  void TIMER6_Disable_v(void);
  void TIMER6_Clear_v(void);
  void TIMER7_Config_v(void);
  void TIMER7_Enable_v(void);
  void TIMER7_Disable_v(void);
  void TIMER7_Clear_v(void);
#line 19 "F:/MR_DLCN/Code MCU/BSW/Driver/IO Driver/Timer Driver/timer_driver.c"
void TIMER6_Config_v(void)
{

 RCC_APB1ENR.TIM6EN = 1;
 TIM6_CR1.CEN = 0;
 TIM6_CR1bits.CEN = 0;
 TIM6_PSC = 159;
 TIM6_ARR = 5000;


 TIM6_SR.UIF = 0;
 return;
}

void TIMER6_Enable_v(void)
{

 NVIC_IntEnable(IVT_INT_TIM6_DAC);
 TIM6_DIER.UIE = 1;

 TIM6_CR1.CEN = 1;
 return;
}

void TIMER6_Disable_v(void)
{

 NVIC_IntDisable(IVT_INT_TIM6_DAC);
 TIM6_DIER.UIE = 0;

 TIM6_CR1.CEN = 0;
 return;
}

void TIMER6_Clear_v(void)
{

 TIM6_SR.UIF = 0;
 return;
}


void TIMER7_Config_v(void)
{

 RCC_APB1ENR.TIM7EN = 1;
 TIM7_CR1.CEN = 0;
 TIM7_CR1bits.CEN = 0;
 TIM7_PSC = 159;
 TIM7_ARR = 500;


 TIM7_SR.UIF = 0;
 return;
}

void TIMER7_Enable_v(void)
{

 NVIC_IntEnable(IVT_INT_TIM7);
 TIM7_DIER.UIE = 1;

 TIM7_CR1.CEN = 1;
 return;
}

void TIMER7_Disable_v(void)
{

 NVIC_IntDisable(IVT_INT_TIM7);
 TIM7_DIER.UIE = 0;

 TIM7_CR1.CEN = 0;
 return;
}

void TIMER7_Clear_v(void)
{

 TIM7_SR.UIF = 0;
 return;
}

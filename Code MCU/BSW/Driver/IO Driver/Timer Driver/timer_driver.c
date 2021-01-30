/*
 *        timer_driver.c
 *        Revision: 1.0
 *        Author: NDH
 *        Date:        20/8/2017
 */

/*
 *        Timer Driver
 */

#define TIMER_DRIVER

/*------------------------------Include header file------------------------------*/
#include "timer_driver.h"

/*------------------------------End include------------------------------*/
//TIMER 6 : period = 100ms
void TIMER6_Config_v(void)
{
    //Config TIMER 6
    RCC_APB1ENR.TIM6EN = 1;
    TIM6_CR1.CEN = 0; //Timer stop
    TIM6_CR1bits.CEN = 0;
    TIM6_PSC = 159; //Prescaler : Timer 6 clock = 8MHz = 8MHz/(159+1)
    TIM6_ARR = 5000; //Period 100ms = 5000

    //UV Interrupt
    TIM6_SR.UIF = 0;
    return;
}

void TIMER6_Enable_v(void)
{
        //Enable TIMER 6 Interrupt
        NVIC_IntEnable(IVT_INT_TIM6_DAC);    // Enable timer interrupt
        TIM6_DIER.UIE = 1;
        //Run TIMER 6
        TIM6_CR1.CEN = 1;                     //Timer run
        return;
}

void TIMER6_Disable_v(void)
{
        //Disable TIMER 6 Interrupt
        NVIC_IntDisable(IVT_INT_TIM6_DAC);     // Enable timer interrupt
        TIM6_DIER.UIE = 0;
        //Stop TIMER 6
        TIM6_CR1.CEN = 0;                      //Timer stop
        return;
}

void TIMER6_Clear_v(void)
{
        //Clear TIMER 6 Flag
        TIM6_SR.UIF = 0;
        return;
}

//TIMER 7 : period = 10ms
void TIMER7_Config_v(void)
{
    //Config TIMER 7
    RCC_APB1ENR.TIM7EN = 1;
    TIM7_CR1.CEN = 0; //Timer stop
    TIM7_CR1bits.CEN = 0;
    TIM7_PSC = 159; //Prescaler : Timer 7 clock = 8MHz = 8MHz/(0+1)
    TIM7_ARR = 500; //Period 10ms = 500
     
    //UV Interrupt
    TIM7_SR.UIF = 0;     
    return;
}

void TIMER7_Enable_v(void)
{
        //Enable TIMER 7 Interrupt
        NVIC_IntEnable(IVT_INT_TIM7);         // Enable timer interrupt
        TIM7_DIER.UIE = 1;
        //Run TIMER 7
        TIM7_CR1.CEN = 1;                     //Timer run
        return;
}

void TIMER7_Disable_v(void)
{
        //Disable TIMER 7 Interrupt
        NVIC_IntDisable(IVT_INT_TIM7);         // Enable timer interrupt
        TIM7_DIER.UIE = 0;
        //Stop TIMER 7
        TIM7_CR1.CEN = 0;                      //Timer stop
        return;
}

void TIMER7_Clear_v(void)
{
        //Clear TIMER 7 Flag
        TIM7_SR.UIF = 0; 
        return;
}

#undef TIMER_DRIVER
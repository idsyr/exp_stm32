#include "stm32f1xx_ll_rcc.h"
#include "stm32f1xx_ll_system.h"
#include "stm32f1xx_ll_bus.h"
#include "stm32f1xx_ll_gpio.h"

static void rcc_config(){
    LL_FLASH_SetLatency(LL_FLASH_LATENSY_0); // min latency for access to flash memmory
    LL_RCC_HSI_Enable(); while(LL_RCC_HSI_IsReady()!=1){}; // internal oscilator
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2, LL_RCC_PLL_MUL_12); // *2/12
    LL_RCC_PLL_Enable(); while(LL_RCC_GetSysClkSource()!=LL_RCC_SYS_ClKSOURCE_STATUS_PLL){}; //PLL is input hsi and change clock
    
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1); //APB1,2 is continue of AHB(1)
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL); while(LL_RCC_GetSysClkSource()!=LL_RCC_SYS_CLKSOURCE_STATUS_PLL);
}
static void gpio_config(void){
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_?, LL_GPIO_MODE_OUTPUT);
    return;
}

__attribute__((naked)) static void delay(void){
    asm("push {r7, lr}");
    asm("ldr r6, [pc, #8]");
    asm("sub r6 #1");
    asm("cmp r6, #0");
    asm("bne delay+0x4");
    asm("pop {r7, pc}");
    asm(".word ox5b8d90");
}

int main(void){ rcc_config(); gpio_config();
    while(1){
        LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);   delay();
        LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8); delay();
    }
    return 0;
}

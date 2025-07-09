#include "led.h"
#include "ls1x_gpio.h"


void LED_Init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(LED1_PIN, GPIO_Mode_Out); // 设置LED1的GPIO为输出
    gpio_set_direction(LED2_PIN, GPIO_Mode_Out); // 设置LED2的GPIO为输出
    gpio_set_direction(LED3_PIN, GPIO_Mode_Out); // 设置LED3的GPIO为输出
    gpio_set_direction(LED4_PIN, GPIO_Mode_Out); // 设置LED4的GPIO为输出
    
    // 设置LED1默认点亮
    LED_On(LED1_PIN);
}

void LED_On(int LED_num)
{
    gpio_write_pin(LED_num, ON);
}

void LED_Off(int LED_num)
{
    gpio_write_pin(LED_num, OFF);
}

void LED_Toggle(int LED_num)
{
    gpio_write_pin(LED_num, ~LED_num);

}
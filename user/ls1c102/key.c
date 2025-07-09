#include "key.h"
#include "ls1x_gpio.h"

void delay_ms(int ms);

void KEY_init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键1的GPIO为输入
    gpio_set_direction(KEY2_PIN, GPIO_Mode_In); // 设置按键2的GPIO为输入
    gpio_set_direction(KEY3_PIN, GPIO_Mode_In); // 设置按键3的GPIO为输入
    gpio_set_direction(KEY4_PIN, GPIO_Mode_In); // 设置按键4的GPIO为输入
}

uint8_t KEY_Check(void)
{
    if (!gpio_get_pin(KEY1_PIN))
    {
        delay_ms(20); // 消抖
        if (!gpio_get_pin(KEY1_PIN))
            return 1;
    }
    else if (!gpio_get_pin(KEY2_PIN))
    {
        delay_ms(20);
        if (!gpio_get_pin(KEY2_PIN))
            return 2;
    }
    else if (!gpio_get_pin(KEY3_PIN))
    {
        delay_ms(20);
        if (!gpio_get_pin(KEY3_PIN))
            return 3;
    }
    else if (!gpio_get_pin(KEY4_PIN))
    {
        delay_ms(20);
        if (!gpio_get_pin(KEY4_PIN))
            return 4;
    }
    return 0;
}

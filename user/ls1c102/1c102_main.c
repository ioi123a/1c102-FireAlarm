/*
 * 文件名: 1c102_main.c
 * 功能: 主程序入口，包含主循环和各模式切换、传感器数据采集、OLED显示、按键控制等逻辑
 * 作者: （请填写作者）
 * 日期: （请填写日期）
 */

#include "ls1x.h"
#include "dht11.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "ls1x_uart.h"
#include "ls1x_clock.h"
#include "UserGpio.h"
#include "Config.h"
#include "key.h"
#include "iic.h"
#include "oled.h"
#include "led.h"
#include "bh1750.h"

// 外部变量声明，光强值由 bh1750.c 提供
extern uint16_t Lx_value;  // 光强值，在bh1750.c中定义

// 函数声明，按键控制
void KEY_CONTROL(int *key_value, int *last_key_value, int *current_key);

int main(int arg, char *args[])
{
    // 传感器与模式相关变量
    uint16_t temperature = 0;         // 当前温度
    uint16_t humidity = 0;            // 当前湿度
    uint16_t temperature_light = 33;  // 光照模式温度阈值
    uint16_t humidity_light = 30;     // 光照模式湿度阈值
    uint16_t temperature_night = 33;  // 黑暗模式温度阈值
    uint16_t humidity_night = 30;     // 黑暗模式湿度阈值
    uint16_t light_night = 50;        // 黑暗模式光照阈值
    static int humidity_alarm_flag = 0; // 湿度报警标志，防止重复报警
    // 按键与模式变量
    int key_value = 0;                // 当前检测到的按键值
    int last_key_value = 0;           // 上一次按键值，用于检测按键释放
    int current_key = 0;              // 当前按下的按键状态
    int mode_value = 0;               // 当前模式
    int last_mode_value = -1;         // 上一次模式，避免重复初始化
    static int debug_page = 0;        // 调试模式页码
    static int select_index = 0;      // 调试模式选择项

    // ----------- 初始化部分 -----------
    SystemClockInit();                          // 系统时钟初始化
    GPIOInit();                                 // IO初始化
    OLED_Init();                                // OLED初始化
    DHT11_Init();                               // DHT11温湿度传感器初始化  
    BH1750_Init();                              // BH1750光照传感器初始化
    LED_Init();                                 // LED初始化
    LED_Off(LED1_PIN);
    LED_Off(LED2_PIN);
    LED_Off(LED3_PIN);
    LED_Off(LED4_PIN);
    KEY_init();                                 // 按键初始化
    EnableInt();                                // 使能全局中断

    // ----------- 主循环 -----------
    while (1)
    {
        DHT11_Read_Data(&temperature, &humidity);    // 读取温湿度
        KEY_CONTROL(&key_value, &last_key_value, &current_key);  // 检测按键
        // 模式切换逻辑
        if (mode_value == 0) { // 主菜单
            if (key_value == 1) 
            {
                mode_value = 1; // 进入光照模式
            } 
            else if (key_value == 2) 
            {
                mode_value = 2; // 进入黑暗模式
            } 
            else if (key_value == 3)
             {
                mode_value = 3; // 进入调试模式
            }
        } else {
            if (key_value == 4) 
            {
                mode_value = 0; // 模式内下按4返回主菜单
            }
        }

        // 初始化OLED及蜂鸣器
        if (mode_value != last_mode_value) 
        {
            OLED_Init();
            gpio_write_pin(GPIO_PIN_63, 0); // 关闭蜂鸣器
            last_mode_value = mode_value;
            key_value = 0; // 切换模式时清零按键值，防止误操作
            humidity_alarm_flag = 0; // 恢复报警
        }

        // ----------- 主菜单显示 -----------
        if (mode_value == 0)
         {
            OLED_Show_Str(0, 0, "1.光照模式", 16);
            OLED_Show_Str(0, 2, "2.黑暗模式", 16);
            OLED_Show_Str(0, 4, "3.调试模式", 16);
            OLED_Show_Str(0, 6, "4.主菜单(模式内)", 16);
        }
        // ----------- 光照模式 -----------
        if (mode_value == 1)
        {
            OLED_Show_Str(0, 0, "温度:", 16);     
            OLED_Show_Str(0, 2, "湿度:", 16);     
            OLED_Show_Str(0, 4, "光照:", 16);     
            OLED_Show_Str(65, 0, "℃", 16);
            OLED_Show_Str(65, 2, "%", 16);
            OLED_ShowInt32Num(40, 0, temperature/10,2, 16); 
            OLED_ShowInt32Num(40, 2, humidity/10,2, 16); 
            BH1750_Test();    // 读取光照度信息  
            OLED_Show_Str(10, 6, "光照模式:", 16); 
            // 火灾报警判断
            if(temperature/10 >= temperature_light)
            { 
                gpio_write_pin(GPIO_PIN_63, 1);       
                OLED_Show_Str(80, 6, "火灾", 16); 
                humidity_alarm_flag = 0; 
            }
            // 易燃报警判断
            else if(humidity/10 < humidity_light)
            {
                if(humidity_alarm_flag == 0) 
                {
                    gpio_write_pin(GPIO_PIN_63, 1);
                    OLED_Show_Str(80, 6, "易燃", 16);
                    delay_ms(1000);
                    gpio_write_pin(GPIO_PIN_63, 0); 
                    humidity_alarm_flag = 1; 
                } 
                else 
                {
                    OLED_Show_Str(80, 6, "易燃", 16);
                    gpio_write_pin(GPIO_PIN_63, 0);
                }
            }
            // 安全状态
            else
            { 
                gpio_write_pin(GPIO_PIN_63, 0);
                OLED_Show_Str(80, 6, "安全", 16);  
                humidity_alarm_flag = 0; // 恢复可报警
            }
        }
        // ----------- 黑暗模式 -----------
        if (mode_value == 2)
        {
            OLED_Show_Str(0, 0, "温度:", 16);    
            OLED_Show_Str(0, 2, "湿度:", 16);    
            OLED_Show_Str(0, 4, "光照:", 16);   
            OLED_Show_Str(65, 0, "℃", 16);
            OLED_Show_Str(65, 2, "%", 16);
            OLED_ShowInt32Num(40, 0, temperature/10,2, 16); 
            OLED_ShowInt32Num(40, 2, humidity/10,2, 16); 
            BH1750_Test();    // 读取光照度信息  
            OLED_Show_Str(10, 6, "黑暗模式:", 16);
            // 火灾报警判断（温度或光强）
            if (temperature/10 >= temperature_night || Lx_value >= light_night)
             {
                gpio_write_pin(GPIO_PIN_63, 1);    
                OLED_Show_Str(80, 6, "火灾", 16);
                humidity_alarm_flag = 0;
            } 
            else if(humidity/10 < humidity_night) 
            {
                if(humidity_alarm_flag == 0) {
                    gpio_write_pin(GPIO_PIN_63, 1);
                    OLED_Show_Str(80, 6, "易燃", 16);
                    delay_ms(1000);
                    gpio_write_pin(GPIO_PIN_63, 0);
                    humidity_alarm_flag = 1;
                } 
                else
                 {
                    OLED_Show_Str(80, 6, "易燃", 16);
                    gpio_write_pin(GPIO_PIN_63, 0);
                }
            } 
            else
             {
                gpio_write_pin(GPIO_PIN_63, 0);
                OLED_Show_Str(80, 6, "安全", 16);
                humidity_alarm_flag = 0;
            }
        }
        // ----------- 调试模式 -----------
        if (mode_value == 3)
{
    int max_index = (debug_page == 0) ? 1 : 2;  
    
    if (key_value == 1)
     {
        if (select_index == max_index)
         {
            debug_page = (debug_page + 1) % 2;  
            select_index = 0;
            OLED_Init(); // 翻页时刷新OLED
        } 
        else
         {
            select_index = (select_index + 1) % (max_index + 1); // 循环选择
        }
     } 
     else if (key_value == 2) 
     {
        if (debug_page == 0)
         {
            if (select_index == 0) temperature_light++;
            else if (select_index == 1) humidity_light++;
        } 
        else
         {
            if (select_index == 0) temperature_night++;
            else if (select_index == 1) humidity_night++;
            else if (select_index == 2) light_night++;
        }
     }
      else if (key_value == 3)
       {
        if (debug_page == 0)
         {
            if (select_index == 0) temperature_light--;
            else if (select_index == 1) humidity_light--;
        } 
        else 
        {
            if (select_index == 0) temperature_night--;
            else if (select_index == 1) humidity_night--;
            else if (select_index == 2) light_night--;
        }
     } 
     else if (key_value == 4)
      {
        mode_value = 0;
        debug_page = 0;
        select_index = 0;
     }

    // OLED显示调试参数及操作提示
    if (debug_page == 0)
     {
        OLED_Show_Str(0, 0, select_index==0 ? "->光照:温:" : "  光照:温:", 16);    
        OLED_Show_Str(0, 2, select_index==1 ? "->光照:湿:" : "  光照:湿:", 16);      
        OLED_ShowInt32Num(80, 0, temperature_light, 2, 16);   
        OLED_ShowInt32Num(80, 2, humidity_light, 2, 16);   
        OLED_Show_Str(100, 0, "℃", 16);
        OLED_Show_Str(100, 2, "%", 16);
        OLED_Show_Str(0, 6, "1.选择 2.加 3.减", 8); // 操作提示
     } 
     else 
     {
        OLED_Show_Str(0, 0, select_index==0 ? "->黑暗:温:" : "  黑暗:温:", 16);    
        OLED_Show_Str(0, 2, select_index==1 ? "->黑暗:湿:" : "  黑暗:湿:", 16);    
        OLED_Show_Str(0, 4, select_index==2 ? "->黑暗:光:" : "  黑暗:光:", 16);    
        OLED_ShowInt32Num(80, 0, temperature_night, 2, 16);   
        OLED_ShowInt32Num(80, 2, humidity_night, 2, 16);   
        OLED_ShowInt32Num(80, 4, light_night, 2, 16);
        OLED_Show_Str(100, 0, "℃", 16);
        OLED_Show_Str(100, 2, "%", 16);
        OLED_Show_Str(100, 4, "Lux", 16);
        OLED_Show_Str(0, 6, "1.选择 2.加 3.减", 8); 
     }
    }
        delay_ms(10); // 主循环适当延时，防止过快
    }
    return 0;
}

// 按键检测与LED指示函数
 
void KEY_CONTROL(int *key_value, int *last_key_value, int *current_key)
{   
    *key_value = KEY_Check();
    
 
    if (*key_value != 0 && *last_key_value == 0)
    {
        // 更新当前按键状态变量
        *current_key = *key_value;
        
        // 先关闭所有LED
        LED_Off(LED1_PIN);
        LED_Off(LED2_PIN);
        LED_Off(LED3_PIN);
        LED_Off(LED4_PIN);
        
        // 根据按键值点亮对应的LED
        switch(*key_value)
        {
            case 1:
                LED_On(LED1_PIN);
                break;
            case 2:
                LED_On(LED2_PIN);
                break;
            case 3:
                LED_On(LED3_PIN);
                break;
            case 4:
                LED_On(LED4_PIN);
                break;
        }
    }
    // 检测按键释放（从有按键到无按键）
    else if (*key_value == 0 && *last_key_value != 0)
    {
        // 按键释放时关闭所有LED
        LED_Off(LED1_PIN);
        LED_Off(LED2_PIN);
        LED_Off(LED3_PIN);
        LED_Off(LED4_PIN);
        *current_key = 0;
    }
    
    *last_key_value = *key_value;  // 更新上一次按键值
}
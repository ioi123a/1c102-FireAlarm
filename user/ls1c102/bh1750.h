#ifndef __BH1750_H
#define __BH1750_H

#include "ls1x.h"
#include "ls1x_gpio.h"    
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "my_iic.h"
#include "ls1x_latimer.h"
#include "../user/ls1c102/oled.h"

// 使用条件编译避免与标准库冲突
#ifndef _MATH_H
#include "math.h"
#endif

#define BH1750_Addr 0x46				//0100 0110   设备地址位 = 0
#define BH1750_ON   0x01
#define BH1750_CON  0x10
#define BH1750_ONE  0x20
#define BH1750_RSET 0x07


void BH1750_Hardware_Init(void);
void BH1750_Software_Init(void);
void BH1750_Init(void);					//IO初始化
void Start_BH1750(void);				//上电，连续高分辨率数据寄存器
void Read_BH1750(void);					//连续读取内部寄存器数据
void Convert_BH1750(void);
void BH1750_Test(void); 


#endif 

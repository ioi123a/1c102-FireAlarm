#include "bh1750.h"

uint8_t BUF[2],display[20];
uint16_t Lx_value = 0;



/**************************************************************
* 功  能: 发送设备地址
* 参  数: 无
* 返回值: 无
**************************************************************/
void Cmd_Write_BH1750(uint8_t cmd)
{
	MY_IIC_Start();                  // 发送起始信号
	MY_IIC_Send_Byte(BH1750_Addr+0); // 发送设备地址+写信号
	while(MY_IIC_Wait_Ack());
	MY_IIC_Send_Byte(cmd);           // 发送命令字节
	while(MY_IIC_Wait_Ack());
	MY_IIC_Stop();                   // 发送停止信号
	delay_ms(5);
}

/**************************************************************
* 功  能: 启动一次高分辨率模式
* 参  数: 无
* 返回值: 无
**************************************************************/
void Start_BH1750(void)
{
	Cmd_Write_BH1750(BH1750_ON);     // 上电
	Cmd_Write_BH1750(BH1750_RSET);   // 复位
	Cmd_Write_BH1750(BH1750_ONE);    // 一次高分辨率模式，约120ms后自动进入掉电模式
}

/**************************************************************
* 功  能: 读取光照度数据
* 参  数: 无
* 返回值: 无
**************************************************************/
void Read_BH1750(void)
{
    MY_IIC_Start();                        // 发送起始信号
    MY_IIC_Send_Byte(BH1750_Addr+1);       // 发送设备地址+读信号
	while(MY_IIC_Wait_Ack());
	BUF[0]=MY_IIC_Read_Byte(1);              // 读取高字节，发送ACK
	BUF[1]=MY_IIC_Read_Byte(0);              // 读取低字节，发送NACK
    MY_IIC_Stop();                         // 发送停止信号
    delay_ms(5);
}

/**************************************************************
* 功  能: 合成光照度数据
* 参  数: 无
* 返回值: 无
**************************************************************/
void Convert_BH1750(void)
{
	Lx_value=BUF[0];
	Lx_value=(Lx_value<<8)+BUF[1];           // 合成数据，得到光照度原始值
	Lx_value=Lx_value/12;                    // 转换为Lux
	Lx_value = Lx_value*10;                  // 放大10倍，便于显示
}


void BH1750_Hardware_Init(void)
{
	MY_IIC_Init();
}
void BH1750_Software_Init(void)
{
	
}
void BH1750_Init(void)
{
	BH1750_Hardware_Init();
	BH1750_Software_Init();
}
void BH1750_Test(void)
{   
	Start_BH1750();                         // 上电
	delay_ms(200);                          // 等待120ms
	Read_BH1750();                          // 读取数据到BUF
	Convert_BH1750();                       // 转换为光照度值
	sprintf((char *)display,"%d Lux     ",Lx_value);      // 转换为字符串
	OLED_Show_Str(40,4,display,16);

}


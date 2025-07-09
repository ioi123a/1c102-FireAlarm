#ifndef __MY_I2C_H__
#define __MY_I2C_H__

#include "ls1x.h"
#include "ls1x_gpio.h"    


#define RFID_I2C_Soft_SCL    GPIO_PIN_61
#define RFID_I2C_Soft_SDA    GPIO_PIN_62

#define MY_I2C_SCL_LOW  	gpio_write_pin(RFID_I2C_Soft_SCL, 0);								
#define MY_I2C_SCL_HIGH 	gpio_write_pin(RFID_I2C_Soft_SCL, 1);
#define MY_I2C_SDA_LOW  	gpio_write_pin(RFID_I2C_Soft_SDA, 0);
#define MY_I2C_SDA_HIGH	    gpio_write_pin(RFID_I2C_Soft_SDA, 1);
#define MY_I2C_SDA_READ	    gpio_get_pin(RFID_I2C_Soft_SDA)

//IIC���в�������

void MY_IIC_Init(void);                        //��ʼ��IIC��IO��				 
void MY_IIC_Start(void);				        //����IIC��ʼ�ź�
void MY_IIC_Stop(void);	  			        //����IICֹͣ�ź�
void MY_IIC_Send_Byte(uint8_t txd);			//IIC����һ���ֽ�
uint8_t MY_IIC_Read_Byte(unsigned char ack);   //IIC��ȡһ���ֽ�
uint8_t MY_IIC_Wait_Ack(void); 				//IIC�ȴ�ACK�ź�
void MY_IIC_Ack(void);					        //IIC����ACK�ź�
void MY_IIC_NAck(void);				        //IIC������ACK�ź�
void MY_IIC_Master_Transmit(uint16_t DevAddress, uint8_t *pData, uint16_t Size);
uint8_t MY_IIC_Master_Receive(uint16_t DevAddress, uint8_t *pData, uint16_t Size);	  


#endif 

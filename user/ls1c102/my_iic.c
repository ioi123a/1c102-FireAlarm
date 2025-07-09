#include "my_iic.h"
#include "iic.h"
//MPU IIC ��ʱ����
void MY_IIC_Delay(void)
{
}

//��ʼ��IIC
void MY_IIC_Init(void)
{					     
    // ����I2Cʱ����(SCL)��������(SDA)����ΪGPIO����
    gpio_pin_remap(RFID_I2C_Soft_SCL, GPIO_FUNC_GPIO);
    gpio_pin_remap(RFID_I2C_Soft_SDA, GPIO_FUNC_GPIO);

    // ����I2Cʱ����(SCL)��������(SDA)����Ϊ���ģʽ
    gpio_set_direction(RFID_I2C_Soft_SCL, GPIO_Mode_Out);
    gpio_set_direction(RFID_I2C_Soft_SDA, GPIO_Mode_Out);
	
	//��ʼ������I2CĬ�Ͽ���״̬
	MY_I2C_SCL_HIGH;

	MY_I2C_SDA_HIGH;

}


//IO��������
void MY_SDA_IN(void)  
{	
    // ��RFID_I2C_Soft_SDA��������Ϊ����ģʽ
    gpio_set_direction(RFID_I2C_Soft_SDA, GPIO_Mode_In);
}

void MY_SDA_OUT(void) 
{	
    // ����SDA����Ϊ���ģʽ
    gpio_set_direction(RFID_I2C_Soft_SDA, GPIO_Mode_Out);
    // ��SDA������Ϊ�ߵ�ƽ
    MY_I2C_SDA_HIGH;
}


//����IIC��ʼ�ź�
void MY_IIC_Start(void)
{
	MY_SDA_OUT();		//sda�����
	MY_I2C_SDA_HIGH;	  

	MY_I2C_SCL_HIGH;
	IIC_Delay();
 	MY_I2C_SDA_LOW;	//START:when CLK is high,DATA change form high to low 
	IIC_Delay();
	MY_I2C_SCL_LOW;	//ǯסI2C���ߣ�׼�����ͻ�������� 
}	  
//����IICֹͣ�ź�
void MY_IIC_Stop(void)
{
	MY_SDA_OUT();		//sda�����
	MY_I2C_SCL_LOW;
	MY_I2C_SDA_LOW;	//STOP:when CLK is high DATA change form low to high
 	IIC_Delay();
	MY_I2C_SCL_HIGH; 
	MY_I2C_SDA_HIGH;	//����I2C���߽����ź�
	IIC_Delay();							   	
}
//�ȴ�Ӧ���źŵ���
//����ֵ��1������Ӧ��ʧ��
//        0������Ӧ��ɹ�
uint8_t MY_IIC_Wait_Ack(void)
{
	uint16_t ucErrTime=0;
	MY_SDA_IN();		//SDA����Ϊ����  
	MY_I2C_SDA_HIGH;  
	MY_I2C_SCL_HIGH;
	while(MY_I2C_SDA_READ)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			MY_IIC_Stop();
			return 1;
		}
	}
	MY_I2C_SCL_LOW;		//ʱ�����0 	   
	return 0;  
} 
//����ACKӦ��
void MY_IIC_Ack(void)
{
	MY_I2C_SCL_LOW;
	MY_SDA_OUT();
	MY_I2C_SDA_LOW;

	IIC_Delay();
	MY_I2C_SCL_HIGH;
	IIC_Delay();
	MY_I2C_SCL_LOW;
}
//������ACKӦ��		    
void MY_IIC_NAck(void)
{
	MY_I2C_SCL_LOW;
	MY_SDA_OUT();
	MY_I2C_SDA_HIGH;
	IIC_Delay();
	MY_I2C_SCL_HIGH;
	IIC_Delay();
	MY_I2C_SCL_LOW;
}					 				     
//IIC����һ���ֽ�
//���شӻ�����Ӧ��
//1����Ӧ��
//0����Ӧ��			  
void MY_IIC_Send_Byte(uint8_t txd)
{                        
    uint8_t t;   
		MY_SDA_OUT(); 	    
    MY_I2C_SCL_LOW;//����ʱ�ӿ�ʼ���ݴ���
    for(t=0;t<8;t++)
    {              	
		if((txd&0x80)>>7){
			MY_I2C_SDA_HIGH;
		}else{
			MY_I2C_SDA_LOW;
		}
		txd<<=1; 	
		IIC_Delay();
		MY_I2C_SCL_HIGH;
		IIC_Delay();
		MY_I2C_SCL_LOW;	
		IIC_Delay();
    }	 
} 	    
//��1���ֽڣ�ack=1ʱ������ACK��ack=0������nACK   
uint8_t MY_IIC_Read_Byte(unsigned char ack)
{
	unsigned char i,receive=0;
	MY_SDA_IN();//SDA����Ϊ����
	for(i=0;i<8;i++ )
	{
		MY_I2C_SCL_LOW; 
		IIC_Delay();
		MY_I2C_SCL_HIGH;
		receive<<=1;
		if(MY_I2C_SDA_READ)receive++;   
		IIC_Delay();
		}					 
    if (!ack)
        MY_IIC_NAck();//����nACK
    else
        MY_IIC_Ack(); //����ACK   
    return receive;
}
void MY_IIC_Master_Transmit(uint16_t DevAddress, uint8_t *pData, uint16_t Size)
{
    MY_IIC_Start(); // ���Ϳ�ʼ�ź�
    MY_IIC_Send_Byte((uint8_t)(DevAddress << 1) | 0); // �����豸��ַ��д����λ
    MY_IIC_Wait_Ack(); // �ȴ�Ӧ��
    while (Size--) // ��������
    {
        MY_IIC_Send_Byte(*pData++); // ����һ���ֽ�
        MY_IIC_Wait_Ack(); // �ȴ�Ӧ��
    }
    MY_IIC_Stop(); // ����ֹͣ�ź�
}

uint8_t MY_IIC_Master_Receive(uint16_t DevAddress, uint8_t *pData, uint16_t Size)
{
    MY_IIC_Start(); // ���Ϳ�ʼ�ź�
    MY_IIC_Send_Byte((uint8_t)(DevAddress << 1) | 1); // �����豸��ַ�Ӷ�����λ
    if (MY_IIC_Wait_Ack()) // �ȴ�Ӧ��
    {
        MY_IIC_Stop(); // ���û��Ӧ������ֹͣ�źŲ��˳�
        return 1; // ��ʾʧ��
    }
    while (Size)
    {
        if (Size == 1)
        {
            *pData = MY_IIC_Read_Byte(0); // ��ȡ���һ���ֽڣ����ͷ�Ӧ���ź�
        }
        else
        {
            *pData = MY_IIC_Read_Byte(1); // ��ȡ�ֽڣ�����Ӧ���ź�
        }
        pData++;
        Size--;
    }
    MY_IIC_Stop(); // ����ֹͣ�ź�
	
    return 0; // ��ʾ�ɹ�
}


#include <SPI.h>

#include <RFM98W_library.h>
#define nss 9
#define dio0 23
#define rfm_rst 14
RFMLib radio =RFMLib(nss,dio0,255,rfm_rst);
void setup(){
  SPI.begin();
  Serial.begin(115200);
  byte my_config[6] = {0x44,0x84,0x88,0xAC,0xCD, 0x08};
  radio.configure(my_config);
}

void loop(){
  if(radio.rfm_status == 0){
    radio.beginRX(); 
    attachInterrupt(dio0,RFMISR,RISING);
  }

  if(radio.rfm_done){
      Serial.println("=========================================================================");   
      RFMLib::Packet rx;
      radio.endRX(rx);
      Serial.println("Len   |   RSSI    |   SNR   |   CRC   ");
      Serial.print(rx.len);
      Serial.print("    |   ");
      Serial.print(rx.rssi);
      Serial.print("    |   ");
      Serial.print(rx.snr);
      Serial.print("    |   ");
      Serial.println(rx.crc ? "pass" : "fail");
      Serial.print("Packet from device ");
      Serial.println(rx.data[0]);
      Serial.print("status byte: ");
      Serial.println(rx.data[1],BIN);
      Serial.print("Pressure: ");
      Serial.print(rx.data[2]<<24 | rx.data[3]<<16 | rx.data[4]<<8 | rx.data[5]);
      Serial.print("Pa    Temperature: ");
      Serial.print((float)((rx.data[6]<<8 | rx.data[7]))/10);
      Serial.println(" degC");

      
     Serial.println();
}
  
}

void RFMISR(){
 radio.rfm_done = true; 
}



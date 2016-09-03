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
    RFMLib::Packet rx;
    radio.endRX(rx);
    Serial.print("#");
    Serial.print(rx.crc );
    Serial.print(",");
    Serial.print(rx.rssi);
    Serial.print(",");
    Serial.print(rx.snr);
    Serial.print(",");
   for(byte i = 0;i<rx.len;i++){
     Serial.print((byte)rx.data[i], HEX);
     Serial.print(",");
   }
   Serial.println();
  }
  
}

void RFMISR(){
  
 radio.rfm_done = true; 
}



  #include <TDMA_lib.h>
#include <SPI.h>

#include <RFM98W_library.h>

#include <TimerOne.h>

#include <EEPROM.h>

#define nss 9
#define dio0 23
#define rfm_rst 14
#define tx_led 7
#define debug_level 1 //1 = debug on, 0 = debug off. 2= verbose (if applicable)
RFMLib radio = RFMLib(nss, dio0, 255, rfm_rst);



TDMALib teldata;
void setup() {
  // put your setup code here, to run once:
  
   SPI.begin();
  #if debug_enable > 0
  Serial.begin(38400);
  #endif
  teldata.initialise(&radio);
  #if debug_enable > 0
  Serial.println("HAB LoRa TDMA demonstrator, by William Eustace. v0.1, 2016.");
  Serial.print("SN:");
  Serial.println(teldata.balloonID);
  #endif
  
  byte my_config[6] = {0x44, 0x84, 0x88, 0xAC, 0xCD, 0x08};
  radio.configure(my_config);

}

void loop() {
  // put your main code here, to run repeatedly:

}

void RFM_TX_DONE(){
  radio.endTX();
   #if debug_level > 0
   Serial.println("TX done.");
   #endif
   digitalWrite(tx_led,LOW);
}
void TX_TIME(){
  teldata.txTime();
}

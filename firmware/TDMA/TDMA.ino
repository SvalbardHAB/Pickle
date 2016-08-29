#include <SPI.h>
#include <MS5637.h>
#include <RFM98W_library.h>
#include <EEPROM.h>


#define nss 9
#define dio0 23
#define rfm_rst 14
#define tx_led 7
#define debug_level 1 //1 = debug on, 0 = debug off. 2= verbose (if applicable)
RFMLib radio = RFMLib(nss, dio0, 255, rfm_rst);
MS5637 barometer;
void RFM_TX_DONE();
void TX_TIME();
struct TelemetryData {
  uint64_t time_first_tx = 0;
  uint64_t time_last_tx = 0;
   byte balloonID = 0;
  const byte n_balloons = 3;
  const uint64_t timestep = 805000;//one second time period
  const uint64_t timepause =500000;//0.5s pause between slots
  const int tx_interval = (n_balloons)*timepause + n_balloons*timestep;  
  boolean promisicuous = false;
  boolean promiscuous_enabled = true;
  TelemetryData(){
    balloonID = EEPROM.read(0);
  }
  void initialise(){
    
    if(EEPROM.read(1)==0) 
      promiscuous_enabled = false;//disable promiscuous mode if needed
    #if debug_level != 0
    Serial.print("Promiscuous mode? ");
    Serial.println(promiscuous_enabled);
    Serial.print("timing:");
    
    Serial.println(tx_interval,DEC);
    #endif
    
    if(promiscuous_enabled)
      initial_sync();
    else recovery_sync();
    }
  
   void initial_sync(){
    #if debug_level != 0
    Serial.println("Being promiscuous.");
    #endif
    if(balloonID!=0){
      #if debug_level != 0
      Serial.println("Not first. Awaiting sync.");
      #endif
      
      while(true){
        RFMLib::Packet rx;
        radio.beginRX();
        digitalWrite(tx_led,HIGH);
        while(digitalRead(dio0)==LOW) ;
        digitalWrite(tx_led,LOW);
        radio.endRX(rx);
        if(rx.data[0]==0 && rx.data[1]==0xFF){//timeslot of a tx has just ended
          uint64_t time_at_start = micros();
          #if debug_level != 0
          Serial.print("Received a sync packet from TX #0");
          #endif
          //const uint64_t time_until_slot = (balloonID-rx.data[0]) * timepause + (balloonID-rx.data[0] -1) * timestep;
          const uint64_t time_until_slot = (balloonID) * timepause + (balloonID -1) * timestep;
          while(micros() - time_at_start < time_until_slot) ;
          txTime();
          break;
        }
      }
      
    }
    else{
      #if debug_level != 0
      Serial.println("First. transmitting sync packets.");
      #endif
      for(int i =0;i<4;i++){
        #if debug_level != 0
        Serial.print("Sync packet in progress: #");
        Serial.println(i);
        #endif
    
        RFMLib::Packet p;
        p.data[0] = 0;
        p.data[1] = 0xFF;
        p.len = 35;
        if(i==0) time_first_tx = micros();
        else while((micros() - time_first_tx ) % tx_interval > 10)  ;
        time_last_tx = micros();
        radio.beginTX(p);
        digitalWrite(tx_led,HIGH);
        while(digitalRead(dio0)==LOW) ;//keep control for now
        radio.endTX();
        digitalWrite(tx_led,LOW);
        
        
      }
  }
  }
   void recovery_sync(){
    #if debug_level != 0
    Serial.println("Not being promiscuous—sync recovery mode");
    #endif
    //begin by listening for 12 cycles (i.e. a minute)

      
        RFMLib::Packet rx;
        uint64_t beganSearch = millis();
        radio.beginRX();
        digitalWrite(tx_led,HIGH);
        while(digitalRead(dio0)==LOW && millis() - beganSearch < 12*(tx_interval + timestep)) ;
        digitalWrite(tx_led,LOW);
        boolean received_something = digitalRead(dio0);
        radio.endRX(rx);
        if(received_something){//timeslot of a tx has just ended
          uint64_t time_at_start = micros();
          #if debug_level != 0
          Serial.print("Received a sync packet from TX id: ");
          Serial.println(rx.data[0]);
          #endif
          const uint64_t time_until_slot = (balloonID-rx.data[0]) * timepause + (balloonID-rx.data[0] -1) * timestep;
          while(micros() - time_at_start < time_until_slot) ;
          time_first_tx = micros();
          txTime();
          
        }

        //drat. Out of range of others and no sync. GPS? Tomorrow...or rather today, perhaps.
    
    };
   void txTime(){
    #if debuglevel != 0
    Serial.println("txTime.");
    #endif
    
    RFMLib::Packet p;
    p.data[0] = balloonID;
    p.data[1] = 0x0;
    p.data[2] = barometer.pressure >> 24;
    p.data[3] = barometer.pressure >> 16;
    p.data[4] = barometer.pressure >> 8;
    p.data[5] = barometer.pressure;
    p.data[6] = barometer.temperature >> 8;
    p.data[7] = barometer.temperature;
    p.len = 35;
    #if debuglevel == 2
    Serial.print("Packet length: ")
    Serial.print(p.len);
    Serial.println(" . Packet contents:");
    for(int i=0;i<p.len;i++)
    Serial.println(p.data[i],HEX);
    #endif
    time_last_tx = micros();
    digitalWrite(tx_led,HIGH);
    radio.beginTX(p);
    
    attachInterrupt(dio0,RFM_TX_DONE,RISING);
    
    
  }
  

  };

TelemetryData teldata;
volatile boolean shouldrec = false;
volatile boolean shouldtx = false;
void setup() {
  // put your setup code here, to run once:
  pinMode(tx_led,OUTPUT);
  SPI.begin();
  Wire.begin();
  Serial.begin(115200);
  //while(!Serial.available());
  delay(500);//wait for serial terminal to initialise
  Serial.println("HAB LoRa TDMA demonstrator, by William Eustace. v0.1, 2016.");
  Serial.print("Pickle Telemetry Board serial no. ");
  Serial.println(teldata.balloonID);
  
  
  byte my_config[6] = {0x44, 0x84, 0x88, 0xAC, 0xCD, 0x08};
  radio.configure(my_config);
  teldata.initialise();
  barometer.initialise();
  
}
 
  uint64_t timerlast = 0;

void loop() {
  // put your main code here, to run repeatedly:
if(shouldrec) rfm_end_tx();

if(((micros() - teldata.time_first_tx ) % teldata.tx_interval < 100) && micros()-teldata.time_last_tx > 100){
  barometer.poll(); 
  teldata.txTime();
}
  
  
  


}
void rfm_end_tx(){
  radio.endTX();
  Serial.print("time");
  long diff = (millis()-timerlast);
  Serial.println(diff);
  timerlast = millis();

  Serial.print("txtime");
  Serial.println((long)((micros()-teldata.time_last_tx)/1000));
   #if debug_level != 0
   Serial.println("TX done.");
   #endif
   digitalWrite(tx_led,LOW);
   shouldrec = false;
   
   
}
void RFM_TX_DONE(){
  shouldrec = true;//only one byte, so atomic operation by nature
  
}

 

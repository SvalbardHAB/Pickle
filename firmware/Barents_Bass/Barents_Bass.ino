#include <HTU21D.h>

/*
 * "Barents Bass"
 * Telemetry code for Svalbard HAB project. 
 * Intended to run on "Pickle" telemetry board. See the root of this repository (https://github.com/SvalbardHAB/Pickle)
 * (C) William Eustace 2016
 * Please note: the GPS setup code has been taken from the example provided by the vendor of the breakout board used (HAB supplies/Antony Stirk),
 * and may be  found here. http://ava.upuaut.net/?p=750
 * 
 */

#include <SPI.h>
#include <MS5637.h>
#include <RFM98W_library.h>
#include <EEPROM.h>
#include <TinyGPS++.h>


#define nss 9
#define dio0 23
#define rfm_rst 14
#define photodiode_pin A1
#define debug_level 1 //1 = debug on, 0 = debug off. 2= verbose (if applicable)
RFMLib radio = RFMLib(nss, dio0, 255, rfm_rst);
MS5637 barometer;
TinyGPSPlus gps;
HTU21D hygro;
byte photodiode_event_count = 0;
uint32_t photodiode_level_sum = 0;
uint16_t photodiode_threshold_level = 0;
const uint16_t photodiode_threshold_delta = 10;
boolean photodiode_event_lock = false;
uint16_t current_event_peak = 0;
void RFM_TX_DONE();
void TX_TIME();
int16_t readCloudDetector();
struct TelemetryData {
  uint64_t time_first_tx = 0;
  uint64_t time_last_tx = 0;
   byte balloonID = 0;
  const byte n_balloons = 3;
  const uint64_t timestep = 1119000;
  const uint64_t timepause = 500000;//0.5s pause between slots
  const byte ID_EEPROM_ADDRESS = 0;
  const byte PROMISCUOUS_EEPROM_ADDRESS = 1;
  const byte STANDARD_PKT_LEN = 25;
  const int tx_interval = (n_balloons)*timepause + n_balloons*timestep;  
  boolean promisicuous = false;
  boolean promiscuous_enabled = true;
  boolean ublox_gps = false;
  TelemetryData(){
    balloonID = EEPROM.read(ID_EEPROM_ADDRESS); 
    
    if(balloonID == 0 || balloonID==1)
      ublox_gps = true;
  }
  void initialise(){
    
    if(!EEPROM.read(PROMISCUOUS_EEPROM_ADDRESS)) 
      promiscuous_enabled = false;//disable promiscuous mode if needed
    #if debug_level != 0
    Serial.print("Promiscuous mode? ");
    Serial.println(promiscuous_enabled);
    Serial.print("timing:");
    
    Serial.println(tx_interval,DEC);
    #endif
    //FORCE PROMISCUITY ================= REMOVE BEFORE FLIGHT
    promiscuous_enabled = true;
    if(promiscuous_enabled)
      initial_sync(); 
    else recovery_sync();
    }
  
   void initial_sync(){
    #if debug_level != 0
    Serial.println("Being promiscuous.");
    #endif
    if(balloonID!=2){//             ============= REMOVE BEFORE FLIGHT
      #if debug_level != 0
      Serial.println("Not first. Awaiting sync.");
      #endif
      
      while(true){
        RFMLib::Packet rx;
        radio.beginRX();
        while(digitalRead(dio0)==LOW) ;
        radio.endRX(rx);
        if(rx.data[0]==0 && rx.data[1]==0xFF){//timeslot of a tx has just ended
          time_first_tx = micros() + (balloonID) * timepause + (balloonID -  1) * timestep;
          #if debug_level != 0
          Serial.print("Received a sync packet from TX #0");
          #endif
          //const uint64_t time_until_slot = (balloonID-rx.data[0]) * timepause + (balloonID-rx.data[0] -1) * timestep;
          
          
//          while(micros() - time_at_start < time_until_slot) ;
//          txTime();
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
        p.len = STANDARD_PKT_LEN;
        if(i==0) time_first_tx = micros();
        else while((micros() - time_first_tx ) % tx_interval > 10)  ;
        time_last_tx = micros();
        radio.beginTX(p);
        while(digitalRead(dio0)==LOW) ;//keep control for now
        radio.endTX();
        EEPROM.write(PROMISCUOUS_EEPROM_ADDRESS,0);//disable promiscuous mode on next reboot
        
      }
  }
  }
   void recovery_sync(){
    #if debug_level != 0
    Serial.println("Not being promiscuous—sync recovery mode");
    #endif
    //begin by listening for 24 cycles 
      
        RFMLib::Packet rx;
        uint64_t beganSearch = millis();
        radio.beginRX();
        while(digitalRead(dio0)==LOW && millis() - beganSearch < 24*(tx_interval + timestep)) ;
        boolean received_something = digitalRead(dio0);
        radio.endRX(rx);
        if(received_something && rx.data[0] < n_balloons-1 && rx.len == STANDARD_PKT_LEN){//timeslot of a tx has just ended
          #if debug_level != 0
          Serial.print("Received a sync packet from TX id: ");
          Serial.println(rx.data[0]);
          #endif
          
          time_first_tx = micros() + (balloonID-rx.data[0]) * timepause + (balloonID-rx.data[0] -1) * timestep;
          
        }
        else if(rx.data[0]==255 && rx.data[1] == 0x0 && rx.data[2] == 0xFF && rx.data[3] == 0 && rx.data[34]==0xFF && rx.len == STANDARD_PKT_LEN)//promiscuous mode reset
          EEPROM.write(PROMISCUOUS_EEPROM_ADDRESS,255);

        //Backup plan is to change frequency and try again.
        //first, reset the LoRa chip
        digitalWrite(rfm_rst,LOW);
        delayMicroseconds(100);
        digitalWrite(rfm_rst,HIGH);
        delayMicroseconds(5);
        //now ready to reconfigure. and then transmit freely.
        
        byte my_config[6] = {0x44, 0x94, 0x88, 0xAC, 0xCD, 0x08};
        radio.configure(my_config);
        switch(balloonID){
          case 0:
          radio.setFrequency(434000000);
          break;
          case 1:
          radio.setFrequency(434100000);
          break;
          case 2:
          radio.setFrequency(434600000);
          break;
        }
        
        time_first_tx = micros();
        txTime();
        
    
    };
   void txTime(){
    #if debuglevel != 0
    Serial.println("txTime.");
    #endif
      
    RFMLib::Packet p;
    p.data[0] = balloonID;//id
    p.data[1] = 0x0 + (promiscuous_enabled)? 1 : 0 + (true) ? 2 : 0 + (gps.satellites.value()>=3) ? 4 : 0 + 
    (gps.hdop.value() <=200) ? 8 : 0  ;//status
    p.data[2] = 0;//battery status—to come
    p.data[3] = barometer.pressure >> 24;
    p.data[4] = barometer.pressure >> 16;
    p.data[5] = barometer.pressure >> 8;
    p.data[6] = barometer.pressure;
    p.data[7] = (barometer.temperature/100) + 128;//temperature transmitted in excess-128 format. 
    uint32_t raw_pos = (uint32_t)abs(gps.location.lat()*10000000);
    p.data[8] = raw_pos >> 24;
    p.data[9] = raw_pos >> 16;
    p.data[10] = raw_pos >> 8;
    p.data[11] = raw_pos;
    raw_pos = (uint32_t)abs(gps.location.lng()*10000000);
    p.data[12] = raw_pos >> 24;
    p.data[13] = raw_pos >> 16;
    p.data[14] = raw_pos >> 8;
    p.data[15] = raw_pos;
    p.data[16] = photodiode_event_count;
    if(photodiode_event_count != 0) 
      photodiode_level_sum /= photodiode_event_count;
    p.data[17] =(byte)(photodiode_level_sum>>8);
    #if debug!=0
    Serial.print("Current photodiode reading: ");
    Serial.println(analogRead(photodiode_pin)); 
    #endif
    photodiode_level_sum = 0;
    current_event_peak = 0;
    photodiode_event_lock = false;//cancel the current event if it's interrupted. It will be detected again, but the probability of this seems quite low given the event rate.
    photodiode_event_count = 0; 

    if(balloonID==2){
      int16_t cloud_result = readCloudDetector()+512;
      #if debug!=0
      Serial.print("Clouds:");
      Serial.println(cloud_result);
      #endif
      p.data[18] = cloud_result>>8;
      p.data[19] = cloud_result;
      p.data[20] = (byte)hygro.readHumidity();
      p.data[21] = (byte)(hygro.readTemperature()+128);
      #if debug!=0
      Serial.print("hygro/temp ");
      Serial.print(hygro.readHumidity());
      Serial.print("/");
      Serial.println(hygro.readTemperature());
      #endif
    }
    else{
      p.data[18] = 0;
      p.data[19] = 0;
      p.data[20] = 0;
      p.data[21] = 0;
    }
    
   
    
    p.len = STANDARD_PKT_LEN;
    #if debuglevel == 2
    Serial.print("Packet length: ")
    Serial.print(p.len);
    Serial.println(" . Packet contents:");
    for(int i=0;i<p.len;i++)
    Serial.println(p.data[i],HEX);
    #endif
    time_last_tx = micros();
    radio.beginTX(p);
    
    attachInterrupt(dio0,RFM_TX_DONE,RISING);
    
    
  }
  

  };

TelemetryData teldata;
volatile boolean shouldrec = false;
volatile boolean shouldtx = false;
void setup() {
  if(teldata.ublox_gps)
    Serial3.begin(9600);
  else {
    pinMode(2, OUTPUT);
    digitalWrite(2, LOW);
    delay(100);
    digitalWrite(2, HIGH);
    delay(100);
    digitalWrite(2, LOW);    
    Serial3.begin(4800);
  };
  // put your setup code here, to run once:

  SPI.begin();
  Wire.begin();
  Serial.begin(115200);
  //while(!Serial.available());
  delay(500);//wait for serial terminal to initialise
  Serial.println("HAB LoRa TDMA demonstrator, by William Eustace. v0.1, 2016.");
  Serial.print("Pickle Telemetry Board serial no. ");
  Serial.println(teldata.balloonID);
  
  
  byte my_config[6] = {0x44, 0x94, 0x88, 0xAC, 0xCD, 0x08};
  radio.configure(my_config);
  radio.setFrequency(434650000);
  teldata.initialise();
  barometer.initialise();

  if(teldata.ublox_gps)
    setGPS_DynamicModel6();//put GPS into flight mode.

  //Calibrate photodiode average level
  uint32_t adc_sum = 0;
  for(int i = 0; i < 100000; i++) {
  adc_sum += analogRead(photodiode_pin);
  };
  Serial.print("avg level = ");
  Serial.println(adc_sum / 100000);
  photodiode_threshold_level = (adc_sum / 100000) + photodiode_threshold_delta;

  //set up light sensor
  if(teldata.balloonID==2){
    pinMode(16,OUTPUT);
    pinMode(17,INPUT);
    
  }
}
 
  

void loop() {
  if(shouldrec) rfm_end_tx();
  
  if(((micros() - teldata.time_first_tx ) % teldata.tx_interval < 100) && micros()-teldata.time_last_tx > 100){//if we're at a tx interval and we've not already transmitted this time round
    barometer.poll(); 
    teldata.txTime();
  }
  
  uint16_t photodiode_level = analogRead(photodiode_pin);//photodiode monitoring
  if(photodiode_level > photodiode_threshold_level){
    if(!photodiode_event_lock){
      photodiode_event_count +=1;
      photodiode_event_lock = true;
      #if debug !=0
      Serial.println("PD lock on");
      #endif
    }
    if(photodiode_level > current_event_peak)
      current_event_peak = photodiode_level;
  }
  else if(photodiode_event_lock){
    #if debug!=0
    Serial.println("PD lock released");
    #endif
    photodiode_event_lock = false;
    photodiode_level_sum += current_event_peak;
    current_event_peak = 0;
  }
  
  
  while(Serial3.available()){
    byte x=Serial3.read();
    Serial.write(x);
    gps.encode(x);
  }
    

}
void rfm_end_tx(){
  radio.endTX();
  
   #if debug_level != 0
   Serial.println("TX done.");
   #endif

   shouldrec = false;
   Serial.println((long)(micros()-teldata.time_last_tx));
   
}
void RFM_TX_DONE(){
  shouldrec = true;//only one byte, so atomic operation by nature
}

//================================================================== These GPS setup functions by Antony Stirk from addr given above.
void setGPS_DynamicModel6()
{
  
 int gps_set_sucess=0;
 uint8_t setdm6[] = {
 0xB5, 0x62, 0x06, 0x24, 0x24, 0x00, 0xFF, 0xFF, 0x06,
 0x03, 0x00, 0x00, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00,
 0x05, 0x00, 0xFA, 0x00, 0xFA, 0x00, 0x64, 0x00, 0x2C,
 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0xDC };
 while(!gps_set_sucess)
 {
 sendUBX(setdm6, sizeof(setdm6)/sizeof(uint8_t));
 gps_set_sucess=getUBX_ACK(setdm6);
 }
}
void sendUBX(uint8_t *MSG, uint8_t len) {
 Serial3.flush();
 Serial3.write(0xFF);
 delay(500);
 for(int i=0; i<len; i++) {
 Serial3.write(MSG[i]);
 }
}
boolean getUBX_ACK(uint8_t *MSG) {
 uint8_t b;
 uint8_t ackByteID = 0;
 uint8_t ackPacket[10];
 unsigned long startTime = millis();
 
// Construct the expected ACK packet
 ackPacket[0] = 0xB5; // header
 ackPacket[1] = 0x62; // header
 ackPacket[2] = 0x05; // class
 ackPacket[3] = 0x01; // id
 ackPacket[4] = 0x02; // length
 ackPacket[5] = 0x00;
 ackPacket[6] = MSG[2]; // ACK class
 ackPacket[7] = MSG[3]; // ACK id
 ackPacket[8] = 0; // CK_A
 ackPacket[9] = 0; // CK_B
 
// Calculate the checksums
 for (uint8_t ubxi=2; ubxi<8; ubxi++) {
 ackPacket[8] = ackPacket[8] + ackPacket[ubxi];
 ackPacket[9] = ackPacket[9] + ackPacket[8];
 }
 
while (1) {
 
// Test for success
 if (ackByteID > 9) {
 // All packets in order!
 #if debug != 0
 Serial.println("packets in order.");
 #endif
 return true;
 }
 
// Timeout if no valid response in 3 seconds
 if (millis() - startTime > 3000) {
  #if debug != 0
  Serial.println("timeout");
  #endif
 return false;
 }
 
// Make sure data is available to read
 if (Serial3.available()) {
 b = Serial3.read();
 
// Check that bytes arrive in sequence as per expected ACK packet
 if (b == ackPacket[ackByteID]) {
 ackByteID++;
 }
 else {
 ackByteID = 0; // Reset and look again, invalid order
 }
 }
 }
}


int16_t readCloudDetector(){
  uint16_t avg_level = 0;
  for(int i=0;i<500;i++)
    avg_level+=analogRead(17);
  avg_level /= 500;
  digitalWrite(16,HIGH);
  uint16_t new_level =0;
  for(int i=0;i<500;i++)
    new_level+=analogRead(17);
  new_level/=500;
  digitalWrite(16,LOW);
  return (new_level -avg_level);
}

 

#include<TinyGPS++.h>
#define STATUSLED 13
 //taken from http://ava.upuaut.net/?p=750 and subsequently modified
 TinyGPSPlus gps;
void setup() {
 pinMode(STATUSLED, OUTPUT);
 Serial.begin(115200);
 Serial1.begin(9600);
 delay(500);
 
 setGPS_DynamicModel6();
}
void loop() {
 while(Serial1.available()){
  byte x = Serial1.read();
  Serial.write(x);
  gps.encode(x);
 }
 Serial.println("LOCATION ALERT +++++++++++==========");
 delay(500);
 Serial.print(gps.location.lat(),6);
 Serial.print(" , ");
 Serial.println(gps.location.lng(),6);
 Serial.println(gps.satellites.value());
 Serial.println("=======");
}
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
 Serial1.flush();
 Serial1.write(0xFF);
 delay(500);
 for(int i=0; i<len; i++) {
 Serial1.write(MSG[i]);
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
 Serial.println("packets in order.");
 return true;
 }
 
// Timeout if no valid response in 3 seconds
 if (millis() - startTime > 3000) {
  Serial.println("timeout");
 return false;
 }
 
// Make sure data is available to read
 if (Serial1.available()) {
 b = Serial1.read();
 
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

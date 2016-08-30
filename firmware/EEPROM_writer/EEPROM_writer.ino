#include <EEPROM.h>
#define sn 1
#define promiscuous 0
void setup() {
  // put your setup code here, to run once:
  pinMode(7,OUTPUT);
  digitalWrite(7,LOW);
  delay(50);
  digitalWrite(7,HIGH);
  EEPROM.write(0,sn);
  EEPROM.write(1,promiscuous);
  delay(100);
  digitalWrite(7,LOW);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(500);
  digitalWrite(7,HIGH);
  delay(500);
  digitalWrite(7,LOW);
}

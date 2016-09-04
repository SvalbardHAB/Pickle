void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(16,OUTPUT);
  pinMode(17,INPUT);
  digitalWrite(16,LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  long tmr = micros();
  Serial.println(readCloudDetector());
  Serial.println((long)(micros()-tmr));
  delay(500);
}

int readCloudDetector(){
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
  return (avg_level - new_level);
}


int encA = 0;
int encoder_pin = 10;
int motorEN = 5;
int motorForward = 2;
int motorReverse = 3;
int speed = 150;
int wait = 700;

void encoderA(void) {
  encA += 1;
  Serial.println(encA);
}
void setup() {
  // put your setup code here, to run once:
  pinMode(encoder_pin, INPUT);
  attachInterrupt(encoder_pin, encoderA, CHANGE);

  pinMode(motorEN, OUTPUT);
  pinMode(motorForward, OUTPUT);
  pinMode(motorReverse, OUTPUT);
  
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(motorEN, speed);

  digitalWrite(motorForward, 1);
  digitalWrite(motorReverse, 0);
  delay(wait);

  digitalWrite(motorForward, 0);
  digitalWrite(motorReverse, 1);
  delay(wait);
}

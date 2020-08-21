#define EMIT0 22
#define RECIV0 23
#define EMIT1 20
#define RECIV1 21
#define EMIT3 17
#define RECIV3 16
#define EMIT2 15
#define RECIV2 14

#define M1POW 4
#define M1F 1
#define M1B 0
#define M2POW 5
#define M2F 3
#define M2B 2

#define BUZZ 13

#define BUTTON1 11
#define BUTTON2 12

int countM1 = 0;
int countM2 = 0;







void setup() {
  pinMode(BUZZ, OUTPUT);
  pinMode(EMIT0, OUTPUT);
  pinMode(RECIV0, INPUT);
  pinMode(EMIT1, OUTPUT);
  pinMode(RECIV1, INPUT);
  pinMode(RECIV3, INPUT);
  pinMode(EMIT3, OUTPUT);
  pinMode(RECIV2, INPUT);
  pinMode(EMIT2, OUTPUT);
  pinMode(BUTTON1, INPUT);
  pinMode(BUTTON2, INPUT);

  pinMode(M1POW, OUTPUT);
  pinMode(M2POW, OUTPUT);
  pinMode(M1F, OUTPUT);
  pinMode(M1B, OUTPUT);
  pinMode(M2F, OUTPUT);
  pinMode(M2B, OUTPUT);
  Serial.begin(9600);
}

void motor1F(int power){
  analogWrite(M1POW, power);
  digitalWrite(M1F, 1);
  digitalWrite(M1B, 0);
}

void motor1B(int power){
  analogWrite(M1POW, power);
  digitalWrite(M1F, 0);
  digitalWrite(M1B, 1);
}

void motor1S(){
  analogWrite(M1POW, 0);
  digitalWrite(M1F, 0);
  digitalWrite(M1B, 0);
}

void motor2F(int power){
  analogWrite(M2POW, power);
  digitalWrite(M2F, 1);
  digitalWrite(M2B, 0);
}

void motor2B(int power){
  analogWrite(M2POW, power);
  digitalWrite(M2F, 0);
  digitalWrite(M2B, 1);
}

void motor2S(){
  analogWrite(M2POW, 0);
  digitalWrite(M2F, 0);
  digitalWrite(M2B, 0);
}

void loop() {
  motor2F(75);
  motor1F(75);
  // put your main code here, to run repeatedly:
  delay(5000);
  motor2S();
  motor1S();
  delay(3000);

}

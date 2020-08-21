typedef struct{ // Structure to make working with the motor easier
  int motorEN, motorForward, motorReverse;
} motor;

motor TestMotor = {5,2,3}; //format as {motorEN,motorForward,motorReverse} (Change to pins that match what you are using)
int speed = 150; //Speed of motor in range [0,255]
int wait = 700; //Time speant moving in one direction in milliseconds

void setup() {
  // put your setup code here, to run once:
  pinMode(TestMotor.motorEN,OUTPUT);
  pinMode(TestMotor.motorForward,OUTPUT);
  pinMode(TestMotor.motorReverse,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(TestMotor.motorEN,speed);

  // Run the motor forward for wait milliseconds
  digitalWrite(TestMotor.motorForward,1);
  digitalWrite(TestMotor.motorReverse,0);
  delay(wait);

  // Run the motor backward for wait milliseconds
  digitalWrite(TestMotor.motorForward,0);
  digitalWrite(TestMotor.motorReverse,1);
  delay(wait);
  
}

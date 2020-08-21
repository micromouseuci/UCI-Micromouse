typedef struct{ // Structure to make working with the motor easier
  int motorEN, motorForward, motorReverse;
} motor;

motor TestMotor = {5,2,3}; //format as {motorEN,motorForward,motorReverse} (Change to pins that match what you are using)
int speed = 150; //Speed of motor in range [0,255]
int wait = 700; //Time speant moving in one direction in milliseconds


//
//This section defines functions to make the encoders work
//
typedef struct{
  int encoderPin_1, encoderPin_2; //See slides from Motors/Encoders Week 5 for explanation on the two pins (https://docs.google.com/presentation/d/1bXtUdj2JrZID_w-vj8Fa9DiUBX-s3UOgmOaA12MM2uo/edit#slide=id.g7d1066d216_1_25)
  volatile int ticks; //This will save the net number of ticks performed by the motor (positive = forward, negative = reverse)
  bit current_signal, last_signal; //Saves signal of first pin
} encoder;

encoder TestEncoder = {6, 7, 0, false}; //

//The method increment will be called whenever encoder_pin's signal changes (during the interrupt)
void increment()
{
  TestEncoder.current_signal = digitalRead(TestEncoder.encoderPin_1); //Saves whether or not the first encoder pin is HIGH or LOW
    if (TestEncoder.last_signal != TestEncoder.current_signal) //Evaluates to true if the signal has changed since last interrupt
    {
        if (TestEncoder.current_signal != digitalRead(TestEncoder.encoderPin_2)) //You increase the # of ticks (which can later be converted into distance travelled) if the current signal of pin 1 is different from pin 2
        {
            TestEncoder.ticks += inc;
        }
        else  //If the previous condition is false, you are going backwards (or the other direction depending on your setup) so you decrement
        {
            TestEncoder.ticks -= inc;
        }
        TestEncoder.last_signal = TestEncoder.current_signal;
    }
}


//setupInterrupt() forces increment to be called whenever encoder_pin's signal has a CHANGE
void setupInterrupt()
{
    attachInterrupt(encoder_pin, increment,CHANGE);
}


void setup() {
  // put your setup code here, to run once:
  pinMode(TestMotor.motorEN,OUTPUT);
  pinMode(TestMotor.motorForward,OUTPUT);
  pinMode(TestMotor.motorReverse,OUTPUT);
  pinMode(TestEncoder.encoderPin_1, INPUT); //You are reading/detecting changes on these two pins to measure movement
  pinMode(TestEncoder.encoderPin_2, INPUT); 
  setupInterrupt();
  Serial.begin(9600);
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

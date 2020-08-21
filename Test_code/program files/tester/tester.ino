//IR Emitters (USE PHONE CAMERA)
//Recievers

typedef struct{
  int motorEN, motorForward, motorReverse;
} motor;

int thresh = 950;

motor TestMotor = {4,0,1}; //format as {motorEN,motorForward,motorReverse}
motor TestMotor1 = {5, 2, 3};

//MOTORS
//ENCODERS(a1, b1, a2, b2)
int led0 = 10;
int led1 = 11;
int buzz = 13;
int sw = 12;

int d0 = 22;
int d1 = 20;
int d2 = 15;
int d3 = 17;

int r0 = 23;
int r1 = 21;
int r2 = 14;
int r3 = 16;

int encoderA1 = 8;
int encoderB1 = 9;
int encoderA2 = 6;
int encoderB2 = 7;



void setup() {
  Serial.begin(9600);
  pinMode(led0, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(buzz, OUTPUT);
  pinMode(sw, INPUT);
  
  //SET Emitter pins as OUTPUTS
  pinMode(d0, OUTPUT);
  pinMode(d1, OUTPUT);
  pinMode(d2, OUTPUT);
  pinMode(d3, OUTPUT);

  //SET Reciever pins as INPUTS
  pinMode(r0, INPUT);
  pinMode(r1, INPUT);
  pinMode(r2, INPUT);
  pinMode(r3, INPUT);
  //Set motor pins

  //set encoder pins

  //define interputs

}


void motor_seq(){
  // put your main code here, to run repeatedly:
  analogWrite(TestMotor.motorEN,80);
  analogWrite(TestMotor1.motorEN,80);
  // Run the motor forward for 2 seconds
  digitalWrite(TestMotor.motorForward,0);
  digitalWrite(TestMotor.motorReverse,1);

  digitalWrite(TestMotor1.motorForward,0);
  digitalWrite(TestMotor1.motorReverse,1);
//  
  delay(10);
//
//  // Run the motor backward for 2 seconds
//  digitalWrite(TestMotor1.motorForward,0);
//  digitalWrite(TestMotor1.motorReverse,1);
//  
//  digitalWrite(TestMotor.motorForward,0);
//  digitalWrite(TestMotor.motorReverse,1);
//  delay(2000);
}

void motor_stop(){
  analogWrite(TestMotor.motorEN,0);
  analogWrite(TestMotor1.motorEN,0);
  }

int dist(){
  int vall = 0;
  
  digitalWrite(22, HIGH);
  delay(10);
  vall = analogRead(23);
  delay(10);
  Serial.println(vall);
  digitalWrite(22, LOW);
  return vall;
}


void loop() {
  // put your main code here, to run repeatedly:
//  digitalWrite(led0, HIGH);
//  digitalWrite(led1, HIGH);
//  digitalWrite(buzz,HIGH);
//  Serial.println(digitalRead(sw));
//  delay(500);
//  digitalWrite(buzz,LOW);
//  delay(5000);
  motor_seq();
//  if(dist() >= thresh){motor_stop();}
//  else{motor_seq();}
  delay(100);
  
}

void ledState(int s)
{
}

void distance_test()
{
  
}
void motor_test()
{
  //
  
}
void encoder_test()
{
  
}

///Random//
//#include<random>
//Source of entropy "random devices"
//std::random_device device;

//Generate a psuedorandom sequence of bits --random engines
//std::default_random_engine engine{device()};

//Now just use the engine whenever I want random bits.


//Give me a distribution wehre I get values back from 1 to 6 inclusive with equal probaility
//std::uniform_int)distribution distribution{1,6};


//for (int i = 0; i < 1000; ++i)
//{
//  std::cout << distriution(engine)
//}

//
//
//////RAII
//////ACQUIRE Dynamic resources in contructors
//////We would want those construcors to fail(by thoriwng exception) if the acquisition failed
////
////
//////vector is an RAII array. 
////
////std::unique_ptr<A>a ;//when unique pointer dies, then it also deltes it with sus
////
////
////
////std::shared_ptr<>int p1{new int} // when last one dies, it deltes what it oints to
////
////ICS46_DYNAMIC)FACTORY_REGISTER(MazeGenerator, Lit Generator, "My Generator Is Lit")
////
////
////
//////override - this function overrides something in the base class
//
//std::vector<std::vector<int>> v(d1, std::vector<int> (d2,0));

//Swap values efficently


//template <typename T>
////void mySwap(T& t1, T& t2)
////{
////  T temp <== t1;
////  t1<==t2;
////  t2<==temp;
////  }
////C++
//
//int&& d = 3; //rvalue refrence
////r value refrence points to object hat is going to die anyways. 
//vector(vector&& v); //move constructor 
//
//vector<T>::vector(vector&& v)
//  : data{nullptr}, size{0}, capacity(0)
//  {
//    std::swap(data, v.data);
//    std::swap(size, v.size);
//    std::swap(capacity, v.capacity);
//    }
//
//
////STD move 
////Takes a value and gives you back an rvalue refrence to it
//// It lets you assume that something is about to die, even if it isn't.
//// 







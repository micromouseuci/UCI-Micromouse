int emitterPin = 3; // Pin number of the emitter (Change to what pin you are using)
int receiverPin = A5; // Pin number of the receiver (Change to what pin you are using)

void setup() {
  // put your setup code here, to run once:
  pinMode(emitterPin,OUTPUT); // Set emitterPin's mode to output so you can power it
  pinMode(receiverPin,INPUT); // Set receiverPin's mode to input so you can read data from it
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(emitterPin,HIGH); // Turn on the emitter
  delay(10); // Wait for emitter to completely power on
  int receiverValue = analogRead(receiverPin); // Save value of receiver
  Serial.println(receiverValue); // Debug output for testing
  digitalWrite(emitterPin,LOW); // Turn off the emitter
  delay(100); // Wait for emitter to completely power down
}

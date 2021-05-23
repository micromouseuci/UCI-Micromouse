
#define EMITTER_ON_TIME 2

#define EMIT_L_PIN 21 //D1
#define EMIT_R_PIN 18//D3
#define EMIT_FL_PIN 22 //D0
#define EMIT_FR_PIN 13 //D2

#define RECIVER_L_PIN 20 //Q1
#define RECIVER_R_PIN 19 //Q3
#define RECIVER_FL_PIN 23 //Q0
#define RECIVER_FR_PIN 14 //Q2

#define M1_BACK_PIN 8
#define M1_FWD_PIN 11
#define M1_SPD_PIN 12
#define M1_ENC_A_PIN 17
#define M1_ENC_B_PIN 16

#define M2_BACK_PIN 9
#define M2_FWD_PIN 7
#define M2_SPD_PIN 6
#define M2_ENC_A_PIN 1
#define M2_ENC_B_PIN 0

unsigned int enc_a_l_count = 0;
unsigned int enc_b_l_count = 0;
unsigned int enc_a_r_count = 0;
unsigned int enc_b_r_count = 0;

#define BUZZ_PIN 2
#define SW_1_PIN 15
#define LED1_PIN 5
#define LED2_PIN 3
#define LED3_PIN 4
#define SW_2_PIN 12
//#define RGB_DATA_PIN 10

enum Direction {
  FORWARDS = 0, BACKWARDS = 1, STOP = 2
};

void enc_a_l_intr_handler() {
  enc_a_l_count++;
  Serial.print("ENCAL: ");
  Serial.println(enc_a_l_count);
}

void enc_b_l_intr_handler() {
  enc_b_l_count++;
  Serial.print("ENCbL: ");
  Serial.println(enc_b_l_count);
}

void enc_a_r_intr_handler() {
  enc_a_r_count++;
  Serial.print("ENCAR: ");
  Serial.println(enc_a_r_count);
}

void enc_b_r_intr_handler() {
  enc_b_r_count++;
  Serial.print("ENCBR: ");
  Serial.println(enc_b_r_count);
}


void setup() {
  Serial.begin(9600);
  pinMode(EMIT_L_PIN, OUTPUT);
  pinMode(EMIT_R_PIN, OUTPUT);
  pinMode(EMIT_FL_PIN, OUTPUT);
  pinMode(EMIT_FR_PIN, OUTPUT);

  pinMode(RECIVER_L_PIN, INPUT);
  pinMode(RECIVER_R_PIN, INPUT);
  pinMode(RECIVER_FL_PIN, INPUT);
  pinMode(RECIVER_FR_PIN, INPUT);

  pinMode(M1_BACK_PIN, OUTPUT);
  pinMode(M1_FWD_PIN, OUTPUT);
  pinMode(M1_SPD_PIN, OUTPUT);
  pinMode(M1_ENC_A_PIN, INPUT); //check if input pullup
  pinMode(M1_ENC_B_PIN, INPUT);

  pinMode(M2_BACK_PIN, OUTPUT);
  pinMode(M2_FWD_PIN, OUTPUT);
  pinMode(M2_SPD_PIN, OUTPUT);
  pinMode(M2_ENC_A_PIN, INPUT); //check if input pullup
  pinMode(M2_ENC_B_PIN, INPUT);

  pinMode(BUZZ_PIN, OUTPUT);
  pinMode(SW_1_PIN, INPUT_PULLUP);
  pinMode(SW_2_PIN, INPUT_PULLUP);
  //pinMode(RGB_DATA_PIN, OUTPUT);

  analogWriteFrequency(M1_BACK_PIN, 488.28);
  analogWriteFrequency(M1_FWD_PIN, 488.28);
  analogWriteFrequency(M1_SPD_PIN, 488.28);
  analogWriteFrequency(M2_BACK_PIN, 488.28);
  analogWriteFrequency(M2_FWD_PIN, 488.28);
  analogWriteFrequency(M2_SPD_PIN, 488.28);
  
  analogWriteFrequency(BUZZ_PIN, 488.28);

  //Interrupts
  attachInterrupt(M2_ENC_A_PIN, enc_a_l_intr_handler, FALLING); //check if rising or falling
  attachInterrupt(M2_ENC_B_PIN, enc_b_l_intr_handler, FALLING);
  attachInterrupt(M1_ENC_A_PIN, enc_a_r_intr_handler, FALLING);
  attachInterrupt(M1_ENC_B_PIN, enc_b_r_intr_handler, FALLING);
  delay(2000);
}


//implement data averaging ??
int get_dist_l() {
  int dist;
  digitalWrite(EMIT_L_PIN, HIGH);
  delay(EMITTER_ON_TIME);
  dist = analogRead(RECIVER_L_PIN);
  digitalWrite(EMIT_L_PIN, LOW);
  return dist;
}

int get_dist_r() {
  int dist;
  digitalWrite(EMIT_R_PIN, HIGH);
  delay(EMITTER_ON_TIME);
  dist = analogRead(RECIVER_R_PIN);
  digitalWrite(EMIT_R_PIN, LOW);
  return dist;
}

int get_dist_fr() {
  int dist;
  digitalWrite(EMIT_FR_PIN, HIGH);
  delay(EMITTER_ON_TIME);
  dist = analogRead(RECIVER_FR_PIN);
  digitalWrite(EMIT_FR_PIN, LOW);
  return dist;
}

int get_dist_fl() {
  int dist;
  digitalWrite(EMIT_FL_PIN, HIGH);
  delay(EMITTER_ON_TIME);
  dist = analogRead(RECIVER_FL_PIN);
  digitalWrite(EMIT_FL_PIN, LOW);
  return dist;
}

void turn_all_emit_on(){
  digitalWrite(EMIT_FL_PIN, HIGH);
  digitalWrite(EMIT_FR_PIN, HIGH);
  digitalWrite(EMIT_R_PIN, HIGH);
  digitalWrite(EMIT_L_PIN, HIGH);
}

void turn_all_emit_off(){
  digitalWrite(EMIT_FL_PIN, LOW);
  digitalWrite(EMIT_FR_PIN, LOW);
  digitalWrite(EMIT_R_PIN, LOW);
  digitalWrite(EMIT_L_PIN, LOW);
}

void turn_all_led_on(){
  digitalWrite(LED1_PIN, HIGH);
  digitalWrite(LED2_PIN, HIGH);
  digitalWrite(LED3_PIN, HIGH);
}


void turn_all_led_off(){
  digitalWrite(LED1_PIN, LOW);
  digitalWrite(LED2_PIN, LOW);
  digitalWrite(LED3_PIN, LOW);
}


void set_motor_l(int dir, int mspeed) {
  if (dir == 0) {
    digitalWrite(M2_FWD_PIN, LOW);
    digitalWrite(M2_BACK_PIN, HIGH);
    analogWrite(M2_SPD_PIN, mspeed);
  }
  else if (dir == 1) {
    digitalWrite(M2_FWD_PIN, HIGH);
    digitalWrite(M2_BACK_PIN, LOW);
    analogWrite(M2_SPD_PIN, mspeed);
  }
  else if (dir == 2) {
    digitalWrite(M2_FWD_PIN, LOW);
    digitalWrite(M2_BACK_PIN, LOW);
    analogWrite(M2_SPD_PIN, 0);
  }
  else {
    //incorrect direction given
  }
}

void set_motor_r(int dir, int mspeed) {
  if (dir == 0) {

    digitalWrite(M1_BACK_PIN, LOW);
    digitalWrite(M1_FWD_PIN, HIGH);
    analogWrite(M1_SPD_PIN, mspeed);
  }
  else if (dir == 1) {
    digitalWrite(M1_FWD_PIN, LOW);
    digitalWrite(M1_BACK_PIN, HIGH);
    analogWrite(M1_SPD_PIN, mspeed);
  }
  else if (dir == 2) {
    analogWrite(M1_SPD_PIN, 0);
    digitalWrite(M1_FWD_PIN, LOW);
    digitalWrite(M1_BACK_PIN, LOW);

  }
  else {
    //incorrect direction given
  }
}

void set_motor_l_pulse_dir(int dir, int mspeed) {
  if (dir == 0) {
    digitalWrite(M2_FWD_PIN, LOW);
    digitalWrite(M2_SPD_PIN, HIGH);
    analogWrite(M2_BACK_PIN, mspeed);
  }
  else if (dir == 1) {
    digitalWrite(M2_BACK_PIN, LOW);
    digitalWrite(M2_SPD_PIN, HIGH);
    analogWrite(M2_FWD_PIN, mspeed);
  }
  else if (dir == 2) {
    digitalWrite(M2_FWD_PIN, LOW);
    digitalWrite(M2_BACK_PIN, LOW);
    analogWrite(M2_SPD_PIN, 0);
  }
  else {
    //incorrect direction given
  }
}

void set_motor_r_pulse_dir(int dir, int mspeed) {
  if (dir == 0) {

    digitalWrite(M1_BACK_PIN, LOW);
    digitalWrite(M1_SPD_PIN, HIGH);
    analogWrite(M1_FWD_PIN, mspeed);
  }
  else if (dir == 1) {
    digitalWrite(M1_FWD_PIN, LOW);
    digitalWrite(M1_SPD_PIN, HIGH);
    analogWrite(M1_BACK_PIN, mspeed);
  }
  else if (dir == 2) {
    analogWrite(M1_SPD_PIN, 0);
    digitalWrite(M1_FWD_PIN, LOW);
    digitalWrite(M1_BACK_PIN, LOW);

  }
  else {
    //incorrect direction given
  }
}




void rst_enc_a_l_count() {
  enc_a_l_count = 0;
}

void rst_enc_b_l_count() {
  enc_b_l_count = 0;
}

void rst_enc_a_r_count() {
  enc_a_r_count = 0;
}

void rst_enc_b_r_count() {
  enc_a_l_count = 0;
}


void set_buzzer_on(){
  analogWrite(BUZZ_PIN, 2);
  //draws about 0.8ma
  //foroums say limit teensy pins to 1-4ma
}

void set_buzzer_off(){
  analogWrite(BUZZ_PIN, 0);
}

int read_sw_1(){
  return digitalRead(SW_1_PIN);
}

int read_sw_2(){
  return digitalRead(SW_2_PIN);
}

//no resistance, battery full charge
//160 measures about 6v
//150 measure about 6v
//140 measure about 5.9v

//reccomend 

//Ran with motor limit 140, 
//with motors maxed out, all emitters on, all leds on, (buzzer off), no resistance at wheels. it drew about 0.9A.



#define UPPER_MOTOR_LIMIT 140
#define LOWER_MOTOR_LIMIT 30
#define PID_POLLING_DELAY 15
#define MOTOR_SWITCH_DIR_DELAY 0

int last_spd;
void loop() {
  turn_all_emit_on();
  turn_all_led_on();
  analogWrite(BUZZ_PIN, 2);
  //0 == fwd, 1 = back 2 = stop
  //move forward for 2 seconds
  set_motor_l(0, UPPER_MOTOR_LIMIT);
  set_motor_r(0, UPPER_MOTOR_LIMIT);
  delay(5000);
  //stop motors briefly
  set_motor_l(2, 0);
  set_motor_r(2, 0);
  delay(MOTOR_SWITCH_DIR_DELAY);
  //move motors backwards for 2 seconds
  set_motor_l(1, UPPER_MOTOR_LIMIT);
  set_motor_r(1, UPPER_MOTOR_LIMIT);
  delay(5000);
  //stop motors briefly
  set_motor_l(2, 0);
  set_motor_l(2, 0);
  delay(MOTOR_SWITCH_DIR_DELAY);
  //turn left for 2 seconds
  set_motor_l(1, UPPER_MOTOR_LIMIT);
  set_motor_r(0, UPPER_MOTOR_LIMIT);
  delay(5000);
  //stop motors briefly
  set_motor_l(2, 0);
  set_motor_r(2, 0);
  delay(MOTOR_SWITCH_DIR_DELAY);
  //turn right for 2 seconds
  set_motor_l(0, UPPER_MOTOR_LIMIT);
  set_motor_r(1, UPPER_MOTOR_LIMIT);
  delay(5000);
  //stop motors briefly
  set_motor_l(2, 0);
  set_motor_r(2, 0);
  delay(MOTOR_SWITCH_DIR_DELAY);
  //Test incrementing/decrementing motor speeds
  //increment the motor speed from 0 to UPPER_MOTOR_LIMIT, then decrement it to 0
  turn_all_emit_off();
  turn_all_led_off();
  last_spd = 0;
  for (int i = 0; i < 5; i ++) { //repeat the sequence below 5 times
    //increment speed by 1
    for (last_spd = 0; last_spd < UPPER_MOTOR_LIMIT; last_spd++) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //decrement speed by 1
    for (last_spd = UPPER_MOTOR_LIMIT; last_spd > 1; last_spd--) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //increment speed by 3
    for (last_spd = 0; last_spd < UPPER_MOTOR_LIMIT; last_spd += 3) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //decrement speed by 3
    for (last_spd = UPPER_MOTOR_LIMIT; last_spd > 1; last_spd -= 3) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //increment speed by 7
    for (last_spd = 0; last_spd < UPPER_MOTOR_LIMIT; last_spd += 7) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //decrement speed by 7
    for (last_spd = UPPER_MOTOR_LIMIT; last_spd > 1; last_spd -= 7) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //increment speed by 15
    for (last_spd = 0; last_spd < UPPER_MOTOR_LIMIT; last_spd += 15) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
    //decrement speed by 15
    for (last_spd = UPPER_MOTOR_LIMIT; last_spd > 1; last_spd -= 15) {
      set_motor_l(0, last_spd);
      set_motor_r(0, last_spd);
      get_dist_r();
      get_dist_l();
      delay(PID_POLLING_DELAY);
    }
  }

  set_motor_l(2, 0);
  set_motor_r(2, 0);

  //delay();

  //Serial.println(get_dist_l());

  //Serial.println(get_dist_r());
  //
  //    Serial.println(get_dist_fr());
  //
  //    Serial.println(get_dist_fl());
  //delay(100);
}

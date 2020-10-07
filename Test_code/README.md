### Software Notes

#### Interrupts

* Interrupts are needed to keep track of the wheels revolution. When the wheels position changes, the motor encoder will send a signal to the Teensy. A total of 12 signals will be sent per 1 revolution. Interrupts allow it so the Teensy can update values as soon as the encoder sends the signal (asynchronously). If the encoders were updated in the main loop theres a good chance for some signals to be missed, causing the revolution count to be inaccurate.   

* To add an interrupt run the [attatchInterrupt](https://www.arduino.cc/reference/en/language/functions/external-interrupts/attachinterrupt/) function in setup. Syntax is **attatchInterrupt(pin, func, mode)**. The second parameter specifies the function that gets executed when the interrupt is triggered. In our case we want to put in a function that will add to the count of an encoder variable. The third parameter specifies what will trigger the interrupt. For example "CHANGE" will make the interrupt trigger whenever the pin changes value, however, "FALLING" will make the interrupt trigger only when the pin goes from HIGH to LOW. Read link for more info.

#### Variables

* tickCount - Two variables, one for each motor. When interrupt its triggered, increment the tick count by 1.
* emitterState - One for each emitter. Stores the current state of the emitter

#### Functions

* readReciever() - One method for each reciever. Returns the value read by reciever
* setEmitterState(x) - One method for each emitter. Set the state of the emitter to on or off.
* getSwitchState() - Return the value of the switch
* runMotorTime(m, speed, sec) - Set specific motor at speed for given amount of seconds. Uses delay function to count time.
* runMotorRev(m, speed, rev) - Runs a specific motor at speed for given amount of revolutions. Uses the encoder varible to count revolutions.
* setLED(l, brightness) - Sets a specific led to a certian brightness.
* setBuzzer(strength) - Sets the buzzer to a given strength.

#### More Functions
* turnRight() - Use encoders and tickCounts of both motors to make a percise right turn
* turnLeft() - similar to turnRight()
* goForward() - Use encoders to go straight.
* turnAround() - turnRight * 2


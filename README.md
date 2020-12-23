# UCI Micromouse




This is the official GitHub of Micromouse @ UCI. This repository is here to allow you to build your own mouse for competition. 

#### Club Resources
 * [__Official Club Website__](https://micromouseuci.github.io/) - Get updates on club meetings and club information
 * [__Micromouse @UCI Team Drive__](https://drive.google.com/drive/folders/1fHwfOaCsH3-F_LZoAcfiGgn9cWiebsPj) - Reference Sheets, Lecture Slides, and more informative documents
 * [__YouTube Playlist__](https://www.youtube.com/playlist?list=PLTnmBeaLzeHIIcfAZqYvjoWuxOcVnpV9Z) - Official Micromouse@UCI playlist that includes helpful video references on a wide range of subjects, ranging from soldering and safety to PID control and ChibiOS
 * .[__Facebook__](https://www.facebook.com/groups/153805515376853) - Club Facebook (only UCI students can join)
 
 <details>
 <summary><strong>Schematic Reference</strong></summary>
 <p>This is the schematic for Micromouse at UCI's PCB. The parts are listed below the image, with the labels in parentheses. Below the labels are further explanations of each circuit so that you can get an understanding of how each circuit works and why we included them in the PCB</p>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/Schematic.PNG">
 
* [__SN754410NE__](https://www.digikey.com/product-detail/en/texas-instruments/SN754410NE/296-9911-5-ND/380180) _(U2)_ - Motor driver, used to control the speed and direction of the two motors.
* [__Teensy 3.2__](https://www.pjrc.com/teensy/teensy31.html) _(U1)_- Processor, will run code.
* [__IR Emitters__]() _(D0-D3)_ - Send an IR signal, which will bounce off walls, allowing for the reciever to read. Each is connected to a digital pin on the Teensy, allowing them to individual turn on and off.
* [__IR Reciever__]() _(Q0-Q3)_ - Reads how strong the IR signal is, depending on the value it reads it is able to detect if there is a wall, and how may cells away it is.
* [__Pololu 3081__](https://www.pololu.com/product/3081) _(U5, U4)_ - Motor encoders, used to keep track of wheel rotations.
* [__LM1085 (3A)__](http://www.ti.com/product/LM1085) _(U3)_ - Voltage regulator, a LDO regulator that gives a 5V source from the LiPo. 3A version.
* [__Switch__](http://www.google.com/search?q=mechanical+keyboard+switch) _(SW1)_ - Any mechanical keyboard switch
* [__Buzzer__](https://www.amazon.com/BETAFPV-Terminals-Electronic-Continuous-12X9-5mm/dp/B073RH8TQK) _(BZ1)_ - ~5mm buzzer pin spacing, the small ones in the link fit.
* [__LEDs__](http://www.google.com/search?q=3528+smd+led) _(D4, D5)_ - Any 3528 sized led rated for at least 3.3v
* [__Voltage Regulator (Linear)__](https://www.digikey.com/product-detail/en/stmicroelectronics/LD1085V50/497-3436-5-ND/669220) - Used to step voltage down
* __1.8KΩ__ _(R1, R2, R3, R4)_ - Current limiting resistors for Receivers.
* __35Ω__ _(R5, R6, R7, R8)_ - Current limiting resistor for Recievers.
* __47kΩ__ _(R13, R14, R15, R16)_ - Pull Up resistor for switch. Value based on the LED bought. [Calculate](http://www.ohmslawcalculator.com/led-resistor-calculator)
* __1kΩ__ _(R9, R10, R11, R12)_ - Resistors for MOSFET gate

 <details>
 <summary><strong>Emitter/Receiver Pair Circuit</strong></summary>
 </details>
 
 <details>
 <summary><strong>Power Supply Circuit</strong></summary>
 </details>

 <details>
 <summary><strong>Motor Control Circuit</strong></summary>
 </details>

 <details>
 <summary><strong>Indicator Circuit</strong></summary>
 </details>

 </details>
 
 
<details>
 <summary><strong>Soldering Components</strong></summary>
 
 <p>The components must be soldered in order to maintain a solid electrical connection between two circuit elements. For ease, it's recommended that you follow the order listed below of components to solder. This will help prevent a mess or short circuits.</p>
 
 
   <ul><details>
 <summary><strong>Capacitors</strong></summary>
  </details></ul>
 
 
 
 <ul><details><summary><strong>IR Emitters and Receivers</strong></summary>
  <br> <li>On the schematic, the IR Emitters are labeled as D0, D1, D2, and D3. Find the corresponding labels on the PCB. They should be at the front of the board</li>
  <li>Place the shorter end of the emitter in the positive throughole of the corresponding pad and the longer end through the negative side. For reference, the D0 pad is shown below.</li>
  <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/emitter-receiver_holes.jpg" width=200 height=400>
  <li>After inserting the emitter all the way, bend the emitter's leads so that the emitter lines up parallel to the PCB AND it is centered on the emitter sillhouette on the PCB. You can now solder the emitter. </li>
  <li>Repeat the same process for the IR Receivers. The receivers are located right next to the emitters, and are labelled as Q0, Q1, Q2, and Q3. For the receivers, the short end is also the positive end</li>
  <li>When you're soldering the components, make sure that the LEDs line up with the sillhouettes as much as possible. In other words, the length of the leads above the PCB should be as short as possible. This will ensure that one receiver from one set will not have interference from an emitter of another set. </li>
  </details></ul>
 
 <ul><details><summary><strong>Motors and Encoders</strong></summary>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/motor_parts.jpg" width=200 height=300>
 <ul>The image above shows all the components you will need to install your motor to your PCB.</ul>
 <ul>The first step is to attach the JST connector (the wires) to the encoder. The encoder is the mini black circuit board with a connecter pin for the JST.</ul>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/encoders_jst.jpg" width=200 height=300>
 <ul>To solder the encoder to the motor, use the image below as a reference. Make sure the encoder is perfectly parallel to the back end of the motor; if the encoder is crooked, it may cause some additional problems. Cover those holes on the encoder with solder while also making sure that the motor pins are touching the solder. This way, the motor pins are electrically connected to the encoders through solder. Give a slight tug to the encoder to make sure that it is firmly attached to the motor and is not loose. If it is loose, re-solder the encoder until it fits perfectly.</ul>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/soldering_encoders.jpg" width=200 height=300>
 <ul>Finally, attach the magnet to the motor by inserting it through the mini shaft. The final product should look like the image below.  </ul>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/full_motor_installed.jpg" width=200 height=300>
 </details></ul>
 
 <ul><details>
 <summary><strong>MOSFETs and Resistors</strong></summary>
  <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/Resistor.jpg" width=200 height=300>
 <p>To solder the resistor, first make sure that the right resistor value is selected. Choosing the incorrect resistor value may result in irregular functionality; to determine which resistor must be used, first look at the KiCAD schematic of the mouse. Each resistor on the PCB is labeled as "R#" (i.e. R7). Find the corresponding resistor value on the schematic, and that will be the resistor value needed at that point (i.e. R7 is labeled as 35 ohms, so you will need a 35 ohm resistor at R7). To solder, simply bend the resistor and insert them into the holes specified (as shown above). The ceramic part of the resistor should be lined up with the rectangular engraving on the PCB and should touch the PCB. Solder the ends of the resistor at the bottom of the PCB, and then cut off the ends. The final product should look like this:</p>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/Soldered_Resistor.jpg" width=200 height=300>
 
  </details></ul>
 

 <ul><details>
 <summary><strong>Voltage Regulator</strong></summary>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/VRM.jpg" width=200 height=300>
  </details></ul>
  

   <ul><details>
 <summary><strong>Switches and Buzzer</strong></summary>
  </details></ul>
  
   <ul><details>
 <summary><strong>Header Pins & Dip Socket</strong></summary>
 <ul>The header pins and dip socket are used for easy replacement of the Teensy and motor driver respectively in the event that they burn out. </ul>
 <ul>For the Teensy, you will need two 1x14 headers and one 1x5 header. Solder them on individually in the location shown below</ul>
 <img src="https://github.com/micromouseuci/UCI-Micromouse/blob/master/images/header-pins.jpg" width=200 height=300>
  
  </details></ul>
  <ul><details>
  <summary><strong>Header Pins for Teensy</strong></summary>
  </details></ul>
 
</details>
 
<details>
<summary><strong>Testing</strong></summary>
 
 <ul><details><summary><strong>IR Sensors</strong></summary>
 
 
</details></ul>

<ul><details>
<summary><strong>Motors</strong></summary>
 
 
</details></ul>

</details>
 
<details>
<summary><strong>Software</strong></summary>

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


</details>
 

### Other Resources

<li><a href="https://git-scm.com/book/en/v2" target="_blank"><strong>Git Markdown</strong></a></li>
<li><a href="https://www.sparkfun.com/tutorials/223" target="_blank"><strong>How to Read a Datasheet</strong></a></li>

 
 




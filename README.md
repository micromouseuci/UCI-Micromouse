# UCI Micromouse




This is the official GitHub of Micromouse @ UCI. This repository is here to allow you to build your own mouse for competition. 

#### Club Resources
 * [__Official Club Website__](https://micromouseuci.github.io/) - Get updates on club meetings and club information
 * [__Micromouse @UCI Team Drive__](https://drive.google.com/drive/folders/1fHwfOaCsH3-F_LZoAcfiGgn9cWiebsPj) - Reference Sheets, Lecture Slides, and more informative documents
 * [__YouTube Playlist (Coming Soon...)__] - Official Micromouse@UCI playlist that includes helpful video references on a wide range of subjects, ranging from soldering and safety to PID control and ChibiOS
 
 
<details>
<summary>Soldering Components</summary>
<br> Make sure you have the KiCAD schematic open on your computer, as it will be referenced throughout this tutorial. 
 <ul><details><summary>IR Emitters and Receivers</summary>
  <br> <ul>On the schematic, the IR Emitters are labeled as D0, D1, D2, and D3. Find the corresponding labels on the PCB. They should be at the front of the board</ul>
  <ul>Place the shorter end of the emitter in the positive throughole of the corresponding pad. For reference, the D0 pad is shown below.</ul>
  </details></ul>
</details>
 
<h2> Parts and Labels</h2>

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
* __120Ω__ _(R0, R1, R2, R3)_ - Current limiting resistors for Emitters.
* __1.8KΩ__ _(R4, R5, R6, R7)_ - Current limiting resistor for Recievers.
* __...Ω__ _(R11)_ - Pull Up resistor for switch. Value based on the LED bought. [Calculate](http://www.ohmslawcalculator.com/led-resistor-calculator)
* __1-10kΩ__ _(R8, R9)_ - Current limiting resistors for LEDs.

### Other Resources


 
 




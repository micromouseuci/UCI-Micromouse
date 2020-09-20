EESchema Schematic File Version 4
LIBS:mouse_v2-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L encoder_3081:Encoder_3081 U4
U 1 1 5D1C0154
P 2400 10200
F 0 "U4" H 2400 10817 50  0000 C CNN
F 1 "Encoder_3081" H 2400 10726 50  0000 C CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x06_P2.00mm_Vertical" H 2550 9700 50  0001 L CNN
F 3 "http://ams.com/eng/content/download/438063/1340357/246195" H 250 11800 50  0001 C CNN
	1    2400 10200
	1    0    0    -1  
$EndComp
$Comp
L encoder_3081:Encoder_3081 U5
U 1 1 5D1C0226
P 2400 8900
F 0 "U5" H 2400 9517 50  0000 C CNN
F 1 "Encoder_3081" H 2400 9426 50  0000 C CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x06_P2.00mm_Vertical" H 2550 8400 50  0001 L CNN
F 3 "http://ams.com/eng/content/download/438063/1340357/246195" H 250 10500 50  0001 C CNN
	1    2400 8900
	1    0    0    -1  
$EndComp
Text Label 7600 2425 2    50   ~ 0
3.3v
Text Label 4100 8800 2    50   ~ 0
5v
Text Label 4700 9100 2    50   ~ 0
M1_speed
Text Label 4700 9200 2    50   ~ 0
M2_speed
Text Label 4700 9400 2    50   ~ 0
M1_forward
Text Label 4700 9500 2    50   ~ 0
M1_backward
Text Label 4700 9600 2    50   ~ 0
M2_forward
Text Label 4700 9700 2    50   ~ 0
M2_backward
Wire Wire Line
	4700 9900 4550 9900
Wire Wire Line
	4550 9900 4550 10000
Wire Wire Line
	4550 10200 4700 10200
Wire Wire Line
	4700 10100 4550 10100
Connection ~ 4550 10100
Wire Wire Line
	4550 10100 4550 10200
Wire Wire Line
	4700 10000 4550 10000
Connection ~ 4550 10000
Wire Wire Line
	4550 10000 4550 10050
Wire Wire Line
	4550 10050 4400 10050
Connection ~ 4550 10050
Wire Wire Line
	4550 10050 4550 10100
Text Label 4400 10050 2    50   ~ 0
GND
Text Label 7600 2225 2    50   ~ 0
M1_speed
Text Label 7600 1625 2    50   ~ 0
M2_speed
Text Label 6100 8800 0    50   ~ 0
OUT1
Text Label 6100 8900 0    50   ~ 0
OUT2
Text Label 6100 9000 0    50   ~ 0
OUT3
Text Label 6100 9100 0    50   ~ 0
OUT4
Text Label 3000 9000 0    50   ~ 0
OUT1
Text Label 3000 9100 0    50   ~ 0
OUT2
Text Label 3000 10300 0    50   ~ 0
OUT3
Text Label 3000 10400 0    50   ~ 0
OUT4
Text Label 3000 8900 0    50   ~ 0
5v
Text Label 3000 10200 0    50   ~ 0
5v
$Comp
L mouse_v2-rescue:Motor_DC-Motor M1
U 1 1 5D1C3AFC
P 1100 8900
F 0 "M1" H 1258 8896 50  0000 L CNN
F 1 "Motor_DC" H 1258 8805 50  0000 L CNN
F 2 "misc:Motor_mouse" H 1100 8810 50  0001 C CNN
F 3 "~" H 1100 8810 50  0001 C CNN
	1    1100 8900
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:Motor_DC-Motor M2
U 1 1 5D1C3BC7
P 1150 10150
F 0 "M2" H 1308 10146 50  0000 L CNN
F 1 "Motor_DC" H 1308 10055 50  0000 L CNN
F 2 "misc:Motor_mouse" H 1150 10060 50  0001 C CNN
F 3 "~" H 1150 10060 50  0001 C CNN
	1    1150 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 8750 1450 8750
Wire Wire Line
	1450 8750 1450 8700
Wire Wire Line
	1450 8700 1100 8700
Wire Wire Line
	1800 9050 1450 9050
Wire Wire Line
	1450 9050 1450 9200
Wire Wire Line
	1450 9200 1100 9200
Wire Wire Line
	1800 10050 1500 10050
Wire Wire Line
	1500 10050 1500 9950
Wire Wire Line
	1500 9950 1150 9950
Wire Wire Line
	1150 10450 1500 10450
Wire Wire Line
	1500 10450 1500 10350
Wire Wire Line
	1500 10350 1800 10350
Text Label 3000 8800 0    50   ~ 0
M1_encoder_A
Text Label 3000 8700 0    50   ~ 0
M1_encoder_B
Text Label 3000 8600 0    50   ~ 0
GND
Text Label 3000 9900 0    50   ~ 0
GND
Text Label 3000 10000 0    50   ~ 0
M2_encoder_B
Text Label 3000 10100 0    50   ~ 0
M2_encoder_A
$Comp
L mouse_v2-rescue:R-Device R8
U 1 1 5D1C60EA
P 5800 1550
F 0 "R8" H 5870 1596 50  0000 L CNN
F 1 "35" H 5870 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 1550 50  0001 C CNN
F 3 "~" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:IRL81A-LED D3
U 1 1 5D1C62CE
P 5800 1100
F 0 "D3" V 5704 1252 50  0000 L CNN
F 1 "SFH4545" V 5795 1252 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 5800 1275 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 5750 1100 50  0001 C CNN
	1    5800 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1670 4310 2570 4310
$Comp
L mouse_v2-rescue:Q_Photo_NPN-Device Q0
U 1 1 5D1CEBFF
P 1770 3960
F 0 "Q0" H 1593 3914 50  0000 R CNN
F 1 "Q_Photo_NPN" H 1593 4005 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 1970 4060 50  0001 C CNN
F 3 "~" H 1770 3960 50  0001 C CNN
	1    1770 3960
	-1   0    0    1   
$EndComp
$Comp
L mouse_v2-rescue:Q_Photo_NPN-Device Q1
U 1 1 5D1CECAF
P 2670 3960
F 0 "Q1" H 2493 3914 50  0000 R CNN
F 1 "Q_Photo_NPN" H 2493 4005 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 2870 4060 50  0001 C CNN
F 3 "~" H 2670 3960 50  0001 C CNN
	1    2670 3960
	-1   0    0    1   
$EndComp
$Comp
L mouse_v2-rescue:Q_Photo_NPN-Device Q2
U 1 1 5D1CECF5
P 3570 3960
F 0 "Q2" H 3393 3914 50  0000 R CNN
F 1 "Q_Photo_NPN" H 3393 4005 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 3770 4060 50  0001 C CNN
F 3 "~" H 3570 3960 50  0001 C CNN
	1    3570 3960
	-1   0    0    1   
$EndComp
$Comp
L mouse_v2-rescue:Q_Photo_NPN-Device Q3
U 1 1 5D1CED3B
P 4420 3960
F 0 "Q3" H 4243 3914 50  0000 R CNN
F 1 "Q_Photo_NPN" H 4243 4005 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 4620 4060 50  0001 C CNN
F 3 "~" H 4420 3960 50  0001 C CNN
	1    4420 3960
	-1   0    0    1   
$EndComp
Wire Wire Line
	1670 4310 1670 4160
Wire Wire Line
	2570 4160 2570 4310
Connection ~ 2570 4310
Wire Wire Line
	2570 4310 3470 4310
Wire Wire Line
	3470 4160 3470 4310
Connection ~ 3470 4310
Wire Wire Line
	3470 4310 4320 4310
Wire Wire Line
	4320 4160 4320 4310
Connection ~ 4320 4310
Wire Wire Line
	4320 4310 5370 4310
$Comp
L mouse_v2-rescue:R-Device R1
U 1 1 5D1D45B8
P 1670 3360
F 0 "R1" H 1740 3406 50  0000 L CNN
F 1 "1.8k" H 1740 3315 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1600 3360 50  0001 C CNN
F 3 "~" H 1670 3360 50  0001 C CNN
	1    1670 3360
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R2
U 1 1 5D1D464D
P 2570 3360
F 0 "R2" H 2640 3406 50  0000 L CNN
F 1 "1.8k" H 2640 3315 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2500 3360 50  0001 C CNN
F 3 "~" H 2570 3360 50  0001 C CNN
	1    2570 3360
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R3
U 1 1 5D1D46A2
P 3470 3360
F 0 "R3" H 3540 3406 50  0000 L CNN
F 1 "1.8k" H 3540 3315 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3400 3360 50  0001 C CNN
F 3 "~" H 3470 3360 50  0001 C CNN
	1    3470 3360
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R4
U 1 1 5D1D46F2
P 4320 3360
F 0 "R4" H 4390 3406 50  0000 L CNN
F 1 "1.8k" H 4390 3315 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4250 3360 50  0001 C CNN
F 3 "~" H 4320 3360 50  0001 C CNN
	1    4320 3360
	1    0    0    -1  
$EndComp
Wire Wire Line
	4320 3760 4320 3660
Wire Wire Line
	3470 3510 3470 3660
Wire Wire Line
	2570 3510 2570 3660
Wire Wire Line
	1670 3510 1670 3660
Wire Wire Line
	1670 3660 1870 3660
Connection ~ 1670 3660
Wire Wire Line
	1670 3660 1670 3760
Wire Wire Line
	2570 3660 2770 3660
Connection ~ 2570 3660
Wire Wire Line
	2570 3660 2570 3760
Wire Wire Line
	3470 3660 3670 3660
Connection ~ 3470 3660
Wire Wire Line
	3470 3660 3470 3760
Connection ~ 4320 3660
Wire Wire Line
	4320 3660 4320 3510
Wire Wire Line
	4320 3660 4520 3660
Text Label 1870 3660 0    50   ~ 0
Reciever_0
Text Label 2770 3660 0    50   ~ 0
Reciever_1
Text Label 3670 3660 0    50   ~ 0
Reciever_2
Text Label 4520 3660 0    50   ~ 0
Reciever_3
Text Label 5370 4310 0    50   ~ 0
3.3v
Wire Wire Line
	1670 3010 2570 3010
Wire Wire Line
	4320 3210 4320 3010
Connection ~ 4320 3010
Wire Wire Line
	4320 3010 5370 3010
Wire Wire Line
	3470 3210 3470 3010
Connection ~ 3470 3010
Wire Wire Line
	3470 3010 4320 3010
Wire Wire Line
	2570 3210 2570 3010
Connection ~ 2570 3010
Wire Wire Line
	2570 3010 3470 3010
Wire Wire Line
	1670 3210 1670 3010
Text Label 5370 3010 0    50   ~ 0
GND
Text Label 9800 3525 0    50   ~ 0
Reciever_0
Text Label 7600 3525 2    50   ~ 0
Reciever_1
Text Label 7600 2825 2    50   ~ 0
Reciever_2
Text Label 7600 3425 2    50   ~ 0
Reciever_3
Text Label 9800 3625 0    50   ~ 0
Emitter_0
Text Label 7600 3625 2    50   ~ 0
Emitter_1
Text Label 7600 2925 2    50   ~ 0
Emitter_2
Text Label 7600 3325 2    50   ~ 0
Emitter_3
Text Label 7600 2125 2    50   ~ 0
M1_forward
Text Label 7600 1825 2    50   ~ 0
M1_backward
Text Label 7600 1725 2    50   ~ 0
M2_forward
Text Label 7600 1925 2    50   ~ 0
M2_backward
Text Label 8225 4650 3    50   ~ 0
3.3v
$Comp
L mouse_v2-rescue:R-Device R17
U 1 1 5D2C4CD1
P 8225 4500
F 0 "R17" H 8295 4546 50  0000 L CNN
F 1 "R_PULL_UP" H 8295 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8155 4500 50  0001 C CNN
F 3 "~" H 8225 4500 50  0001 C CNN
	1    8225 4500
	1    0    0    -1  
$EndComp
Text Label 7475 4350 2    50   ~ 0
GND
Text Label 4525 7725 0    50   ~ 0
vBatt
Text Label 4525 7625 0    50   ~ 0
GND
Text Label 8350 4225 0    50   ~ 0
PUSH_SW
Wire Wire Line
	8225 4350 8100 4350
Wire Wire Line
	8100 4350 8100 4225
Text Label 7600 3225 2    50   ~ 0
M1_encoder_A
Text Label 7600 3125 2    50   ~ 0
M1_encoder_B
Text Label 7600 1125 2    50   ~ 0
M2_encoder_A
Text Label 7600 1025 2    50   ~ 0
M2_encoder_B
NoConn ~ 9800 1025
NoConn ~ 9800 1125
NoConn ~ 9800 1225
Text Label 7600 3025 2    50   ~ 0
PUSH_SW
Text Label 7600 925  2    50   ~ 0
GND
NoConn ~ 9800 2825
NoConn ~ 9800 2725
NoConn ~ 9800 2625
NoConn ~ 9800 2525
NoConn ~ 9800 2425
NoConn ~ 9800 2325
NoConn ~ 9800 2225
NoConn ~ 9800 2125
NoConn ~ 9800 2025
NoConn ~ 9800 1925
NoConn ~ 9800 1825
NoConn ~ 9800 1725
NoConn ~ 9800 1325
NoConn ~ 9800 1425
NoConn ~ 9800 1525
NoConn ~ 9800 1625
NoConn ~ 9800 925 
NoConn ~ 7600 2325
NoConn ~ 7600 2725
NoConn ~ 7600 2625
Text Label 7600 2525 2    50   ~ 0
GND
$Comp
L mouse_v2-rescue:Q_NMOS_DGS-Device T3
U 1 1 5E006E8C
P 5700 2000
F 0 "T3" H 5905 2046 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 5905 1955 50  0000 L CNN
F 2 "misc:TN0104(TO-92)v2" H 5900 2100 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2200 5800 2400
Wire Wire Line
	5800 2600 6500 2600
Wire Wire Line
	5500 2000 5500 2400
$Comp
L mouse_v2-rescue:R-Device R16
U 1 1 5E013EDC
P 5650 2400
F 0 "R16" V 5443 2400 50  0000 C CNN
F 1 "47k" V 5534 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	0    1    1    0   
$EndComp
Connection ~ 5800 2400
Wire Wire Line
	5800 2400 5800 2600
$Comp
L mouse_v2-rescue:R-Device R12
U 1 1 5E0140CF
P 5250 2000
F 0 "R12" V 5043 2000 50  0000 C CNN
F 1 "1k" V 5134 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 2000 50  0001 C CNN
F 3 "~" H 5250 2000 50  0001 C CNN
	1    5250 2000
	0    1    1    0   
$EndComp
Text Label 5100 2000 3    50   ~ 0
Emitter_3
Wire Wire Line
	5800 1300 5800 1400
Wire Wire Line
	5800 1700 5800 1800
Wire Wire Line
	5400 2000 5500 2000
Connection ~ 5500 2000
$Comp
L mouse_v2-rescue:R-Device R7
U 1 1 5E01EC6A
P 4300 1550
F 0 "R7" H 4370 1596 50  0000 L CNN
F 1 "35" H 4370 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 1550 50  0001 C CNN
F 3 "~" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:IRL81A-LED D2
U 1 1 5E01EC70
P 4300 1100
F 0 "D2" V 4204 1252 50  0000 L CNN
F 1 "SFH4545" V 4295 1252 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 4300 1275 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 4250 1100 50  0001 C CNN
	1    4300 1100
	0    -1   -1   0   
$EndComp
$Comp
L mouse_v2-rescue:Q_NMOS_DGS-Device T2
U 1 1 5E01EC76
P 4200 2000
F 0 "T2" H 4405 2046 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 4405 1955 50  0000 L CNN
F 2 "misc:TN0104(TO-92)v2" H 4400 2100 50  0001 C CNN
F 3 "~" H 4200 2000 50  0001 C CNN
	1    4200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2200 4300 2400
Wire Wire Line
	4000 2000 4000 2400
$Comp
L mouse_v2-rescue:R-Device R15
U 1 1 5E01EC7F
P 4150 2400
F 0 "R15" V 3943 2400 50  0000 C CNN
F 1 "47k" V 4034 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 2400 50  0001 C CNN
F 3 "~" H 4150 2400 50  0001 C CNN
	1    4150 2400
	0    1    1    0   
$EndComp
Connection ~ 4300 2400
Wire Wire Line
	4300 2400 4300 2600
$Comp
L mouse_v2-rescue:R-Device R11
U 1 1 5E01EC87
P 3750 2000
F 0 "R11" V 3543 2000 50  0000 C CNN
F 1 "1k" V 3634 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 2000 50  0001 C CNN
F 3 "~" H 3750 2000 50  0001 C CNN
	1    3750 2000
	0    1    1    0   
$EndComp
Text Label 3600 2000 3    50   ~ 0
Emitter_2
Wire Wire Line
	4300 1300 4300 1400
Wire Wire Line
	4300 1700 4300 1800
Wire Wire Line
	3900 2000 4000 2000
Connection ~ 4000 2000
$Comp
L mouse_v2-rescue:R-Device R5
U 1 1 5E02C7EF
P 1300 1550
F 0 "R5" H 1370 1596 50  0000 L CNN
F 1 "35" H 1370 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 1550 50  0001 C CNN
F 3 "~" H 1300 1550 50  0001 C CNN
	1    1300 1550
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:IRL81A-LED D0
U 1 1 5E02C7F5
P 1300 1100
F 0 "D0" V 1204 1252 50  0000 L CNN
F 1 "SFH4545" V 1295 1252 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 1300 1275 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 1250 1100 50  0001 C CNN
	1    1300 1100
	0    -1   -1   0   
$EndComp
$Comp
L mouse_v2-rescue:Q_NMOS_DGS-Device T0
U 1 1 5E02C7FB
P 1200 2000
F 0 "T0" H 1405 2046 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 1405 1955 50  0000 L CNN
F 2 "misc:TN0104(TO-92)v2" H 1400 2100 50  0001 C CNN
F 3 "~" H 1200 2000 50  0001 C CNN
	1    1200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2200 1300 2400
Wire Wire Line
	1000 2000 1000 2400
$Comp
L mouse_v2-rescue:R-Device R13
U 1 1 5E02C804
P 1150 2400
F 0 "R13" V 943 2400 50  0000 C CNN
F 1 "47k" V 1034 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1080 2400 50  0001 C CNN
F 3 "~" H 1150 2400 50  0001 C CNN
	1    1150 2400
	0    1    1    0   
$EndComp
Connection ~ 1300 2400
Wire Wire Line
	1300 2400 1300 2600
$Comp
L mouse_v2-rescue:R-Device R9
U 1 1 5E02C80C
P 750 2000
F 0 "R9" V 543 2000 50  0000 C CNN
F 1 "1k" V 634 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 680 2000 50  0001 C CNN
F 3 "~" H 750 2000 50  0001 C CNN
	1    750  2000
	0    1    1    0   
$EndComp
Text Label 600  2000 3    50   ~ 0
Emitter_0
Wire Wire Line
	1300 1300 1300 1400
Wire Wire Line
	1300 1700 1300 1800
Wire Wire Line
	900  2000 1000 2000
Connection ~ 1000 2000
$Comp
L mouse_v2-rescue:R-Device R6
U 1 1 5E0358B1
P 2800 1550
F 0 "R6" H 2870 1596 50  0000 L CNN
F 1 "35" H 2870 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 1550 50  0001 C CNN
F 3 "~" H 2800 1550 50  0001 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:IRL81A-LED D1
U 1 1 5E0358B7
P 2800 1100
F 0 "D1" V 2704 1252 50  0000 L CNN
F 1 "SFH4545" V 2795 1252 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O3.81mm_Z2.0mm" H 2800 1275 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 2750 1100 50  0001 C CNN
	1    2800 1100
	0    -1   -1   0   
$EndComp
$Comp
L mouse_v2-rescue:Q_NMOS_DGS-Device T1
U 1 1 5E0358BD
P 2700 2000
F 0 "T1" H 2905 2046 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 2905 1955 50  0000 L CNN
F 2 "misc:TN0104(TO-92)v2" H 2900 2100 50  0001 C CNN
F 3 "~" H 2700 2000 50  0001 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2200 2800 2400
Wire Wire Line
	2500 2000 2500 2400
$Comp
L mouse_v2-rescue:R-Device R14
U 1 1 5E0358C6
P 2650 2400
F 0 "R14" V 2443 2400 50  0000 C CNN
F 1 "47k" V 2534 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	0    1    1    0   
$EndComp
Connection ~ 2800 2400
Wire Wire Line
	2800 2400 2800 2600
$Comp
L mouse_v2-rescue:R-Device R10
U 1 1 5E0358CE
P 2250 2000
F 0 "R10" V 2043 2000 50  0000 C CNN
F 1 "1k" V 2134 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2180 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	0    1    1    0   
$EndComp
Text Label 2100 2000 3    50   ~ 0
Emitter_1
Wire Wire Line
	2800 1300 2800 1400
Wire Wire Line
	2800 1700 2800 1800
Wire Wire Line
	2400 2000 2500 2000
Connection ~ 2500 2000
Wire Wire Line
	5800 1000 5800 900 
Wire Wire Line
	5800 900  4300 900 
Wire Wire Line
	4300 900  4300 1000
Wire Wire Line
	4300 900  2800 900 
Wire Wire Line
	2800 900  2800 1000
Connection ~ 4300 900 
Wire Wire Line
	2800 900  1300 900 
Wire Wire Line
	1300 900  1300 1000
Connection ~ 2800 900 
Wire Wire Line
	5800 900  6400 900 
Connection ~ 5800 900 
Wire Wire Line
	1300 2600 2800 2600
Connection ~ 5800 2600
Connection ~ 2800 2600
Wire Wire Line
	2800 2600 4300 2600
Connection ~ 4300 2600
Wire Wire Line
	4300 2600 5800 2600
Text Label 6400 900  0    50   ~ 0
5v
Text Label 6500 2600 0    50   ~ 0
GND
$Comp
L SN754410NE:SN754410NE U2
U 1 1 5D1BEE18
P 5400 9400
F 0 "U2" H 5400 10370 50  0000 C CNN
F 1 "SN754410NE (Half-Bridge)" H 5400 10279 50  0000 C CNN
F 2 "SN754410NE.kicad_mod:DIP254P762X508-16" H 5400 9400 50  0001 L BNN
F 3 "PDIP-16 Texas Instruments" H 5400 9400 50  0001 L BNN
F 4 "Texas Instruments" H 5400 9400 50  0001 L BNN "Field4"
F 5 "None" H 5400 9400 50  0001 L BNN "Field5"
F 6 "Unavailable" H 5400 9400 50  0001 L BNN "Field6"
F 7 "Peripheral Drivers and Actuators Quad Half-Hs" H 5400 9400 50  0001 L BNN "Field7"
F 8 "SN754410NE" H 5400 9400 50  0001 L BNN "Field8"
	1    5400 9400
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:CP1_Small-Device C2
U 1 1 5E0B1B16
P 4200 8700
F 0 "C2" H 4100 8650 50  0000 R CNN
F 1 "0.1uF" H 4109 8745 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4200 8700 50  0001 C CNN
F 3 "~" H 4200 8700 50  0001 C CNN
	1    4200 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 8800 4200 8800
Connection ~ 4200 8800
Wire Wire Line
	4200 8800 4100 8800
Text Label 4200 8600 2    50   ~ 0
GND
$Comp
L mouse_v2-rescue:Conn_01x02_Male-Connector J4
U 1 1 5E60A04C
P 4325 7625
F 0 "J4" H 4431 7803 50  0000 C CNN
F 1 "I2C_Conn" H 4425 7725 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4325 7625 50  0001 C CNN
F 3 "~" H 4325 7625 50  0001 C CNN
	1    4325 7625
	1    0    0    -1  
$EndComp
$Comp
L mouse-rescue:EG1218-dk_Slide-Switches S1
U 1 1 5E819689
P 6150 5925
F 0 "S1" H 6150 6204 50  0000 C CNN
F 1 "EG1218" H 6150 6113 50  0000 C CNN
F 2 "misc:SWITCH_SLIDE_500SSP1S2M2QEA" H 6350 6125 50  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6350 6225 60  0001 L CNN
F 4 "EG1903-ND" H 6350 6325 60  0001 L CNN "Digi-Key_PN"
F 5 "EG1218" H 6350 6425 60  0001 L CNN "MPN"
F 6 "Switches" H 6350 6525 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6350 6625 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6350 6725 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/EG1218/EG1903-ND/101726" H 6350 6825 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE SPDT 200MA 30V" H 6350 6925 60  0001 L CNN "Description"
F 11 "E-Switch" H 6350 7025 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6350 7125 60  0001 L CNN "Status"
	1    6150 5925
	-1   0    0    1   
$EndComp
$Comp
L mouse_v2-rescue:Battery_Cell-Device BT1
U 1 1 5E820C97
P 4375 6900
F 0 "BT1" H 4125 7000 50  0000 L CNN
F 1 "Battery_Cell" H 3825 6900 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 4375 6960 50  0001 C CNN
F 3 "~" V 4375 6960 50  0001 C CNN
	1    4375 6900
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:CP1-Device C10
U 1 1 5E8B972D
P 5650 6475
F 0 "C10" H 5765 6521 50  0000 L CNN
F 1 "10uF(Tantalum)" H 5765 6430 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5650 6475 50  0001 C CNN
F 3 "~" H 5650 6475 50  0001 C CNN
	1    5650 6475
	1    0    0    -1  
$EndComp
Text Label 9800 3225 0    50   ~ 0
5v
$Comp
L mouse_v2-rescue:MountingHole-Mechanical SK1
U 1 1 5E799FC8
P 2000 5550
F 0 "SK1" H 2100 5596 50  0000 L CNN
F 1 "M3" H 2100 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 5550 50  0001 C CNN
F 3 "~" H 2000 5550 50  0001 C CNN
	1    2000 5550
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:MountingHole-Mechanical MH2
U 1 1 5E79A0A3
P 1175 5575
F 0 "MH2" H 1275 5621 50  0000 L CNN
F 1 "M3" H 1275 5530 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1175 5575 50  0001 C CNN
F 3 "~" H 1175 5575 50  0001 C CNN
	1    1175 5575
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:MountingHole-Mechanical MH1
U 1 1 5E79A15B
P 1175 5175
F 0 "MH1" H 1275 5221 50  0000 L CNN
F 1 "M3" H 1275 5130 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1175 5175 50  0001 C CNN
F 3 "~" H 1175 5175 50  0001 C CNN
	1    1175 5175
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:MountingHole-Mechanical SK2
U 1 1 5E79A200
P 2000 5175
F 0 "SK2" H 2100 5221 50  0000 L CNN
F 1 "M3" H 2100 5130 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 5175 50  0001 C CNN
F 3 "~" H 2000 5175 50  0001 C CNN
	1    2000 5175
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:LM1084-5.0-Regulator_Linear U3
U 1 1 5E7860F1
P 5025 6325
F 0 "U3" H 5025 6567 50  0000 C CNN
F 1 "LM1085-5.0" H 5025 6476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 5025 6575 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1084.pdf" H 5025 6325 50  0001 C CNN
	1    5025 6325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 6625 5025 6875
Text Label 5025 6875 3    50   ~ 0
GND
Wire Wire Line
	5325 6325 5650 6325
Text Label 6350 5925 0    50   ~ 0
5v
Text Label 4375 7000 3    50   ~ 0
GND
Wire Wire Line
	4725 6325 4600 6325
Connection ~ 5650 6325
Wire Wire Line
	5650 6325 5825 6325
$Comp
L mouse_v2-rescue:CP1-Device C9
U 1 1 5E79A9AD
P 4600 5900
F 0 "C9" H 4375 5850 50  0000 L CNN
F 1 "10uF" H 4325 5925 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4600 5900 50  0001 C CNN
F 3 "~" H 4600 5900 50  0001 C CNN
	1    4600 5900
	-1   0    0    1   
$EndComp
Text Label 4675 5675 0    50   ~ 0
GND
Wire Wire Line
	4600 6050 4600 6325
Connection ~ 4600 6325
Text Label 3475 6325 2    50   ~ 0
vBatt
Text Label 5650 6625 3    50   ~ 0
GND
Wire Wire Line
	4375 6325 4600 6325
Wire Wire Line
	5950 6025 5825 6025
Wire Wire Line
	5825 6025 5825 6325
Text Notes 6750 4850 2    79   ~ 0
Emittter/Reciver Pairs\n
Text Notes 6700 11150 2    79   ~ 0
Motor Control\n
Text Notes 6700 8000 2    79   ~ 0
Power Supply
Text Notes 2875 5950 2    79   ~ 0
Mount Designators\n
Wire Notes Line
	2900 8100 2900 4950
Wire Notes Line
	500  4950 6800 4950
Wire Notes Line
	500  8100 6800 8100
NoConn ~ 7600 2025
Wire Notes Line
	6800 500  6800 11200
Text Notes 10400 5000 2    79   ~ 0
Control
Wire Notes Line
	10500 500  10500 5100
Wire Notes Line
	10500 5100 6800 5100
$Comp
L mouse_v2-rescue:GPTS203211B-dk_Pushbutton-Switches S2
U 1 1 5F1E60A3
P 7800 4350
F 0 "S2" H 7800 4625 50  0000 C CNN
F 1 "GPTS203211B" H 7800 4534 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8000 4550 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 8000 4650 60  0001 L CNN
F 4 "CW181-ND" H 8000 4750 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 8000 4850 60  0001 L CNN "MPN"
F 6 "Switches" H 8000 4950 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 8000 5050 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 8000 5150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 8000 5250 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 8000 5350 60  0001 L CNN "Description"
F 11 "CW Industries" H 8000 5450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8000 5550 60  0001 L CNN "Status"
	1    7800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4350 7600 4350
Wire Wire Line
	8000 4350 8100 4350
Connection ~ 8100 4350
Text Label 5775 5725 2    50   ~ 0
VUSB
Wire Wire Line
	5950 5825 5775 5825
Wire Wire Line
	5775 5825 5775 5725
Text Label 9800 3125 0    50   ~ 0
VUSB
$Comp
L teensy:Teensy4.0 U1
U 1 1 5F23AD3B
P 8700 2275
F 0 "U1" H 8700 3890 50  0000 C CNN
F 1 "Teensy4.0" H 8700 3799 50  0000 C CNN
F 2 "teensy:Teensy40(nopads)" H 8300 2475 50  0001 C CNN
F 3 "" H 8300 2475 50  0001 C CNN
	1    8700 2275
	1    0    0    -1  
$EndComp
NoConn ~ 9800 3325
NoConn ~ 9800 3425
$Comp
L mouse_v2-rescue:Buzzer-Device BZ1
U 1 1 5F35DDB2
P 1075 6775
F 0 "BZ1" H 1228 6804 50  0000 L CNN
F 1 "Buzzer" H 1228 6713 50  0000 L CNN
F 2 "misc:9x5.5mm Buzzer" V 1050 6875 50  0001 C CNN
F 3 "~" V 1050 6875 50  0001 C CNN
	1    1075 6775
	0    -1   -1   0   
$EndComp
$Comp
L mouse_v2-rescue:LED-Device D4
U 1 1 5F361454
P 2150 6300
F 0 "D4" H 2141 6516 50  0000 C CNN
F 1 "LED" H 2141 6425 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2150 6300 50  0001 C CNN
F 3 "~" H 2150 6300 50  0001 C CNN
	1    2150 6300
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R19
U 1 1 5F367A92
P 2425 6550
F 0 "R19" H 2495 6596 50  0000 L CNN
F 1 "R" H 2495 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2355 6550 50  0001 C CNN
F 3 "~" H 2425 6550 50  0001 C CNN
	1    2425 6550
	1    0    0    -1  
$EndComp
Text Notes 2875 8025 2    79   ~ 0
Indicators\n
Wire Notes Line
	2900 6000 475  6000
Wire Wire Line
	2425 6400 2425 6300
Wire Wire Line
	2425 6300 2300 6300
$Comp
L mouse_v2-rescue:LED-Device D5
U 1 1 5F396452
P 2150 6825
F 0 "D5" H 2141 7041 50  0000 C CNN
F 1 "LED" H 2141 6950 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2150 6825 50  0001 C CNN
F 3 "~" H 2150 6825 50  0001 C CNN
	1    2150 6825
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R20
U 1 1 5F396459
P 2425 7075
F 0 "R20" H 2495 7121 50  0000 L CNN
F 1 "R" H 2495 7030 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2355 7075 50  0001 C CNN
F 3 "~" H 2425 7075 50  0001 C CNN
	1    2425 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 6925 2425 6825
Wire Wire Line
	2425 6825 2300 6825
$Comp
L mouse_v2-rescue:LED-Device D6
U 1 1 5F399A50
P 2150 7350
F 0 "D6" H 2141 7566 50  0000 C CNN
F 1 "LED" H 2141 7475 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2150 7350 50  0001 C CNN
F 3 "~" H 2150 7350 50  0001 C CNN
	1    2150 7350
	1    0    0    -1  
$EndComp
$Comp
L mouse_v2-rescue:R-Device R21
U 1 1 5F399A57
P 2425 7600
F 0 "R21" H 2495 7646 50  0000 L CNN
F 1 "R" H 2495 7555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2355 7600 50  0001 C CNN
F 3 "~" H 2425 7600 50  0001 C CNN
	1    2425 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 7450 2425 7350
Wire Wire Line
	2425 7350 2300 7350
Wire Wire Line
	2000 6300 1800 6300
Wire Wire Line
	1800 6300 1800 6825
Wire Wire Line
	2000 7350 1800 7350
Connection ~ 1800 7350
Wire Wire Line
	1800 7350 1800 7725
Wire Wire Line
	2000 6825 1800 6825
Connection ~ 1800 6825
Wire Wire Line
	1800 6825 1800 7350
Text Label 2500 6700 0    50   ~ 0
LED_1
Text Label 2500 7225 0    50   ~ 0
LED_2
Text Label 2500 7750 0    50   ~ 0
LED_3
Wire Wire Line
	2500 6700 2425 6700
Wire Wire Line
	2500 7225 2425 7225
Wire Wire Line
	2500 7750 2425 7750
Text Label 1800 7725 3    50   ~ 0
GND
$Comp
L mouse_v2-rescue:R-Device R18
U 1 1 5F3C1532
P 975 7150
F 0 "R18" H 905 7104 50  0000 R CNN
F 1 "R" H 905 7195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 905 7150 50  0001 C CNN
F 3 "~" H 975 7150 50  0001 C CNN
	1    975  7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	975  7000 975  6875
Text Label 975  7300 3    50   ~ 0
Buzzer
Text Label 1350 6975 0    50   ~ 0
GND
Wire Wire Line
	1175 6975 1175 6875
Wire Wire Line
	1175 6975 1350 6975
Text Label 7600 1425 2    50   ~ 0
LED_3
Text Label 7600 1325 2    50   ~ 0
LED_2
Text Label 7600 1525 2    50   ~ 0
LED_1
Text Label 7600 1225 2    50   ~ 0
Buzzer
Text Label 4100 8900 2    50   ~ 0
vBatt
Wire Wire Line
	4700 8900 4100 8900
$Comp
L Device:CP1 C3
U 1 1 5F6935C5
P 4125 5900
F 0 "C3" H 4010 5854 50  0000 R CNN
F 1 "100uF" H 4010 5945 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 4125 5900 50  0001 C CNN
F 3 "~" H 4125 5900 50  0001 C CNN
	1    4125 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5F697D50
P 3650 5900
F 0 "C1" H 3535 5854 50  0000 R CNN
F 1 "100uF" H 3535 5945 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 3650 5900 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 5750 4600 5675
Wire Wire Line
	4600 5675 4675 5675
Wire Wire Line
	4375 6325 4375 6700
Connection ~ 4375 6325
Connection ~ 4600 5675
Wire Wire Line
	3650 6050 3650 6325
Wire Wire Line
	3475 6325 3650 6325
Connection ~ 3650 6325
Wire Wire Line
	4125 6050 4125 6325
Wire Wire Line
	3650 6325 4125 6325
Connection ~ 4125 6325
Wire Wire Line
	4125 6325 4375 6325
Wire Wire Line
	3650 5675 3650 5750
Wire Wire Line
	4125 5750 4125 5675
Wire Wire Line
	3650 5675 4125 5675
Connection ~ 4125 5675
Wire Wire Line
	4125 5675 4600 5675
Wire Wire Line
	8350 4225 8100 4225
$EndSCHEMATC

EESchema Schematic File Version 4
LIBS:sp721
LIBS:phase_shift_sensor_proto_simple-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Theremin Phase Shift Sensor"
Date "2019-10-09"
Rev "v0.1"
Comp ""
Comment1 "Teensy 4 Theremin Project"
Comment2 "(c) Vadim Lopatin 2019"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2800 5600 2800 5500
Wire Wire Line
	2800 6600 2800 6700
$Comp
L power:GND #PWR014
U 1 1 5D9DE2DC
P 2800 6800
F 0 "#PWR014" H 2800 6550 50  0001 C CNN
F 1 "GND" H 2805 6627 50  0000 C CNN
F 2 "" H 2800 6800 50  0001 C CNN
F 3 "" H 2800 6800 50  0001 C CNN
	1    2800 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5D9DE30F
P 2800 5400
F 0 "#PWR010" H 2800 5250 50  0001 C CNN
F 1 "+3.3V" H 2815 5573 50  0000 C CNN
F 2 "" H 2800 5400 50  0001 C CNN
F 3 "" H 2800 5400 50  0001 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D9DEE40
P 8100 2100
F 0 "C1" H 8215 2146 50  0000 L CNN
F 1 "2.2pF" H 8215 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8138 1950 50  0001 C CNN
F 3 "~" H 8100 2100 50  0001 C CNN
	1    8100 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5D9E12F4
P 800 4000
F 0 "J4" H 906 4278 50  0000 C CNN
F 1 "SENSOR" H 906 4187 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 800 4000 50  0001 C CNN
F 3 "~" H 800 4000 50  0001 C CNN
	1    800  4000
	1    0    0    1   
$EndComp
Wire Wire Line
	1000 4000 2200 4000
Wire Wire Line
	1000 3800 1700 3800
Wire Wire Line
	1700 3800 1700 3500
Wire Wire Line
	1000 4100 1700 4100
Wire Wire Line
	1700 4100 1700 4300
$Comp
L power:GND #PWR06
U 1 1 5D9E3311
P 1700 4300
F 0 "#PWR06" H 1700 4050 50  0001 C CNN
F 1 "GND" H 1705 4127 50  0000 C CNN
F 2 "" H 1700 4300 50  0001 C CNN
F 3 "" H 1700 4300 50  0001 C CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
Text Label 1400 3800 0    50   ~ 0
VCC_5V
Text Label 1400 3900 0    50   ~ 0
REF_CLK
Text Label 1400 4000 0    50   ~ 0
OUT
Text Label 1400 4100 0    50   ~ 0
GND
$Comp
L sp721:sp721 U2
U 1 1 5D9E4310
P 6500 3500
F 0 "U2" H 6825 3765 50  0000 C CNN
F 1 "sp721" H 6825 3674 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6950 3700 50  0001 C CNN
F 3 "" H 6950 3700 50  0001 C CNN
	1    6500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D9E43AA
P 7600 3750
F 0 "C3" H 7715 3796 50  0000 L CNN
F 1 "0.1uF" H 7715 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7638 3600 50  0001 C CNN
F 3 "~" H 7600 3750 50  0001 C CNN
	1    7600 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D9E440E
P 3600 6150
F 0 "C6" H 3715 6196 50  0000 L CNN
F 1 "0.1uF" H 3715 6105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3638 6000 50  0001 C CNN
F 3 "~" H 3600 6150 50  0001 C CNN
	1    3600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3800 7400 4000
Wire Wire Line
	7600 3900 7600 4000
Wire Wire Line
	7600 4000 7400 4000
Connection ~ 7400 4000
Wire Wire Line
	7400 4000 7400 4200
Wire Wire Line
	7400 3300 7400 3500
Wire Wire Line
	7600 3600 7600 3500
Wire Wire Line
	7600 3500 7400 3500
Connection ~ 7400 3500
Wire Wire Line
	7400 3500 7400 3700
Wire Wire Line
	2800 6700 3600 6700
Connection ~ 2800 6700
Wire Wire Line
	2800 6700 2800 6800
Wire Wire Line
	3600 6300 3600 6700
Wire Wire Line
	3600 6000 3600 5500
Wire Wire Line
	3600 5500 2800 5500
Connection ~ 2800 5500
Wire Wire Line
	2800 5500 2800 5400
$Comp
L power:GND #PWR05
U 1 1 5D9E9E88
P 7400 4200
F 0 "#PWR05" H 7400 3950 50  0001 C CNN
F 1 "GND" H 7405 4027 50  0000 C CNN
F 2 "" H 7400 4200 50  0001 C CNN
F 3 "" H 7400 4200 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5D9E9EB1
P 7400 3300
F 0 "#PWR03" H 7400 3150 50  0001 C CNN
F 1 "+3.3V" H 7415 3473 50  0000 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3700 7400 3700
Wire Wire Line
	7150 3800 7400 3800
NoConn ~ 6500 3600
NoConn ~ 6500 3900
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D9FD8BA
P 9700 900
F 0 "J1" H 9672 780 50  0000 R CNN
F 1 "INDUCTOR_IN" H 9672 871 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 900 50  0001 C CNN
F 3 "~" H 9700 900 50  0001 C CNN
	1    9700 900 
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5D9FD952
P 9700 1350
F 0 "J2" H 9672 1230 50  0000 R CNN
F 1 "INDUCTOR_OUT" H 9672 1321 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 1350 50  0001 C CNN
F 3 "~" H 9700 1350 50  0001 C CNN
	1    9700 1350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5D9FD990
P 9700 2100
F 0 "J3" H 9672 1980 50  0000 R CNN
F 1 "ANTENNA" H 9672 2071 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 2100 50  0001 C CNN
F 3 "~" H 9700 2100 50  0001 C CNN
	1    9700 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 900  9300 800 
Wire Wire Line
	9300 800  9500 800 
Wire Wire Line
	9300 900  9500 900 
Wire Wire Line
	9300 1350 9500 1350
Wire Wire Line
	9500 1250 9300 1250
Wire Wire Line
	9300 1250 9300 1350
Wire Wire Line
	9500 2000 9300 2000
Wire Wire Line
	9300 2000 9300 2100
Wire Wire Line
	9300 2100 9500 2100
Wire Wire Line
	9300 1350 9300 2000
Connection ~ 9300 1350
Connection ~ 9300 2000
Connection ~ 9300 2100
$Comp
L power:GND #PWR011
U 1 1 5DA2AF11
P 8500 6000
F 0 "#PWR011" H 8500 5750 50  0001 C CNN
F 1 "GND" H 8505 5827 50  0000 C CNN
F 2 "" H 8500 6000 50  0001 C CNN
F 3 "" H 8500 6000 50  0001 C CNN
	1    8500 6000
	1    0    0    -1  
$EndComp
Text Notes 7750 1150 0    79   ~ 0
INDUCTOR_IN, INDUCTOR_OUT: air core coil, 4.27mH
Text Notes 9650 2250 0    79   ~ 0
To theremin antenna
Text Notes 850  750  0    79   ~ 0
Theremin phase shift sensor
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U3
U 1 1 5DD2AFDF
P 9200 5200
F 0 "U3" H 9200 4958 50  0000 C CNN
F 1 "REG_3V3" H 9200 5049 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 9200 5000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826C.pdf" H 9200 5200 50  0001 C CNN
	1    9200 5200
	1    0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5DD2E1A1
P 9800 5650
F 0 "C5" H 9915 5696 50  0000 L CNN
F 1 "1uF" H 9915 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9838 5500 50  0001 C CNN
F 3 "~" H 9800 5650 50  0001 C CNN
	1    9800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5800 9800 6000
$Comp
L Device:C C4
U 1 1 5DD314D9
P 8500 5650
F 0 "C4" H 8615 5696 50  0000 L CNN
F 1 "1uF" H 8615 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8538 5500 50  0001 C CNN
F 3 "~" H 8500 5650 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5800 8500 5900
Wire Wire Line
	9500 5200 9800 5200
Wire Wire Line
	9800 5200 9800 5500
Wire Wire Line
	8900 5200 8500 5200
Wire Wire Line
	8500 5200 8500 5500
$Comp
L power:GND #PWR012
U 1 1 5DD39AFC
P 9200 6000
F 0 "#PWR012" H 9200 5750 50  0001 C CNN
F 1 "GND" H 9205 5827 50  0000 C CNN
F 2 "" H 9200 6000 50  0001 C CNN
F 3 "" H 9200 6000 50  0001 C CNN
	1    9200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5500 9200 6000
$Comp
L power:GND #PWR013
U 1 1 5DD3B6B2
P 9800 6000
F 0 "#PWR013" H 9800 5750 50  0001 C CNN
F 1 "GND" H 9805 5827 50  0000 C CNN
F 2 "" H 9800 6000 50  0001 C CNN
F 3 "" H 9800 6000 50  0001 C CNN
	1    9800 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3900 2000 3900
$Comp
L 74xx:74HC04 U1
U 1 1 5DD5023B
P 1500 5200
F 0 "U1" H 1500 5517 50  0000 C CNN
F 1 "74HC04" H 1500 5426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 5200 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 1500 5200 50  0001 C CNN
	1    1500 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 2 1 5DD502AE
P 2900 3900
F 0 "U1" H 2900 4217 50  0000 C CNN
F 1 "74HC04" H 2900 4126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2900 3900 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 2900 3900 50  0001 C CNN
	2    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 3 1 5DD502FD
P 2900 2500
F 0 "U1" H 2900 2817 50  0000 C CNN
F 1 "74HC04" H 2900 2726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2900 2500 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 2900 2500 50  0001 C CNN
	3    2900 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 4 1 5DD50358
P 1500 5800
F 0 "U1" H 1500 6117 50  0000 C CNN
F 1 "74HC04" H 1500 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 5800 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 1500 5800 50  0001 C CNN
	4    1500 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 5 1 5DD503AF
P 1500 6400
F 0 "U1" H 1500 6717 50  0000 C CNN
F 1 "74HC04" H 1500 6626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 6400 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 1500 6400 50  0001 C CNN
	5    1500 6400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 6 1 5DD5081D
P 1500 7000
F 0 "U1" H 1500 7317 50  0000 C CNN
F 1 "74HC04" H 1500 7226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 7000 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 1500 7000 50  0001 C CNN
	6    1500 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U1
U 7 1 5DD50882
P 2800 6100
F 0 "U1" H 3030 6146 50  0000 L CNN
F 1 "74HC04" H 3030 6055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2800 6100 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74HC_HCT04.pdf" H 2800 6100 50  0001 C CNN
	7    2800 6100
	1    0    0    -1  
$EndComp
NoConn ~ 1800 5200
NoConn ~ 1800 5800
NoConn ~ 1800 6400
NoConn ~ 1800 7000
Wire Wire Line
	1200 5200 1100 5200
Wire Wire Line
	1100 5200 1100 5800
Wire Wire Line
	1100 5800 1200 5800
Connection ~ 1100 5800
Wire Wire Line
	1100 5800 1100 6400
Wire Wire Line
	1100 5200 1100 4900
Connection ~ 1100 5200
Wire Wire Line
	1200 7000 1100 7000
Wire Wire Line
	1100 6400 1200 6400
Connection ~ 1100 6400
Wire Wire Line
	1100 6400 1100 7000
$Comp
L power:+3.3V #PWR07
U 1 1 5DD5F993
P 1100 4900
F 0 "#PWR07" H 1100 4750 50  0001 C CNN
F 1 "+3.3V" H 1115 5073 50  0000 C CNN
F 2 "" H 1100 4900 50  0001 C CNN
F 3 "" H 1100 4900 50  0001 C CNN
	1    1100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2500 3300 2500
Wire Wire Line
	3300 2500 3300 3400
Wire Wire Line
	3300 3400 2500 3400
Wire Wire Line
	2500 3400 2500 4000
Wire Wire Line
	2000 1300 5700 1300
Wire Wire Line
	8250 2100 8450 2100
Wire Wire Line
	2000 1300 2000 2500
$Comp
L power:+3.3V #PWR09
U 1 1 5DDEB314
P 10050 5200
F 0 "#PWR09" H 10050 5050 50  0001 C CNN
F 1 "+3.3V" H 10065 5373 50  0000 C CNN
F 2 "" H 10050 5200 50  0001 C CNN
F 3 "" H 10050 5200 50  0001 C CNN
	1    10050 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5200 10050 5200
Connection ~ 9800 5200
$Comp
L power:+5V #PWR04
U 1 1 5DDFCFD3
P 1700 3500
F 0 "#PWR04" H 1700 3350 50  0001 C CNN
F 1 "+5V" H 1715 3673 50  0000 C CNN
F 2 "" H 1700 3500 50  0001 C CNN
F 3 "" H 1700 3500 50  0001 C CNN
	1    1700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5DDFD021
P 8250 5200
F 0 "#PWR08" H 8250 5050 50  0001 C CNN
F 1 "+5V" V 8265 5328 50  0000 L CNN
F 2 "" H 8250 5200 50  0001 C CNN
F 3 "" H 8250 5200 50  0001 C CNN
	1    8250 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 5200 8500 5200
Connection ~ 8500 5200
NoConn ~ 6500 3500
NoConn ~ 6500 3800
$Comp
L Device:C C2
U 1 1 5DD627FE
P 8450 2500
F 0 "C2" H 8565 2546 50  0000 L CNN
F 1 "0.1pF" H 8565 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8488 2350 50  0001 C CNN
F 3 "~" H 8450 2500 50  0001 C CNN
	1    8450 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 2350 8450 2100
Connection ~ 8450 2100
Wire Wire Line
	8450 2650 8450 2700
$Comp
L power:GND #PWR01
U 1 1 5DD680E3
P 8450 2700
F 0 "#PWR01" H 8450 2450 50  0001 C CNN
F 1 "GND" H 8455 2527 50  0000 C CNN
F 2 "" H 8450 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0001 C CNN
	1    8450 2700
	1    0    0    -1  
$EndComp
Text Notes 8150 2650 0    50   ~ 0
unused
Wire Wire Line
	6250 900  6250 3900
Wire Wire Line
	6500 4000 6250 4000
Wire Wire Line
	6500 3700 5700 3700
Wire Wire Line
	2000 2500 2400 2500
$Comp
L Device:R R2
U 1 1 5DDC8BA9
P 6900 900
F 0 "R2" V 6693 900 50  0000 C CNN
F 1 "10" V 6784 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 900 50  0001 C CNN
F 3 "~" H 6900 900 50  0001 C CNN
	1    6900 900 
	0    -1   -1   0   
$EndComp
Connection ~ 6250 3900
Wire Wire Line
	6250 3900 6250 4000
Text Notes 5600 4300 0    50   ~ 0
ESD protection is mandatory!\nThere is 200V voltage swing on antenna!!!
Wire Wire Line
	5700 1300 5700 2100
$Comp
L Device:R R5
U 1 1 5DDC4CBD
P 6800 2100
F 0 "R5" V 6593 2100 50  0000 C CNN
F 1 "100" V 6684 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 2100 50  0001 C CNN
F 3 "~" H 6800 2100 50  0001 C CNN
	1    6800 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DDC4F30
P 2400 2250
F 0 "R3" V 2193 2250 50  0000 C CNN
F 1 "1M" V 2284 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 2250 50  0001 C CNN
F 3 "~" H 2400 2250 50  0001 C CNN
	1    2400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DDC4FB9
P 2400 2750
F 0 "R4" V 2193 2750 50  0000 C CNN
F 1 "1M" V 2284 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 2750 50  0001 C CNN
F 3 "~" H 2400 2750 50  0001 C CNN
	1    2400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5DDC506B
P 2400 2000
F 0 "#PWR015" H 2400 1850 50  0001 C CNN
F 1 "+3.3V" H 2415 2173 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "" H 2400 2000 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5DDC50A6
P 2400 3000
F 0 "#PWR016" H 2400 2750 50  0001 C CNN
F 1 "GND" H 2405 2827 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2000 2400 2100
Wire Wire Line
	2400 2400 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	2400 2500 2600 2500
Wire Wire Line
	2400 2500 2400 2600
Wire Wire Line
	2400 2900 2400 3000
$Comp
L Device:C C7
U 1 1 5DDCCEBE
P 7700 2100
F 0 "C7" H 7815 2146 50  0000 L CNN
F 1 "2.2pF" H 7815 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7738 1950 50  0001 C CNN
F 3 "~" H 7700 2100 50  0001 C CNN
	1    7700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2100 5700 2100
Connection ~ 5700 2100
Wire Wire Line
	5700 2100 5700 3700
Wire Wire Line
	6950 2100 7250 2100
Wire Wire Line
	7850 2100 7950 2100
Text Notes 6500 800  0    50   ~ 0
Q damping R: 10..100 Ohm
Wire Wire Line
	8450 2100 9300 2100
Wire Wire Line
	3200 3900 6250 3900
Wire Wire Line
	6250 900  6750 900 
Connection ~ 9300 900 
Wire Wire Line
	7050 900  9300 900 
$Comp
L Connector:TestPoint TP3
U 1 1 5DDD03BA
P 2200 4300
F 0 "TP3" H 2142 4327 50  0000 R CNN
F 1 "OUT" H 2142 4418 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2400 4300 50  0001 C CNN
F 3 "~" H 2400 4300 50  0001 C CNN
	1    2200 4300
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5DDD0440
P 1800 2500
F 0 "TP1" V 1995 2574 50  0000 C CNN
F 1 "OUT_NOBUF" V 1904 2574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2000 2500 50  0001 C CNN
F 3 "~" H 2000 2500 50  0001 C CNN
	1    1800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DDD04E7
P 2000 3700
F 0 "TP2" H 2058 3820 50  0000 L CNN
F 1 "REF_CLK" H 2058 3729 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2200 3700 50  0001 C CNN
F 3 "~" H 2200 3700 50  0001 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2500 2000 2500
Connection ~ 2000 2500
Wire Wire Line
	2000 3700 2000 3900
Connection ~ 2000 3900
Wire Wire Line
	2000 3900 2600 3900
Wire Wire Line
	2200 4000 2200 4300
Connection ~ 2200 4000
Wire Wire Line
	2200 4000 2500 4000
$Comp
L Connector:TestPoint TP5
U 1 1 5DDD88D2
P 8500 5050
F 0 "TP5" H 8558 5170 50  0000 L CNN
F 1 "+5V" H 8558 5079 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8700 5050 50  0001 C CNN
F 3 "~" H 8700 5050 50  0001 C CNN
	1    8500 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5DDD895C
P 9800 5050
F 0 "TP6" H 9858 5170 50  0000 L CNN
F 1 "+3.3V" H 9858 5079 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10000 5050 50  0001 C CNN
F 3 "~" H 10000 5050 50  0001 C CNN
	1    9800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5050 8500 5200
Wire Wire Line
	9800 5050 9800 5200
$Comp
L Connector:TestPoint TP4
U 1 1 5DDE0887
P 8100 5900
F 0 "TP4" V 8295 5974 50  0000 C CNN
F 1 "GND" V 8204 5974 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8300 5900 50  0001 C CNN
F 3 "~" H 8300 5900 50  0001 C CNN
	1    8100 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 5900 8500 5900
Connection ~ 8500 5900
Wire Wire Line
	8500 5900 8500 6000
$Comp
L Device:C C8
U 1 1 5DDE5626
P 7250 2500
F 0 "C8" H 7365 2546 50  0000 L CNN
F 1 "6.8pF" H 7365 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7288 2350 50  0001 C CNN
F 3 "~" H 7250 2500 50  0001 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
Text Notes 6950 2650 0    50   ~ 0
unused
Wire Wire Line
	7250 2650 7250 2700
$Comp
L power:GND #PWR02
U 1 1 5DDE9A6B
P 7250 2700
F 0 "#PWR02" H 7250 2450 50  0001 C CNN
F 1 "GND" H 7255 2527 50  0000 C CNN
F 2 "" H 7250 2700 50  0001 C CNN
F 3 "" H 7250 2700 50  0001 C CNN
	1    7250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2100 7250 2350
Connection ~ 7250 2100
Wire Wire Line
	7250 2100 7550 2100
$EndSCHEMATC

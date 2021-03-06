EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
L Connector:Conn_01x03_Female J2
U 1 1 5DDB7500
P 3200 2000
F 0 "J2" V 3250 2250 50  0000 R CNN
F 1 "cat5" V 3250 2150 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3200 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
	1    3200 2000
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5DDB8A39
P 3000 3000
F 0 "Q1" H 3191 3046 50  0000 L CNN
F 1 "2N2222A" H 3191 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 3200 2925 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3000 3000 50  0001 L CNN
	1    3000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DDBAC68
P 3100 3450
F 0 "#PWR0101" H 3100 3200 50  0001 C CNN
F 1 "GND" H 3105 3277 50  0000 C CNN
F 2 "" H 3100 3450 50  0001 C CNN
F 3 "" H 3100 3450 50  0001 C CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DDBC4C5
P 3200 2650
F 0 "R2" V 3100 2650 50  0000 C CNN
F 1 "470" V 3200 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3130 2650 50  0001 C CNN
F 3 "~" H 3200 2650 50  0001 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DDBDDDA
P 2400 3000
F 0 "R1" V 2193 3000 50  0000 C CNN
F 1 "1k" V 2284 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2330 3000 50  0001 C CNN
F 3 "~" H 2400 3000 50  0001 C CNN
	1    2400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3200 3100 3400
Wire Wire Line
	2800 3000 2550 3000
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5DDC047E
P 2150 3550
F 0 "J1" V 2304 3362 50  0000 R CNN
F 1 "in_out" V 2213 3362 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2150 3550 50  0001 C CNN
F 3 "~" H 2150 3550 50  0001 C CNN
	1    2150 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3000 2250 3350
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DDC324E
P 3500 3600
F 0 "J3" V 3654 3412 50  0000 R CNN
F 1 "G_5v" V 3563 3412 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 3600 50  0001 C CNN
F 3 "~" H 3500 3600 50  0001 C CNN
	1    3500 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3400 3100 3400
Connection ~ 3100 3400
Wire Wire Line
	3100 3400 3100 3450
$Comp
L power:+5V #PWR0104
U 1 1 5DDC44DC
P 3600 3250
F 0 "#PWR0104" H 3600 3100 50  0001 C CNN
F 1 "+5V" H 3615 3423 50  0000 C CNN
F 2 "" H 3600 3250 50  0001 C CNN
F 3 "" H 3600 3250 50  0001 C CNN
	1    3600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3250 3600 3400
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 5DDCAF64
P 1550 2400
F 0 "U1" H 1320 2446 50  0000 R CNN
F 1 "DS18B20" H 1320 2355 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 550 2150 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 1400 2650 50  0001 C CNN
	1    1550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5DDCD932
P 3450 4350
F 0 "#PWR0105" H 3450 4200 50  0001 C CNN
F 1 "+3.3V" H 3465 4523 50  0000 C CNN
F 2 "" H 3450 4350 50  0001 C CNN
F 3 "" H 3450 4350 50  0001 C CNN
	1    3450 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 4150 3450 4350
$Comp
L power:+3.3V #PWR0106
U 1 1 5DDCF127
P 1550 1850
F 0 "#PWR0106" H 1550 1700 50  0001 C CNN
F 1 "+3.3V" H 1565 2023 50  0000 C CNN
F 2 "" H 1550 1850 50  0001 C CNN
F 3 "" H 1550 1850 50  0001 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DDD068D
P 1850 2250
F 0 "R3" H 1920 2296 50  0000 L CNN
F 1 "4.7k" H 1920 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1780 2250 50  0001 C CNN
F 3 "~" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DDD147F
P 1550 2900
F 0 "#PWR0107" H 1550 2650 50  0001 C CNN
F 1 "GND" H 1555 2727 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3350 2150 2400
Wire Wire Line
	2150 2400 1850 2400
Connection ~ 1850 2400
Wire Wire Line
	1850 2100 1550 2100
Wire Wire Line
	1550 2100 1550 1850
Connection ~ 1550 2100
Wire Wire Line
	1550 2700 1550 2900
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5DDD2C9F
P 3600 4350
F 0 "J4" V 3754 4262 50  0000 R CNN
F 1 "3.3v" V 3663 4262 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3600 4350 50  0001 C CNN
F 3 "~" H 3600 4350 50  0001 C CNN
	1    3600 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 4150 3450 4150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DDD8511
P 3600 4050
F 0 "#FLG0102" H 3600 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 4223 50  0000 C CNN
F 2 "" H 3600 4050 50  0001 C CNN
F 3 "~" H 3600 4050 50  0001 C CNN
	1    3600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4050 3600 4150
Connection ~ 3600 4150
Wire Wire Line
	3100 2200 3100 2800
Wire Wire Line
	3200 2200 3200 2300
Wire Wire Line
	3200 2800 3100 2800
Connection ~ 3100 2800
$Comp
L power:+5V #PWR0102
U 1 1 5DDEBEF7
P 3200 2300
F 0 "#PWR0102" H 3200 2150 50  0001 C CNN
F 1 "+5V" V 3215 2428 50  0000 L CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	0    1    1    0   
$EndComp
Connection ~ 3200 2300
Wire Wire Line
	3200 2300 3200 2500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DDECB67
P 3200 2300
F 0 "#FLG0101" H 3200 2375 50  0001 C CNN
F 1 "PWR_FLAG" V 3300 2400 50  0000 L CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "~" H 3200 2300 50  0001 C CNN
	1    3200 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DDEDB1D
P 3300 2200
F 0 "#PWR0103" H 3300 1950 50  0001 C CNN
F 1 "GND" V 3305 2072 50  0000 R CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5DDEEEAD
P 3300 2200
F 0 "#FLG0103" H 3300 2275 50  0001 C CNN
F 1 "PWR_FLAG" V 3200 2300 50  0000 L CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "~" H 3300 2200 50  0001 C CNN
	1    3300 2200
	0    1    1    0   
$EndComp
Connection ~ 3300 2200
$EndSCHEMATC

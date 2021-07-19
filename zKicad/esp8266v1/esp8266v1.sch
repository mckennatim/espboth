EESchema Schematic File Version 4
LIBS:esp8266v1-cache
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
L Connector:Screw_Terminal_01x03 J4
U 1 1 5D548644
P 8496 1250
F 0 "J4" V 8596 1200 50  0000 R CNN
F 1 "Inp1" V 8596 1400 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 8496 1250 50  0001 C CNN
F 3 "~" H 8496 1250 50  0001 C CNN
	1    8496 1250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 5D54C55D
P 8796 1250
F 0 "J5" V 8896 1200 50  0000 R CNN
F 1 "Inp2" V 8896 1400 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 8796 1250 50  0001 C CNN
F 3 "~" H 8796 1250 50  0001 C CNN
	1    8796 1250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 5D54DED6
P 9096 1250
F 0 "J8" V 9196 1200 50  0000 R CNN
F 1 "Inp3" V 9196 1400 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9096 1250 50  0001 C CNN
F 3 "~" H 9096 1250 50  0001 C CNN
	1    9096 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D550410
P 8696 1450
F 0 "#PWR0101" H 8696 1200 50  0001 C CNN
F 1 "GND" H 8701 1277 50  0000 C CNN
F 2 "" H 8696 1450 50  0001 C CNN
F 3 "" H 8696 1450 50  0001 C CNN
	1    8696 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D551A99
P 8996 1450
F 0 "#PWR0102" H 8996 1200 50  0001 C CNN
F 1 "GND" H 9001 1277 50  0000 C CNN
F 2 "" H 8996 1450 50  0001 C CNN
F 3 "" H 8996 1450 50  0001 C CNN
	1    8996 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D54F0B9
P 8396 1450
F 0 "#PWR0103" H 8396 1200 50  0001 C CNN
F 1 "GND" H 8401 1277 50  0000 C CNN
F 2 "" H 8396 1450 50  0001 C CNN
F 3 "" H 8396 1450 50  0001 C CNN
	1    8396 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5D5546A6
P 9796 1450
F 0 "#PWR0104" H 9796 1300 50  0001 C CNN
F 1 "+3.3V" H 9811 1623 50  0000 C CNN
F 2 "" H 9796 1450 50  0001 C CNN
F 3 "" H 9796 1450 50  0001 C CNN
	1    9796 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9496 1700 9196 1700
Wire Wire Line
	8596 1700 8596 1450
Wire Wire Line
	9196 1450 9196 1700
Connection ~ 9196 1700
Wire Wire Line
	9196 1700 8896 1700
Wire Wire Line
	8896 1450 8896 1700
Connection ~ 8896 1700
Wire Wire Line
	8896 1700 8596 1700
$Comp
L Device:R R11
U 1 1 5D55994C
P 9796 1850
F 0 "R11" H 9866 1896 50  0000 L CNN
F 1 "4.7k" H 9866 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9726 1850 50  0001 C CNN
F 3 "~" H 9796 1850 50  0001 C CNN
	1    9796 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8496 1450 8496 2000
Wire Wire Line
	8796 1450 8796 2000
Connection ~ 8796 2000
Wire Wire Line
	8796 2000 9096 2000
Wire Wire Line
	9096 1450 9096 2000
Connection ~ 9096 2000
Wire Wire Line
	9096 2000 9396 2000
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 5D5660B3
P 9396 1250
F 0 "J9" V 9496 1200 50  0000 R CNN
F 1 "Inp4" V 9496 1400 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9396 1250 50  0001 C CNN
F 3 "~" H 9396 1250 50  0001 C CNN
	1    9396 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D5660B9
P 9296 1450
F 0 "#PWR0105" H 9296 1200 50  0001 C CNN
F 1 "GND" H 9301 1277 50  0000 C CNN
F 2 "" H 9296 1450 50  0001 C CNN
F 3 "" H 9296 1450 50  0001 C CNN
	1    9296 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9496 1450 9496 1700
Wire Wire Line
	9396 1450 9396 2000
Wire Wire Line
	9496 1700 9796 1700
Connection ~ 9496 1700
Connection ~ 9396 2000
Wire Wire Line
	9396 2000 9796 2000
Wire Wire Line
	8496 2000 8796 2000
Connection ~ 9796 1700
Wire Wire Line
	9796 1450 9796 1700
Text Notes 8646 1050 0    50   ~ 0
multi-ds18b20 temp || 1DHTw/oR\n
Connection ~ 8496 2000
Wire Wire Line
	4600 2250 5150 2250
Wire Wire Line
	4600 2550 5150 2550
Wire Wire Line
	4600 2650 5150 2650
Wire Wire Line
	3600 2250 2950 2250
Wire Wire Line
	3600 2350 2950 2350
$Comp
L power:+3.3V #PWR0115
U 1 1 5D67D0F6
P 4600 3000
F 0 "#PWR0115" H 4600 2850 50  0001 C CNN
F 1 "+3.3V" H 4615 3173 50  0000 C CNN
F 2 "" H 4600 3000 50  0001 C CNN
F 3 "" H 4600 3000 50  0001 C CNN
	1    4600 3000
	-1   0    0    1   
$EndComp
$Comp
L esp8266v1-rescue:WeMos_mini-Wemos_D1_Mini U1
U 1 1 5D65C6BA
P 4100 2400
F 0 "U1" H 4100 1557 60  0000 C CNN
F 1 "WeMos_mini" H 4100 1663 60  0000 C CNN
F 2 "Wemos_D1_Mini:D1_mini_board" H 4650 1700 60  0001 C CNN
F 3 "http://www.wemos.cc/Products/d1_mini.html" H 4100 1769 60  0000 C CNN
	1    4100 2400
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5D6849DA
P 3600 3050
F 0 "#PWR0116" H 3600 2900 50  0001 C CNN
F 1 "+5V" H 3615 3223 50  0000 C CNN
F 2 "" H 3600 3050 50  0001 C CNN
F 3 "" H 3600 3050 50  0001 C CNN
	1    3600 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D685606
P 3400 2900
F 0 "#PWR0117" H 3400 2650 50  0001 C CNN
F 1 "GND" H 3405 2727 50  0000 C CNN
F 2 "" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2750 4600 3000
Wire Wire Line
	3600 2750 3600 3050
Wire Wire Line
	3600 2650 3400 2650
Wire Wire Line
	3400 2650 3400 2900
Text Label 3050 2350 0    50   ~ 0
inD2ds18b20
Text Label 4650 2250 0    50   ~ 0
outD0temp2
Text Label 4650 2350 0    50   ~ 0
inD5dht
Wire Wire Line
	4600 2450 5150 2450
Text Label 4650 2650 0    50   ~ 0
outD8timr1
Text Label 4650 2550 0    50   ~ 0
outD7timr2
Text Label 4650 2450 0    50   ~ 0
outD6timr3
Text Label 3050 2250 0    50   ~ 0
outD1temp1
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5D6B14AC
P 4050 4800
F 0 "J1" V 4150 4750 50  0000 R CNN
F 1 "Out3" V 4150 4950 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 4050 4800 50  0001 C CNN
F 3 "~" H 4050 4800 50  0001 C CNN
	1    4050 4800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5D6B14B2
P 3950 5700
F 0 "Q1" H 4140 5746 50  0000 L CNN
F 1 "2N2219" H 4140 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 4150 5625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3950 5700 50  0001 L CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D6B14B8
P 3600 5700
F 0 "R1" H 3670 5746 50  0000 L CNN
F 1 "1k" H 3670 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 5700 50  0001 C CNN
F 3 "~" H 3600 5700 50  0001 C CNN
	1    3600 5700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5D6B14BE
P 4250 5300
F 0 "D1" H 4350 5150 50  0000 C CNN
F 1 "DIODE" H 4150 5150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 4250 5300 50  0001 C CNN
F 3 "~" H 4250 5300 50  0001 C CNN
	1    4250 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 5000 4050 5500
Wire Wire Line
	4050 5500 4250 5500
Connection ~ 4050 5500
Wire Wire Line
	4250 5100 4250 5000
Wire Wire Line
	4250 5000 4150 5000
$Comp
L power:GND #PWR0118
U 1 1 5D6B14C9
P 4050 6100
F 0 "#PWR0118" H 4050 5850 50  0001 C CNN
F 1 "GND" H 4055 5927 50  0000 C CNN
F 2 "" H 4050 6100 50  0001 C CNN
F 3 "" H 4050 6100 50  0001 C CNN
	1    4050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5900 4050 6100
Wire Wire Line
	3450 5700 3100 5700
$Comp
L power:+5V #PWR0119
U 1 1 5D6B14D1
P 4450 4850
F 0 "#PWR0119" H 4450 4700 50  0001 C CNN
F 1 "+5V" H 4465 5023 50  0000 C CNN
F 2 "" H 4450 4850 50  0001 C CNN
F 3 "" H 4450 4850 50  0001 C CNN
	1    4450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4850 4450 5000
Wire Wire Line
	4450 5000 4250 5000
Connection ~ 4250 5000
$Comp
L power:GND #PWR0120
U 1 1 5D6B14DA
P 3950 5150
F 0 "#PWR0120" H 3950 4900 50  0001 C CNN
F 1 "GND" H 3955 4977 50  0000 C CNN
F 2 "" H 3950 5150 50  0001 C CNN
F 3 "" H 3950 5150 50  0001 C CNN
	1    3950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5000 3950 5150
$Comp
L Device:LED D2
U 1 1 5D6B14E1
P 5000 5250
F 0 "D2" V 5039 5133 50  0000 R CNN
F 1 "LED" V 4948 5133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 5000 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
	1    5000 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D6B14E7
P 4750 5500
F 0 "R2" V 4543 5500 50  0000 C CNN
F 1 "150" V 4634 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 5500 50  0001 C CNN
F 3 "~" H 4750 5500 50  0001 C CNN
	1    4750 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5000 5000 5000
Wire Wire Line
	5000 5000 5000 5100
Connection ~ 4450 5000
Wire Wire Line
	5000 5400 5000 5500
Wire Wire Line
	5000 5500 4900 5500
Wire Wire Line
	4600 5500 4250 5500
Connection ~ 4250 5500
Text Label 3100 5700 0    50   ~ 0
outD7timr2
NoConn ~ 3600 2050
NoConn ~ 3600 2150
NoConn ~ 3600 2450
NoConn ~ 3600 2550
NoConn ~ 4600 2050
NoConn ~ 4600 2150
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D75B48B
P 3400 3350
F 0 "#FLG01" H 3400 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 3523 50  0000 C CNN
F 2 "" H 3400 3350 50  0001 C CNN
F 3 "~" H 3400 3350 50  0001 C CNN
	1    3400 3350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D75BF79
P 3600 3350
F 0 "#FLG02" H 3600 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 3523 50  0000 C CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "~" H 3600 3350 50  0001 C CNN
	1    3600 3350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D75CBE8
P 4600 3400
F 0 "#FLG03" H 4600 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 3573 50  0000 C CNN
F 2 "" H 4600 3400 50  0001 C CNN
F 3 "~" H 4600 3400 50  0001 C CNN
	1    4600 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 3350 3400 2900
Connection ~ 3400 2900
Wire Wire Line
	3600 3350 3600 3050
Connection ~ 3600 3050
Wire Wire Line
	4600 3400 4600 3000
Connection ~ 4600 3000
Text Label 7900 2000 0    50   ~ 0
inD2ds18b20
Wire Wire Line
	7900 2000 8496 2000
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5D7BFD9A
P 6900 4800
F 0 "J3" V 7000 4750 50  0000 R CNN
F 1 "Out4" V 7000 4950 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 6900 4800 50  0001 C CNN
F 3 "~" H 6900 4800 50  0001 C CNN
	1    6900 4800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q3
U 1 1 5D7BFDA0
P 6800 5700
F 0 "Q3" H 6990 5746 50  0000 L CNN
F 1 "2N2219" H 6990 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 7000 5625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6800 5700 50  0001 L CNN
	1    6800 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D7BFDA6
P 6450 5700
F 0 "R4" H 6520 5746 50  0000 L CNN
F 1 "1k" H 6520 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 5700 50  0001 C CNN
F 3 "~" H 6450 5700 50  0001 C CNN
	1    6450 5700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 5D7BFDAC
P 7100 5300
F 0 "D4" H 7200 5150 50  0000 C CNN
F 1 "DIODE" H 7000 5150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 7100 5300 50  0001 C CNN
F 3 "~" H 7100 5300 50  0001 C CNN
	1    7100 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 5000 6900 5500
Wire Wire Line
	6900 5500 7100 5500
Connection ~ 6900 5500
Wire Wire Line
	7100 5100 7100 5000
Wire Wire Line
	7100 5000 7000 5000
$Comp
L power:GND #PWR04
U 1 1 5D7BFDB7
P 6900 6100
F 0 "#PWR04" H 6900 5850 50  0001 C CNN
F 1 "GND" H 6905 5927 50  0000 C CNN
F 2 "" H 6900 6100 50  0001 C CNN
F 3 "" H 6900 6100 50  0001 C CNN
	1    6900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5900 6900 6100
Wire Wire Line
	6300 5700 5950 5700
$Comp
L power:+5V #PWR06
U 1 1 5D7BFDBF
P 7300 4850
F 0 "#PWR06" H 7300 4700 50  0001 C CNN
F 1 "+5V" H 7315 5023 50  0000 C CNN
F 2 "" H 7300 4850 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4850 7300 5000
Wire Wire Line
	7300 5000 7100 5000
Connection ~ 7100 5000
$Comp
L power:GND #PWR02
U 1 1 5D7BFDC8
P 6800 5150
F 0 "#PWR02" H 6800 4900 50  0001 C CNN
F 1 "GND" H 6805 4977 50  0000 C CNN
F 2 "" H 6800 5150 50  0001 C CNN
F 3 "" H 6800 5150 50  0001 C CNN
	1    6800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5000 6800 5150
$Comp
L Device:LED D6
U 1 1 5D7BFDCF
P 7850 5250
F 0 "D6" V 7889 5133 50  0000 R CNN
F 1 "LED" V 7798 5133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7850 5250 50  0001 C CNN
F 3 "~" H 7850 5250 50  0001 C CNN
	1    7850 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D7BFDD5
P 7600 5500
F 0 "R6" V 7393 5500 50  0000 C CNN
F 1 "150" V 7484 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 5500 50  0001 C CNN
F 3 "~" H 7600 5500 50  0001 C CNN
	1    7600 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5000 7850 5000
Wire Wire Line
	7850 5000 7850 5100
Connection ~ 7300 5000
Wire Wire Line
	7850 5400 7850 5500
Wire Wire Line
	7850 5500 7750 5500
Wire Wire Line
	7450 5500 7100 5500
Connection ~ 7100 5500
Text Label 5950 5700 0    50   ~ 0
outD6timr3
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 5D7C7063
P 9400 4800
F 0 "J7" V 9500 4750 50  0000 R CNN
F 1 "Out5" V 9500 4950 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9400 4800 50  0001 C CNN
F 3 "~" H 9400 4800 50  0001 C CNN
	1    9400 4800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q5
U 1 1 5D7C7069
P 9300 5700
F 0 "Q5" H 9490 5746 50  0000 L CNN
F 1 "2N2219" H 9490 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 9500 5625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 9300 5700 50  0001 L CNN
	1    9300 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D7C706F
P 8950 5700
F 0 "R8" H 9020 5746 50  0000 L CNN
F 1 "1k" H 9020 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 5700 50  0001 C CNN
F 3 "~" H 8950 5700 50  0001 C CNN
	1    8950 5700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D8
U 1 1 5D7C7075
P 9600 5300
F 0 "D8" H 9700 5150 50  0000 C CNN
F 1 "DIODE" H 9500 5150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 9600 5300 50  0001 C CNN
F 3 "~" H 9600 5300 50  0001 C CNN
	1    9600 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5000 9400 5500
Wire Wire Line
	9400 5500 9600 5500
Connection ~ 9400 5500
Wire Wire Line
	9600 5100 9600 5000
Wire Wire Line
	9600 5000 9500 5000
$Comp
L power:GND #PWR010
U 1 1 5D7C7080
P 9400 6100
F 0 "#PWR010" H 9400 5850 50  0001 C CNN
F 1 "GND" H 9405 5927 50  0000 C CNN
F 2 "" H 9400 6100 50  0001 C CNN
F 3 "" H 9400 6100 50  0001 C CNN
	1    9400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5900 9400 6100
Wire Wire Line
	8800 5700 8450 5700
$Comp
L power:+5V #PWR012
U 1 1 5D7C7088
P 9800 4850
F 0 "#PWR012" H 9800 4700 50  0001 C CNN
F 1 "+5V" H 9815 5023 50  0000 C CNN
F 2 "" H 9800 4850 50  0001 C CNN
F 3 "" H 9800 4850 50  0001 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4850 9800 5000
Wire Wire Line
	9800 5000 9600 5000
Connection ~ 9600 5000
$Comp
L power:GND #PWR08
U 1 1 5D7C7091
P 9300 5150
F 0 "#PWR08" H 9300 4900 50  0001 C CNN
F 1 "GND" H 9305 4977 50  0000 C CNN
F 2 "" H 9300 5150 50  0001 C CNN
F 3 "" H 9300 5150 50  0001 C CNN
	1    9300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5000 9300 5150
$Comp
L Device:LED D10
U 1 1 5D7C7098
P 10350 5250
F 0 "D10" V 10389 5133 50  0000 R CNN
F 1 "LED" V 10298 5133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 10350 5250 50  0001 C CNN
F 3 "~" H 10350 5250 50  0001 C CNN
	1    10350 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5D7C709E
P 10100 5500
F 0 "R10" V 9893 5500 50  0000 C CNN
F 1 "150" V 9984 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 5500 50  0001 C CNN
F 3 "~" H 10100 5500 50  0001 C CNN
	1    10100 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5000 10350 5000
Wire Wire Line
	10350 5000 10350 5100
Connection ~ 9800 5000
Wire Wire Line
	10350 5400 10350 5500
Wire Wire Line
	10350 5500 10250 5500
Wire Wire Line
	9950 5500 9600 5500
Connection ~ 9600 5500
Text Label 8450 5700 0    50   ~ 0
outD0temp2
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5D7D8D26
P 6900 2800
F 0 "J2" V 7000 2750 50  0000 R CNN
F 1 "Out1" V 7000 2950 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 6900 2800 50  0001 C CNN
F 3 "~" H 6900 2800 50  0001 C CNN
	1    6900 2800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5D7D8D2C
P 6800 3700
F 0 "Q2" H 6990 3746 50  0000 L CNN
F 1 "2N2219" H 6990 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 7000 3625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6800 3700 50  0001 L CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D7D8D32
P 6450 3700
F 0 "R3" H 6520 3746 50  0000 L CNN
F 1 "1k" H 6520 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 3700 50  0001 C CNN
F 3 "~" H 6450 3700 50  0001 C CNN
	1    6450 3700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D3
U 1 1 5D7D8D38
P 7100 3300
F 0 "D3" H 7200 3150 50  0000 C CNN
F 1 "DIODE" H 7000 3150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 7100 3300 50  0001 C CNN
F 3 "~" H 7100 3300 50  0001 C CNN
	1    7100 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 3000 6900 3500
Wire Wire Line
	6900 3500 7100 3500
Connection ~ 6900 3500
Wire Wire Line
	7100 3100 7100 3000
Wire Wire Line
	7100 3000 7000 3000
$Comp
L power:GND #PWR03
U 1 1 5D7D8D43
P 6900 4100
F 0 "#PWR03" H 6900 3850 50  0001 C CNN
F 1 "GND" H 6905 3927 50  0000 C CNN
F 2 "" H 6900 4100 50  0001 C CNN
F 3 "" H 6900 4100 50  0001 C CNN
	1    6900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3900 6900 4100
Wire Wire Line
	6300 3700 5950 3700
$Comp
L power:+5V #PWR05
U 1 1 5D7D8D4B
P 7300 2850
F 0 "#PWR05" H 7300 2700 50  0001 C CNN
F 1 "+5V" H 7315 3023 50  0000 C CNN
F 2 "" H 7300 2850 50  0001 C CNN
F 3 "" H 7300 2850 50  0001 C CNN
	1    7300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2850 7300 3000
Wire Wire Line
	7300 3000 7100 3000
Connection ~ 7100 3000
$Comp
L power:GND #PWR01
U 1 1 5D7D8D54
P 6800 3150
F 0 "#PWR01" H 6800 2900 50  0001 C CNN
F 1 "GND" H 6805 2977 50  0000 C CNN
F 2 "" H 6800 3150 50  0001 C CNN
F 3 "" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6800 3150
$Comp
L Device:LED D5
U 1 1 5D7D8D5B
P 7850 3250
F 0 "D5" V 7889 3133 50  0000 R CNN
F 1 "LED" V 7798 3133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7850 3250 50  0001 C CNN
F 3 "~" H 7850 3250 50  0001 C CNN
	1    7850 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D7D8D61
P 7600 3500
F 0 "R5" V 7393 3500 50  0000 C CNN
F 1 "150" V 7484 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 3500 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7600 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3000 7850 3000
Wire Wire Line
	7850 3000 7850 3100
Connection ~ 7300 3000
Wire Wire Line
	7850 3400 7850 3500
Wire Wire Line
	7850 3500 7750 3500
Wire Wire Line
	7450 3500 7100 3500
Connection ~ 7100 3500
Text Label 5950 3700 0    50   ~ 0
outD1temp1
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 5D7DF888
P 9400 2800
F 0 "J6" V 9500 2750 50  0000 R CNN
F 1 "Out2" V 9500 2950 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9400 2800 50  0001 C CNN
F 3 "~" H 9400 2800 50  0001 C CNN
	1    9400 2800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q4
U 1 1 5D7DF88E
P 9300 3700
F 0 "Q4" H 9490 3746 50  0000 L CNN
F 1 "2N2219" H 9490 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 9500 3625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 9300 3700 50  0001 L CNN
	1    9300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D7DF894
P 8950 3700
F 0 "R7" H 9020 3746 50  0000 L CNN
F 1 "1k" H 9020 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 3700 50  0001 C CNN
F 3 "~" H 8950 3700 50  0001 C CNN
	1    8950 3700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D7
U 1 1 5D7DF89A
P 9600 3300
F 0 "D7" H 9700 3150 50  0000 C CNN
F 1 "DIODE" H 9500 3150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 9600 3300 50  0001 C CNN
F 3 "~" H 9600 3300 50  0001 C CNN
	1    9600 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 3000 9400 3500
Wire Wire Line
	9400 3500 9600 3500
Connection ~ 9400 3500
Wire Wire Line
	9600 3100 9600 3000
Wire Wire Line
	9600 3000 9500 3000
$Comp
L power:GND #PWR09
U 1 1 5D7DF8A5
P 9400 4100
F 0 "#PWR09" H 9400 3850 50  0001 C CNN
F 1 "GND" H 9405 3927 50  0000 C CNN
F 2 "" H 9400 4100 50  0001 C CNN
F 3 "" H 9400 4100 50  0001 C CNN
	1    9400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3900 9400 4100
Wire Wire Line
	8800 3700 8450 3700
$Comp
L power:+5V #PWR011
U 1 1 5D7DF8AD
P 9800 2850
F 0 "#PWR011" H 9800 2700 50  0001 C CNN
F 1 "+5V" H 9815 3023 50  0000 C CNN
F 2 "" H 9800 2850 50  0001 C CNN
F 3 "" H 9800 2850 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2850 9800 3000
Wire Wire Line
	9800 3000 9600 3000
Connection ~ 9600 3000
$Comp
L power:GND #PWR07
U 1 1 5D7DF8B6
P 9300 3150
F 0 "#PWR07" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9305 2977 50  0000 C CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3000 9300 3150
$Comp
L Device:LED D9
U 1 1 5D7DF8BD
P 10350 3250
F 0 "D9" V 10389 3133 50  0000 R CNN
F 1 "LED" V 10298 3133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 10350 3250 50  0001 C CNN
F 3 "~" H 10350 3250 50  0001 C CNN
	1    10350 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D7DF8C3
P 10100 3500
F 0 "R9" V 9893 3500 50  0000 C CNN
F 1 "150" V 9984 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 3500 50  0001 C CNN
F 3 "~" H 10100 3500 50  0001 C CNN
	1    10100 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3000 10350 3000
Wire Wire Line
	10350 3000 10350 3100
Connection ~ 9800 3000
Wire Wire Line
	10350 3400 10350 3500
Wire Wire Line
	10350 3500 10250 3500
Wire Wire Line
	9950 3500 9600 3500
Connection ~ 9600 3500
Text Label 8450 3700 0    50   ~ 0
outD8timr1
$Comp
L Connector:Screw_Terminal_01x03 J10
U 1 1 5D56D04E
P 6250 1250
F 0 "J10" V 6350 1200 50  0000 R CNN
F 1 "Inp0" V 6350 1400 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 6250 1250 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D56DF4C
P 6150 1650
F 0 "#PWR013" H 6150 1400 50  0001 C CNN
F 1 "GND" H 6155 1477 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5D56F01A
P 6350 1700
F 0 "#PWR014" H 6350 1550 50  0001 C CNN
F 1 "+3.3V" H 6365 1873 50  0000 C CNN
F 2 "" H 6350 1700 50  0001 C CNN
F 3 "" H 6350 1700 50  0001 C CNN
	1    6350 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 1450 6250 2350
Wire Wire Line
	4600 2350 6250 2350
Wire Wire Line
	6150 1450 6150 1650
Wire Wire Line
	6350 1450 6350 1700
$EndSCHEMATC

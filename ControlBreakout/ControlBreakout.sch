EESchema Schematic File Version 4
LIBS:ControlBreakout-cache
EELAYER 30 0
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
L 949:949 J2
U 1 1 5E952BC7
P 3100 3550
F 0 "J2" H 3500 3815 50  0000 C CNN
F 1 "949" H 3500 3724 50  0000 C CNN
F 2 "949:949" H 3750 3650 50  0001 L CNN
F 3 "http://www.keyelco.com/product-pdf.cfm?p=14078" H 3750 3550 50  0001 L CNN
F 4 "Modular Connectors / Ethernet Connectors RJ45 JACK VERTICAL PCB MOUNT THM" H 3750 3450 50  0001 L CNN "Description"
F 5 "16.29" H 3750 3350 50  0001 L CNN "Height"
F 6 "Keystone Electronics" H 3750 3250 50  0001 L CNN "Manufacturer_Name"
F 7 "949" H 3750 3150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "534-949" H 3750 3050 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=534-949" H 3750 2950 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3750 2850 50  0001 L CNN "RS Part Number"
F 11 "" H 3750 2750 50  0001 L CNN "RS Price/Stock"
F 12 "36-949-ND" H 3100 3550 50  0001 C CNN "DK_PN"
	1    3100 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5E95382E
P 3450 4550
F 0 "J3" H 3500 4767 50  0000 C CNN
F 1 "MiniFitPower" H 3500 4676 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 3450 4550 50  0001 C CNN
F 3 "~" H 3450 4550 50  0001 C CNN
F 4 "WM3801-ND" H 3450 4550 50  0001 C CNN "DK_PN"
F 5 "Molex Mini-Fit Jr 2x2 Series 5566" H 3450 4550 50  0001 C CNN "Desc"
	1    3450 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5E954147
P 2450 3650
F 0 "J1" H 2368 3967 50  0000 C CNN
F 1 "SignalA" H 2368 3876 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-4-2.54_1x04_P2.54mm_Horizontal" H 2450 3650 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2450 3650
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5E9560A2
P 4550 3650
F 0 "J5" H 4630 3642 50  0000 L CNN
F 1 "SignalB" H 4630 3551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-4-2.54_1x04_P2.54mm_Horizontal" H 4550 3650 50  0001 C CNN
F 3 "~" H 4550 3650 50  0001 C CNN
	1    4550 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5E957B7A
P 3450 5200
F 0 "J4" V 3322 4912 50  0000 R CNN
F 1 "Power" V 3413 4912 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-4-2.54_1x04_P2.54mm_Horizontal" H 3450 5200 50  0001 C CNN
F 3 "~" H 3450 5200 50  0001 C CNN
	1    3450 5200
	0    -1   1    0   
$EndComp
Text GLabel 3100 3550 0    35   Input ~ 0
1
Text GLabel 3100 3650 0    35   Input ~ 0
2
Text GLabel 3100 3750 0    35   Input ~ 0
3
Text GLabel 3100 3850 0    35   Input ~ 0
4
Text GLabel 3900 3550 2    35   Input ~ 0
5
Text GLabel 3900 3650 2    35   Input ~ 0
6
Text GLabel 3900 3750 2    35   Input ~ 0
7
Text GLabel 3900 3850 2    35   Input ~ 0
GND
Text GLabel 4350 3850 0    35   Input ~ 0
GND
Text GLabel 4350 3750 0    35   Input ~ 0
7
Text GLabel 4350 3650 0    35   Input ~ 0
6
Text GLabel 4350 3550 0    35   Input ~ 0
5
Text GLabel 2650 3850 2    35   Input ~ 0
4
Text GLabel 2650 3750 2    35   Input ~ 0
3
Text GLabel 2650 3650 2    35   Input ~ 0
2
Text GLabel 2650 3550 2    35   Input ~ 0
1
Text GLabel 3250 4550 0    35   Input ~ 0
GND
Text GLabel 3250 4650 0    35   Input ~ 0
12V
Text GLabel 3750 4650 2    35   Input ~ 0
24V
Text GLabel 3750 4550 2    35   Input ~ 0
5V
Text GLabel 3350 5000 1    35   Input ~ 0
GND
Text GLabel 3450 5000 1    35   Input ~ 0
5V
Text GLabel 3550 5000 1    35   Input ~ 0
12V
Text GLabel 3650 5000 1    35   Input ~ 0
24V
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E9547C8
P 4400 4600
F 0 "H1" H 4500 4603 50  0000 L CNN
F 1 "MountingHole_Pad" H 4500 4558 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4400 4600 50  0001 C CNN
F 3 "~" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E954AB6
P 4700 4600
F 0 "H2" H 4800 4603 50  0000 L CNN
F 1 "MountingHole_Pad" H 4800 4558 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4700 4600 50  0001 C CNN
F 3 "~" H 4700 4600 50  0001 C CNN
	1    4700 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E954DBF
P 5000 4600
F 0 "H3" H 5100 4603 50  0000 L CNN
F 1 "MountingHole_Pad" H 5100 4558 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5000 4600 50  0001 C CNN
F 3 "~" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E9550BB
P 5300 4600
F 0 "H4" H 5400 4603 50  0000 L CNN
F 1 "MountingHole_Pad" H 5400 4558 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5300 4600 50  0001 C CNN
F 3 "~" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
Text GLabel 4300 4700 0    35   Input ~ 0
GND
Wire Wire Line
	4300 4700 4400 4700
Wire Wire Line
	4400 4700 4700 4700
Connection ~ 4400 4700
Wire Wire Line
	5000 4700 4700 4700
Connection ~ 4700 4700
Wire Wire Line
	5000 4700 5300 4700
Connection ~ 5000 4700
$EndSCHEMATC

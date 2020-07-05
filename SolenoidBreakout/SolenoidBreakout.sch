EESchema Schematic File Version 4
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
P 4150 2950
F 0 "J2" H 4550 3215 50  0000 C CNN
F 1 "949" H 4550 3124 50  0000 C CNN
F 2 "949:949" H 4800 3050 50  0001 L CNN
F 3 "http://www.keyelco.com/product-pdf.cfm?p=14078" H 4800 2950 50  0001 L CNN
F 4 "Modular Connectors / Ethernet Connectors RJ45 JACK VERTICAL PCB MOUNT THM" H 4800 2850 50  0001 L CNN "Description"
F 5 "16.29" H 4800 2750 50  0001 L CNN "Height"
F 6 "Keystone Electronics" H 4800 2650 50  0001 L CNN "Manufacturer_Name"
F 7 "949" H 4800 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "534-949" H 4800 2450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=534-949" H 4800 2350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4800 2250 50  0001 L CNN "RS Part Number"
F 11 "" H 4800 2150 50  0001 L CNN "RS Price/Stock"
F 12 "36-949-ND" H 4150 2950 50  0001 C CNN "DK_PN"
	1    4150 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5E95382E
P 5100 2450
F 0 "J3" H 5150 2667 50  0000 C CNN
F 1 "MiniFitPower" H 5150 2576 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 5100 2450 50  0001 C CNN
F 3 "~" H 5100 2450 50  0001 C CNN
F 4 "WM3801-ND" H 5100 2450 50  0001 C CNN "DK_PN"
F 5 "Molex Mini-Fit Jr 2x2 Series 5566" H 5100 2450 50  0001 C CNN "Desc"
	1    5100 2450
	1    0    0    -1  
$EndComp
Text GLabel 4150 2950 0    35   Input ~ 0
1
Text GLabel 4950 3250 2    35   Input ~ 0
GND
Text GLabel 4900 2450 0    35   Input ~ 0
GND
Text GLabel 4900 2550 0    35   Input ~ 0
12V
Text GLabel 5400 2550 2    35   Input ~ 0
24V
Text GLabel 5400 2450 2    35   Input ~ 0
5V
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E9547C8
P 3450 2100
F 0 "H1" H 3550 2103 50  0000 L CNN
F 1 "MountingHole_Pad" H 3550 2058 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3450 2100 50  0001 C CNN
F 3 "~" H 3450 2100 50  0001 C CNN
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E954AB6
P 3750 2100
F 0 "H2" H 3850 2103 50  0000 L CNN
F 1 "MountingHole_Pad" H 3850 2058 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3750 2100 50  0001 C CNN
F 3 "~" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E954DBF
P 4050 2100
F 0 "H3" H 4150 2103 50  0000 L CNN
F 1 "MountingHole_Pad" H 4150 2058 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4050 2100 50  0001 C CNN
F 3 "~" H 4050 2100 50  0001 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E9550BB
P 4350 2100
F 0 "H4" H 4450 2103 50  0000 L CNN
F 1 "MountingHole_Pad" H 4450 2058 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4350 2100 50  0001 C CNN
F 3 "~" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Text GLabel 3350 2200 0    35   Input ~ 0
GND
Wire Wire Line
	3350 2200 3450 2200
Wire Wire Line
	3450 2200 3750 2200
Connection ~ 3450 2200
Wire Wire Line
	4050 2200 3750 2200
Connection ~ 3750 2200
Wire Wire Line
	4050 2200 4350 2200
Connection ~ 4050 2200
NoConn ~ 4950 2950
NoConn ~ 4950 3050
NoConn ~ 4950 3150
NoConn ~ 4150 3250
NoConn ~ 4150 3150
NoConn ~ 4150 3050
$Comp
L Device:R_Small_US R1
U 1 1 5EA20099
P 3500 4600
F 0 "R1" H 3568 4646 50  0000 L CNN
F 1 "10K" H 3568 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3500 4600 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4600
	-1   0    0    1   
$EndComp
Text GLabel 3500 4700 3    35   Input ~ 0
GND
$Comp
L IRFZ44NPBF:IRFZ44NPBF U1
U 1 1 5EA2038D
P 5450 4050
F 0 "U1" H 5612 4096 50  0000 L CNN
F 1 "IRFZ44N" H 5612 4005 50  0000 L CNN
F 2 "IRFZ44:TO-220" H 5450 4050 50  0001 L BNN
F 3 "" H 5450 4050 50  0001 C CNN
	1    5450 4050
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5EA21B37
P 6100 4000
F 0 "D1" H 6100 3784 50  0000 C CNN
F 1 "1N4007" H 6100 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6100 3825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6100 4000 50  0001 C CNN
	1    6100 4000
	0    -1   -1   0   
$EndComp
Text GLabel 5850 3100 0    35   Input ~ 0
12V
Text GLabel 6350 3100 2    35   Input ~ 0
24V
Text GLabel 5450 3850 1    35   Input ~ 0
SOL_GND
Text GLabel 6100 2950 1    35   Input ~ 0
SOL_PWR
Text GLabel 6100 3850 1    35   Input ~ 0
SOL_GND
Text GLabel 6100 4150 3    35   Input ~ 0
SOL_PWR
Text GLabel 3100 2550 0    35   Input ~ 0
SOL_GND
Text GLabel 3100 2650 0    35   Input ~ 0
SOL_PWR
Text GLabel 5450 4250 3    35   Input ~ 0
GND
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5EC58C83
P 3550 4050
F 0 "Q1" H 3741 4096 50  0000 L CNN
F 1 "Q_NPN_EBC" H 3741 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3750 4150 50  0001 C CNN
F 3 "~" H 3550 4050 50  0001 C CNN
	1    3550 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5EC5930A
P 3650 3600
F 0 "R2" H 3718 3646 50  0000 L CNN
F 1 "10K" H 3718 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3650 3600 50  0001 C CNN
F 3 "~" H 3650 3600 50  0001 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
Text GLabel 3650 3500 1    35   Input ~ 0
5V
Text GLabel 3650 4250 3    35   Input ~ 0
GND
$Comp
L Device:R_Small_US R3
U 1 1 5EC59943
P 3250 4050
F 0 "R3" H 3318 4096 50  0000 L CNN
F 1 "10K" H 3318 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3250 4050 50  0001 C CNN
F 3 "~" H 3250 4050 50  0001 C CNN
	1    3250 4050
	0    -1   -1   0   
$EndComp
Text GLabel 2800 4050 0    35   Input ~ 0
1
Wire Wire Line
	3650 3850 3650 3800
Wire Wire Line
	4650 3800 3650 3800
Connection ~ 3650 3800
Wire Wire Line
	3650 3800 3650 3700
$Comp
L EG1218:EG1218 S2
U 1 1 5EC5B97D
P 4850 4150
F 0 "S2" V 5264 4150 50  0000 C CNN
F 1 "EG1218" V 5173 4150 50  0000 C CNN
F 2 "EG1218:EG1218" H 4850 4150 50  0001 L BNN
F 3 "" H 4850 4150 50  0001 C CNN
	1    4850 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 3800 4650 3950
Wire Wire Line
	4650 4150 4650 4500
Wire Wire Line
	5150 4050 5050 4050
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5EC60546
P 6100 3100
F 0 "JP1" H 6100 3231 50  0000 C CNN
F 1 "Jumper_3_Open" H 6100 3322 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 3100 50  0001 C CNN
F 3 "~" H 6100 3100 50  0001 C CNN
	1    6100 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 4050 3000 4050
Wire Wire Line
	3000 4500 3000 4050
Connection ~ 3000 4050
Wire Wire Line
	3000 4050 3150 4050
Wire Wire Line
	3000 4500 3500 4500
Connection ~ 3500 4500
Wire Wire Line
	3500 4500 4650 4500
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5EC6DF83
P 3300 2550
F 0 "J1" H 3380 2542 50  0000 L CNN
F 1 "Conn_01x02" H 3380 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3300 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	1    0    0    -1  
$EndComp
$Comp
L SolenoidBreakout-rescue:1825910-7-dk_Tactile-Switches S1
U 1 1 5EC7000A
P 2800 3600
F 0 "S1" H 2800 3947 60  0000 C CNN
F 1 "1825910-7" H 2800 3841 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 3000 3800 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 3000 3900 60  0001 L CNN
F 4 "450-1804-ND" H 3000 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-7" H 3000 4100 60  0001 L CNN "MPN"
F 6 "Switches" H 3000 4200 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 3000 4300 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 3000 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-7/450-1804-ND/1731414" H 3000 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 3000 4600 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 3000 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3000 4800 60  0001 L CNN "Status"
	1    2800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3500 3000 3700
Wire Wire Line
	3000 3700 3000 4050
Connection ~ 3000 3700
Text GLabel 2500 3500 0    35   Input ~ 0
5V
Wire Wire Line
	2500 3500 2600 3500
Wire Wire Line
	2600 3500 2600 3700
Connection ~ 2600 3500
$EndSCHEMATC

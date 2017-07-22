EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:meteorito-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MeteoritoBoard"
Date "2017-07-22"
Rev "0.1"
Comp "ElectronicCats"
Comment1 "Andres Sabas"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X03 P1
U 1 1 5973B1A0
P 2345 1935
F 0 "P1" H 2345 2135 50  0000 C CNN
F 1 "DH22" V 2445 1935 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2345 1935 50  0001 C CNN
F 3 "" H 2345 1935 50  0000 C CNN
	1    2345 1935
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 5973B1FD
P 2385 3305
F 0 "P3" H 2385 3555 50  0000 C CNN
F 1 "BMP180" V 2485 3305 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2385 3305 50  0001 C CNN
F 3 "" H 2385 3305 50  0000 C CNN
	1    2385 3305
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P4
U 1 1 5973BBC7
P 6765 2825
F 0 "P4" H 6765 3275 50  0000 C CNN
F 1 "CONN_01X08" V 6865 2825 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 6765 2825 50  0001 C CNN
F 3 "" H 6765 2825 50  0000 C CNN
	1    6765 2825
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P5
U 1 1 5973BC14
P 7255 2820
F 0 "P5" H 7255 3270 50  0000 C CNN
F 1 "CONN_01X08" V 7355 2820 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 7255 2820 50  0001 C CNN
F 3 "" H 7255 2820 50  0000 C CNN
	1    7255 2820
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 5973BC79
P 2355 4995
F 0 "P2" H 2355 5295 50  0000 C CNN
F 1 "GY-ML8511" V 2455 4995 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2355 4995 50  0001 C CNN
F 3 "" H 2355 4995 50  0000 C CNN
	1    2355 4995
	1    0    0    -1  
$EndComp
Text Notes 6525 2040 0    60   ~ 0
Wemos D1 ESP8266
Wire Wire Line
	6565 2475 6330 2475
Wire Wire Line
	6565 2575 6340 2575
Wire Wire Line
	6565 2675 6345 2675
Wire Wire Line
	6565 2775 6340 2775
Wire Wire Line
	6565 2875 6340 2875
Wire Wire Line
	6565 2975 6340 2975
Wire Wire Line
	6565 3075 6345 3075
Wire Wire Line
	6565 3175 6345 3175
Wire Wire Line
	7455 3170 7805 3170
Wire Wire Line
	7455 3070 7800 3070
Wire Wire Line
	7455 2970 7795 2970
Wire Wire Line
	7455 2870 7795 2870
Wire Wire Line
	7455 2470 7760 2470
Wire Wire Line
	7455 2570 7770 2570
Wire Wire Line
	7455 2670 7780 2670
Wire Wire Line
	7455 2770 7790 2770
Wire Notes Line
	4315 515  4315 7755
Wire Notes Line
	4315 4065 11215 4065
Wire Notes Line
	11215 4065 11215 4075
Wire Wire Line
	2145 1835 1930 1835
Wire Wire Line
	2145 1935 1925 1935
Wire Wire Line
	2145 2035 1920 2035
Wire Wire Line
	2185 3155 2040 3155
Wire Wire Line
	2185 3255 2040 3255
Wire Wire Line
	2185 3355 2040 3355
Wire Wire Line
	2185 3455 2035 3455
Wire Wire Line
	2155 4795 2015 4795
Wire Wire Line
	2155 4895 2010 4895
Wire Wire Line
	2155 4995 2010 4995
Wire Wire Line
	2155 5095 2005 5095
Wire Wire Line
	2155 5195 2005 5195
$EndSCHEMATC

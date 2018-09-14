EESchema Schematic File Version 4
LIBS:meteorito-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MeteoritoBoard"
Date "2017-11-02"
Rev "0.2"
Comp "ElectronicCats"
Comment1 "Andres Sabas"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L meteorito-rescue:CONN_01X04 P3
U 1 1 5973B1FD
P 2370 2400
F 0 "P3" H 2370 2650 50  0000 C CNN
F 1 "BMP180" V 2470 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2370 2400 50  0001 C CNN
F 3 "" H 2370 2400 50  0000 C CNN
	1    2370 2400
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X05 P2
U 1 1 5973BC79
P 2300 3875
F 0 "P2" H 2300 4175 50  0000 C CNN
F 1 "GY-ML8511" V 2400 3875 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2300 3875 50  0001 C CNN
F 3 "" H 2300 3875 50  0000 C CNN
	1    2300 3875
	1    0    0    -1  
$EndComp
Text Label 6910 2110 0    60   ~ 0
D3
Text Label 6910 2210 0    60   ~ 0
SDA
Text Label 6910 2310 0    60   ~ 0
SCL
Text Label 6915 2410 0    60   ~ 0
RX
Text Label 8460 2010 0    60   ~ 0
D7
Text Label 8470 2110 0    60   ~ 0
D6
Text Label 9015 3440 0    60   ~ 0
D5
Text Label 6915 2510 0    60   ~ 0
TX
Text Label 1850 1195 0    60   ~ 0
D7
$Comp
L power:GND #PWR06
U 1 1 59FBB4DC
P 1875 2355
F 0 "#PWR06" H 1875 2105 50  0001 C CNN
F 1 "GND" H 1875 2205 50  0000 C CNN
F 2 "" H 1875 2355 50  0000 C CNN
F 3 "" H 1875 2355 50  0000 C CNN
	1    1875 2355
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 59FBB563
P 2025 2250
F 0 "#PWR07" H 2025 2100 50  0001 C CNN
F 1 "+5V" H 2025 2390 50  0000 C CNN
F 2 "" H 2025 2250 50  0000 C CNN
F 3 "" H 2025 2250 50  0000 C CNN
	1    2025 2250
	1    0    0    -1  
$EndComp
Text Label 2025 2450 0    60   ~ 0
SCL
Text Label 2020 2550 0    60   ~ 0
SDA
$Comp
L power:GND #PWR08
U 1 1 59FBB69A
P 1905 3880
F 0 "#PWR08" H 1905 3630 50  0001 C CNN
F 1 "GND" H 1905 3730 50  0000 C CNN
F 2 "" H 1905 3880 50  0000 C CNN
F 3 "" H 1905 3880 50  0000 C CNN
	1    1905 3880
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 59FBB879
P 1960 3675
F 0 "#PWR010" H 1960 3525 50  0001 C CNN
F 1 "+5V" H 1960 3815 50  0000 C CNN
F 2 "" H 1960 3675 50  0000 C CNN
F 3 "" H 1960 3675 50  0000 C CNN
	1    1960 3675
	1    0    0    -1  
$EndComp
NoConn ~ 2100 3775
$Comp
L power:+5V #PWR04
U 1 1 59FBB39C
P 1860 995
F 0 "#PWR04" H 1860 845 50  0001 C CNN
F 1 "+5V" H 1860 1135 50  0000 C CNN
F 2 "" H 1860 995 50  0000 C CNN
F 3 "" H 1860 995 50  0000 C CNN
	1    1860 995 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 59FBB3BC
P 1760 1095
F 0 "#PWR05" H 1760 845 50  0001 C CNN
F 1 "GND" H 1760 945 50  0000 C CNN
F 2 "" H 1760 1095 50  0000 C CNN
F 3 "" H 1760 1095 50  0000 C CNN
	1    1760 1095
	1    0    0    -1  
$EndComp
NoConn ~ 8135 2310
NoConn ~ 8135 2410
NoConn ~ 8135 2510
Text Notes 7290 790  0    60   ~ 0
Wemos D1 ESP32
$Comp
L meteorito-rescue:CONN_01X03 P1
U 1 1 5973B1A0
P 2275 1095
F 0 "P1" H 2275 1295 50  0000 C CNN
F 1 "DH22" V 2375 1095 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2275 1095 50  0001 C CNN
F 3 "" H 2275 1095 50  0000 C CNN
	1    2275 1095
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X03 P?
U 1 1 5B3AB6AA
P 2325 5120
F 0 "P?" H 2325 5320 50  0000 C CNN
F 1 "Hall" V 2425 5120 50  0000 C CNN
F 2 "" H 2325 5120 50  0000 C CNN
F 3 "" H 2325 5120 50  0000 C CNN
	1    2325 5120
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5B3ABCF3
P 1760 4215
F 0 "#PWR?" H 1760 4065 50  0001 C CNN
F 1 "+5V" H 1760 4355 50  0000 C CNN
F 2 "" H 1760 4215 50  0000 C CNN
F 3 "" H 1760 4215 50  0000 C CNN
	1    1760 4215
	1    0    0    -1  
$EndComp
Text Label 1950 3975 0    60   ~ 0
OUT
$Comp
L Device:R_Small R?
U 1 1 5B3ABF7D
P 1900 6565
F 0 "R?" H 1930 6585 50  0000 L CNN
F 1 "FOTORESISTENCIA" H 1930 6525 50  0000 L CNN
F 2 "" H 1900 6565 50  0000 C CNN
F 3 "" H 1900 6565 50  0000 C CNN
	1    1900 6565
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5B3AC023
P 1900 6850
F 0 "R?" H 1930 6870 50  0000 L CNN
F 1 "100" H 1930 6810 50  0000 L CNN
F 2 "" H 1900 6850 50  0000 C CNN
F 3 "" H 1900 6850 50  0000 C CNN
	1    1900 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B3AC2DB
P 1900 7050
F 0 "#PWR?" H 1900 6800 50  0001 C CNN
F 1 "GND" H 1900 6900 50  0000 C CNN
F 2 "" H 1900 7050 50  0000 C CNN
F 3 "" H 1900 7050 50  0000 C CNN
	1    1900 7050
	1    0    0    -1  
$EndComp
Text Label 2115 6710 0    60   ~ 0
D13
$Comp
L power:+3.3V #PWR?
U 1 1 5B3AC40A
P 1900 6370
F 0 "#PWR?" H 1900 6220 50  0001 C CNN
F 1 "+3.3V" H 1900 6510 50  0000 C CNN
F 2 "" H 1900 6370 50  0000 C CNN
F 3 "" H 1900 6370 50  0000 C CNN
	1    1900 6370
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B3AC68F
P 1975 5220
F 0 "#PWR?" H 1975 4970 50  0001 C CNN
F 1 "GND" H 1975 5070 50  0000 C CNN
F 2 "" H 1975 5220 50  0000 C CNN
F 3 "" H 1975 5220 50  0000 C CNN
	1    1975 5220
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P?
U 1 1 5B3ACF92
P 7335 2260
F 0 "P?" H 7335 2810 50  0000 C CNN
F 1 "CONN_01X10" V 7435 2260 50  0000 C CNN
F 2 "" H 7335 2260 50  0000 C CNN
F 3 "" H 7335 2260 50  0000 C CNN
	1    7335 2260
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P?
U 1 1 5B3AD073
P 6535 2265
F 0 "P?" H 6535 2815 50  0000 C CNN
F 1 "CONN_01X10" V 6635 2265 50  0000 C CNN
F 2 "" H 6535 2265 50  0000 C CNN
F 3 "" H 6535 2265 50  0000 C CNN
	1    6535 2265
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P?
U 1 1 5B3AD0C5
P 7935 2260
F 0 "P?" H 7935 2810 50  0000 C CNN
F 1 "CONN_01X10" V 8035 2260 50  0000 C CNN
F 2 "" H 7935 2260 50  0000 C CNN
F 3 "" H 7935 2260 50  0000 C CNN
	1    7935 2260
	-1   0    0    1   
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P?
U 1 1 5B3AD12E
P 8780 2240
F 0 "P?" H 8780 2790 50  0000 C CNN
F 1 "CONN_01X10" V 8880 2240 50  0000 C CNN
F 2 "" H 8780 2240 50  0000 C CNN
F 3 "" H 8780 2240 50  0000 C CNN
	1    8780 2240
	-1   0    0    1   
$EndComp
Wire Wire Line
	7135 1810 6900 1810
Wire Wire Line
	7135 2110 6910 2110
Wire Wire Line
	7135 2210 6910 2210
Wire Wire Line
	7135 2310 6910 2310
Wire Wire Line
	7135 2410 6915 2410
Wire Wire Line
	7135 2510 6915 2510
Wire Wire Line
	8135 2210 8475 2210
Wire Wire Line
	8135 1810 8440 1810
Wire Wire Line
	8135 2010 8460 2010
Wire Wire Line
	8135 2110 8470 2110
Wire Notes Line
	4315 4065 11215 4065
Wire Notes Line
	11215 4065 11215 4075
Wire Wire Line
	1760 1095 2075 1095
Wire Wire Line
	2075 1195 1850 1195
Wire Wire Line
	2170 2250 2025 2250
Wire Wire Line
	1875 2350 2170 2350
Wire Wire Line
	2170 2450 2025 2450
Wire Wire Line
	2170 2550 2020 2550
Wire Wire Line
	2100 3675 1960 3675
Wire Wire Line
	1905 3875 2100 3875
Wire Wire Line
	2100 3975 1950 3975
Wire Wire Line
	2100 4075 1950 4075
Wire Wire Line
	6800 1910 6800 1920
Wire Wire Line
	6800 1910 7135 1910
Wire Wire Line
	1875 2350 1875 2355
Wire Wire Line
	1760 4215 1950 4215
Wire Wire Line
	1950 4215 1950 4075
Wire Wire Line
	1905 3875 1905 3880
Wire Wire Line
	2075 995  1860 995 
Wire Wire Line
	2125 5020 1975 5020
Wire Wire Line
	2125 5120 1980 5120
Wire Wire Line
	2125 5220 1975 5220
Wire Wire Line
	1900 6665 1900 6710
Wire Wire Line
	1900 6710 2115 6710
Connection ~ 1900 6710
Wire Wire Line
	1900 6465 1900 6370
Wire Wire Line
	1900 6950 1900 7050
Wire Notes Line
	4305 5460 11220 5460
Wire Notes Line
	11220 4260 11220 4250
Wire Wire Line
	7135 2610 6930 2610
Wire Wire Line
	7135 2710 6930 2710
Wire Notes Line
	480  1425 4305 1425
Text Notes 1620 1605 0    60   ~ 0
PRESION ATMOSFERICA
Text Notes 1510 655  0    60   ~ 0
HUMEDAD y TEMPERATURA
Wire Notes Line
	475  3015 4285 3015
Wire Notes Line
	4285 3015 4285 3025
Wire Notes Line
	485  4485 4325 4485
Wire Notes Line
	4325 4485 4325 4475
Text Notes 2130 3170 0    60   ~ 0
UV
Text Notes 1740 4660 0    60   ~ 0
VELOCIDAD DEL AIRE
Wire Notes Line
	465  5740 4315 5740
Text Notes 1915 5915 0    60   ~ 0
NUBOSIDAD
Text Label 8260 2315 0    60   ~ 0
OUT
Wire Wire Line
	1900 6710 1900 6750
Wire Notes Line
	4315 515  4315 7755
$Comp
L meteorito-rescue:CONN_01X03 P?
U 1 1 5B9C70A3
P 5300 4750
F 0 "P?" H 5300 4950 50  0000 C CNN
F 1 "Hall" V 5400 4750 50  0000 C CNN
F 2 "" H 5300 4750 50  0000 C CNN
F 3 "" H 5300 4750 50  0000 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B9C7410
P 4900 5100
F 0 "#PWR?" H 4900 4850 50  0001 C CNN
F 1 "GND" H 4905 4927 50  0000 C CNN
F 2 "" H 4900 5100 50  0001 C CNN
F 3 "" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4850 4900 4850
Wire Wire Line
	4900 4850 4900 5100
$Comp
L meteorito-rescue:CONN_01X03 P?
U 1 1 5B9C7F56
P 6500 4750
F 0 "P?" H 6500 4950 50  0000 C CNN
F 1 "Hall" V 6600 4750 50  0000 C CNN
F 2 "" H 6500 4750 50  0000 C CNN
F 3 "" H 6500 4750 50  0000 C CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B9C7FC0
P 6150 5150
F 0 "#PWR?" H 6150 4900 50  0001 C CNN
F 1 "GND" H 6155 4977 50  0000 C CNN
F 2 "" H 6150 5150 50  0001 C CNN
F 3 "" H 6150 5150 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5150 6150 4850
Wire Wire Line
	6150 4850 6300 4850
Text Notes 5300 4200 0    50   ~ 0
Sensores Efecto Hall\n
Wire Notes Line
	7150 4050 7150 5450
$EndSCHEMATC

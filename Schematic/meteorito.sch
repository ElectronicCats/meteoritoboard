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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2370 2400 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2300 3875 50  0001 C CNN
F 3 "" H 2300 3875 50  0000 C CNN
	1    2300 3875
	1    0    0    -1  
$EndComp
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
NoConn ~ 8135 2220
NoConn ~ 8135 2120
NoConn ~ 8135 2020
Text Notes 7290 790  0    60   ~ 0
Wemos D1 ESP32
$Comp
L meteorito-rescue:CONN_01X03 P1
U 1 1 5973B1A0
P 2260 1025
F 0 "P1" H 2260 1225 50  0000 C CNN
F 1 "DH22" V 2360 1025 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 2260 1025 50  0001 C CNN
F 3 "" H 2260 1025 50  0000 C CNN
	1    2260 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5B3ABF7D
P 1900 6565
F 0 "R1" H 1930 6585 50  0000 L CNN
F 1 "FOTORESISTENCIA" H 1930 6525 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1900 6565 50  0001 C CNN
F 3 "" H 1900 6565 50  0000 C CNN
	1    1900 6565
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5B3AC023
P 1900 6850
F 0 "R2" H 1930 6870 50  0000 L CNN
F 1 "100" H 1930 6810 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 1900 6850 50  0001 C CNN
F 3 "" H 1900 6850 50  0000 C CNN
	1    1900 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5B3AC2DB
P 1900 7050
F 0 "#PWR08" H 1900 6800 50  0001 C CNN
F 1 "GND" H 1900 6900 50  0000 C CNN
F 2 "" H 1900 7050 50  0000 C CNN
F 3 "" H 1900 7050 50  0000 C CNN
	1    1900 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5B3AC40A
P 1900 6370
F 0 "#PWR05" H 1900 6220 50  0001 C CNN
F 1 "+3.3V" H 1900 6510 50  0000 C CNN
F 2 "" H 1900 6370 50  0000 C CNN
F 3 "" H 1900 6370 50  0000 C CNN
	1    1900 6370
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P8
U 1 1 5B3ACF92
P 7335 2260
F 0 "P8" H 7335 2810 50  0000 C CNN
F 1 "CONN_01X10" V 7435 2260 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7335 2260 50  0001 C CNN
F 3 "" H 7335 2260 50  0000 C CNN
	1    7335 2260
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P7
U 1 1 5B3AD073
P 6535 2265
F 0 "P7" H 6535 2815 50  0000 C CNN
F 1 "CONN_01X10" V 6635 2265 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6535 2265 50  0001 C CNN
F 3 "" H 6535 2265 50  0000 C CNN
	1    6535 2265
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P9
U 1 1 5B3AD0C5
P 7935 2270
F 0 "P9" H 7935 2820 50  0000 C CNN
F 1 "CONN_01X10" V 8035 2270 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7935 2270 50  0001 C CNN
F 3 "" H 7935 2270 50  0000 C CNN
	1    7935 2270
	-1   0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X10 P10
U 1 1 5B3AD12E
P 8740 2285
F 0 "P10" H 8740 2835 50  0000 C CNN
F 1 "CONN_01X10" V 8840 2285 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8740 2285 50  0001 C CNN
F 3 "" H 8740 2285 50  0000 C CNN
	1    8740 2285
	-1   0    0    -1  
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
	8135 2320 8475 2320
Wire Wire Line
	8135 2720 8440 2720
Wire Wire Line
	8135 2420 8470 2420
Wire Notes Line
	4315 4065 11215 4065
Wire Notes Line
	11215 4065 11215 4075
Wire Wire Line
	2170 2250 2025 2250
Wire Wire Line
	1875 2350 2170 2350
Wire Wire Line
	2100 3675 1960 3675
Wire Wire Line
	1875 2350 1875 2355
Wire Wire Line
	1900 6950 1900 7050
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
Wire Notes Line
	4315 515  4315 7755
$Comp
L meteorito-rescue:CONN_01X03 P5
U 1 1 5B9C70A3
P 5300 4750
F 0 "P5" H 5300 4950 50  0000 C CNN
F 1 "Hall" V 5400 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5300 4750 50  0001 C CNN
F 3 "" H 5300 4750 50  0000 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X03 P6
U 1 1 5B9C7F56
P 6500 4750
F 0 "P6" H 6500 4950 50  0000 C CNN
F 1 "Hall" V 6600 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 4750 50  0001 C CNN
F 3 "" H 6500 4750 50  0000 C CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
Text Notes 5300 4200 0    50   ~ 0
\n\n
Wire Notes Line
	7150 4050 7150 5450
$Comp
L power:+5V #PWR02
U 1 1 5BA1D500
P 1750 5000
F 0 "#PWR02" H 1750 4850 50  0001 C CNN
F 1 "+5V" H 1765 5173 50  0000 C CNN
F 2 "" H 1750 5000 50  0001 C CNN
F 3 "" H 1750 5000 50  0001 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L meteorito-rescue:CONN_01X03 P4
U 1 1 5BA1EA80
P 2200 5200
F 0 "P4" H 2200 5400 50  0000 C CNN
F 1 "Hall" V 2300 5200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2200 5200 50  0001 C CNN
F 3 "" H 2200 5200 50  0000 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BA20EB7
P 1890 4970
F 0 "#PWR03" H 1890 4720 50  0001 C CNN
F 1 "GND" H 1895 4797 50  0000 C CNN
F 2 "" H 1890 4970 50  0001 C CNN
F 3 "" H 1890 4970 50  0001 C CNN
	1    1890 4970
	1    0    0    -1  
$EndComp
Wire Wire Line
	8940 2735 9300 2735
Wire Wire Line
	6335 2015 6065 2015
Wire Wire Line
	6335 2115 6065 2115
Wire Wire Line
	6065 2215 6335 2215
Wire Wire Line
	6335 2315 6065 2315
Wire Wire Line
	6335 2515 6085 2515
Wire Wire Line
	6335 2615 6085 2615
Wire Wire Line
	8135 2620 8440 2620
Wire Wire Line
	8135 1920 8470 1920
Wire Wire Line
	8135 1820 8470 1820
Wire Wire Line
	8940 2635 9300 2635
Wire Wire Line
	8940 2535 9300 2535
Wire Wire Line
	8940 2435 9300 2435
Wire Wire Line
	8940 2335 9295 2335
Wire Wire Line
	8940 2235 9300 2235
Wire Wire Line
	8940 2135 9285 2135
Wire Wire Line
	8940 2035 9280 2035
Wire Wire Line
	8940 1935 9280 1935
$Comp
L power:GND #PWR09
U 1 1 5BA50CA8
P 1910 3930
F 0 "#PWR09" H 1910 3680 50  0001 C CNN
F 1 "GND" H 1915 3757 50  0000 C CNN
F 2 "" H 1910 3930 50  0001 C CNN
F 3 "" H 1910 3930 50  0001 C CNN
	1    1910 3930
	1    0    0    -1  
$EndComp
Wire Wire Line
	1910 3930 1910 3875
Wire Wire Line
	1910 3875 2100 3875
$Comp
L power:+5V #PWR01
U 1 1 5BA55AD4
P 1695 4055
F 0 "#PWR01" H 1695 3905 50  0001 C CNN
F 1 "+5V" H 1710 4228 50  0000 C CNN
F 2 "" H 1695 4055 50  0001 C CNN
F 3 "" H 1695 4055 50  0001 C CNN
	1    1695 4055
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4075 2045 4075
Wire Wire Line
	2045 4075 2045 4180
Wire Wire Line
	2045 4180 1695 4180
Wire Wire Line
	1695 4180 1695 4055
Wire Wire Line
	2000 5100 1985 5100
Wire Wire Line
	1985 5100 1985 4930
Wire Wire Line
	1985 4930 1890 4930
Wire Wire Line
	1890 4930 1890 4970
Wire Wire Line
	5100 4650 5055 4650
$Comp
L power:+5V #PWR012
U 1 1 5BA6A95E
P 4750 4730
F 0 "#PWR012" H 4750 4580 50  0001 C CNN
F 1 "+5V" H 4765 4903 50  0000 C CNN
F 2 "" H 4750 4730 50  0001 C CNN
F 3 "" H 4750 4730 50  0001 C CNN
	1    4750 4730
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4750 4750 4750
Wire Wire Line
	4750 4750 4750 4730
$Comp
L power:GND #PWR013
U 1 1 5BA7E477
P 4915 4530
F 0 "#PWR013" H 4915 4280 50  0001 C CNN
F 1 "GND" H 4920 4357 50  0000 C CNN
F 2 "" H 4915 4530 50  0001 C CNN
F 3 "" H 4915 4530 50  0001 C CNN
	1    4915 4530
	1    0    0    -1  
$EndComp
Wire Wire Line
	4915 4530 4915 4450
Wire Wire Line
	5055 4450 5055 4650
Wire Wire Line
	4915 4450 5055 4450
Wire Wire Line
	5100 4850 4905 4850
$Comp
L power:GND #PWR015
U 1 1 5BA82D62
P 6115 4535
F 0 "#PWR015" H 6115 4285 50  0001 C CNN
F 1 "GND" H 6120 4362 50  0000 C CNN
F 2 "" H 6115 4535 50  0001 C CNN
F 3 "" H 6115 4535 50  0001 C CNN
	1    6115 4535
	1    0    0    -1  
$EndComp
Wire Wire Line
	6070 4850 6300 4850
Wire Wire Line
	6300 4650 6300 4500
Wire Wire Line
	6300 4500 6115 4500
Wire Wire Line
	6115 4500 6115 4535
$Comp
L power:+5V #PWR014
U 1 1 5BA8782A
P 5940 4655
F 0 "#PWR014" H 5940 4505 50  0001 C CNN
F 1 "+5V" H 5955 4828 50  0000 C CNN
F 2 "" H 5940 4655 50  0001 C CNN
F 3 "" H 5940 4655 50  0001 C CNN
	1    5940 4655
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4750 5940 4750
Wire Wire Line
	5940 4750 5940 4655
Text Label 6065 1915 0    50   ~ 0
IO27
Text Label 6065 2015 0    50   ~ 0
IO25
Text Label 6065 2115 0    50   ~ 0
IO32
Text Label 6065 2215 0    50   ~ 0
TDI
Text Label 6065 2315 0    50   ~ 0
IO4
Text Label 6085 2515 0    50   ~ 0
IO2
Text Label 6085 2615 0    50   ~ 0
SD1
Text Label 6085 2715 0    50   ~ 0
CLK
Wire Wire Line
	6335 2715 6085 2715
Text Label 6900 1810 0    50   ~ 0
TXD
Text Label 6900 1910 0    50   ~ 0
RXD
Text Label 6910 2210 0    50   ~ 0
IO17
Text Label 6910 2310 0    50   ~ 0
IO16
Text Label 6930 2610 0    50   ~ 0
TD0
Text Label 6930 2710 0    50   ~ 0
SD0
Text Label 8470 1820 2    50   ~ 0
RST
Text Label 8470 1920 2    50   ~ 0
SVP
Text Label 8470 2420 2    50   ~ 0
IO5
Text Label 8440 2720 2    50   ~ 0
SD3
Text Label 9280 1935 2    50   ~ 0
NC
Text Label 9280 2035 2    50   ~ 0
SVN
Text Label 9285 2135 2    50   ~ 0
IO35
Text Label 9300 2235 2    50   ~ 0
IO33
Text Label 9295 2335 2    50   ~ 0
IO34
Text Label 9300 2435 2    50   ~ 0
TMS
Text Label 9300 2535 2    50   ~ 0
NC
Text Label 9300 2635 2    50   ~ 0
SD2
Text Label 9300 2735 2    50   ~ 0
CMD
Text Label 4905 4850 0    50   ~ 0
IO17
Text Label 6070 4850 0    50   ~ 0
IO16
Wire Wire Line
	2060 925  1845 925 
Wire Wire Line
	2170 2450 2010 2450
Text Label 2010 2450 0    50   ~ 0
IO22
Text Label 2010 2550 0    50   ~ 0
IO21
Wire Wire Line
	2170 2550 2010 2550
Text Label 2085 3975 2    50   ~ 0
IO27
Wire Wire Line
	1750 5000 1750 5200
Wire Wire Line
	1750 5200 2000 5200
Wire Wire Line
	2000 5300 1750 5300
Text Label 1750 5300 2    50   ~ 0
IO25
Wire Wire Line
	1900 6750 1900 6710
Wire Wire Line
	1900 6710 2175 6710
Connection ~ 1900 6710
Wire Wire Line
	1900 6710 1900 6665
$Comp
L power:GND #PWR0101
U 1 1 5BAA240F
P 1840 1150
F 0 "#PWR0101" H 1840 900 50  0001 C CNN
F 1 "GND" H 1845 977 50  0000 C CNN
F 2 "" H 1840 1150 50  0001 C CNN
F 3 "" H 1840 1150 50  0001 C CNN
	1    1840 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1840 1150 1840 1125
Wire Wire Line
	1840 1125 2060 1125
Wire Wire Line
	7135 1910 6900 1910
Wire Wire Line
	7135 2010 6900 2010
Text Label 6910 2110 0    50   ~ 0
IO21
Text Label 6900 2010 0    50   ~ 0
IO22
Text Label 8475 2320 2    50   ~ 0
IO23
Text Label 2175 6710 0    50   ~ 0
IO13
$Comp
L power:+5V #PWR0102
U 1 1 5BB55C40
P 1695 970
F 0 "#PWR0102" H 1695 820 50  0001 C CNN
F 1 "+5V" H 1695 1110 50  0000 C CNN
F 2 "" H 1695 970 50  0000 C CNN
F 3 "" H 1695 970 50  0000 C CNN
	1    1695 970 
	1    0    0    -1  
$EndComp
Text Label 1845 925  0    50   ~ 0
IO23
Wire Wire Line
	2060 1025 1695 1025
Wire Wire Line
	1695 1025 1695 970 
Wire Notes Line
	5650 4065 5650 5460
Wire Notes Line
	4305 5460 11220 5460
Text Notes 4605 4210 0    50   ~ 0
Sensor De Precipitación \n
Text Notes 5945 4205 0    50   ~ 0
Sensor De Orientación \n
NoConn ~ 6335 2115
NoConn ~ 6335 2215
NoConn ~ 6335 2315
NoConn ~ 6335 2415
NoConn ~ 6335 2515
NoConn ~ 6335 2615
NoConn ~ 6335 2715
NoConn ~ 7135 2610
NoConn ~ 7135 2710
NoConn ~ 7135 1810
NoConn ~ 7135 1910
NoConn ~ 8135 1820
NoConn ~ 8135 1920
NoConn ~ 8135 2420
NoConn ~ 8135 2720
NoConn ~ 8940 2035
NoConn ~ 8940 2135
NoConn ~ 8940 2235
NoConn ~ 8940 2335
NoConn ~ 8940 2435
NoConn ~ 8940 2635
NoConn ~ 8940 2735
Wire Wire Line
	1900 6370 1900 6465
Wire Wire Line
	2100 3975 2085 3975
Wire Wire Line
	6335 1915 6065 1915
$Comp
L power:GND #PWR0103
U 1 1 5BEA53DD
P 9410 1855
F 0 "#PWR0103" H 9410 1605 50  0001 C CNN
F 1 "GND" H 9415 1682 50  0000 C CNN
F 2 "" H 9410 1855 50  0001 C CNN
F 3 "" H 9410 1855 50  0001 C CNN
	1    9410 1855
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BEA5417
P 5920 1855
F 0 "#PWR0104" H 5920 1605 50  0001 C CNN
F 1 "GND" H 5925 1682 50  0000 C CNN
F 2 "" H 5920 1855 50  0001 C CNN
F 3 "" H 5920 1855 50  0001 C CNN
	1    5920 1855
	1    0    0    -1  
$EndComp
Wire Wire Line
	5920 1855 5920 1815
Wire Wire Line
	5920 1815 6335 1815
Wire Wire Line
	9410 1855 9410 1835
Wire Wire Line
	8940 1835 9410 1835
$Comp
L power:GND #PWR0105
U 1 1 5BEAA495
P 6795 2435
F 0 "#PWR0105" H 6795 2185 50  0001 C CNN
F 1 "GND" H 6800 2262 50  0000 C CNN
F 2 "" H 6795 2435 50  0001 C CNN
F 3 "" H 6795 2435 50  0001 C CNN
	1    6795 2435
	1    0    0    -1  
$EndComp
Wire Wire Line
	6795 2435 6795 2410
Wire Wire Line
	6795 2410 7135 2410
$Comp
L power:+5V #PWR0106
U 1 1 5BEACE6C
P 6830 1700
F 0 "#PWR0106" H 6830 1550 50  0001 C CNN
F 1 "+5V" H 6845 1873 50  0000 C CNN
F 2 "" H 6830 1700 50  0001 C CNN
F 3 "" H 6830 1700 50  0001 C CNN
	1    6830 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6830 2510 7135 2510
Wire Wire Line
	6830 2510 6830 1700
$Comp
L power:+3.3V #PWR0107
U 1 1 5BEB4B8C
P 8535 1690
F 0 "#PWR0107" H 8535 1540 50  0001 C CNN
F 1 "+3.3V" H 8550 1863 50  0000 C CNN
F 2 "" H 8535 1690 50  0001 C CNN
F 3 "" H 8535 1690 50  0001 C CNN
	1    8535 1690
	1    0    0    -1  
$EndComp
Wire Wire Line
	8535 2520 8535 1690
Wire Wire Line
	8135 2520 8535 2520
Text Label 8440 2620 2    50   ~ 0
IO13
$EndSCHEMATC

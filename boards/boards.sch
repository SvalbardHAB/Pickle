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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pickle"
Date "2016-07-04"
Rev "0.01"
Comp "SPS Svalbard Ballooning"
Comment1 "Universal balloon telemetry module"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG?
U 1 1 577A8E06
P 850 900
F 0 "#FLG?" H 850 995 50  0001 C CNN
F 1 "PWR_FLAG" H 850 1080 50  0000 C CNN
F 2 "" H 850 900 50  0000 C CNN
F 3 "" H 850 900 50  0000 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 577A8EAA
P 850 1100
F 0 "#PWR?" H 850 950 50  0001 C CNN
F 1 "VCC" H 850 1250 50  0000 C CNN
F 2 "" H 850 1100 50  0000 C CNN
F 3 "" H 850 1100 50  0000 C CNN
	1    850  1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  900  850  1100
$Comp
L PWR_FLAG #FLG?
U 1 1 577A8ECF
P 1350 900
F 0 "#FLG?" H 1350 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1080 50  0000 C CNN
F 2 "" H 1350 900 50  0000 C CNN
F 3 "" H 1350 900 50  0000 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 577A8EE3
P 1350 1100
F 0 "#PWR?" H 1350 850 50  0001 C CNN
F 1 "GND" H 1350 950 50  0000 C CNN
F 2 "" H 1350 1100 50  0000 C CNN
F 3 "" H 1350 1100 50  0000 C CNN
	1    1350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 900  1350 1100
$Comp
L VCC #PWR?
U 1 1 577A8F10
P 2050 800
F 0 "#PWR?" H 2050 650 50  0001 C CNN
F 1 "VCC" H 2050 950 50  0000 C CNN
F 2 "" H 2050 800 50  0000 C CNN
F 3 "" H 2050 800 50  0000 C CNN
	1    2050 800 
	1    0    0    -1  
$EndComp
$Comp
L XC6210 U?
U 1 1 577AA2F4
P 2650 950
F 0 "U?" H 2750 700 50  0000 C CNN
F 1 "XC6210" H 2650 1200 50  0000 C CNN
F 2 "" H 2650 950 50  0000 C CNN
F 3 "" H 2650 950 50  0000 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 800  2050 950 
Wire Wire Line
	2050 950  2350 950 
Wire Wire Line
	2350 950  2350 1100
$Comp
L C C?
U 1 1 577AA342
P 2150 1200
F 0 "C?" H 2175 1300 50  0000 L CNN
F 1 "1uF" H 2175 1100 50  0000 L CNN
F 2 "" H 2188 1050 50  0000 C CNN
F 3 "" H 2150 1200 50  0000 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 577AA373
P 3100 1200
F 0 "C?" H 3125 1300 50  0000 L CNN
F 1 "1uF" H 3125 1100 50  0000 L CNN
F 2 "" H 3138 1050 50  0000 C CNN
F 3 "" H 3100 1200 50  0000 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 950  3450 950 
Wire Wire Line
	3100 950  3100 1050
Wire Wire Line
	2150 950  2150 1050
Connection ~ 2150 950 
Wire Wire Line
	2150 1350 3100 1350
Wire Wire Line
	2650 1250 2650 1500
Connection ~ 2650 1350
$Comp
L GND #PWR?
U 1 1 577AA3D4
P 2650 1500
F 0 "#PWR?" H 2650 1250 50  0001 C CNN
F 1 "GND" H 2650 1350 50  0000 C CNN
F 2 "" H 2650 1500 50  0000 C CNN
F 3 "" H 2650 1500 50  0000 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577AA3FF
P 3450 950
F 0 "#PWR?" H 3450 800 50  0001 C CNN
F 1 "+3.3V" H 3450 1090 50  0000 C CNN
F 2 "" H 3450 950 50  0000 C CNN
F 3 "" H 3450 950 50  0000 C CNN
	1    3450 950 
	0    1    1    0   
$EndComp
Connection ~ 3100 950 
$EndSCHEMATC

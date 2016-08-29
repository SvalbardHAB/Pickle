opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F1519
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 26 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 26 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	dw 0x3FFF29E4 ;#
	FNCALL	_main,_InitSfr
	FNCALL	_main,_PowerUpDelay
	FNCALL	_main,_InitPort
	FNCALL	_main,_timer1_init
	FNCALL	_main,_timer2_init
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_BeepOff
	FNCALL	_main,_ModuleSelectModeEntryCheck
	FNCALL	_main,_Uart_init
	FNCALL	_main,_PowerOnMusic
	FNCALL	_main,_MenuConfig
	FNCALL	_main,_RFM98_Running
	FNCALL	_main,_TxLED_Deal
	FNCALL	_main,_RxLED_Deal
	FNCALL	_RFM98_Running,_RFM98_LoRaEntryTx
	FNCALL	_RFM98_Running,_RFM98_LoRaTxPacket
	FNCALL	_RFM98_Running,_RFM98_LoRaEntryRx
	FNCALL	_RFM98_Running,_RFM98_LoRaRxPacket
	FNCALL	_RFM98_Running,_BeepOn
	FNCALL	_RFM98_Running,_RFM98_LoRaReadRSSI
	FNCALL	_RFM98_Running,_RFM98_FskEntryTx
	FNCALL	_RFM98_Running,_RFM98_FskTxPacket
	FNCALL	_RFM98_Running,_RFM98_FskEntryRx
	FNCALL	_RFM98_Running,_RFM98_FskRxPacket
	FNCALL	_RFM98_Running,_RFM98_ReadRSSI
	FNCALL	_RFM98_Running,_RFM98_Standby
	FNCALL	_RFM98_Running,_RFM98_Sleep
	FNCALL	_RFM98_Running,_RFM98_EntryTestTx
	FNCALL	_RFM98_Running,_RFM98_TestTx
	FNCALL	_RFM98_Running,_RFM98_EntryTestRx
	FNCALL	_RFM98_Running,_RFM98_TestRx
	FNCALL	_MenuConfig,_KeyScan
	FNCALL	_MenuConfig,_RFParameterSelect
	FNCALL	_MenuConfig,_ModemSelect
	FNCALL	_MenuConfig,_WorkModeSelect
	FNCALL	_MenuConfig,_DisplayRFParameter
	FNCALL	_MenuConfig,_LCD_Display
	FNCALL	_RFM98_TestRx,_RFM98_FSKRxWaitStable
	FNCALL	_RFM98_EntryTestRx,_RFM98_TestConfig
	FNCALL	_RFM98_EntryTestRx,_SPIWrite
	FNCALL	_RFM98_TestTx,_RFM98_FSKTxWaitStable
	FNCALL	_RFM98_EntryTestTx,_RFM98_TestConfig
	FNCALL	_RFM98_EntryTestTx,_SPIWrite
	FNCALL	_RFM98_FskTxPacket,_RFM98_FSKTxWaitStable
	FNCALL	_RFM98_FskTxPacket,_BurstWrite
	FNCALL	_RFM98_FskTxPacket,_RFM98_Standby
	FNCALL	_RFM98_FskTxPacket,_SPIWrite
	FNCALL	_RFM98_FskEntryTx,_RFM98_Config
	FNCALL	_RFM98_FskEntryTx,_SPIWrite
	FNCALL	_RFM98_FskRxPacket,_RFM98_FSKRxWaitStable
	FNCALL	_RFM98_FskRxPacket,_SPIBurstRead
	FNCALL	_RFM98_FskRxPacket,_RFM98_FskClearFIFO
	FNCALL	_RFM98_FskEntryRx,_RFM98_Config
	FNCALL	_RFM98_FskEntryRx,_SPIWrite
	FNCALL	_RFM98_LoRaTxPacket,_RFM98_LoRaTxWaitStable
	FNCALL	_RFM98_LoRaTxPacket,_BurstWrite
	FNCALL	_RFM98_LoRaTxPacket,_SPIWrite
	FNCALL	_RFM98_LoRaTxPacket,_SPIRead
	FNCALL	_RFM98_LoRaTxPacket,_RFM98_LoRaClearIrq
	FNCALL	_RFM98_LoRaTxPacket,_RFM98_Standby
	FNCALL	_RFM98_LoRaEntryTx,_RFM98_Config
	FNCALL	_RFM98_LoRaEntryTx,_SPIWrite
	FNCALL	_RFM98_LoRaEntryTx,_RFM98_LoRaClearIrq
	FNCALL	_RFM98_LoRaEntryTx,_SPIRead
	FNCALL	_RFM98_LoRaRxPacket,_RFM98_LoRaRxWaitStable
	FNCALL	_RFM98_LoRaRxPacket,_SPIRead
	FNCALL	_RFM98_LoRaRxPacket,_SPIWrite
	FNCALL	_RFM98_LoRaRxPacket,_SPIBurstRead
	FNCALL	_RFM98_LoRaRxPacket,_RFM98_LoRaClearIrq
	FNCALL	_RFM98_LoRaEntryRx,_RFM98_Config
	FNCALL	_RFM98_LoRaEntryRx,_SPIWrite
	FNCALL	_RFM98_LoRaEntryRx,_RFM98_LoRaClearIrq
	FNCALL	_RFM98_LoRaEntryRx,_SPIRead
	FNCALL	_WorkModeSelect,_Clr_LCD
	FNCALL	_WorkModeSelect,_BeepOn
	FNCALL	_WorkModeSelect,_SaveRFParameterToFlash
	FNCALL	_ModemSelect,_BeepOn
	FNCALL	_ModemSelect,_InitSystemParameter
	FNCALL	_ModemSelect,_SaveRFParameterToFlash
	FNCALL	_RFParameterSelect,_BeepOn
	FNCALL	_RFParameterSelect,_SaveRFParameterToFlash
	FNCALL	_RFM98_TestConfig,_RFM98_Sleep
	FNCALL	_RFM98_TestConfig,___bmul
	FNCALL	_RFM98_TestConfig,_SPIWrite
	FNCALL	_RFM98_TestConfig,_RFM98_Standby
	FNCALL	_RFM98_FSKTxWaitStable,_SPIRead
	FNCALL	_RFM98_FSKRxWaitStable,_SPIRead
	FNCALL	_RFM98_ReadRSSI,_SPIRead
	FNCALL	_RFM98_LoRaTxWaitStable,_SPIRead
	FNCALL	_RFM98_LoRaReadRSSI,_SPIRead
	FNCALL	_RFM98_LoRaRxWaitStable,_SPIRead
	FNCALL	_RFM98_Config,_RFM98_Sleep
	FNCALL	_RFM98_Config,_RFM98_EntryLoRa
	FNCALL	_RFM98_Config,___bmul
	FNCALL	_RFM98_Config,_SPIWrite
	FNCALL	_RFM98_Config,_SPIRead
	FNCALL	_RFM98_Config,_RFM98_Standby
	FNCALL	_PowerOnMusic,_BeepOn
	FNCALL	_PowerOnMusic,_LCD_DisplayAll
	FNCALL	_PowerOnMusic,_LCD_Display
	FNCALL	_PowerOnMusic,_Clr_LCD
	FNCALL	_DisplayRFParameter,_SendStringToDispBuf
	FNCALL	_DisplayRFParameter,_BeepOn
	FNCALL	_DisplayRFParameter,_SendNumberToDispBuf
	FNCALL	_DisplayRFParameter,___lwdiv
	FNCALL	_SaveRFParameterToFlash,_FlashErase
	FNCALL	_SaveRFParameterToFlash,_FlashWrite
	FNCALL	_LCD_Init,_CK1622_WriteCmd
	FNCALL	_LCD_Init,_Clr_LCD
	FNCALL	_PowerUpDelay,_Delay_ms
	FNCALL	_RFM98_FskClearFIFO,_SPIWrite
	FNCALL	_BurstWrite,_SPICmd8bit
	FNCALL	_SPIBurstRead,_SPICmd8bit
	FNCALL	_SPIBurstRead,_SPIRead8bit
	FNCALL	_SPIRead,_SPICmd8bit
	FNCALL	_SPIRead,_SPIRead8bit
	FNCALL	_RFM98_LoRaClearIrq,_SPIWrite
	FNCALL	_RFM98_EntryLoRa,_SPIWrite
	FNCALL	_RFM98_Sleep,_SPIWrite
	FNCALL	_RFM98_Standby,_SPIWrite
	FNCALL	_ModuleSelectModeEntryCheck,_FlashRead
	FNCALL	_ModuleSelectModeEntryCheck,_InitSystemParameter
	FNCALL	_KeyScan,_KeyRead
	FNCALL	_LCD_Display,_SendSegDataToDispBuf
	FNCALL	_LCD_Display,_FlashDisplay
	FNCALL	_LCD_Display,_CK1622_WriteByte
	FNCALL	_SendNumberToDispBuf,___lwmod
	FNCALL	_SendNumberToDispBuf,___lwdiv
	FNCALL	_SendNumberToDispBuf,_AsciiToDisplay
	FNCALL	_SendStringToDispBuf,_AsciiToDisplay
	FNCALL	_Clr_LCD,_CK1622_WriteByte
	FNCALL	_FlashWrite,_FlashUnlock
	FNCALL	_FlashErase,_FlashUnlock
	FNROOT	_main
	FNCALL	_ISR_timer,i1_BeepOff
	FNCALL	intlevel1,_ISR_timer
	global	intlevel1
	FNROOT	intlevel1
	global	_LCDDigTable
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.h"
	line	37
_LCDDigTable:
	retlw	077h
	retlw	024h
	retlw	05Dh
	retlw	06Dh
	retlw	02Eh
	retlw	06Bh
	retlw	07Bh
	retlw	025h
	retlw	07Fh
	retlw	06Fh
	retlw	03Fh
	retlw	07Ah
	retlw	053h
	retlw	07Ch
	retlw	05Bh
	retlw	01Bh
	retlw	06Fh
	retlw	03Eh
	retlw	024h
	retlw	064h
	retlw	01Ah
	retlw	052h
	retlw	037h
	retlw	038h
	retlw	078h
	retlw	01Fh
	retlw	02Fh
	retlw	018h
	retlw	06Bh
	retlw	05Ah
	retlw	070h
	retlw	076h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	global	_RFM98ConfigTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	464
_RFM98ConfigTbl:
	retlw	02h
	retlw	04h

	retlw	03Dh
	retlw	05h

	retlw	0Bh
	retlw	0Bh

	retlw	023h
	retlw	0Ch

	retlw	012h
	retlw	012h

	retlw	0A0h
	retlw	01Fh

	retlw	0
	retlw	025h

	retlw	06h
	retlw	026h

	retlw	092h
	retlw	027h

	retlw	0AAh
	retlw	028h

	retlw	02Dh
	retlw	029h

	retlw	0D4h
	retlw	02Ah

	retlw	0
	retlw	030h

	retlw	040h
	retlw	031h

	retlw	015h
	retlw	032h

	retlw	095h
	retlw	035h

	global	_RFM98TestConfigTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	798
_RFM98TestConfigTbl:
	retlw	02h
	retlw	04h

	retlw	03Dh
	retlw	05h

	retlw	0Bh
	retlw	0Bh

	retlw	020h
	retlw	0Ch

	retlw	012h
	retlw	012h

	retlw	0A0h
	retlw	01Fh

	retlw	0
	retlw	025h

	retlw	0
	retlw	026h

	retlw	0
	retlw	031h

	global	_RFM98FSKRateTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	486
_RFM98FSKRateTbl:
	retlw	068h
	retlw	02h

	retlw	02Bh
	retlw	03h

	retlw	034h
	retlw	02h

	retlw	015h
	retlw	03h

	retlw	01Ah
	retlw	02h

	retlw	0Bh
	retlw	03h

	retlw	0Dh
	retlw	02h

	retlw	05h
	retlw	03h

	global	_RFM98LoRaBwTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	85
_RFM98LoRaBwTbl:
	retlw	0
	retlw	01h
	retlw	02h
	retlw	03h
	retlw	04h
	retlw	05h
	retlw	06h
	retlw	07h
	retlw	08h
	retlw	09h
	global	_RFM98PowerTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	72
_RFM98PowerTbl:
	retlw	0FFh
	retlw	09h

	retlw	0FCh
	retlw	09h

	retlw	0F9h
	retlw	09h

	retlw	0F6h
	retlw	09h

	global	_RFM98RxTable
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	494
_RFM98RxTable:
	retlw	0Fh
	retlw	09h

	retlw	0Ch
	retlw	040h

	retlw	0
	retlw	041h

	retlw	084h
	retlw	04Dh

	global	_RFM98SpreadFactorTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	80
_RFM98SpreadFactorTbl:
	retlw	06h
	retlw	07h
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	0Bh
	retlw	0Ch
	global	_RFM98FreqTbl
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	67
_RFM98FreqTbl:
	retlw	06Ch
	retlw	06h

	retlw	080h
	retlw	07h

	retlw	0
	retlw	08h

	global	_RFM98TxTable
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	502
_RFM98TxTable:
	retlw	0
	retlw	040h

	retlw	0
	retlw	041h

	retlw	087h
	retlw	04Dh

	global	_MusicTab_PowerOn
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	166
_MusicTab_PowerOn:
	retlw	080h
	retlw	0F5h

	retlw	0F4h
	retlw	01h

	retlw	080h
	retlw	0F6h

	retlw	0F4h
	retlw	01h

	retlw	0
	retlw	0F7h

	retlw	0F4h
	retlw	01h

	retlw	0
	retlw	0F7h

	retlw	0FAh
	retlw	0

	retlw	080h
	retlw	0F6h

	retlw	0FAh
	retlw	0

	retlw	0
	retlw	0F7h

	retlw	0F4h
	retlw	01h

	retlw	080h
	retlw	0F5h

	retlw	0FAh
	retlw	0

	retlw	0
	retlw	0F5h

	retlw	0FAh
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_MusicTab_KeyOver
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	202
_MusicTab_KeyOver:
	retlw	0
	retlw	0F1h

	retlw	0C8h
	retlw	0

	retlw	0
	retlw	0

	retlw	064h
	retlw	0

	retlw	0
	retlw	0F3h

	retlw	0C8h
	retlw	0

	retlw	0
	retlw	0

	retlw	064h
	retlw	0

	retlw	0
	retlw	0F2h

	retlw	0C8h
	retlw	0

	retlw	0
	retlw	0

	retlw	064h
	retlw	0

	retlw	0
	retlw	0F7h

	retlw	0C8h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_C_RFM98_LoRaBandBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	76
_C_RFM98_LoRaBandBuf:
	retlw	04Eh
	retlw	0

	retlw	068h
	retlw	0

	retlw	09Ch
	retlw	0

	retlw	0D0h
	retlw	0

	retlw	038h
	retlw	01h

	retlw	0A1h
	retlw	01h

	retlw	071h
	retlw	02h

	retlw	0E2h
	retlw	04h

	retlw	0C4h
	retlw	09h

	retlw	088h
	retlw	013h

	retlw	0
	retlw	0

	global	_RFM98Data
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	91
_RFM98Data:
	retlw	048h
	retlw	06Fh
	retlw	070h
	retlw	065h
	retlw	052h
	retlw	046h
	retlw	020h
	retlw	052h
	retlw	046h
	retlw	04Dh
	retlw	020h
	retlw	043h
	retlw	04Fh
	retlw	042h
	retlw	052h
	retlw	046h
	retlw	04Dh
	retlw	039h
	retlw	038h
	retlw	02Dh
	retlw	053h
	retlw	0
	global	_MusicTab_Error
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	219
_MusicTab_Error:
	retlw	0
	retlw	0F8h

	retlw	096h
	retlw	0

	retlw	0
	retlw	0

	retlw	032h
	retlw	0

	retlw	080h
	retlw	0F4h

	retlw	0C8h
	retlw	0

	retlw	0
	retlw	0

	retlw	032h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_MusicTab_KeyOK
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	196
_MusicTab_KeyOK:
	retlw	080h
	retlw	0F5h

	retlw	064h
	retlw	0

	retlw	0
	retlw	0F3h

	retlw	096h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_MusicTab_KeySet
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	190
_MusicTab_KeySet:
	retlw	0
	retlw	0F3h

	retlw	096h
	retlw	0

	retlw	080h
	retlw	0F5h

	retlw	064h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_C_RFM98_SpreadFactorBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	75
_C_RFM98_SpreadFactorBuf:
	retlw	06h
	retlw	07h
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	0Bh
	retlw	0Ch
	retlw	0
	global	_MusicTab_KeyErr
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	179
_MusicTab_KeyErr:
	retlw	0
	retlw	0F1h

	retlw	032h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_MusicTab_KeyMove
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	184
_MusicTab_KeyMove:
	retlw	080h
	retlw	0F4h

	retlw	064h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_MusicTab_RxSuccess
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	214
_MusicTab_RxSuccess:
	retlw	0
	retlw	0F3h

	retlw	032h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	global	_C_RFM98_LoRaRSSIBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	77
_C_RFM98_LoRaRSSIBuf:
	retlw	028h
	retlw	03Ch
	retlw	05Ah
	retlw	078h
	retlw	0
	global	_C_RFM98_ModuleName
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	67
_C_RFM98_ModuleName:
	retlw	039h
	retlw	038h
	retlw	020h
	retlw	020h
	retlw	0
	global	_C_RFM98_PowerBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	70
_C_RFM98_PowerBuf:
	retlw	014h
	retlw	011h
	retlw	0Dh
	retlw	0Bh
	retlw	0
	global	_C_RFM98_RSSIBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	73
_C_RFM98_RSSIBuf:
	retlw	019h
	retlw	032h
	retlw	046h
	retlw	05Fh
	retlw	0
	global	_C_RFM98_RateBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	69
_C_RFM98_RateBuf:
	retlw	0Ch
	retlw	018h
	retlw	030h
	retlw	060h
	retlw	0
	global	_C_RFM98_FreqBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	68
_C_RFM98_FreqBuf:
	retlw	0B2h
	retlw	01h

	retlw	0
	retlw	0

	global	_C_RFM98_ModemBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	74
_C_RFM98_ModemBuf:
	retlw	012h
	retlw	010h
	retlw	0
	global	_C_RFM98_BandBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	72
_C_RFM98_BandBuf:
	retlw	053h
	retlw	0
	global	_C_RFM98_FdevBuf
psect	stringtext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.h"
	line	71
_C_RFM98_FdevBuf:
	retlw	023h
	retlw	0
	global	_LCDDigTable
	global	_RFM98ConfigTbl
	global	_RFM98TestConfigTbl
	global	_RFM98FSKRateTbl
	global	_RFM98LoRaBwTbl
	global	_RFM98PowerTbl
	global	_RFM98RxTable
	global	_RFM98SpreadFactorTbl
	global	_RFM98FreqTbl
	global	_RFM98TxTable
	global	_MusicTab_PowerOn
	global	_MusicTab_KeyOver
	global	_C_RFM98_LoRaBandBuf
	global	_RFM98Data
	global	_MusicTab_Error
	global	_MusicTab_KeyOK
	global	_MusicTab_KeySet
	global	_C_RFM98_SpreadFactorBuf
	global	_MusicTab_KeyErr
	global	_MusicTab_KeyMove
	global	_MusicTab_RxSuccess
	global	_C_RFM98_LoRaRSSIBuf
	global	_C_RFM98_ModuleName
	global	_C_RFM98_PowerBuf
	global	_C_RFM98_RSSIBuf
	global	_C_RFM98_RateBuf
	global	_C_RFM98_FreqBuf
	global	_C_RFM98_ModemBuf
	global	_C_RFM98_BandBuf
	global	_C_RFM98_FdevBuf
	global	__DispSeg
	global	_RF_BandBuf
	global	_RF_FdevBuf
	global	_RF_FreqBuf
	global	_RF_LoRaBandWidthBuf
	global	_RF_ModemBuf
	global	_RF_ModuleName
	global	_RF_PowerBuf
	global	_RF_RSSIBuf
	global	_RF_RateBuf
	global	_gw_BeepTimer
	global	_gw_KeyDebounceTimer
	global	_gw_RF_SentInterval
	global	_gw_ReceiveDataCount
	global	_gw_SendDataCount
	global	_gw_TxLedTimer
	global	_gw_TxTimer
	global	_gb_BandBuf_Addr
	global	_gb_BeepOnCount
	global	_gb_BeepOnFlag
	global	_gb_BeepTimerH
	global	_gb_BeepTimerL
	global	_gb_DispFlashEnableFlag
	global	_gb_DispFlashFlag
	global	_gb_DispFlashFlagBackup
	global	_gb_ErrorFlag
	global	_gb_FdevBuf_Addr
	global	_gb_FirstPowerUpFlag
	global	_gb_FreqBuf_Addr
	global	_gb_KeyDownFlag
	global	_gb_KeyValue
	global	_gb_Modem_Addr_Backup
	global	_gb_ModuleWorkEnableFlag
	global	_gb_ModuleWorkMode
	global	_gb_ParameterChangeFlag
	global	_gb_PowerBuf_Addr
	global	_gb_RateBuf_Addr
	global	_gb_StatusRx
	global	_gb_StatusTx
	global	_gb_SysMode_Set
	global	_gb_SysTimer_1S
	global	_gb_TxLedCount
	global	_gb_WaitStableFlag
	global	_gb_WorkmodeBackup
	global	_gw_ToneBuf
	global	_gb_Modem_Addr
	global	_gb_SystemMode
	global	_DispBuf
	global	_DispBufCache
	global	_gw_LCDFlashTimer
	global	_gw_TimerCount
	global	_gb_RF_RSSI
	global	_gb_RxData
	global	_INTCON
_INTCON	set	11
	global	_PIR1
_PIR1	set	17
	global	_PIR2
_PIR2	set	18
	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_PORTD
_PORTD	set	15
	global	_PORTE
_PORTE	set	16
	global	_PR2
_PR2	set	27
	global	_T1CON
_T1CON	set	24
	global	_T2CON
_T2CON	set	28
	global	_TMR1H
_TMR1H	set	23
	global	_TMR1L
_TMR1L	set	22
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	96
	global	_RA1
_RA1	set	97
	global	_RA5
_RA5	set	101
	global	_RB0
_RB0	set	104
	global	_RB1
_RB1	set	105
	global	_RB2
_RB2	set	106
	global	_RB3
_RB3	set	107
	global	_RB5
_RB5	set	109
	global	_RC2
_RC2	set	114
	global	_RC3
_RC3	set	115
	global	_RC4
_RC4	set	116
	global	_RC5
_RC5	set	117
	global	_RD1
_RD1	set	121
	global	_RD2
_RD2	set	122
	global	_RD3
_RD3	set	123
	global	_RD4
_RD4	set	124
	global	_RD5
_RD5	set	125
	global	_RD6
_RD6	set	126
	global	_RD7
_RD7	set	127
	global	_RE0
_RE0	set	128
	global	_RE2
_RE2	set	130
	global	_TMR1IF
_TMR1IF	set	136
	global	_TMR1ON
_TMR1ON	set	192
	global	_TMR2IF
_TMR2IF	set	137
	global	_ADCON0
_ADCON0	set	157
	global	_OPTION_REG
_OPTION_REG	set	149
	global	_OSCCON
_OSCCON	set	153
	global	_PCON
_PCON	set	150
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_TRISD
_TRISD	set	143
	global	_TRISE
_TRISE	set	144
	global	_WDTCON
_WDTCON	set	151
	global	_RCIE
_RCIE	set	1165
	global	_TMR1IE
_TMR1IE	set	1160
	global	_TMR2IE
_TMR2IE	set	1161
	global	_TRISA1
_TRISA1	set	1121
	global	_TRISA5
_TRISA5	set	1125
	global	_TRISC6
_TRISC6	set	1142
	global	_TRISC7
_TRISC7	set	1143
	global	_TRISD0
_TRISD0	set	1144
	global	_TRISE0
_TRISE0	set	1152
	global	_TRISE1
_TRISE1	set	1153
	global	_TRISE2
_TRISE2	set	1154
	global	_TXIE
_TXIE	set	1164
	global	_APFCON
_APFCON	set	285
	global	_BORCON
_BORCON	set	278
	global	_FVRCON
_FVRCON	set	279
	global	_LATA
_LATA	set	268
	global	_LATB
_LATB	set	269
	global	_LATC
_LATC	set	270
	global	_LATD
_LATD	set	271
	global	_LATE
_LATE	set	272
	global	_LATD0
_LATD0	set	2168
	global	_PMADR
_PMADR	set	401
	global	_PMDAT
_PMDAT	set	403
	global	_ANSELA
_ANSELA	set	396
	global	_ANSELB
_ANSELB	set	397
	global	_ANSELC
_ANSELC	set	398
	global	_ANSELD
_ANSELD	set	399
	global	_ANSELE
_ANSELE	set	400
	global	_BAUDCON
_BAUDCON	set	415
	global	_PMCON2
_PMCON2	set	406
	global	_PMDATH
_PMDATH	set	404
	global	_PMDATL
_PMDATL	set	403
	global	_RCSTA
_RCSTA	set	413
	global	_SPBRGH
_SPBRGH	set	412
	global	_SPBRGL
_SPBRGL	set	411
	global	_TXSTA
_TXSTA	set	414
	global	_CFGS
_CFGS	set	3246
	global	_FREE
_FREE	set	3244
	global	_LWLO
_LWLO	set	3245
	global	_RD
_RD	set	3240
	global	_WR
_WR	set	3241
	global	_WREN
_WREN	set	3242
	global	_WPUB
_WPUB	set	525
	global	_WPUE
_WPUE	set	528
	
STR_19:	
	retlw	32	;' '
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	83	;'S'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	76	;'L'
	retlw	82	;'R'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	70	;'F'
	retlw	83	;'S'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	32	;' '
	retlw	84	;'T'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	76	;'L'
	retlw	82	;'R'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	70	;'F'
	retlw	83	;'S'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	32	;' '
	retlw	84	;'T'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	45	;'-'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	45	;'-'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	76	;'L'
	retlw	82	;'R'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	70	;'F'
	retlw	83	;'S'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	45	;'-'
	retlw	70	;'F'
	retlw	83	;'S'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	45	;'-'
	retlw	76	;'L'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
STR_18	equ	STR_5+0
STR_23	equ	STR_20+0
STR_22	equ	STR_20+1
STR_24	equ	STR_20+1
STR_25	equ	STR_20+1
STR_21	equ	STR_20+2
	file	"RFDK_RFM98_V2.1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_gb_Modem_Addr:
       ds      1

_gb_SystemMode:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
__DispSeg:
       ds      4

_RF_BandBuf:
       ds      2

_RF_FdevBuf:
       ds      2

_RF_FreqBuf:
       ds      2

_RF_LoRaBandWidthBuf:
       ds      2

_RF_ModemBuf:
       ds      2

_RF_ModuleName:
       ds      2

_RF_PowerBuf:
       ds      2

_RF_RSSIBuf:
       ds      2

_RF_RateBuf:
       ds      2

_gw_BeepTimer:
       ds      2

_gw_KeyDebounceTimer:
       ds      2

_gw_RF_SentInterval:
       ds      2

_gw_ReceiveDataCount:
       ds      2

_gw_SendDataCount:
       ds      2

_gw_TxLedTimer:
       ds      2

_gw_TxTimer:
       ds      2

_gb_BandBuf_Addr:
       ds      1

_gb_BeepOnCount:
       ds      1

_gb_BeepOnFlag:
       ds      1

_gb_BeepTimerH:
       ds      1

_gb_BeepTimerL:
       ds      1

_gb_DispFlashEnableFlag:
       ds      1

_gb_DispFlashFlag:
       ds      1

_gb_DispFlashFlagBackup:
       ds      1

_gb_ErrorFlag:
       ds      1

_gb_FdevBuf_Addr:
       ds      1

_gb_FirstPowerUpFlag:
       ds      1

_gb_FreqBuf_Addr:
       ds      1

_gb_KeyDownFlag:
       ds      1

_gb_KeyValue:
       ds      1

_gb_Modem_Addr_Backup:
       ds      1

_gb_ModuleWorkEnableFlag:
       ds      1

_gb_ModuleWorkMode:
       ds      1

_gb_ParameterChangeFlag:
       ds      1

_gb_PowerBuf_Addr:
       ds      1

_gb_RateBuf_Addr:
       ds      1

_gb_StatusRx:
       ds      1

_gb_StatusTx:
       ds      1

_gb_SysMode_Set:
       ds      1

_gb_SysTimer_1S:
       ds      1

_gb_TxLedCount:
       ds      1

_gb_WaitStableFlag:
       ds      1

_gb_WorkmodeBackup:
       ds      1

_gb_RF_RSSI:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_DispBuf:
       ds      32

_DispBufCache:
       ds      32

_gw_LCDFlashTimer:
       ds      2

_gw_TimerCount:
       ds      2

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_gb_RxData:
       ds      32

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_gw_ToneBuf:
       ds      60

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	044h
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	020h
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	03Ch
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	main@TxFlag
main@TxFlag:	; 1 bytes @ 0x0
	ds	1
	global	main@RxFlag
main@RxFlag:	; 1 bytes @ 0x1
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_RFM98_Config
?_RFM98_Config:	; 0 bytes @ 0x0
	global	?_InitSfr
?_InitSfr:	; 0 bytes @ 0x0
	global	?_PowerUpDelay
?_PowerUpDelay:	; 0 bytes @ 0x0
	global	?_InitPort
?_InitPort:	; 0 bytes @ 0x0
	global	?_timer1_init
?_timer1_init:	; 0 bytes @ 0x0
	global	?_timer2_init
?_timer2_init:	; 0 bytes @ 0x0
	global	?_Uart_init
?_Uart_init:	; 0 bytes @ 0x0
	global	?_FlashUnlock
?_FlashUnlock:	; 0 bytes @ 0x0
	global	?_CK1622_WriteCmd
?_CK1622_WriteCmd:	; 0 bytes @ 0x0
	global	?_Clr_LCD
?_Clr_LCD:	; 0 bytes @ 0x0
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	?_SendSegDataToDispBuf
?_SendSegDataToDispBuf:	; 0 bytes @ 0x0
	global	?_FlashDisplay
?_FlashDisplay:	; 0 bytes @ 0x0
	global	?_LCD_Display
?_LCD_Display:	; 0 bytes @ 0x0
	global	?_LCD_DisplayAll
?_LCD_DisplayAll:	; 0 bytes @ 0x0
	global	?_TxLED_Deal
?_TxLED_Deal:	; 0 bytes @ 0x0
	global	?_RxLED_Deal
?_RxLED_Deal:	; 0 bytes @ 0x0
	global	?_SaveRFParameterToFlash
?_SaveRFParameterToFlash:	; 0 bytes @ 0x0
	global	?_InitSystemParameter
?_InitSystemParameter:	; 0 bytes @ 0x0
	global	?_DisplayRFParameter
?_DisplayRFParameter:	; 0 bytes @ 0x0
	global	?_ModuleSelectModeEntryCheck
?_ModuleSelectModeEntryCheck:	; 0 bytes @ 0x0
	global	?_RFParameterSelect
?_RFParameterSelect:	; 0 bytes @ 0x0
	global	?_ModemSelect
?_ModemSelect:	; 0 bytes @ 0x0
	global	?_WorkModeSelect
?_WorkModeSelect:	; 0 bytes @ 0x0
	global	?_MenuConfig
?_MenuConfig:	; 0 bytes @ 0x0
	global	?_BeepOff
?_BeepOff:	; 0 bytes @ 0x0
	global	?_PowerOnMusic
?_PowerOnMusic:	; 0 bytes @ 0x0
	global	?_RFM98_Standby
?_RFM98_Standby:	; 0 bytes @ 0x0
	global	?_RFM98_Sleep
?_RFM98_Sleep:	; 0 bytes @ 0x0
	global	?_RFM98_EntryLoRa
?_RFM98_EntryLoRa:	; 0 bytes @ 0x0
	global	?_RFM98_LoRaClearIrq
?_RFM98_LoRaClearIrq:	; 0 bytes @ 0x0
	global	?_RFM98_LoRaEntryRx
?_RFM98_LoRaEntryRx:	; 0 bytes @ 0x0
	global	?_RFM98_LoRaRxWaitStable
?_RFM98_LoRaRxWaitStable:	; 0 bytes @ 0x0
	global	?_RFM98_LoRaEntryTx
?_RFM98_LoRaEntryTx:	; 0 bytes @ 0x0
	global	?_RFM98_LoRaTxWaitStable
?_RFM98_LoRaTxWaitStable:	; 0 bytes @ 0x0
	global	?_RFM98_FskClearFIFO
?_RFM98_FskClearFIFO:	; 0 bytes @ 0x0
	global	?_RFM98_FskEntryRx
?_RFM98_FskEntryRx:	; 0 bytes @ 0x0
	global	?_RFM98_FSKRxWaitStable
?_RFM98_FSKRxWaitStable:	; 0 bytes @ 0x0
	global	?_RFM98_FskEntryTx
?_RFM98_FskEntryTx:	; 0 bytes @ 0x0
	global	?_RFM98_FSKTxWaitStable
?_RFM98_FSKTxWaitStable:	; 0 bytes @ 0x0
	global	?_RFM98_TestConfig
?_RFM98_TestConfig:	; 0 bytes @ 0x0
	global	?_RFM98_EntryTestTx
?_RFM98_EntryTestTx:	; 0 bytes @ 0x0
	global	?_RFM98_TestTx
?_RFM98_TestTx:	; 0 bytes @ 0x0
	global	?_RFM98_EntryTestRx
?_RFM98_EntryTestRx:	; 0 bytes @ 0x0
	global	?_RFM98_TestRx
?_RFM98_TestRx:	; 0 bytes @ 0x0
	global	?_SPICmd8bit
?_SPICmd8bit:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR_timer
?_ISR_timer:	; 0 bytes @ 0x0
	global	??_ISR_timer
??_ISR_timer:	; 0 bytes @ 0x0
	global	?i1_BeepOff
?i1_BeepOff:	; 0 bytes @ 0x0
	global	??i1_BeepOff
??i1_BeepOff:	; 0 bytes @ 0x0
	global	?_SPIRead
?_SPIRead:	; 1 bytes @ 0x0
	global	?_AsciiToDisplay
?_AsciiToDisplay:	; 1 bytes @ 0x0
	global	?_KeyRead
?_KeyRead:	; 1 bytes @ 0x0
	global	?_KeyScan
?_KeyScan:	; 1 bytes @ 0x0
	global	?_RFM98_LoRaReadRSSI
?_RFM98_LoRaReadRSSI:	; 1 bytes @ 0x0
	global	?_RFM98_LoRaRxPacket
?_RFM98_LoRaRxPacket:	; 1 bytes @ 0x0
	global	?_RFM98_LoRaTxPacket
?_RFM98_LoRaTxPacket:	; 1 bytes @ 0x0
	global	?_RFM98_ReadRSSI
?_RFM98_ReadRSSI:	; 1 bytes @ 0x0
	global	?_RFM98_FskRxPacket
?_RFM98_FskRxPacket:	; 1 bytes @ 0x0
	global	?_RFM98_FskTxPacket
?_RFM98_FskTxPacket:	; 1 bytes @ 0x0
	global	?_SPIRead8bit
?_SPIRead8bit:	; 1 bytes @ 0x0
	ds	2
	global	?_BeepOn
?_BeepOn:	; 0 bytes @ 0x2
	global	??_InitSfr
??_InitSfr:	; 0 bytes @ 0x2
	global	??_InitPort
??_InitPort:	; 0 bytes @ 0x2
	global	??_timer1_init
??_timer1_init:	; 0 bytes @ 0x2
	global	??_timer2_init
??_timer2_init:	; 0 bytes @ 0x2
	global	??_Uart_init
??_Uart_init:	; 0 bytes @ 0x2
	global	?_FlashRead
?_FlashRead:	; 0 bytes @ 0x2
	global	??_FlashUnlock
??_FlashUnlock:	; 0 bytes @ 0x2
	global	?_FlashErase
?_FlashErase:	; 0 bytes @ 0x2
	global	?_FlashWrite
?_FlashWrite:	; 0 bytes @ 0x2
	global	?_CK1622_WriteByte
?_CK1622_WriteByte:	; 0 bytes @ 0x2
	global	??_CK1622_WriteCmd
??_CK1622_WriteCmd:	; 0 bytes @ 0x2
	global	??_AsciiToDisplay
??_AsciiToDisplay:	; 0 bytes @ 0x2
	global	??_SendSegDataToDispBuf
??_SendSegDataToDispBuf:	; 0 bytes @ 0x2
	global	??_FlashDisplay
??_FlashDisplay:	; 0 bytes @ 0x2
	global	??_LCD_DisplayAll
??_LCD_DisplayAll:	; 0 bytes @ 0x2
	global	?_Delay_ms
?_Delay_ms:	; 0 bytes @ 0x2
	global	??_KeyRead
??_KeyRead:	; 0 bytes @ 0x2
	global	??_TxLED_Deal
??_TxLED_Deal:	; 0 bytes @ 0x2
	global	??_RxLED_Deal
??_RxLED_Deal:	; 0 bytes @ 0x2
	global	??_InitSystemParameter
??_InitSystemParameter:	; 0 bytes @ 0x2
	global	??_BeepOff
??_BeepOff:	; 0 bytes @ 0x2
	global	??_SPICmd8bit
??_SPICmd8bit:	; 0 bytes @ 0x2
	global	??_SPIRead8bit
??_SPIRead8bit:	; 0 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	CK1622_WriteByte@dat
CK1622_WriteByte@dat:	; 1 bytes @ 0x2
	global	CK1622_WriteCmd@cmd
CK1622_WriteCmd@cmd:	; 1 bytes @ 0x2
	global	AsciiToDisplay@DispData
AsciiToDisplay@DispData:	; 1 bytes @ 0x2
	global	LCD_DisplayAll@i
LCD_DisplayAll@i:	; 1 bytes @ 0x2
	global	KeyRead@temp
KeyRead@temp:	; 1 bytes @ 0x2
	global	SPICmd8bit@WrPara
SPICmd8bit@WrPara:	; 1 bytes @ 0x2
	global	SPIRead8bit@RdPara
SPIRead8bit@RdPara:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	BeepOn@Tone
BeepOn@Tone:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	FlashRead@FlashAdr
FlashRead@FlashAdr:	; 4 bytes @ 0x2
	global	FlashErase@FlashAdr
FlashErase@FlashAdr:	; 4 bytes @ 0x2
	global	FlashWrite@FlashAdr
FlashWrite@FlashAdr:	; 4 bytes @ 0x2
	global	Delay_ms@time
Delay_ms@time:	; 4 bytes @ 0x2
	ds	1
	global	??_CK1622_WriteByte
??_CK1622_WriteByte:	; 0 bytes @ 0x3
	global	??_KeyScan
??_KeyScan:	; 0 bytes @ 0x3
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	CK1622_WriteByte@addr
CK1622_WriteByte@addr:	; 1 bytes @ 0x3
	global	AsciiToDisplay@Letter
AsciiToDisplay@Letter:	; 1 bytes @ 0x3
	global	FlashDisplay@i
FlashDisplay@i:	; 1 bytes @ 0x3
	global	KeyScan@keyValue
KeyScan@keyValue:	; 1 bytes @ 0x3
	global	SPICmd8bit@bitcnt
SPICmd8bit@bitcnt:	; 1 bytes @ 0x3
	global	SPIRead8bit@bitcnt
SPIRead8bit@bitcnt:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	CK1622_WriteCmd@temp
CK1622_WriteCmd@temp:	; 2 bytes @ 0x3
	ds	1
	global	??_BeepOn
??_BeepOn:	; 0 bytes @ 0x4
	global	??_SPIRead
??_SPIRead:	; 0 bytes @ 0x4
	global	?_SPIBurstRead
?_SPIBurstRead:	; 0 bytes @ 0x4
	global	?_BurstWrite
?_BurstWrite:	; 0 bytes @ 0x4
	global	?_SendStringToDispBuf
?_SendStringToDispBuf:	; 0 bytes @ 0x4
	global	KeyScan@temp
KeyScan@temp:	; 1 bytes @ 0x4
	global	SPIRead@adr
SPIRead@adr:	; 1 bytes @ 0x4
	global	SPIBurstRead@ptr
SPIBurstRead@ptr:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	CK1622_WriteByte@temp
CK1622_WriteByte@temp:	; 2 bytes @ 0x4
	global	SendStringToDispBuf@datBuf
SendStringToDispBuf@datBuf:	; 2 bytes @ 0x4
	global	BurstWrite@ptr
BurstWrite@ptr:	; 2 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	?_SPIWrite
?_SPIWrite:	; 0 bytes @ 0x5
	global	CK1622_WriteCmd@i
CK1622_WriteCmd@i:	; 1 bytes @ 0x5
	global	SPIRead@tmp
SPIRead@tmp:	; 1 bytes @ 0x5
	global	SPIBurstRead@length
SPIBurstRead@length:	; 1 bytes @ 0x5
	global	SPIWrite@WrPara
SPIWrite@WrPara:	; 2 bytes @ 0x5
	ds	1
	global	??_SPIBurstRead
??_SPIBurstRead:	; 0 bytes @ 0x6
	global	??_FlashErase
??_FlashErase:	; 0 bytes @ 0x6
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x6
	global	??_RFM98_LoRaRxWaitStable
??_RFM98_LoRaRxWaitStable:	; 0 bytes @ 0x6
	global	??_RFM98_LoRaReadRSSI
??_RFM98_LoRaReadRSSI:	; 0 bytes @ 0x6
	global	??_RFM98_LoRaTxWaitStable
??_RFM98_LoRaTxWaitStable:	; 0 bytes @ 0x6
	global	??_RFM98_ReadRSSI
??_RFM98_ReadRSSI:	; 0 bytes @ 0x6
	global	??_RFM98_FSKRxWaitStable
??_RFM98_FSKRxWaitStable:	; 0 bytes @ 0x6
	global	??_RFM98_FSKTxWaitStable
??_RFM98_FSKTxWaitStable:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	FlashRead@array
FlashRead@array:	; 1 bytes @ 0x6
	global	FlashWrite@array
FlashWrite@array:	; 1 bytes @ 0x6
	global	CK1622_WriteByte@i
CK1622_WriteByte@i:	; 1 bytes @ 0x6
	global	SendStringToDispBuf@j
SendStringToDispBuf@j:	; 1 bytes @ 0x6
	global	RFM98_LoRaTxWaitStable@temp
RFM98_LoRaTxWaitStable@temp:	; 1 bytes @ 0x6
	global	RFM98_ReadRSSI@temp
RFM98_ReadRSSI@temp:	; 1 bytes @ 0x6
	global	BurstWrite@length
BurstWrite@length:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	RFM98_LoRaReadRSSI@temp
RFM98_LoRaReadRSSI@temp:	; 2 bytes @ 0x6
	ds	1
	global	??_SPIWrite
??_SPIWrite:	; 0 bytes @ 0x7
	global	??_BurstWrite
??_BurstWrite:	; 0 bytes @ 0x7
	global	??_FlashRead
??_FlashRead:	; 0 bytes @ 0x7
	global	??_FlashWrite
??_FlashWrite:	; 0 bytes @ 0x7
	global	??_Clr_LCD
??_Clr_LCD:	; 0 bytes @ 0x7
	global	??_LCD_Display
??_LCD_Display:	; 0 bytes @ 0x7
	global	Clr_LCD@j
Clr_LCD@j:	; 1 bytes @ 0x7
	global	SendStringToDispBuf@i
SendStringToDispBuf@i:	; 1 bytes @ 0x7
	global	LCD_Display@i
LCD_Display@i:	; 1 bytes @ 0x7
	global	SPIWrite@bitcnt
SPIWrite@bitcnt:	; 1 bytes @ 0x7
	global	SPIBurstRead@adr
SPIBurstRead@adr:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_RFM98_Config
??_RFM98_Config:	; 0 bytes @ 0x8
	global	??_RFM98_Standby
??_RFM98_Standby:	; 0 bytes @ 0x8
	global	??_RFM98_Sleep
??_RFM98_Sleep:	; 0 bytes @ 0x8
	global	??_RFM98_EntryLoRa
??_RFM98_EntryLoRa:	; 0 bytes @ 0x8
	global	??_RFM98_LoRaClearIrq
??_RFM98_LoRaClearIrq:	; 0 bytes @ 0x8
	global	??_RFM98_FskClearFIFO
??_RFM98_FskClearFIFO:	; 0 bytes @ 0x8
	global	??_RFM98_TestConfig
??_RFM98_TestConfig:	; 0 bytes @ 0x8
	global	??_RFM98_TestTx
??_RFM98_TestTx:	; 0 bytes @ 0x8
	global	??_RFM98_TestRx
??_RFM98_TestRx:	; 0 bytes @ 0x8
	global	FlashRead@i
FlashRead@i:	; 1 bytes @ 0x8
	global	FlashWrite@i
FlashWrite@i:	; 1 bytes @ 0x8
	global	Clr_LCD@i
Clr_LCD@i:	; 1 bytes @ 0x8
	global	SendStringToDispBuf@length
SendStringToDispBuf@length:	; 1 bytes @ 0x8
	global	SPIBurstRead@i
SPIBurstRead@i:	; 1 bytes @ 0x8
	ds	1
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x9
	global	??_SaveRFParameterToFlash
??_SaveRFParameterToFlash:	; 0 bytes @ 0x9
	global	??_ModuleSelectModeEntryCheck
??_ModuleSelectModeEntryCheck:	; 0 bytes @ 0x9
	global	??_RFM98_LoRaRxPacket
??_RFM98_LoRaRxPacket:	; 0 bytes @ 0x9
	global	??_RFM98_LoRaTxPacket
??_RFM98_LoRaTxPacket:	; 0 bytes @ 0x9
	global	??_RFM98_FskRxPacket
??_RFM98_FskRxPacket:	; 0 bytes @ 0x9
	global	??_RFM98_FskTxPacket
??_RFM98_FskTxPacket:	; 0 bytes @ 0x9
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x9
	global	SendStringToDispBuf@addr
SendStringToDispBuf@addr:	; 1 bytes @ 0x9
	global	SaveRFParameterToFlash@i
SaveRFParameterToFlash@i:	; 1 bytes @ 0x9
	global	BeepOn@i
BeepOn@i:	; 1 bytes @ 0x9
	global	RFM98_FskTxPacket@TxFlag
RFM98_FskTxPacket@TxFlag:	; 1 bytes @ 0x9
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x9
	ds	1
	global	??_PowerUpDelay
??_PowerUpDelay:	; 0 bytes @ 0xA
	global	??_SendNumberToDispBuf
??_SendNumberToDispBuf:	; 0 bytes @ 0xA
	global	??_MenuConfig
??_MenuConfig:	; 0 bytes @ 0xA
	global	??_PowerOnMusic
??_PowerOnMusic:	; 0 bytes @ 0xA
	global	??_RFM98_LoRaEntryRx
??_RFM98_LoRaEntryRx:	; 0 bytes @ 0xA
	global	??_RFM98_LoRaEntryTx
??_RFM98_LoRaEntryTx:	; 0 bytes @ 0xA
	global	??_RFM98_EntryTestTx
??_RFM98_EntryTestTx:	; 0 bytes @ 0xA
	global	??_RFM98_EntryTestRx
??_RFM98_EntryTestRx:	; 0 bytes @ 0xA
	global	??_RFM98_Running
??_RFM98_Running:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_SendStringToDispBuf
??_SendStringToDispBuf:	; 0 bytes @ 0x0
	global	??_RFParameterSelect
??_RFParameterSelect:	; 0 bytes @ 0x0
	global	??_ModemSelect
??_ModemSelect:	; 0 bytes @ 0x0
	global	??_WorkModeSelect
??_WorkModeSelect:	; 0 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	RFM98_LoRaRxPacket@addr
RFM98_LoRaRxPacket@addr:	; 1 bytes @ 0x0
	global	RFM98_FskRxPacket@i
RFM98_FskRxPacket@i:	; 1 bytes @ 0x0
	global	RFM98_Config@mode
RFM98_Config@mode:	; 1 bytes @ 0x0
	global	RFM98_TestConfig@i
RFM98_TestConfig@i:	; 1 bytes @ 0x0
	global	BurstWrite@adr
BurstWrite@adr:	; 1 bytes @ 0x0
	global	Delay_ms@i
Delay_ms@i:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	RFM98_LoRaRxPacket@packet_size
RFM98_LoRaRxPacket@packet_size:	; 1 bytes @ 0x1
	global	RFM98_Config@tmp
RFM98_Config@tmp:	; 1 bytes @ 0x1
	global	RFM98_EntryTestTx@i
RFM98_EntryTestTx@i:	; 1 bytes @ 0x1
	global	RFM98_EntryTestRx@i
RFM98_EntryTestRx@i:	; 1 bytes @ 0x1
	global	BurstWrite@i
BurstWrite@i:	; 1 bytes @ 0x1
	ds	1
	global	ModemSelect@KeyValue
ModemSelect@KeyValue:	; 1 bytes @ 0x2
	global	WorkModeSelect@KeyValue
WorkModeSelect@KeyValue:	; 1 bytes @ 0x2
	global	RFM98_LoRaRxPacket@i
RFM98_LoRaRxPacket@i:	; 1 bytes @ 0x2
	global	RFM98_LoRaTxPacket@addr
RFM98_LoRaTxPacket@addr:	; 1 bytes @ 0x2
	global	RFM98_Config@i
RFM98_Config@i:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_RFM98_FskEntryRx
??_RFM98_FskEntryRx:	; 0 bytes @ 0x3
	global	??_RFM98_FskEntryTx
??_RFM98_FskEntryTx:	; 0 bytes @ 0x3
	global	RFM98_LoRaEntryRx@addr
RFM98_LoRaEntryRx@addr:	; 1 bytes @ 0x3
	global	RFM98_LoRaEntryTx@addr
RFM98_LoRaEntryTx@addr:	; 1 bytes @ 0x3
	global	RFM98_LoRaTxPacket@TxFlag
RFM98_LoRaTxPacket@TxFlag:	; 1 bytes @ 0x3
	ds	1
	global	?_SendNumberToDispBuf
?_SendNumberToDispBuf:	; 0 bytes @ 0x4
	global	RFParameterSelect@KeyValue
RFParameterSelect@KeyValue:	; 1 bytes @ 0x4
	global	SendNumberToDispBuf@dat
SendNumberToDispBuf@dat:	; 2 bytes @ 0x4
	ds	1
	global	RFM98_FskEntryRx@i
RFM98_FskEntryRx@i:	; 1 bytes @ 0x5
	global	RFM98_FskEntryTx@i
RFM98_FskEntryTx@i:	; 1 bytes @ 0x5
	ds	1
	global	?_RFM98_Running
?_RFM98_Running:	; 0 bytes @ 0x6
	global	SendNumberToDispBuf@length
SendNumberToDispBuf@length:	; 1 bytes @ 0x6
	global	RFM98_Running@WorkStatus
RFM98_Running@WorkStatus:	; 1 bytes @ 0x6
	ds	1
	global	SendNumberToDispBuf@temp
SendNumberToDispBuf@temp:	; 1 bytes @ 0x7
	global	RFM98_Running@ParaChangeFlag
RFM98_Running@ParaChangeFlag:	; 1 bytes @ 0x7
	ds	1
	global	SendNumberToDispBuf@addr
SendNumberToDispBuf@addr:	; 1 bytes @ 0x8
	global	RFM98_Running@TxFlag
RFM98_Running@TxFlag:	; 1 bytes @ 0x8
	ds	1
	global	??_DisplayRFParameter
??_DisplayRFParameter:	; 0 bytes @ 0x9
	global	RFM98_Running@RxFlag
RFM98_Running@RxFlag:	; 1 bytes @ 0x9
	ds	1
	global	RFM98_Running@RSSI
RFM98_Running@RSSI:	; 1 bytes @ 0xA
	ds	1
	global	RFM98_Running@mode
RFM98_Running@mode:	; 1 bytes @ 0xB
	ds	1
	global	RFM98_Running@temp
RFM98_Running@temp:	; 1 bytes @ 0xC
	ds	1
	global	DisplayRFParameter@TempDispBuf
DisplayRFParameter@TempDispBuf:	; 2 bytes @ 0xD
	ds	2
	global	MenuConfig@KeyValue
MenuConfig@KeyValue:	; 1 bytes @ 0xF
	ds	1
;;Data sizes: Strings 131, constant 373, data 0, bss 226, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     16      80
;; BANK1           80      2      70
;; BANK2           80      0      32
;; BANK3           80      0      60
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           80      0       0
;; BANK10          80      0       0
;; BANK11          80      0       0
;; BANK12          48      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; BurstWrite@ptr	PTR unsigned char  size(2) Largest target is 22
;;		 -> RFM98Data(CODE[22]), 
;;
;; SPIBurstRead@ptr	PTR unsigned char  size(1) Largest target is 32
;;		 -> gb_RxData(BANK2[32]), 
;;
;; RFM98_Running@RSSI	PTR unsigned char  size(1) Largest target is 1
;;		 -> gb_RF_RSSI(BANK0[1]), 
;;
;; RFM98_Running@RxFlag	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@RxFlag(BANK1[1]), 
;;
;; RFM98_Running@TxFlag	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@TxFlag(BANK1[1]), 
;;
;; BeepOn@Tone	PTR unsigned int  size(2) Largest target is 36
;;		 -> MusicTab_RxSuccess(CODE[8]), MusicTab_PowerOn(CODE[36]), MusicTab_KeyOver(CODE[32]), MusicTab_KeyErr(CODE[8]), 
;;		 -> MusicTab_KeyOK(CODE[12]), MusicTab_KeyMove(CODE[8]), MusicTab_KeySet(CODE[12]), MusicTab_Error(CODE[20]), 
;;
;; DisplayRFParameter@TempDispBuf	PTR unsigned char  size(2) Largest target is 7
;;		 -> STR_19(CODE[7]), STR_18(CODE[7]), STR_17(CODE[7]), STR_16(CODE[7]), 
;;		 -> STR_15(CODE[7]), STR_14(CODE[7]), STR_13(CODE[7]), STR_12(CODE[7]), 
;;		 -> STR_11(CODE[7]), STR_10(CODE[7]), STR_9(CODE[7]), STR_8(CODE[7]), 
;;		 -> STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[7]), 
;;
;; RF_LoRaBandWidthBuf	PTR unsigned int  size(2) Largest target is 22
;;		 -> NULL(NULL[0]), C_RFM98_LoRaBandBuf(CODE[22]), 
;;
;; RF_RSSIBuf	PTR unsigned char  size(2) Largest target is 5
;;		 -> NULL(NULL[0]), C_RFM98_LoRaRSSIBuf(CODE[5]), C_RFM98_RSSIBuf(CODE[5]), 
;;
;; RF_BandBuf	PTR unsigned char  size(2) Largest target is 2
;;		 -> NULL(NULL[0]), C_RFM98_BandBuf(CODE[2]), 
;;
;; RF_FdevBuf	PTR unsigned char  size(2) Largest target is 2
;;		 -> NULL(NULL[0]), C_RFM98_FdevBuf(CODE[2]), 
;;
;; RF_PowerBuf	PTR unsigned char  size(2) Largest target is 5
;;		 -> NULL(NULL[0]), C_RFM98_PowerBuf(CODE[5]), 
;;
;; RF_RateBuf	PTR unsigned char  size(2) Largest target is 8
;;		 -> NULL(NULL[0]), C_RFM98_SpreadFactorBuf(CODE[8]), C_RFM98_RateBuf(CODE[5]), 
;;
;; RF_FreqBuf	PTR unsigned int  size(2) Largest target is 4
;;		 -> NULL(NULL[0]), C_RFM98_FreqBuf(CODE[4]), 
;;
;; RF_ModuleName	PTR unsigned char  size(2) Largest target is 5
;;		 -> NULL(NULL[0]), C_RFM98_ModuleName(CODE[5]), 
;;
;; RF_ModemBuf	PTR unsigned char  size(2) Largest target is 3
;;		 -> NULL(NULL[0]), C_RFM98_ModemBuf(CODE[3]), 
;;
;; SendStringToDispBuf@datBuf	PTR unsigned char  size(2) Largest target is 7
;;		 -> NULL(NULL[0]), STR_25(CODE[4]), STR_24(CODE[4]), STR_23(CODE[5]), 
;;		 -> STR_22(CODE[4]), STR_21(CODE[3]), STR_20(CODE[5]), STR_19(CODE[7]), 
;;		 -> STR_18(CODE[7]), STR_17(CODE[7]), STR_16(CODE[7]), STR_15(CODE[7]), 
;;		 -> STR_14(CODE[7]), STR_13(CODE[7]), STR_12(CODE[7]), STR_11(CODE[7]), 
;;		 -> STR_10(CODE[7]), STR_9(CODE[7]), STR_8(CODE[7]), STR_7(CODE[7]), 
;;		 -> STR_6(CODE[7]), STR_5(CODE[7]), STR_4(CODE[7]), STR_3(CODE[7]), 
;;		 -> STR_2(CODE[7]), STR_1(CODE[7]), C_RFM98_ModuleName(CODE[5]), 
;;
;; FlashWrite@array	PTR unsigned char  size(1) Largest target is 32
;;		 -> gb_RxData(BANK2[32]), 
;;
;; FlashRead@array	PTR unsigned char  size(1) Largest target is 32
;;		 -> gb_RxData(BANK2[32]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _RFM98_Running->_RFM98_LoRaRxPacket
;;   _RFM98_Running->_BeepOn
;;   _RFM98_Running->_RFM98_FskTxPacket
;;   _RFM98_Running->_RFM98_FskRxPacket
;;   _RFM98_TestRx->_RFM98_FSKRxWaitStable
;;   _RFM98_EntryTestRx->_RFM98_TestConfig
;;   _RFM98_TestTx->_RFM98_FSKTxWaitStable
;;   _RFM98_EntryTestTx->_RFM98_TestConfig
;;   _RFM98_FskTxPacket->_BurstWrite
;;   _RFM98_FskEntryTx->_RFM98_Config
;;   _RFM98_FskRxPacket->_SPIBurstRead
;;   _RFM98_FskEntryRx->_RFM98_Config
;;   _RFM98_LoRaTxPacket->_BurstWrite
;;   _RFM98_LoRaEntryTx->_RFM98_Config
;;   _RFM98_LoRaRxPacket->_SPIBurstRead
;;   _RFM98_LoRaEntryRx->_RFM98_Config
;;   _WorkModeSelect->_BeepOn
;;   _WorkModeSelect->_SaveRFParameterToFlash
;;   _ModemSelect->_BeepOn
;;   _ModemSelect->_SaveRFParameterToFlash
;;   _RFParameterSelect->_BeepOn
;;   _RFParameterSelect->_SaveRFParameterToFlash
;;   _RFM98_TestConfig->_SPIWrite
;;   _RFM98_FSKTxWaitStable->_SPIRead
;;   _RFM98_FSKRxWaitStable->_SPIRead
;;   _RFM98_ReadRSSI->_SPIRead
;;   _RFM98_LoRaTxWaitStable->_SPIRead
;;   _RFM98_LoRaReadRSSI->_SPIRead
;;   _RFM98_LoRaRxWaitStable->_SPIRead
;;   _RFM98_Config->_SPIWrite
;;   _PowerOnMusic->_BeepOn
;;   _DisplayRFParameter->_SendStringToDispBuf
;;   _DisplayRFParameter->_BeepOn
;;   _SaveRFParameterToFlash->_FlashWrite
;;   _LCD_Init->_Clr_LCD
;;   _PowerUpDelay->_Delay_ms
;;   _RFM98_FskClearFIFO->_SPIWrite
;;   _BurstWrite->_SPICmd8bit
;;   _SPIBurstRead->_SPICmd8bit
;;   _SPIBurstRead->_SPIRead8bit
;;   _SPIRead->_SPICmd8bit
;;   _SPIRead->_SPIRead8bit
;;   _RFM98_LoRaClearIrq->_SPIWrite
;;   _RFM98_EntryLoRa->_SPIWrite
;;   _RFM98_Sleep->_SPIWrite
;;   _RFM98_Standby->_SPIWrite
;;   _ModuleSelectModeEntryCheck->_FlashRead
;;   _KeyScan->_KeyRead
;;   _LCD_Display->_CK1622_WriteByte
;;   _SendNumberToDispBuf->___lwmod
;;   _SendStringToDispBuf->_AsciiToDisplay
;;   _Clr_LCD->_CK1622_WriteByte
;;   ___lwmod->___lwdiv
;;   _SPIWrite->___bmul
;;
;; Critical Paths under _ISR_timer in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_MenuConfig
;;   _RFM98_Running->_RFM98_FskEntryTx
;;   _RFM98_Running->_RFM98_FskEntryRx
;;   _MenuConfig->_DisplayRFParameter
;;   _RFM98_EntryTestRx->_RFM98_TestConfig
;;   _RFM98_EntryTestTx->_RFM98_TestConfig
;;   _RFM98_FskTxPacket->_BurstWrite
;;   _RFM98_FskEntryTx->_RFM98_Config
;;   _RFM98_FskEntryRx->_RFM98_Config
;;   _RFM98_LoRaTxPacket->_BurstWrite
;;   _RFM98_LoRaEntryTx->_RFM98_Config
;;   _RFM98_LoRaEntryRx->_RFM98_Config
;;   _DisplayRFParameter->_SendNumberToDispBuf
;;   _PowerUpDelay->_Delay_ms
;;   _SendNumberToDispBuf->___lwmod
;;
;; Critical Paths under _ISR_timer in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK6
;;
;;   None.
;;
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR_timer in BANK12
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0   31476
;;                                              0 BANK1      2     2      0
;;                            _InitSfr
;;                       _PowerUpDelay
;;                           _InitPort
;;                        _timer1_init
;;                        _timer2_init
;;                           _LCD_Init
;;                            _BeepOff
;;         _ModuleSelectModeEntryCheck
;;                          _Uart_init
;;                       _PowerOnMusic
;;                         _MenuConfig
;;                      _RFM98_Running
;;                         _TxLED_Deal
;;                         _RxLED_Deal
;; ---------------------------------------------------------------------------------
;; (1) _RFM98_Running                                        7     2      5   16641
;;                                              6 BANK0      7     2      5
;;                  _RFM98_LoRaEntryTx
;;                 _RFM98_LoRaTxPacket
;;                  _RFM98_LoRaEntryRx
;;                 _RFM98_LoRaRxPacket
;;                             _BeepOn
;;                 _RFM98_LoRaReadRSSI
;;                   _RFM98_FskEntryTx
;;                  _RFM98_FskTxPacket
;;                   _RFM98_FskEntryRx
;;                  _RFM98_FskRxPacket
;;                     _RFM98_ReadRSSI
;;                      _RFM98_Standby
;;                        _RFM98_Sleep
;;                  _RFM98_EntryTestTx
;;                       _RFM98_TestTx
;;                  _RFM98_EntryTestRx
;;                       _RFM98_TestRx
;; ---------------------------------------------------------------------------------
;; (1) _MenuConfig                                           1     1      0   10650
;;                                             15 BANK0      1     1      0
;;                            _KeyScan
;;                  _RFParameterSelect
;;                        _ModemSelect
;;                     _WorkModeSelect
;;                 _DisplayRFParameter
;;                        _LCD_Display
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_TestRx                                         0     0      0     275
;;              _RFM98_FSKRxWaitStable
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_EntryTestRx                                    1     1      0    1128
;;                                              1 BANK0      1     1      0
;;                   _RFM98_TestConfig
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_TestTx                                         0     0      0     275
;;              _RFM98_FSKTxWaitStable
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_EntryTestTx                                    1     1      0    1128
;;                                              1 BANK0      1     1      0
;;                   _RFM98_TestConfig
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_FskTxPacket                                    1     1      0     819
;;                                              9 COMMON     1     1      0
;;              _RFM98_FSKTxWaitStable
;;                         _BurstWrite
;;                      _RFM98_Standby
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_FskEntryTx                                     3     3      0    1678
;;                                              3 BANK0      3     3      0
;;                       _RFM98_Config
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_FskRxPacket                                    2     2      0    1042
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;              _RFM98_FSKRxWaitStable
;;                       _SPIBurstRead
;;                 _RFM98_FskClearFIFO
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_FskEntryRx                                     3     3      0    1678
;;                                              3 BANK0      3     3      0
;;                       _RFM98_Config
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_LoRaTxPacket                                   2     2      0    1267
;;                                              2 BANK0      2     2      0
;;             _RFM98_LoRaTxWaitStable
;;                         _BurstWrite
;;                           _SPIWrite
;;                            _SPIRead
;;                 _RFM98_LoRaClearIrq
;;                      _RFM98_Standby
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_LoRaEntryTx                                    1     1      0    1894
;;                                              3 BANK0      1     1      0
;;                       _RFM98_Config
;;                           _SPIWrite
;;                 _RFM98_LoRaClearIrq
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_LoRaRxPacket                                   4     4      0    1493
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      3     3      0
;;             _RFM98_LoRaRxWaitStable
;;                            _SPIRead
;;                           _SPIWrite
;;                       _SPIBurstRead
;;                 _RFM98_LoRaClearIrq
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_LoRaEntryRx                                    1     1      0    1894
;;                                              3 BANK0      1     1      0
;;                       _RFM98_Config
;;                           _SPIWrite
;;                 _RFM98_LoRaClearIrq
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (2) _WorkModeSelect                                       3     3      0    1170
;;                                              0 BANK0      3     3      0
;;                            _Clr_LCD
;;                             _BeepOn
;;             _SaveRFParameterToFlash
;; ---------------------------------------------------------------------------------
;; (2) _ModemSelect                                          3     3      0     762
;;                                              0 BANK0      3     3      0
;;                             _BeepOn
;;                _InitSystemParameter
;;             _SaveRFParameterToFlash
;; ---------------------------------------------------------------------------------
;; (2) _RFParameterSelect                                    5     5      0     762
;;                                              0 BANK0      5     5      0
;;                             _BeepOn
;;             _SaveRFParameterToFlash
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_TestConfig                                     3     3      0     924
;;                                              8 COMMON     2     2      0
;;                                              0 BANK0      1     1      0
;;                        _RFM98_Sleep
;;                             ___bmul
;;                           _SPIWrite
;;                      _RFM98_Standby
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_FSKTxWaitStable                                2     2      0     275
;;                                              6 COMMON     2     2      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_FSKRxWaitStable                                2     2      0     275
;;                                              6 COMMON     2     2      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_ReadRSSI                                       1     1      0     349
;;                                              6 COMMON     1     1      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_LoRaTxWaitStable                               1     1      0     309
;;                                              6 COMMON     1     1      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (2) _RFM98_LoRaReadRSSI                                   2     2      0     315
;;                                              6 COMMON     2     2      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_LoRaRxWaitStable                               1     1      0     275
;;                                              6 COMMON     1     1      0
;;                            _SPIRead
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_Config                                         5     5      0    1375
;;                                              8 COMMON     2     2      0
;;                                              0 BANK0      3     3      0
;;                        _RFM98_Sleep
;;                    _RFM98_EntryLoRa
;;                             ___bmul
;;                           _SPIWrite
;;                            _SPIRead
;;                      _RFM98_Standby
;; ---------------------------------------------------------------------------------
;; (1) _PowerOnMusic                                         0     0      0    3246
;;                             _BeepOn
;;                     _LCD_DisplayAll
;;                        _LCD_Display
;;                            _Clr_LCD
;; ---------------------------------------------------------------------------------
;; (2) _DisplayRFParameter                                   6     6      0    5227
;;                                              9 BANK0      6     6      0
;;                _SendStringToDispBuf
;;                             _BeepOn
;;                _SendNumberToDispBuf
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (3) _SaveRFParameterToFlash                               1     1      0     322
;;                                              9 COMMON     1     1      0
;;                         _FlashErase
;;                         _FlashWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0     519
;;                    _CK1622_WriteCmd
;;                            _Clr_LCD
;; ---------------------------------------------------------------------------------
;; (1) _PowerUpDelay                                         0     0      0      99
;;                           _Delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_FskClearFIFO                                   0     0      0     105
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (3) _BurstWrite                                           7     4      3     294
;;                                              4 COMMON     5     2      3
;;                                              0 BANK0      2     2      0
;;                         _SPICmd8bit
;; ---------------------------------------------------------------------------------
;; (3) _SPIBurstRead                                         5     3      2     402
;;                                              4 COMMON     5     3      2
;;                         _SPICmd8bit
;;                        _SPIRead8bit
;; ---------------------------------------------------------------------------------
;; (4) _SPIRead                                              2     2      0     275
;;                                              4 COMMON     2     2      0
;;                         _SPICmd8bit
;;                        _SPIRead8bit
;; ---------------------------------------------------------------------------------
;; (3) _RFM98_LoRaClearIrq                                   0     0      0     105
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (4) _RFM98_EntryLoRa                                      0     0      0     105
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (4) _RFM98_Sleep                                          0     0      0     105
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (4) _RFM98_Standby                                        0     0      0     105
;;                           _SPIWrite
;; ---------------------------------------------------------------------------------
;; (1) _ModuleSelectModeEntryCheck                           0     0      0     161
;;                          _FlashRead
;;                _InitSystemParameter
;; ---------------------------------------------------------------------------------
;; (2) _KeyScan                                              2     2      0     179
;;                                              3 COMMON     2     2      0
;;                            _KeyRead
;; ---------------------------------------------------------------------------------
;; (2) _LCD_Display                                          1     1      0    2454
;;                                              7 COMMON     1     1      0
;;               _SendSegDataToDispBuf
;;                       _FlashDisplay
;;                   _CK1622_WriteByte
;; ---------------------------------------------------------------------------------
;; (3) _SendNumberToDispBuf                                  5     3      2    3353
;;                                              4 BANK0      5     3      2
;;                            ___lwmod
;;                            ___lwdiv
;;                     _AsciiToDisplay
;; ---------------------------------------------------------------------------------
;; (3) _SendStringToDispBuf                                 11     9      2    1241
;;                                              4 COMMON     6     4      2
;;                                              0 BANK0      5     5      0
;;                     _AsciiToDisplay
;; ---------------------------------------------------------------------------------
;; (3) _Clr_LCD                                              2     2      0     377
;;                                              7 COMMON     2     2      0
;;                   _CK1622_WriteByte
;; ---------------------------------------------------------------------------------
;; (4) _FlashWrite                                           7     2      5     192
;;                                              2 COMMON     7     2      5
;;                        _FlashUnlock
;; ---------------------------------------------------------------------------------
;; (4) _FlashErase                                           4     0      4      31
;;                                              2 COMMON     4     0      4
;;                        _FlashUnlock
;; ---------------------------------------------------------------------------------
;; (4) ___lwmod                                              5     1      4     232
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     241
;;                                              2 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               3     2      1     108
;;                                              2 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _Uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _timer2_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _timer1_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitPort                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitSfr                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _SPIRead8bit                                          2     2      0     108
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _SPICmd8bit                                           2     2      0     102
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _SPIWrite                                             3     1      2     105
;;                                              5 COMMON     3     1      2
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _BeepOff                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _BeepOn                                               8     6      2     316
;;                                              2 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (3) _InitSystemParameter                                  2     2      0       0
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _RxLED_Deal                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _TxLED_Deal                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _KeyRead                                              1     1      0      46
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Delay_ms                                            10     6      4      99
;;                                              2 COMMON     8     4      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DisplayAll                                       1     1      0      99
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _FlashDisplay                                         2     2      0    1950
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _SendSegDataToDispBuf                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _AsciiToDisplay                                       2     2      0     387
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _CK1622_WriteCmd                                      4     4      0     142
;;                                              2 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (3) _CK1622_WriteByte                                     5     4      1     241
;;                                              2 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (5) _FlashUnlock                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _FlashRead                                            7     2      5     161
;;                                              2 COMMON     7     2      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ISR_timer                                            2     2      0       0
;;                                              0 COMMON     2     2      0
;;                          i1_BeepOff
;; ---------------------------------------------------------------------------------
;; (7) i1_BeepOff                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitSfr
;;   _PowerUpDelay
;;     _Delay_ms
;;   _InitPort
;;   _timer1_init
;;   _timer2_init
;;   _LCD_Init
;;     _CK1622_WriteCmd
;;     _Clr_LCD
;;       _CK1622_WriteByte
;;   _BeepOff
;;   _ModuleSelectModeEntryCheck
;;     _FlashRead
;;     _InitSystemParameter
;;   _Uart_init
;;   _PowerOnMusic
;;     _BeepOn
;;     _LCD_DisplayAll
;;     _LCD_Display
;;       _SendSegDataToDispBuf
;;       _FlashDisplay
;;       _CK1622_WriteByte
;;     _Clr_LCD
;;       _CK1622_WriteByte
;;   _MenuConfig
;;     _KeyScan
;;       _KeyRead
;;     _RFParameterSelect
;;       _BeepOn
;;       _SaveRFParameterToFlash
;;         _FlashErase
;;           _FlashUnlock
;;         _FlashWrite
;;           _FlashUnlock
;;     _ModemSelect
;;       _BeepOn
;;       _InitSystemParameter
;;       _SaveRFParameterToFlash
;;         _FlashErase
;;           _FlashUnlock
;;         _FlashWrite
;;           _FlashUnlock
;;     _WorkModeSelect
;;       _Clr_LCD
;;         _CK1622_WriteByte
;;       _BeepOn
;;       _SaveRFParameterToFlash
;;         _FlashErase
;;           _FlashUnlock
;;         _FlashWrite
;;           _FlashUnlock
;;     _DisplayRFParameter
;;       _SendStringToDispBuf
;;         _AsciiToDisplay
;;       _BeepOn
;;       _SendNumberToDispBuf
;;         ___lwmod
;;           ___lwdiv (ARG)
;;         ___lwdiv
;;         _AsciiToDisplay
;;       ___lwdiv
;;     _LCD_Display
;;       _SendSegDataToDispBuf
;;       _FlashDisplay
;;       _CK1622_WriteByte
;;   _RFM98_Running
;;     _RFM98_LoRaEntryTx
;;       _RFM98_Config
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         _RFM98_EntryLoRa
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;       _RFM98_LoRaClearIrq
;;         _SPIWrite
;;           ___bmul (ARG)
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;     _RFM98_LoRaTxPacket
;;       _RFM98_LoRaTxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;       _BurstWrite
;;         _SPICmd8bit
;;       _SPIWrite
;;         ___bmul (ARG)
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;       _RFM98_LoRaClearIrq
;;         _SPIWrite
;;           ___bmul (ARG)
;;       _RFM98_Standby
;;         _SPIWrite
;;           ___bmul (ARG)
;;     _RFM98_LoRaEntryRx
;;       _RFM98_Config
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         _RFM98_EntryLoRa
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;       _RFM98_LoRaClearIrq
;;         _SPIWrite
;;           ___bmul (ARG)
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;     _RFM98_LoRaRxPacket
;;       _RFM98_LoRaRxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;       _SPIWrite
;;         ___bmul (ARG)
;;       _SPIBurstRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;       _RFM98_LoRaClearIrq
;;         _SPIWrite
;;           ___bmul (ARG)
;;     _BeepOn
;;     _RFM98_LoRaReadRSSI
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;     _RFM98_FskEntryTx
;;       _RFM98_Config
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         _RFM98_EntryLoRa
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_FskTxPacket
;;       _RFM98_FSKTxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;       _BurstWrite
;;         _SPICmd8bit
;;       _RFM98_Standby
;;         _SPIWrite
;;           ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_FskEntryRx
;;       _RFM98_Config
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         _RFM98_EntryLoRa
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_FskRxPacket
;;       _RFM98_FSKRxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;       _SPIBurstRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;       _RFM98_FskClearFIFO
;;         _SPIWrite
;;           ___bmul (ARG)
;;     _RFM98_ReadRSSI
;;       _SPIRead
;;         _SPICmd8bit
;;         _SPIRead8bit
;;     _RFM98_Standby
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_Sleep
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_EntryTestTx
;;       _RFM98_TestConfig
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_TestTx
;;       _RFM98_FSKTxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;     _RFM98_EntryTestRx
;;       _RFM98_TestConfig
;;         _RFM98_Sleep
;;           _SPIWrite
;;             ___bmul (ARG)
;;         ___bmul
;;         _SPIWrite
;;           ___bmul (ARG)
;;         _RFM98_Standby
;;           _SPIWrite
;;             ___bmul (ARG)
;;       _SPIWrite
;;         ___bmul (ARG)
;;     _RFM98_TestRx
;;       _RFM98_FSKRxWaitStable
;;         _SPIRead
;;           _SPICmd8bit
;;           _SPIRead8bit
;;   _TxLED_Deal
;;   _RxLED_Deal
;;
;; _ISR_timer (ROOT)
;;   i1_BeepOff
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      A       C       2       85.7%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       9       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      50       5      100.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      2      46       7       87.5%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0      20       9       40.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0      3C      11       75.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK6            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK6               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK7            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK7               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;ABS                  0      0      FE      20        0.0%
;;BITBANK8            50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BANK8               50      0       0      22        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITBANK9            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK9               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK10           50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK10              50      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK11           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BANK11              50      0       0      28        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITBANK12           30      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BANK12              30      0       0      30        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;DATA                 0      0     107      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RxFlag          1    1[BANK1 ] unsigned char 
;;  TxFlag          1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_InitSfr
;;		_PowerUpDelay
;;		_InitPort
;;		_timer1_init
;;		_timer2_init
;;		_LCD_Init
;;		_BeepOff
;;		_ModuleSelectModeEntryCheck
;;		_Uart_init
;;		_PowerOnMusic
;;		_MenuConfig
;;		_RFM98_Running
;;		_TxLED_Deal
;;		_RxLED_Deal
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 9
; Regs used in _main: [wreg-status,0+pclath+cstack]
	line	29
	
l17005:	
;main.c: 29: u8 TxFlag=0;
	movlb 1	; select bank1
	clrf	(main@TxFlag)^080h
	line	30
;main.c: 30: u8 RxFlag=0;
	clrf	(main@RxFlag)^080h
	line	32
	
l17007:	
;main.c: 32: InitSfr();
	fcall	_InitSfr
	line	33
	
l17009:	
;main.c: 33: PowerUpDelay();
	fcall	_PowerUpDelay
	line	34
	
l17011:	
;main.c: 34: InitPort();
	fcall	_InitPort
	line	35
	
l17013:	
;main.c: 35: timer1_init();
	fcall	_timer1_init
	line	36
	
l17015:	
;main.c: 36: timer2_init();
	fcall	_timer2_init
	line	37
	
l17017:	
;main.c: 37: LCD_Init();
	fcall	_LCD_Init
	line	38
	
l17019:	
;main.c: 38: BeepOff();
	fcall	_BeepOff
	line	39
	
l17021:	
;main.c: 39: ModuleSelectModeEntryCheck();
	fcall	_ModuleSelectModeEntryCheck
	line	40
	
l17023:	
;main.c: 40: Uart_init();
	fcall	_Uart_init
	line	41
	
l17025:	
;main.c: 41: PowerOnMusic();
	fcall	_PowerOnMusic
	line	45
	
l17027:	
;main.c: 44: {
;main.c: 45: MenuConfig();
	fcall	_MenuConfig
	line	46
	
l17029:	
;main.c: 46: if(gb_ModuleWorkEnableFlag)
	movlb 0	; select bank0
	movf	(_gb_ModuleWorkEnableFlag),w
	skipz
	goto	u11580
	goto	l17063
u11580:
	line	48
	
l17031:	
;main.c: 47: {
;main.c: 48: RFM98_Running(gb_SystemMode,gb_ModuleWorkMode,gb_ParameterChangeFlag,&TxFlag,&RxFlag,&gb_RF_RSSI);
	movf	(_gb_ModuleWorkMode),w
	movwf	(?_RFM98_Running)
	movf	(_gb_ParameterChangeFlag),w
	movwf	0+(?_RFM98_Running)+01h
	movlw	(main@TxFlag)&0ffh
	movwf	(0+?_RFM98_Running+02h)
	movlw	(main@RxFlag)&0ffh
	movwf	(0+?_RFM98_Running+03h)
	movlw	(_gb_RF_RSSI)&0ffh
	movwf	(0+?_RFM98_Running+04h)
	movf	(_gb_SystemMode),w
	fcall	_RFM98_Running
	line	50
	
l17033:	
;main.c: 50: if(TxFlag==1)
	movlb 1	; select bank1
	decf	(main@TxFlag)^080h,w
	skipz
	goto	u11591
	goto	u11590
u11591:
	goto	l17043
u11590:
	line	52
	
l17035:	
;main.c: 51: {
;main.c: 52: TxFlag=0;
	clrf	(main@TxFlag)^080h
	line	53
	
l17037:	
;main.c: 53: gw_SendDataCount++;
	movlb 0	; select bank0
	incf	(_gw_SendDataCount),f
	skipnz
	incf	(_gw_SendDataCount+1),f
	line	54
	
l17039:	
;main.c: 54: if(gw_SendDataCount>9999){gw_SendDataCount=0;}
	movlw	high(02710h)
	subwf	(_gw_SendDataCount+1),w
	movlw	low(02710h)
	skipnz
	subwf	(_gw_SendDataCount),w
	skipc
	goto	u11601
	goto	u11600
u11601:
	goto	l17043
u11600:
	
l17041:	
	clrf	(_gw_SendDataCount)
	clrf	(_gw_SendDataCount+1)
	line	56
	
l17043:	
;main.c: 55: }
;main.c: 56: if(RxFlag==1)
	movlb 1	; select bank1
	decf	(main@RxFlag)^080h,w
	skipz
	goto	u11611
	goto	u11610
u11611:
	goto	l17053
u11610:
	line	58
	
l17045:	
;main.c: 57: {
;main.c: 58: RxFlag=0;
	clrf	(main@RxFlag)^080h
	line	59
	
l17047:	
;main.c: 59: gw_ReceiveDataCount++;
	movlb 0	; select bank0
	incf	(_gw_ReceiveDataCount),f
	skipnz
	incf	(_gw_ReceiveDataCount+1),f
	line	60
	
l17049:	
;main.c: 60: if(gw_ReceiveDataCount>9999){gw_ReceiveDataCount=0;}
	movlw	high(02710h)
	subwf	(_gw_ReceiveDataCount+1),w
	movlw	low(02710h)
	skipnz
	subwf	(_gw_ReceiveDataCount),w
	skipc
	goto	u11621
	goto	u11620
u11621:
	goto	l17053
u11620:
	
l17051:	
	clrf	(_gw_ReceiveDataCount)
	clrf	(_gw_ReceiveDataCount+1)
	line	64
	
l17053:	
;main.c: 61: }
;main.c: 64: if(gb_ParameterChangeFlag==1){gb_ParameterChangeFlag=0;}
	movlb 0	; select bank0
	decf	(_gb_ParameterChangeFlag),w
	skipz
	goto	u11631
	goto	u11630
u11631:
	goto	l17057
u11630:
	
l17055:	
	clrf	(_gb_ParameterChangeFlag)
	line	65
	
l17057:	
;main.c: 65: if(gb_ModuleWorkMode!=0 && gb_ModuleWorkMode!=1 && gb_ModuleWorkMode!=2)
	movf	(_gb_ModuleWorkMode),w
	skipz
	goto	u11640
	goto	l17067
u11640:
	
l17059:	
	decf	(_gb_ModuleWorkMode),w
	skipnz
	goto	u11651
	goto	u11650
u11651:
	goto	l17067
u11650:
	
l17061:	
	movf	(_gb_ModuleWorkMode),w
	xorlw	02h&0ffh
	skipnz
	goto	u11661
	goto	u11660
u11661:
	goto	l17067
u11660:
	line	67
	
l17063:	
;main.c: 66: {
;main.c: 67: gb_StatusTx=0;
	clrf	(_gb_StatusTx)
	line	68
;main.c: 68: gb_StatusRx=0;
	clrf	(_gb_StatusRx)
	line	76
	
l17067:	
;main.c: 75: }
;main.c: 76: if(gb_ErrorFlag!=1)
	decf	(_gb_ErrorFlag),w
	skipnz
	goto	u11671
	goto	u11670
u11671:
	goto	l17027
u11670:
	line	78
	
l17069:	
;main.c: 77: {
;main.c: 78: TxLED_Deal();
	fcall	_TxLED_Deal
	line	79
	
l17071:	
;main.c: 79: RxLED_Deal();
	fcall	_RxLED_Deal
	goto	l17027
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	82
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RFM98_Running
psect	text2150,local,class=CODE,delta=2
global __ptext2150
__ptext2150:

;; *************** function _RFM98_Running *****************
;; Defined at:
;;		line 924 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;;  WorkStatus      1    6[BANK0 ] unsigned char 
;;  ParaChangeFl    1    7[BANK0 ] unsigned char 
;;  TxFlag          1    8[BANK0 ] PTR unsigned char 
;;		 -> main@TxFlag(1), 
;;  RxFlag          1    9[BANK0 ] PTR unsigned char 
;;		 -> main@RxFlag(1), 
;;  RSSI            1   10[BANK0 ] PTR unsigned char 
;;		 -> gb_RF_RSSI(1), 
;; Auto vars:     Size  Location     Type
;;  mode            1   11[BANK0 ] unsigned char 
;;  temp            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RFM98_LoRaEntryTx
;;		_RFM98_LoRaTxPacket
;;		_RFM98_LoRaEntryRx
;;		_RFM98_LoRaRxPacket
;;		_BeepOn
;;		_RFM98_LoRaReadRSSI
;;		_RFM98_FskEntryTx
;;		_RFM98_FskTxPacket
;;		_RFM98_FskEntryRx
;;		_RFM98_FskRxPacket
;;		_RFM98_ReadRSSI
;;		_RFM98_Standby
;;		_RFM98_Sleep
;;		_RFM98_EntryTestTx
;;		_RFM98_TestTx
;;		_RFM98_EntryTestRx
;;		_RFM98_TestRx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2150
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	924
	global	__size_of_RFM98_Running
	__size_of_RFM98_Running	equ	__end_of_RFM98_Running-_RFM98_Running
	
_RFM98_Running:	
	opt	stack 9
; Regs used in _RFM98_Running: [wreg-status,0+pclath+cstack]
;RFM98_Running@mode stored from wreg
	line	926
	movwf	(RFM98_Running@mode)
	
l16909:	
;DK_RFM98.c: 925: u8 temp;
;DK_RFM98.c: 926: if(WorkStatus==2)
	movf	(RFM98_Running@WorkStatus),w
	xorlw	02h&0ffh
	skipz
	goto	u11381
	goto	u11380
u11381:
	goto	l16939
u11380:
	goto	l16937
	line	931
	
l16913:	
;DK_RFM98.c: 931: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11391
	goto	u11390
u11391:
	goto	l5471
u11390:
	line	933
	
l16915:	
;DK_RFM98.c: 932: {
;DK_RFM98.c: 933: RFM98_LoRaEntryTx();
	fcall	_RFM98_LoRaEntryTx
	line	934
	
l5471:	
	line	935
;DK_RFM98.c: 934: }
;DK_RFM98.c: 935: temp=RFM98_LoRaTxPacket();
	fcall	_RFM98_LoRaTxPacket
	movwf	(RFM98_Running@temp)
	line	936
	
l16917:	
;DK_RFM98.c: 936: if(temp==1){*TxFlag=1;}
	decf	(RFM98_Running@temp),w
	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l16981
u11400:
	
l16919:	
	movf	(RFM98_Running@TxFlag),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l16981
	line	939
	
l16921:	
;DK_RFM98.c: 939: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l16925
u11410:
	line	941
	
l16923:	
;DK_RFM98.c: 940: {
;DK_RFM98.c: 941: RFM98_LoRaEntryRx();
	fcall	_RFM98_LoRaEntryRx
	line	943
	
l16925:	
;DK_RFM98.c: 942: }
;DK_RFM98.c: 943: temp=RFM98_LoRaRxPacket();
	fcall	_RFM98_LoRaRxPacket
	movwf	(RFM98_Running@temp)
	line	944
	
l16927:	
;DK_RFM98.c: 944: if(temp==1)
	decf	(RFM98_Running@temp),w
	skipz
	goto	u11421
	goto	u11420
u11421:
	goto	l16933
u11420:
	line	946
	
l16929:	
;DK_RFM98.c: 945: {
;DK_RFM98.c: 946: *RxFlag=1;
	movf	(RFM98_Running@RxFlag),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	947
	
l16931:	
;DK_RFM98.c: 947: BeepOn((u16*)MusicTab_RxSuccess);
	movlw	low(_MusicTab_RxSuccess|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_RxSuccess|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	950
	
l16933:	
;DK_RFM98.c: 948: }
;DK_RFM98.c: 950: *RSSI=RFM98_LoRaReadRSSI();
	movf	(RFM98_Running@RSSI),w
	movwf	fsr1l
	clrf fsr1h	
	
	fcall	_RFM98_LoRaReadRSSI
	movwf	indf1
	line	951
;DK_RFM98.c: 951: break;
	goto	l16981
	line	928
	
l16937:	
	movf	(RFM98_Running@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 43 to 44
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	43^0	; case 43
	skipnz
	goto	l16913
	xorlw	44^43	; case 44
	skipnz
	goto	l16921
	goto	l16981
	opt asmopt_on

	line	954
	
l16939:	
;DK_RFM98.c: 954: else if(WorkStatus==0)
	movf	(RFM98_Running@WorkStatus),f
	skipz
	goto	u11431
	goto	u11430
u11431:
	goto	l16969
u11430:
	goto	l16967
	line	959
	
l16943:	
;DK_RFM98.c: 959: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11441
	goto	u11440
u11441:
	goto	l5481
u11440:
	line	961
	
l16945:	
;DK_RFM98.c: 960: {
;DK_RFM98.c: 961: RFM98_FskEntryTx();
	fcall	_RFM98_FskEntryTx
	line	962
	
l5481:	
	line	963
;DK_RFM98.c: 962: }
;DK_RFM98.c: 963: temp=RFM98_FskTxPacket();
	fcall	_RFM98_FskTxPacket
	movwf	(RFM98_Running@temp)
	line	964
	
l16947:	
;DK_RFM98.c: 964: if(temp==1){*TxFlag=1;}
	decf	(RFM98_Running@temp),w
	skipz
	goto	u11451
	goto	u11450
u11451:
	goto	l16981
u11450:
	goto	l16919
	line	967
	
l16951:	
;DK_RFM98.c: 967: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11461
	goto	u11460
u11461:
	goto	l16955
u11460:
	line	969
	
l16953:	
;DK_RFM98.c: 968: {
;DK_RFM98.c: 969: RFM98_FskEntryRx();
	fcall	_RFM98_FskEntryRx
	line	971
	
l16955:	
;DK_RFM98.c: 970: }
;DK_RFM98.c: 971: temp=RFM98_FskRxPacket();
	fcall	_RFM98_FskRxPacket
	movwf	(RFM98_Running@temp)
	line	972
	
l16957:	
;DK_RFM98.c: 972: if(temp==1)
	decf	(RFM98_Running@temp),w
	skipz
	goto	u11471
	goto	u11470
u11471:
	goto	l16963
u11470:
	line	974
	
l16959:	
;DK_RFM98.c: 973: {
;DK_RFM98.c: 974: *RxFlag=1;
	movf	(RFM98_Running@RxFlag),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	975
	
l16961:	
;DK_RFM98.c: 975: BeepOn((u16*)MusicTab_RxSuccess);
	movlw	low(_MusicTab_RxSuccess|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_RxSuccess|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	978
	
l16963:	
;DK_RFM98.c: 976: }
;DK_RFM98.c: 978: *RSSI=RFM98_ReadRSSI();
	movf	(RFM98_Running@RSSI),w
	movwf	fsr1l
	clrf fsr1h	
	
	fcall	_RFM98_ReadRSSI
	movwf	indf1
	line	979
;DK_RFM98.c: 979: break;
	goto	l16981
	line	956
	
l16967:	
	movf	(RFM98_Running@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 37 to 38
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l16943
	xorlw	38^37	; case 38
	skipnz
	goto	l16951
	goto	l16981
	opt asmopt_on

	line	982
	
l16969:	
;DK_RFM98.c: 982: else if(WorkStatus==3)
	movf	(RFM98_Running@WorkStatus),w
	xorlw	03h&0ffh
	skipz
	goto	u11481
	goto	u11480
u11481:
	goto	l16975
u11480:
	line	984
	
l16971:	
;DK_RFM98.c: 983: {
;DK_RFM98.c: 984: if(gb_WorkmodeBackup!=3)
	movf	(_gb_WorkmodeBackup),w
	xorlw	03h&0ffh
	skipnz
	goto	u11491
	goto	u11490
u11491:
	goto	l16981
u11490:
	line	985
	
l16973:	
;DK_RFM98.c: 985: RFM98_Standby();
	fcall	_RFM98_Standby
	goto	l16981
	line	987
	
l16975:	
;DK_RFM98.c: 987: else if(WorkStatus==4)
	movf	(RFM98_Running@WorkStatus),w
	xorlw	04h&0ffh
	skipz
	goto	u11501
	goto	u11500
u11501:
	goto	l16981
u11500:
	line	989
	
l16977:	
;DK_RFM98.c: 988: {
;DK_RFM98.c: 989: if(gb_WorkmodeBackup!=4)
	movf	(_gb_WorkmodeBackup),w
	xorlw	04h&0ffh
	skipnz
	goto	u11511
	goto	u11510
u11511:
	goto	l16981
u11510:
	line	990
	
l16979:	
;DK_RFM98.c: 990: RFM98_Sleep();
	fcall	_RFM98_Sleep
	line	992
	
l16981:	
;DK_RFM98.c: 991: }
;DK_RFM98.c: 992: if(WorkStatus==2 || WorkStatus==0)
	movf	(RFM98_Running@WorkStatus),w
	xorlw	02h&0ffh
	skipnz
	goto	u11521
	goto	u11520
u11521:
	goto	l16985
u11520:
	
l16983:	
	movf	(RFM98_Running@WorkStatus),f
	skipz
	goto	u11531
	goto	u11530
u11531:
	goto	l17003
u11530:
	line	994
	
l16985:	
;DK_RFM98.c: 993: {
;DK_RFM98.c: 994: if(mode==0x21)
	movf	(RFM98_Running@mode),w
	xorlw	021h&0ffh
	skipz
	goto	u11541
	goto	u11540
u11541:
	goto	l16993
u11540:
	line	996
	
l16987:	
;DK_RFM98.c: 995: {
;DK_RFM98.c: 996: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11551
	goto	u11550
u11551:
	goto	l16991
u11550:
	line	998
	
l16989:	
;DK_RFM98.c: 997: {
;DK_RFM98.c: 998: RFM98_EntryTestTx();
	fcall	_RFM98_EntryTestTx
	line	1000
	
l16991:	
;DK_RFM98.c: 999: }
;DK_RFM98.c: 1000: RFM98_TestTx();
	fcall	_RFM98_TestTx
	line	1001
;DK_RFM98.c: 1001: }
	goto	l17003
	line	1002
	
l16993:	
;DK_RFM98.c: 1002: else if(mode==0x22)
	movf	(RFM98_Running@mode),w
	xorlw	022h&0ffh
	skipz
	goto	u11561
	goto	u11560
u11561:
	goto	l17003
u11560:
	line	1004
	
l16995:	
;DK_RFM98.c: 1003: {
;DK_RFM98.c: 1004: if(ParaChangeFlag==1)
	decf	(RFM98_Running@ParaChangeFlag),w
	skipz
	goto	u11571
	goto	u11570
u11571:
	goto	l16999
u11570:
	line	1006
	
l16997:	
;DK_RFM98.c: 1005: {
;DK_RFM98.c: 1006: RFM98_EntryTestRx();
	fcall	_RFM98_EntryTestRx
	line	1008
	
l16999:	
;DK_RFM98.c: 1007: }
;DK_RFM98.c: 1008: RFM98_TestRx();
	fcall	_RFM98_TestRx
	line	1010
	
l17001:	
;DK_RFM98.c: 1010: *RSSI=RFM98_ReadRSSI();
	movf	(RFM98_Running@RSSI),w
	movwf	fsr1l
	clrf fsr1h	
	
	fcall	_RFM98_ReadRSSI
	movwf	indf1
	line	1013
	
l17003:	
;DK_RFM98.c: 1011: }
;DK_RFM98.c: 1012: }
;DK_RFM98.c: 1013: gb_WorkmodeBackup=WorkStatus;
	movf	(RFM98_Running@WorkStatus),w
	movwf	(_gb_WorkmodeBackup)
	line	1014
	
l5501:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_Running
	__end_of_RFM98_Running:
;; =============== function _RFM98_Running ends ============

	signat	_RFM98_Running,24696
	global	_MenuConfig
psect	text2151,local,class=CODE,delta=2
global __ptext2151
__ptext2151:

;; *************** function _MenuConfig *****************
;; Defined at:
;;		line 902 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyValue        1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/1
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_KeyScan
;;		_RFParameterSelect
;;		_ModemSelect
;;		_WorkModeSelect
;;		_DisplayRFParameter
;;		_LCD_Display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2151
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	902
	global	__size_of_MenuConfig
	__size_of_MenuConfig	equ	__end_of_MenuConfig-_MenuConfig
	
_MenuConfig:	
	opt	stack 9
; Regs used in _MenuConfig: [wreg-status,0+pclath+cstack]
	line	903
	
l16897:	
;DK_PIC16_App.c: 903: u8 KeyValue=KeyScan();
	fcall	_KeyScan
	movwf	(MenuConfig@KeyValue)
	line	905
	
l16899:	
;DK_PIC16_App.c: 905: if(gb_SystemMode==0x02)
	movf	(_gb_SystemMode),w
	xorlw	02h&0ffh
	skipz
	goto	u11361
	goto	u11360
u11361:
	goto	l16903
u11360:
	line	907
	
l16901:	
;DK_PIC16_App.c: 906: {
;DK_PIC16_App.c: 907: RFParameterSelect(KeyValue);
	movf	(MenuConfig@KeyValue),w
	fcall	_RFParameterSelect
	line	908
;DK_PIC16_App.c: 908: }
	goto	l4075
	line	909
	
l16903:	
;DK_PIC16_App.c: 909: else if(gb_SystemMode==0x04)
	movf	(_gb_SystemMode),w
	xorlw	04h&0ffh
	skipz
	goto	u11371
	goto	u11370
u11371:
	goto	l16907
u11370:
	line	911
	
l16905:	
;DK_PIC16_App.c: 910: {
;DK_PIC16_App.c: 911: ModemSelect(KeyValue);
	movf	(MenuConfig@KeyValue),w
	fcall	_ModemSelect
	line	912
;DK_PIC16_App.c: 912: }
	goto	l4075
	line	915
	
l16907:	
;DK_PIC16_App.c: 913: else
;DK_PIC16_App.c: 914: {
;DK_PIC16_App.c: 915: WorkModeSelect(KeyValue);
	movf	(MenuConfig@KeyValue),w
	fcall	_WorkModeSelect
	line	916
	
l4075:	
	line	917
;DK_PIC16_App.c: 916: }
;DK_PIC16_App.c: 917: DisplayRFParameter();
	fcall	_DisplayRFParameter
	line	919
;DK_PIC16_App.c: 919: LCD_Display();
	fcall	_LCD_Display
	line	920
	
l4078:	
	return
	opt stack 0
GLOBAL	__end_of_MenuConfig
	__end_of_MenuConfig:
;; =============== function _MenuConfig ends ============

	signat	_MenuConfig,88
	global	_RFM98_TestRx
psect	text2152,local,class=CODE,delta=2
global __ptext2152
__ptext2152:

;; *************** function _RFM98_TestRx *****************
;; Defined at:
;;		line 901 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_FSKRxWaitStable
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2152
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	901
	global	__size_of_RFM98_TestRx
	__size_of_RFM98_TestRx	equ	__end_of_RFM98_TestRx-_RFM98_TestRx
	
_RFM98_TestRx:	
	opt	stack 9
; Regs used in _RFM98_TestRx: [wreg+status,2+status,0+pclath+cstack]
	line	902
	
l16889:	
;DK_RFM98.c: 902: RFM98_FSKRxWaitStable();
	fcall	_RFM98_FSKRxWaitStable
	line	903
	
l16891:	
;DK_RFM98.c: 903: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u11351
	goto	u11350
u11351:
	goto	l5465
u11350:
	line	905
	
l16893:	
;DK_RFM98.c: 904: {
;DK_RFM98.c: 905: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	906
	
l16895:	
;DK_RFM98.c: 906: gb_StatusRx=1;
	clrf	(_gb_StatusRx)
	incf	(_gb_StatusRx),f
	line	908
	
l5465:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_TestRx
	__end_of_RFM98_TestRx:
;; =============== function _RFM98_TestRx ends ============

	signat	_RFM98_TestRx,88
	global	_RFM98_EntryTestRx
psect	text2153,local,class=CODE,delta=2
global __ptext2153
__ptext2153:

;; *************** function _RFM98_EntryTestRx *****************
;; Defined at:
;;		line 887 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_TestConfig
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2153
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	887
	global	__size_of_RFM98_EntryTestRx
	__size_of_RFM98_EntryTestRx	equ	__end_of_RFM98_EntryTestRx-_RFM98_EntryTestRx
	
_RFM98_EntryTestRx:	
	opt	stack 9
; Regs used in _RFM98_EntryTestRx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	889
	
l16865:	
;DK_RFM98.c: 888: u8 i;
;DK_RFM98.c: 889: TRISA1=1;
	movlb 1	; select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	890
	
l16867:	
;DK_RFM98.c: 890: RFM98_TestConfig();
	fcall	_RFM98_TestConfig
	line	891
	
l16869:	
;DK_RFM98.c: 891: for(i=0;i<4;i++)
	clrf	(RFM98_EntryTestRx@i)
	line	892
	
l16875:	
;DK_RFM98.c: 892: SPIWrite(RFM98RxTable[i]);
	lslf	(RFM98_EntryTestRx@i),w
	addlw	low(_RFM98RxTable|8000h)
	movwf	fsr0l
	movlw	high(_RFM98RxTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	891
	
l16877:	
	incf	(RFM98_EntryTestRx@i),f
	
l16879:	
	movlw	(04h)
	subwf	(RFM98_EntryTestRx@i),w
	skipc
	goto	u11341
	goto	u11340
u11341:
	goto	l16875
u11340:
	line	893
	
l16881:	
;DK_RFM98.c: 893: SPIWrite(0x0105+0x08);
	movlw	low(010Dh)
	movwf	(?_SPIWrite)
	movlw	high(010Dh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	895
	
l16883:	
;DK_RFM98.c: 895: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	896
	
l16885:	
;DK_RFM98.c: 896: gb_StatusTx=0;
	clrf	(_gb_StatusTx)
	line	897
	
l16887:	
;DK_RFM98.c: 897: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	898
	
l5461:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_EntryTestRx
	__end_of_RFM98_EntryTestRx:
;; =============== function _RFM98_EntryTestRx ends ============

	signat	_RFM98_EntryTestRx,88
	global	_RFM98_TestTx
psect	text2154,local,class=CODE,delta=2
global __ptext2154
__ptext2154:

;; *************** function _RFM98_TestTx *****************
;; Defined at:
;;		line 869 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_FSKTxWaitStable
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2154
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	869
	global	__size_of_RFM98_TestTx
	__size_of_RFM98_TestTx	equ	__end_of_RFM98_TestTx-_RFM98_TestTx
	
_RFM98_TestTx:	
	opt	stack 9
; Regs used in _RFM98_TestTx: [wreg+status,2+status,0+pclath+cstack]
	line	870
	
l16855:	
;DK_RFM98.c: 870: RFM98_FSKTxWaitStable();
	fcall	_RFM98_FSKTxWaitStable
	line	871
	
l16857:	
;DK_RFM98.c: 871: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u11331
	goto	u11330
u11331:
	goto	l5456
u11330:
	line	873
	
l16859:	
;DK_RFM98.c: 872: {
;DK_RFM98.c: 873: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	874
	
l16861:	
;DK_RFM98.c: 874: gb_StatusTx=1;
	clrf	(_gb_StatusTx)
	incf	(_gb_StatusTx),f
	line	876
	
l16863:	
;DK_RFM98.c: 876: RA1=1;
	bsf	(97/8),(97)&7
	line	878
	
l5456:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_TestTx
	__end_of_RFM98_TestTx:
;; =============== function _RFM98_TestTx ends ============

	signat	_RFM98_TestTx,88
	global	_RFM98_EntryTestTx
psect	text2155,local,class=CODE,delta=2
global __ptext2155
__ptext2155:

;; *************** function _RFM98_EntryTestTx *****************
;; Defined at:
;;		line 853 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_TestConfig
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2155
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	853
	global	__size_of_RFM98_EntryTestTx
	__size_of_RFM98_EntryTestTx	equ	__end_of_RFM98_EntryTestTx-_RFM98_EntryTestTx
	
_RFM98_EntryTestTx:	
	opt	stack 9
; Regs used in _RFM98_EntryTestTx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	856
	
l16831:	
;DK_RFM98.c: 854: u8 i;
;DK_RFM98.c: 856: TRISA1=0;
	movlb 1	; select bank1
	bcf	(1121/8)^080h,(1121)&7
	line	857
;DK_RFM98.c: 857: RA1=0;
	movlb 0	; select bank0
	bcf	(97/8),(97)&7
	line	858
	
l16833:	
;DK_RFM98.c: 858: RFM98_TestConfig();
	fcall	_RFM98_TestConfig
	line	859
	
l16835:	
;DK_RFM98.c: 859: for(i=0;i<3;i++)
	clrf	(RFM98_EntryTestTx@i)
	line	860
	
l16841:	
;DK_RFM98.c: 860: SPIWrite(RFM98TxTable[i]);
	lslf	(RFM98_EntryTestTx@i),w
	addlw	low(_RFM98TxTable|8000h)
	movwf	fsr0l
	movlw	high(_RFM98TxTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	859
	
l16843:	
	incf	(RFM98_EntryTestTx@i),f
	
l16845:	
	movlw	(03h)
	subwf	(RFM98_EntryTestTx@i),w
	skipc
	goto	u11321
	goto	u11320
u11321:
	goto	l16841
u11320:
	line	861
	
l16847:	
;DK_RFM98.c: 861: SPIWrite(0x0100+0x20+0x08+0x03);
	movlw	low(012Bh)
	movwf	(?_SPIWrite)
	movlw	high(012Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	863
	
l16849:	
;DK_RFM98.c: 863: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	864
	
l16851:	
;DK_RFM98.c: 864: gb_StatusRx=0;
	clrf	(_gb_StatusRx)
	line	865
	
l16853:	
;DK_RFM98.c: 865: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	866
	
l5452:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_EntryTestTx
	__end_of_RFM98_EntryTestTx:
;; =============== function _RFM98_EntryTestTx ends ============

	signat	_RFM98_EntryTestTx,88
	global	_RFM98_FskTxPacket
psect	text2156,local,class=CODE,delta=2
global __ptext2156
__ptext2156:

;; *************** function _RFM98_FskTxPacket *****************
;; Defined at:
;;		line 677 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  TxFlag          1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_FSKTxWaitStable
;;		_BurstWrite
;;		_RFM98_Standby
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2156
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	677
	global	__size_of_RFM98_FskTxPacket
	__size_of_RFM98_FskTxPacket	equ	__end_of_RFM98_FskTxPacket-_RFM98_FskTxPacket
	
_RFM98_FskTxPacket:	
	opt	stack 9
; Regs used in _RFM98_FskTxPacket: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	678
	
l16783:	
;DK_RFM98.c: 678: u8 TxFlag=0;
	clrf	(RFM98_FskTxPacket@TxFlag)
	line	680
	
l16785:	
;DK_RFM98.c: 680: RFM98_FSKTxWaitStable();
	fcall	_RFM98_FSKTxWaitStable
	line	681
	
l16787:	
;DK_RFM98.c: 681: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u11251
	goto	u11250
u11251:
	goto	l16803
u11250:
	line	683
	
l16789:	
;DK_RFM98.c: 682: {
;DK_RFM98.c: 683: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	684
	
l16791:	
;DK_RFM98.c: 684: if(gb_StatusTx==0)
	movf	(_gb_StatusTx),f
	skipz
	goto	u11261
	goto	u11260
u11261:
	goto	l16803
u11260:
	line	686
	
l16793:	
;DK_RFM98.c: 685: {
;DK_RFM98.c: 686: gb_StatusTx=1;
	clrf	(_gb_StatusTx)
	incf	(_gb_StatusTx),f
	line	687
	
l16795:	
;DK_RFM98.c: 687: gw_TxTimer=gw_RF_SentInterval;
	movf	(_gw_RF_SentInterval+1),w
	movwf	(_gw_TxTimer+1)
	movf	(_gw_RF_SentInterval),w
	movwf	(_gw_TxTimer)
	line	688
	
l16797:	
;DK_RFM98.c: 688: BurstWrite(0x00, (u8 *)RFM98Data, 21);
	movlw	low(_RFM98Data|8000h)
	movwf	(?_BurstWrite)
	movlw	high(_RFM98Data|8000h)
	movwf	((?_BurstWrite))+1
	movlw	(015h)
	movwf	0+(?_BurstWrite)+02h
	movlw	(0)
	fcall	_BurstWrite
	line	689
	
l16799:	
;DK_RFM98.c: 689: TxFlag=1;
	clrf	(RFM98_FskTxPacket@TxFlag)
	incf	(RFM98_FskTxPacket@TxFlag),f
	line	690
	
l16801:	
;DK_RFM98.c: 690: gb_WaitStableFlag=3;
	movlw	(03h)
	movwf	(_gb_WaitStableFlag)
	line	693
	
l16803:	
;DK_RFM98.c: 691: }
;DK_RFM98.c: 692: }
;DK_RFM98.c: 693: if(gb_StatusTx==1)
	decf	(_gb_StatusTx),w
	skipz
	goto	u11271
	goto	u11270
u11271:
	goto	l16827
u11270:
	line	695
	
l16805:	
;DK_RFM98.c: 694: {
;DK_RFM98.c: 695: if(gb_WaitStableFlag==3 && RB5)
	movf	(_gb_WaitStableFlag),w
	xorlw	03h&0ffh
	skipz
	goto	u11281
	goto	u11280
u11281:
	goto	l16813
u11280:
	
l16807:	
	btfss	(109/8),(109)&7
	goto	u11291
	goto	u11290
u11291:
	goto	l16813
u11290:
	line	697
	
l16809:	
;DK_RFM98.c: 696: {
;DK_RFM98.c: 697: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	698
	
l16811:	
;DK_RFM98.c: 698: RFM98_Standby();
	fcall	_RFM98_Standby
	line	700
	
l16813:	
;DK_RFM98.c: 699: }
;DK_RFM98.c: 700: if(gw_TxTimer==0)
	movf	((_gw_TxTimer+1)),w
	iorwf	((_gw_TxTimer)),w
	skipz
	goto	u11301
	goto	u11300
u11301:
	goto	l16819
u11300:
	line	702
	
l16815:	
;DK_RFM98.c: 701: {
;DK_RFM98.c: 702: gw_TxTimer=gw_RF_SentInterval;
	movf	(_gw_RF_SentInterval+1),w
	movwf	(_gw_TxTimer+1)
	movf	(_gw_RF_SentInterval),w
	movwf	(_gw_TxTimer)
	line	703
;DK_RFM98.c: 703: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	704
;DK_RFM98.c: 704: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	706
	
l16817:	
;DK_RFM98.c: 706: SPIWrite(0x0103+0x08);
	movlw	low(010Bh)
	movwf	(?_SPIWrite)
	movlw	high(010Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	708
	
l16819:	
;DK_RFM98.c: 707: }
;DK_RFM98.c: 708: if(gb_WaitStableFlag==2)
	movf	(_gb_WaitStableFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u11311
	goto	u11310
u11311:
	goto	l16827
u11310:
	line	710
	
l16821:	
;DK_RFM98.c: 709: {
;DK_RFM98.c: 710: BurstWrite(0x00, (u8 *)RFM98Data, 21);
	movlw	low(_RFM98Data|8000h)
	movwf	(?_BurstWrite)
	movlw	high(_RFM98Data|8000h)
	movwf	((?_BurstWrite))+1
	movlw	(015h)
	movwf	0+(?_BurstWrite)+02h
	movlw	(0)
	fcall	_BurstWrite
	line	711
	
l16823:	
;DK_RFM98.c: 711: TxFlag=1;
	clrf	(RFM98_FskTxPacket@TxFlag)
	incf	(RFM98_FskTxPacket@TxFlag),f
	line	712
	
l16825:	
;DK_RFM98.c: 712: gb_WaitStableFlag=3;
	movlw	(03h)
	movwf	(_gb_WaitStableFlag)
	line	715
	
l16827:	
;DK_RFM98.c: 713: }
;DK_RFM98.c: 714: }
;DK_RFM98.c: 715: return TxFlag;
	movf	(RFM98_FskTxPacket@TxFlag),w
	line	716
	
l5409:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FskTxPacket
	__end_of_RFM98_FskTxPacket:
;; =============== function _RFM98_FskTxPacket ends ============

	signat	_RFM98_FskTxPacket,89
	global	_RFM98_FskEntryTx
psect	text2157,local,class=CODE,delta=2
global __ptext2157
__ptext2157:

;; *************** function _RFM98_FskEntryTx *****************
;; Defined at:
;;		line 630 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_Config
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2157
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	630
	global	__size_of_RFM98_FskEntryTx
	__size_of_RFM98_FskEntryTx	equ	__end_of_RFM98_FskEntryTx-_RFM98_FskEntryTx
	
_RFM98_FskEntryTx:	
	opt	stack 9
; Regs used in _RFM98_FskEntryTx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	633
	
l16749:	
;DK_RFM98.c: 631: u8 i;
;DK_RFM98.c: 633: RFM98_Config(1);
	movlw	(01h)
	fcall	_RFM98_Config
	line	634
	
l16751:	
;DK_RFM98.c: 634: for(i=0;i<2;i++)
	clrf	(RFM98_FskEntryTx@i)
	line	635
	
l16757:	
;DK_RFM98.c: 635: SPIWrite(RFM98FSKRateTbl[gb_RateBuf_Addr][i]);
	movf	(_gb_RateBuf_Addr),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low(_RFM98FSKRateTbl|8000h)
	movwf	(??_RFM98_FskEntryTx+0)+0
	movlw	high(_RFM98FSKRateTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_FskEntryTx+0)+0
	lslf	(RFM98_FskEntryTx@i),w
	addwf	(??_RFM98_FskEntryTx+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_FskEntryTx+0)+1,w
	skipnc
	incf	(??_RFM98_FskEntryTx+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	634
	
l16759:	
	incf	(RFM98_FskEntryTx@i),f
	
l16761:	
	movlw	(02h)
	subwf	(RFM98_FskEntryTx@i),w
	skipc
	goto	u11231
	goto	u11230
u11231:
	goto	l16757
u11230:
	line	636
	
l16763:	
;DK_RFM98.c: 636: for(i=0;i<3;i++)
	clrf	(RFM98_FskEntryTx@i)
	line	637
	
l16769:	
;DK_RFM98.c: 637: SPIWrite(RFM98TxTable[i]);
	lslf	(RFM98_FskEntryTx@i),w
	addlw	low(_RFM98TxTable|8000h)
	movwf	fsr0l
	movlw	high(_RFM98TxTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	636
	
l16771:	
	incf	(RFM98_FskEntryTx@i),f
	
l16773:	
	movlw	(03h)
	subwf	(RFM98_FskEntryTx@i),w
	skipc
	goto	u11241
	goto	u11240
u11241:
	goto	l16769
u11240:
	line	638
	
l16775:	
;DK_RFM98.c: 638: SPIWrite(0x0103+0x08);
	movlw	low(010Bh)
	movwf	(?_SPIWrite)
	movlw	high(010Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	640
	
l16777:	
;DK_RFM98.c: 640: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	641
	
l16779:	
;DK_RFM98.c: 641: gb_StatusRx=0;
	clrf	(_gb_StatusRx)
	line	642
	
l16781:	
;DK_RFM98.c: 642: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	643
	
l5393:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FskEntryTx
	__end_of_RFM98_FskEntryTx:
;; =============== function _RFM98_FskEntryTx ends ============

	signat	_RFM98_FskEntryTx,88
	global	_RFM98_FskRxPacket
psect	text2158,local,class=CODE,delta=2
global __ptext2158
__ptext2158:

;; *************** function _RFM98_FskRxPacket *****************
;; Defined at:
;;		line 592 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_FSKRxWaitStable
;;		_SPIBurstRead
;;		_RFM98_FskClearFIFO
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2158
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	592
	global	__size_of_RFM98_FskRxPacket
	__size_of_RFM98_FskRxPacket	equ	__end_of_RFM98_FskRxPacket-_RFM98_FskRxPacket
	
_RFM98_FskRxPacket:	
	opt	stack 9
; Regs used in _RFM98_FskRxPacket: [wreg-status,0+pclath+cstack]
	line	595
	
l16691:	
;DK_RFM98.c: 593: u8 i;
;DK_RFM98.c: 595: RFM98_FSKRxWaitStable();
	fcall	_RFM98_FSKRxWaitStable
	line	596
	
l16693:	
;DK_RFM98.c: 596: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u11161
	goto	u11160
u11161:
	goto	l16699
u11160:
	line	598
	
l16695:	
;DK_RFM98.c: 597: {
;DK_RFM98.c: 598: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	599
	
l16697:	
;DK_RFM98.c: 599: gb_StatusRx=1;
	clrf	(_gb_StatusRx)
	incf	(_gb_StatusRx),f
	line	602
	
l16699:	
;DK_RFM98.c: 600: }
;DK_RFM98.c: 602: if((RB5) && (gb_StatusRx==1))
	btfss	(109/8),(109)&7
	goto	u11171
	goto	u11170
u11171:
	goto	l16741
u11170:
	
l16701:	
	decf	(_gb_StatusRx),w
	skipz
	goto	u11181
	goto	u11180
u11181:
	goto	l16741
u11180:
	line	604
	
l16703:	
;DK_RFM98.c: 603: {
;DK_RFM98.c: 604: for(i=0;i<32;i++)
	clrf	(RFM98_FskRxPacket@i)
	line	605
	
l16709:	
;DK_RFM98.c: 605: gb_RxData[i] = 0x00;
	movf	(RFM98_FskRxPacket@i),w
	addlw	_gb_RxData&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	604
	
l16711:	
	incf	(RFM98_FskRxPacket@i),f
	
l16713:	
	movlw	(020h)
	subwf	(RFM98_FskRxPacket@i),w
	skipc
	goto	u11191
	goto	u11190
u11191:
	goto	l16709
u11190:
	line	607
	
l16715:	
;DK_RFM98.c: 607: SPIBurstRead(0x00, gb_RxData, 21);
	movlw	(_gb_RxData)&0ffh
	movwf	(?_SPIBurstRead)
	movlw	(015h)
	movwf	0+(?_SPIBurstRead)+01h
	movlw	(0)
	fcall	_SPIBurstRead
	line	608
	
l16717:	
;DK_RFM98.c: 608: RFM98_FskClearFIFO();
	fcall	_RFM98_FskClearFIFO
	line	609
	
l16719:	
;DK_RFM98.c: 609: for(i=0;i<17;i++)
	clrf	(RFM98_FskRxPacket@i)
	line	611
	
l16725:	
;DK_RFM98.c: 610: {
;DK_RFM98.c: 611: if(gb_RxData[i]!=RFM98Data[i])
	movf	(RFM98_FskRxPacket@i),w
	addlw	low(_RFM98Data|8000h)
	movwf	fsr0l
	movlw	high(_RFM98Data|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_RFM98_FskRxPacket+0)+0
	movf	(RFM98_FskRxPacket@i),w
	addlw	_gb_RxData&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorwf	(??_RFM98_FskRxPacket+0)+0,w
	skipnz
	goto	u11201
	goto	u11200
u11201:
	goto	l16729
u11200:
	goto	l16733
	line	609
	
l16729:	
	incf	(RFM98_FskRxPacket@i),f
	
l16731:	
	movlw	(011h)
	subwf	(RFM98_FskRxPacket@i),w
	skipc
	goto	u11211
	goto	u11210
u11211:
	goto	l16725
u11210:
	line	614
	
l16733:	
;DK_RFM98.c: 613: }
;DK_RFM98.c: 614: if(i>=17)
	movlw	(011h)
	subwf	(RFM98_FskRxPacket@i),w
	skipc
	goto	u11221
	goto	u11220
u11221:
	goto	l16741
u11220:
	line	615
	
l16735:	
;DK_RFM98.c: 615: return(1);
	movlw	(01h)
	goto	l5384
	line	617
	
l16741:	
;DK_RFM98.c: 616: else
;DK_RFM98.c: 617: return(0);
	movlw	(0)
	line	621
	
l5384:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FskRxPacket
	__end_of_RFM98_FskRxPacket:
;; =============== function _RFM98_FskRxPacket ends ============

	signat	_RFM98_FskRxPacket,89
	global	_RFM98_FskEntryRx
psect	text2159,local,class=CODE,delta=2
global __ptext2159
__ptext2159:

;; *************** function _RFM98_FskEntryRx *****************
;; Defined at:
;;		line 543 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_Config
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2159
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	543
	global	__size_of_RFM98_FskEntryRx
	__size_of_RFM98_FskEntryRx	equ	__end_of_RFM98_FskEntryRx-_RFM98_FskEntryRx
	
_RFM98_FskEntryRx:	
	opt	stack 9
; Regs used in _RFM98_FskEntryRx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	546
	
l16655:	
;DK_RFM98.c: 544: u8 i;
;DK_RFM98.c: 546: TRISA1=1;
	movlb 1	; select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	548
	
l16657:	
;DK_RFM98.c: 548: RFM98_Config(1);
	movlw	(01h)
	fcall	_RFM98_Config
	line	549
	
l16659:	
;DK_RFM98.c: 549: for(i=0;i<2;i++)
	clrf	(RFM98_FskEntryRx@i)
	line	550
	
l16665:	
;DK_RFM98.c: 550: SPIWrite(RFM98FSKRateTbl[gb_RateBuf_Addr][i]);
	movf	(_gb_RateBuf_Addr),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low(_RFM98FSKRateTbl|8000h)
	movwf	(??_RFM98_FskEntryRx+0)+0
	movlw	high(_RFM98FSKRateTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_FskEntryRx+0)+0
	lslf	(RFM98_FskEntryRx@i),w
	addwf	(??_RFM98_FskEntryRx+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_FskEntryRx+0)+1,w
	skipnc
	incf	(??_RFM98_FskEntryRx+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	549
	
l16667:	
	incf	(RFM98_FskEntryRx@i),f
	
l16669:	
	movlw	(02h)
	subwf	(RFM98_FskEntryRx@i),w
	skipc
	goto	u11141
	goto	u11140
u11141:
	goto	l16665
u11140:
	line	551
	
l16671:	
;DK_RFM98.c: 551: for(i=0;i<4;i++)
	clrf	(RFM98_FskEntryRx@i)
	line	552
	
l16677:	
;DK_RFM98.c: 552: SPIWrite(RFM98RxTable[i]);
	lslf	(RFM98_FskEntryRx@i),w
	addlw	low(_RFM98RxTable|8000h)
	movwf	fsr0l
	movlw	high(_RFM98RxTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	551
	
l16679:	
	incf	(RFM98_FskEntryRx@i),f
	
l16681:	
	movlw	(04h)
	subwf	(RFM98_FskEntryRx@i),w
	skipc
	goto	u11151
	goto	u11150
u11151:
	goto	l16677
u11150:
	line	553
	
l16683:	
;DK_RFM98.c: 553: SPIWrite(0x0105+0x08);
	movlw	low(010Dh)
	movwf	(?_SPIWrite)
	movlw	high(010Dh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	555
	
l16685:	
;DK_RFM98.c: 555: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	556
	
l16687:	
;DK_RFM98.c: 556: gb_StatusTx=0;
	clrf	(_gb_StatusTx)
	line	557
	
l16689:	
;DK_RFM98.c: 557: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	558
	
l5366:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FskEntryRx
	__end_of_RFM98_FskEntryRx:
;; =============== function _RFM98_FskEntryRx ends ============

	signat	_RFM98_FskEntryRx,88
	global	_RFM98_LoRaTxPacket
psect	text2160,local,class=CODE,delta=2
global __ptext2160
__ptext2160:

;; *************** function _RFM98_LoRaTxPacket *****************
;; Defined at:
;;		line 417 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  TxFlag          1    3[BANK0 ] unsigned char 
;;  addr            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_LoRaTxWaitStable
;;		_BurstWrite
;;		_SPIWrite
;;		_SPIRead
;;		_RFM98_LoRaClearIrq
;;		_RFM98_Standby
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2160
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	417
	global	__size_of_RFM98_LoRaTxPacket
	__size_of_RFM98_LoRaTxPacket	equ	__end_of_RFM98_LoRaTxPacket-_RFM98_LoRaTxPacket
	
_RFM98_LoRaTxPacket:	
	opt	stack 9
; Regs used in _RFM98_LoRaTxPacket: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	418
	
l16599:	
;DK_RFM98.c: 418: u8 TxFlag=0;
	clrf	(RFM98_LoRaTxPacket@TxFlag)
	line	421
	
l16601:	
;DK_RFM98.c: 419: u8 addr;
;DK_RFM98.c: 421: RFM98_LoRaTxWaitStable();
	fcall	_RFM98_LoRaTxWaitStable
	line	422
	
l16603:	
;DK_RFM98.c: 422: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u11071
	goto	u11070
u11071:
	goto	l16621
u11070:
	line	424
	
l16605:	
;DK_RFM98.c: 423: {
;DK_RFM98.c: 424: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	425
	
l16607:	
;DK_RFM98.c: 425: if(gb_StatusTx==0)
	movf	(_gb_StatusTx),f
	skipz
	goto	u11081
	goto	u11080
u11081:
	goto	l16621
u11080:
	line	427
	
l16609:	
;DK_RFM98.c: 426: {
;DK_RFM98.c: 427: gb_StatusTx=1;
	clrf	(_gb_StatusTx)
	incf	(_gb_StatusTx),f
	line	428
	
l16611:	
;DK_RFM98.c: 428: gw_TxTimer=gw_RF_SentInterval;
	movf	(_gw_RF_SentInterval+1),w
	movwf	(_gw_TxTimer+1)
	movf	(_gw_RF_SentInterval),w
	movwf	(_gw_TxTimer)
	line	430
	
l16613:	
;DK_RFM98.c: 430: BurstWrite(0x00, (u8 *)RFM98Data, 21);
	movlw	low(_RFM98Data|8000h)
	movwf	(?_BurstWrite)
	movlw	high(_RFM98Data|8000h)
	movwf	((?_BurstWrite))+1
	movlw	(015h)
	movwf	0+(?_BurstWrite)+02h
	movlw	(0)
	fcall	_BurstWrite
	line	431
	
l16615:	
;DK_RFM98.c: 431: SPIWrite(0x0100+0x03+0x08);
	movlw	low(010Bh)
	movwf	(?_SPIWrite)
	movlw	high(010Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	432
	
l16617:	
;DK_RFM98.c: 432: TxFlag=1;
	clrf	(RFM98_LoRaTxPacket@TxFlag)
	incf	(RFM98_LoRaTxPacket@TxFlag),f
	line	433
	
l16619:	
;DK_RFM98.c: 433: gb_WaitStableFlag=3;
	movlw	(03h)
	movwf	(_gb_WaitStableFlag)
	line	436
	
l16621:	
;DK_RFM98.c: 434: }
;DK_RFM98.c: 435: }
;DK_RFM98.c: 436: if(gb_StatusTx==1)
	decf	(_gb_StatusTx),w
	skipz
	goto	u11091
	goto	u11090
u11091:
	goto	l16651
u11090:
	line	438
	
l16623:	
;DK_RFM98.c: 437: {
;DK_RFM98.c: 438: if(gb_WaitStableFlag==3 && RB5)
	movf	(_gb_WaitStableFlag),w
	xorlw	03h&0ffh
	skipz
	goto	u11101
	goto	u11100
u11101:
	goto	l16633
u11100:
	
l16625:	
	btfss	(109/8),(109)&7
	goto	u11111
	goto	u11110
u11111:
	goto	l16633
u11110:
	line	440
	
l16627:	
;DK_RFM98.c: 439: {
;DK_RFM98.c: 440: SPIRead((u8)(0x1200>>8));
	movlw	(012h)
	fcall	_SPIRead
	line	441
;DK_RFM98.c: 441: RFM98_LoRaClearIrq();
	fcall	_RFM98_LoRaClearIrq
	line	443
	
l16629:	
;DK_RFM98.c: 443: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	444
	
l16631:	
;DK_RFM98.c: 444: RFM98_Standby();
	fcall	_RFM98_Standby
	line	446
	
l16633:	
;DK_RFM98.c: 445: }
;DK_RFM98.c: 446: if(gw_TxTimer==0 && gb_WaitStableFlag==0)
	movf	((_gw_TxTimer+1)),w
	iorwf	((_gw_TxTimer)),w
	skipz
	goto	u11121
	goto	u11120
u11121:
	goto	l16651
u11120:
	
l16635:	
	movf	(_gb_WaitStableFlag),f
	skipz
	goto	u11131
	goto	u11130
u11131:
	goto	l16651
u11130:
	line	448
	
l16637:	
;DK_RFM98.c: 447: {
;DK_RFM98.c: 448: gw_TxTimer=gw_RF_SentInterval;
	movf	(_gw_RF_SentInterval+1),w
	movwf	(_gw_TxTimer+1)
	movf	(_gw_RF_SentInterval),w
	movwf	(_gw_TxTimer)
	line	450
	
l16639:	
;DK_RFM98.c: 450: addr = SPIRead((u8)(0x0E00>>8));
	movlw	(0Eh)
	fcall	_SPIRead
	movwf	(RFM98_LoRaTxPacket@addr)
	line	451
	
l16641:	
;DK_RFM98.c: 451: SPIWrite(0x0D00+addr);
	movf	(RFM98_LoRaTxPacket@addr),w
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	movlw	(0D00h >> 8)
	addwf	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	452
	
l16643:	
;DK_RFM98.c: 452: BurstWrite(0x00, (u8 *)RFM98Data, 21);
	movlw	low(_RFM98Data|8000h)
	movwf	(?_BurstWrite)
	movlw	high(_RFM98Data|8000h)
	movwf	((?_BurstWrite))+1
	movlw	(015h)
	movwf	0+(?_BurstWrite)+02h
	movlw	(0)
	fcall	_BurstWrite
	line	453
	
l16645:	
;DK_RFM98.c: 453: SPIWrite(0x0100+0x03+0x08);
	movlw	low(010Bh)
	movwf	(?_SPIWrite)
	movlw	high(010Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	455
	
l16647:	
;DK_RFM98.c: 455: gb_WaitStableFlag=3;
	movlw	(03h)
	movwf	(_gb_WaitStableFlag)
	line	456
	
l16649:	
;DK_RFM98.c: 456: TxFlag=1;
	clrf	(RFM98_LoRaTxPacket@TxFlag)
	incf	(RFM98_LoRaTxPacket@TxFlag),f
	line	459
	
l16651:	
;DK_RFM98.c: 457: }
;DK_RFM98.c: 458: }
;DK_RFM98.c: 459: return TxFlag;
	movf	(RFM98_LoRaTxPacket@TxFlag),w
	line	460
	
l5353:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaTxPacket
	__end_of_RFM98_LoRaTxPacket:
;; =============== function _RFM98_LoRaTxPacket ends ============

	signat	_RFM98_LoRaTxPacket,89
	global	_RFM98_LoRaEntryTx
psect	text2161,local,class=CODE,delta=2
global __ptext2161
__ptext2161:

;; *************** function _RFM98_LoRaEntryTx *****************
;; Defined at:
;;		line 364 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  addr            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_Config
;;		_SPIWrite
;;		_RFM98_LoRaClearIrq
;;		_SPIRead
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2161
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	364
	global	__size_of_RFM98_LoRaEntryTx
	__size_of_RFM98_LoRaEntryTx	equ	__end_of_RFM98_LoRaEntryTx-_RFM98_LoRaEntryTx
	
_RFM98_LoRaEntryTx:	
	opt	stack 9
; Regs used in _RFM98_LoRaEntryTx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	367
	
l16575:	
;DK_RFM98.c: 365: u8 addr;
;DK_RFM98.c: 367: RFM98_Config(0);
	movlw	(0)
	fcall	_RFM98_Config
	line	369
	
l16577:	
;DK_RFM98.c: 369: SPIWrite(0x4D00+0x87);
	movlw	low(04D87h)
	movwf	(?_SPIWrite)
	movlw	high(04D87h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	370
	
l16579:	
;DK_RFM98.c: 370: SPIWrite(0x2400);
	movlw	low(02400h)
	movwf	(?_SPIWrite)
	movlw	high(02400h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	371
	
l16581:	
;DK_RFM98.c: 371: SPIWrite(0x4000+0x41);
	movlw	low(04041h)
	movwf	(?_SPIWrite)
	movlw	high(04041h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	373
	
l16583:	
;DK_RFM98.c: 373: RFM98_LoRaClearIrq();
	fcall	_RFM98_LoRaClearIrq
	line	374
	
l16585:	
;DK_RFM98.c: 374: SPIWrite(0x1100+0xF7);
	movlw	low(011F7h)
	movwf	(?_SPIWrite)
	movlw	high(011F7h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	375
	
l16587:	
;DK_RFM98.c: 375: SPIWrite(0x2200+ 21);
	movlw	low(02215h)
	movwf	(?_SPIWrite)
	movlw	high(02215h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	377
	
l16589:	
;DK_RFM98.c: 377: addr = SPIRead((u8)(0x0E00>>8));
	movlw	(0Eh)
	fcall	_SPIRead
	movwf	(RFM98_LoRaEntryTx@addr)
	line	378
	
l16591:	
;DK_RFM98.c: 378: SPIWrite(0x0D00+addr);
	movf	(RFM98_LoRaEntryTx@addr),w
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	movlw	(0D00h >> 8)
	addwf	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	380
	
l16593:	
;DK_RFM98.c: 380: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	381
	
l16595:	
;DK_RFM98.c: 381: gb_StatusRx=0;
	clrf	(_gb_StatusRx)
	line	382
	
l16597:	
;DK_RFM98.c: 382: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	383
	
l5338:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaEntryTx
	__end_of_RFM98_LoRaEntryTx:
;; =============== function _RFM98_LoRaEntryTx ends ============

	signat	_RFM98_LoRaEntryTx,88
	global	_RFM98_LoRaRxPacket
psect	text2162,local,class=CODE,delta=2
global __ptext2162
__ptext2162:

;; *************** function _RFM98_LoRaRxPacket *****************
;; Defined at:
;;		line 317 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[BANK0 ] unsigned char 
;;  packet_size     1    1[BANK0 ] unsigned char 
;;  addr            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_LoRaRxWaitStable
;;		_SPIRead
;;		_SPIWrite
;;		_SPIBurstRead
;;		_RFM98_LoRaClearIrq
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2162
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	317
	global	__size_of_RFM98_LoRaRxPacket
	__size_of_RFM98_LoRaRxPacket	equ	__end_of_RFM98_LoRaRxPacket-_RFM98_LoRaRxPacket
	
_RFM98_LoRaRxPacket:	
	opt	stack 9
; Regs used in _RFM98_LoRaRxPacket: [wreg-status,0+pclath+cstack]
	line	322
	
l16509:	
;DK_RFM98.c: 318: u8 i;
;DK_RFM98.c: 319: u8 addr;
;DK_RFM98.c: 320: u8 packet_size;
;DK_RFM98.c: 322: RFM98_LoRaRxWaitStable();
	fcall	_RFM98_LoRaRxWaitStable
	line	323
	
l16511:	
;DK_RFM98.c: 323: if(gb_WaitStableFlag==1)
	decf	(_gb_WaitStableFlag),w
	skipz
	goto	u10991
	goto	u10990
u10991:
	goto	l16517
u10990:
	line	325
	
l16513:	
;DK_RFM98.c: 324: {
;DK_RFM98.c: 325: gb_WaitStableFlag=2;
	movlw	(02h)
	movwf	(_gb_WaitStableFlag)
	line	326
	
l16515:	
;DK_RFM98.c: 326: gb_StatusRx=1;
	clrf	(_gb_StatusRx)
	incf	(_gb_StatusRx),f
	line	329
	
l16517:	
;DK_RFM98.c: 327: }
;DK_RFM98.c: 329: if((RB5) && (gb_StatusRx==1))
	btfss	(109/8),(109)&7
	goto	u11001
	goto	u11000
u11001:
	goto	l16567
u11000:
	
l16519:	
	decf	(_gb_StatusRx),w
	skipz
	goto	u11011
	goto	u11010
u11011:
	goto	l16567
u11010:
	line	331
	
l16521:	
;DK_RFM98.c: 330: {
;DK_RFM98.c: 331: for(i=0;i<32;i++)
	clrf	(RFM98_LoRaRxPacket@i)
	line	332
	
l16527:	
;DK_RFM98.c: 332: gb_RxData[i] = 0x00;
	movf	(RFM98_LoRaRxPacket@i),w
	addlw	_gb_RxData&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	331
	
l16529:	
	incf	(RFM98_LoRaRxPacket@i),f
	
l16531:	
	movlw	(020h)
	subwf	(RFM98_LoRaRxPacket@i),w
	skipc
	goto	u11021
	goto	u11020
u11021:
	goto	l16527
u11020:
	line	334
	
l16533:	
;DK_RFM98.c: 334: addr = SPIRead((u8)(0x1000>>8));
	movlw	(010h)
	fcall	_SPIRead
	movwf	(RFM98_LoRaRxPacket@addr)
	line	335
;DK_RFM98.c: 335: SPIWrite(0x0D00+addr);
	movf	(RFM98_LoRaRxPacket@addr),w
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	movlw	(0D00h >> 8)
	addwf	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	336
	
l16535:	
;DK_RFM98.c: 336: if(RFM98SpreadFactorTbl[gb_RateBuf_Addr]==6)
	movf	(_gb_RateBuf_Addr),w
	addlw	low(_RFM98SpreadFactorTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98SpreadFactorTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	xorlw	06h
	skipz
	goto	u11031
	goto	u11030
u11031:
	goto	l16539
u11030:
	line	337
	
l16537:	
;DK_RFM98.c: 337: packet_size=21;
	movlw	(015h)
	movwf	(RFM98_LoRaRxPacket@packet_size)
	goto	l16541
	line	339
	
l16539:	
;DK_RFM98.c: 338: else
;DK_RFM98.c: 339: packet_size = SPIRead((u8)(0x1300>>8));
	movlw	(013h)
	fcall	_SPIRead
	movwf	(RFM98_LoRaRxPacket@packet_size)
	line	340
	
l16541:	
;DK_RFM98.c: 340: SPIBurstRead(0x00, gb_RxData, packet_size);
	movlw	(_gb_RxData)&0ffh
	movwf	(?_SPIBurstRead)
	movf	(RFM98_LoRaRxPacket@packet_size),w
	movwf	0+(?_SPIBurstRead)+01h
	movlw	(0)
	fcall	_SPIBurstRead
	line	342
	
l16543:	
;DK_RFM98.c: 342: RFM98_LoRaClearIrq();
	fcall	_RFM98_LoRaClearIrq
	line	343
	
l16545:	
;DK_RFM98.c: 343: for(i=0;i<17;i++)
	clrf	(RFM98_LoRaRxPacket@i)
	line	345
	
l16551:	
;DK_RFM98.c: 344: {
;DK_RFM98.c: 345: if(gb_RxData[i]!=RFM98Data[i])
	movf	(RFM98_LoRaRxPacket@i),w
	addlw	low(_RFM98Data|8000h)
	movwf	fsr0l
	movlw	high(_RFM98Data|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_RFM98_LoRaRxPacket+0)+0
	movf	(RFM98_LoRaRxPacket@i),w
	addlw	_gb_RxData&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorwf	(??_RFM98_LoRaRxPacket+0)+0,w
	skipnz
	goto	u11041
	goto	u11040
u11041:
	goto	l16555
u11040:
	goto	l16559
	line	343
	
l16555:	
	incf	(RFM98_LoRaRxPacket@i),f
	
l16557:	
	movlw	(011h)
	subwf	(RFM98_LoRaRxPacket@i),w
	skipc
	goto	u11051
	goto	u11050
u11051:
	goto	l16551
u11050:
	line	348
	
l16559:	
;DK_RFM98.c: 347: }
;DK_RFM98.c: 348: if(i>=17)
	movlw	(011h)
	subwf	(RFM98_LoRaRxPacket@i),w
	skipc
	goto	u11061
	goto	u11060
u11061:
	goto	l16567
u11060:
	line	349
	
l16561:	
;DK_RFM98.c: 349: return(1);
	movlw	(01h)
	goto	l5333
	line	351
	
l16567:	
;DK_RFM98.c: 350: else
;DK_RFM98.c: 351: return(0);
	movlw	(0)
	line	355
	
l5333:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaRxPacket
	__end_of_RFM98_LoRaRxPacket:
;; =============== function _RFM98_LoRaRxPacket ends ============

	signat	_RFM98_LoRaRxPacket,89
	global	_RFM98_LoRaEntryRx
psect	text2163,local,class=CODE,delta=2
global __ptext2163
__ptext2163:

;; *************** function _RFM98_LoRaEntryRx *****************
;; Defined at:
;;		line 247 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  addr            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RFM98_Config
;;		_SPIWrite
;;		_RFM98_LoRaClearIrq
;;		_SPIRead
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2163
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	247
	global	__size_of_RFM98_LoRaEntryRx
	__size_of_RFM98_LoRaEntryRx	equ	__end_of_RFM98_LoRaEntryRx-_RFM98_LoRaEntryRx
	
_RFM98_LoRaEntryRx:	
	opt	stack 9
; Regs used in _RFM98_LoRaEntryRx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	250
	
l16483:	
;DK_RFM98.c: 248: u8 addr;
;DK_RFM98.c: 250: RFM98_Config(0);
	movlw	(0)
	fcall	_RFM98_Config
	line	252
	
l16485:	
;DK_RFM98.c: 252: SPIWrite(0x4D00+0x84);
	movlw	low(04D84h)
	movwf	(?_SPIWrite)
	movlw	high(04D84h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	253
	
l16487:	
;DK_RFM98.c: 253: SPIWrite(0x2400+0xFF);
	movlw	low(024FFh)
	movwf	(?_SPIWrite)
	movlw	high(024FFh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	254
	
l16489:	
;DK_RFM98.c: 254: SPIWrite(0x4000+0x01);
	movlw	low(04001h)
	movwf	(?_SPIWrite)
	movlw	high(04001h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	256
	
l16491:	
;DK_RFM98.c: 256: SPIWrite(0x1100+0x3F);
	movlw	low(0113Fh)
	movwf	(?_SPIWrite)
	movlw	high(0113Fh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	257
	
l16493:	
;DK_RFM98.c: 257: RFM98_LoRaClearIrq();
	fcall	_RFM98_LoRaClearIrq
	line	259
	
l16495:	
;DK_RFM98.c: 259: SPIWrite(0x2200+ 21);
	movlw	low(02215h)
	movwf	(?_SPIWrite)
	movlw	high(02215h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	261
	
l16497:	
;DK_RFM98.c: 261: addr = SPIRead((u8)(0x0F00>>8));
	movlw	(0Fh)
	fcall	_SPIRead
	movwf	(RFM98_LoRaEntryRx@addr)
	line	262
	
l16499:	
;DK_RFM98.c: 262: SPIWrite(0x0D00+addr);
	movf	(RFM98_LoRaEntryRx@addr),w
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	movlw	(0D00h >> 8)
	addwf	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	263
	
l16501:	
;DK_RFM98.c: 263: SPIWrite(0x0100+0x05+0x08);
	movlw	low(010Dh)
	movwf	(?_SPIWrite)
	movlw	high(010Dh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	265
	
l16503:	
;DK_RFM98.c: 265: gb_SysTimer_1S=3;
	movlw	(03h)
	movwf	(_gb_SysTimer_1S)
	line	266
	
l16505:	
;DK_RFM98.c: 266: gb_StatusTx=0;
	clrf	(_gb_StatusTx)
	line	267
	
l16507:	
;DK_RFM98.c: 267: gb_WaitStableFlag=0x0f;
	movlw	(0Fh)
	movwf	(_gb_WaitStableFlag)
	line	268
	
l5310:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaEntryRx
	__end_of_RFM98_LoRaEntryRx:
;; =============== function _RFM98_LoRaEntryRx ends ============

	signat	_RFM98_LoRaEntryRx,88
	global	_WorkModeSelect
psect	text2164,local,class=CODE,delta=2
global __ptext2164
__ptext2164:

;; *************** function _WorkModeSelect *****************
;; Defined at:
;;		line 757 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;  KeyValue        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyValue        1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1C/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Clr_LCD
;;		_BeepOn
;;		_SaveRFParameterToFlash
;; This function is called by:
;;		_MenuConfig
;; This function uses a non-reentrant model
;;
psect	text2164
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	757
	global	__size_of_WorkModeSelect
	__size_of_WorkModeSelect	equ	__end_of_WorkModeSelect-_WorkModeSelect
	
_WorkModeSelect:	
	opt	stack 9
; Regs used in _WorkModeSelect: [wreg-status,0+pclath+cstack]
;WorkModeSelect@KeyValue stored from wreg
	movwf	(WorkModeSelect@KeyValue)
	line	758
	
l16257:	
;DK_PIC16_App.c: 758: if(KeyValue==0x01)
	decf	(WorkModeSelect@KeyValue),w
	skipz
	goto	u10431
	goto	u10430
u10431:
	goto	l16283
u10430:
	line	760
	
l16259:	
;DK_PIC16_App.c: 759: {
;DK_PIC16_App.c: 760: gb_ErrorFlag=0;
	clrf	(_gb_ErrorFlag)
	line	761
	
l16261:	
;DK_PIC16_App.c: 761: gb_ParameterChangeFlag=2;
	movlw	(02h)
	movwf	(_gb_ParameterChangeFlag)
	line	762
	
l16263:	
;DK_PIC16_App.c: 762: gb_ModuleWorkMode=3;
	movlw	(03h)
	movwf	(_gb_ModuleWorkMode)
	line	764
	
l16265:	
;DK_PIC16_App.c: 764: if(gb_SystemMode!=0x24)
	movf	(_gb_SystemMode),w
	xorlw	024h&0ffh
	skipnz
	goto	u10441
	goto	u10440
u10441:
	goto	l16269
u10440:
	line	766
	
l16267:	
;DK_PIC16_App.c: 765: {
;DK_PIC16_App.c: 766: gb_SystemMode=0x24;
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	767
;DK_PIC16_App.c: 767: }
	goto	l16277
	line	770
	
l16269:	
;DK_PIC16_App.c: 768: else
;DK_PIC16_App.c: 769: {
;DK_PIC16_App.c: 770: if(RF_ModemBuf[1]!=0)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_WorkModeSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_WorkModeSelect+0)+0
	movlw	01h
	addwf	(??_WorkModeSelect+0)+0,w
	movwf	fsr0l
	movf	(??_WorkModeSelect+0)+1,w
	skipnc
	incf	(??_WorkModeSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	0
	skipnz
	goto	u10451
	goto	u10450
u10451:
	goto	l16275
u10450:
	line	772
	
l16271:	
;DK_PIC16_App.c: 771: {
;DK_PIC16_App.c: 772: gb_SystemMode=0x04;
	movlw	(04h)
	movwf	(_gb_SystemMode)
	line	773
	
l16273:	
;DK_PIC16_App.c: 773: Clr_LCD();
	fcall	_Clr_LCD
	line	774
;DK_PIC16_App.c: 774: }
	goto	l16277
	line	777
	
l16275:	
;DK_PIC16_App.c: 775: else
;DK_PIC16_App.c: 776: {
;DK_PIC16_App.c: 777: BeepOn((u16*)MusicTab_KeyErr);
	movlw	low(_MusicTab_KeyErr|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyErr|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	780
	
l16277:	
;DK_PIC16_App.c: 778: }
;DK_PIC16_App.c: 779: }
;DK_PIC16_App.c: 780: if(RF_ModemBuf[1]!=0)
	movlb 0	; select bank0
	movf	(_RF_ModemBuf+1),w
	movwf	(??_WorkModeSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_WorkModeSelect+0)+0
	movlw	01h
	addwf	(??_WorkModeSelect+0)+0,w
	movwf	fsr0l
	movf	(??_WorkModeSelect+0)+1,w
	skipnc
	incf	(??_WorkModeSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	0
	skipnz
	goto	u10461
	goto	u10460
u10461:
	goto	l4071
u10460:
	line	782
	
l16279:	
;DK_PIC16_App.c: 781: {
;DK_PIC16_App.c: 782: BeepOn((u16*)MusicTab_KeySet);
	movlw	low(_MusicTab_KeySet|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeySet|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	783
	
l16281:	
;DK_PIC16_App.c: 783: SaveRFParameterToFlash();
	fcall	_SaveRFParameterToFlash
	goto	l4071
	line	786
	
l16283:	
;DK_PIC16_App.c: 786: else if(KeyValue==0x04 && gb_ParameterChangeFlag==2)
	movf	(WorkModeSelect@KeyValue),w
	xorlw	04h&0ffh
	skipz
	goto	u10471
	goto	u10470
u10471:
	goto	l16367
u10470:
	
l16285:	
	movf	(_gb_ParameterChangeFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u10481
	goto	u10480
u10481:
	goto	l16367
u10480:
	line	788
	
l16287:	
;DK_PIC16_App.c: 787: {
;DK_PIC16_App.c: 788: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	790
;DK_PIC16_App.c: 790: switch(RF_ModemBuf[gb_Modem_Addr])
	goto	l16365
	line	793
	
l16289:	
;DK_PIC16_App.c: 793: if(gb_SystemMode==0x21){gb_SystemMode=0x26+1;}
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10491
	goto	u10490
u10491:
	goto	l16293
u10490:
	
l16291:	
	movlw	(027h)
	movwf	(_gb_SystemMode)
	line	794
	
l16293:	
;DK_PIC16_App.c: 794: gb_SystemMode--;
	decf	(_gb_SystemMode),f
	line	795
	
l16295:	
;DK_PIC16_App.c: 795: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x21){gb_SystemMode=0x26;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10501
	goto	u10500
u10501:
	goto	l16301
u10500:
	
l16297:	
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10511
	goto	u10510
u10511:
	goto	l16301
u10510:
	
l16299:	
	movlw	(026h)
	movwf	(_gb_SystemMode)
	line	796
	
l16301:	
;DK_PIC16_App.c: 796: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x25){gb_SystemMode=0x24;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10521
	goto	u10520
u10521:
	goto	l16307
u10520:
	
l16303:	
	movf	(_gb_SystemMode),w
	xorlw	025h&0ffh
	skipz
	goto	u10531
	goto	u10530
u10531:
	goto	l16307
u10530:
	
l16305:	
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	797
	
l16307:	
;DK_PIC16_App.c: 797: if(RF_BandBuf[0]==0 && gb_SystemMode==0x22){gb_SystemMode=0x21;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10541
	goto	u10540
u10541:
	goto	l16313
u10540:
	
l16309:	
	movf	(_gb_SystemMode),w
	xorlw	022h&0ffh
	skipz
	goto	u10551
	goto	u10550
u10551:
	goto	l16313
u10550:
	
l16311:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	line	798
	
l16313:	
;DK_PIC16_App.c: 798: if(RF_BandBuf[0]==0 && gb_SystemMode==0x26){gb_SystemMode=0x25;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10561
	goto	u10560
u10561:
	goto	l4071
u10560:
	
l16315:	
	movf	(_gb_SystemMode),w
	xorlw	026h&0ffh
	skipz
	goto	u10571
	goto	u10570
u10571:
	goto	l4071
u10570:
	
l16317:	
	movlw	(025h)
	movwf	(_gb_SystemMode)
	goto	l4071
	line	801
	
l16319:	
;DK_PIC16_App.c: 801: if(gb_SystemMode==0x21){gb_SystemMode=0x29+1;}
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10581
	goto	u10580
u10581:
	goto	l16323
u10580:
	
l16321:	
	movlw	(02Ah)
	movwf	(_gb_SystemMode)
	line	802
	
l16323:	
;DK_PIC16_App.c: 802: gb_SystemMode--;
	decf	(_gb_SystemMode),f
	line	803
	
l16325:	
;DK_PIC16_App.c: 803: if(gb_SystemMode==0x27){gb_SystemMode=0x24;}
	movf	(_gb_SystemMode),w
	xorlw	027h&0ffh
	skipz
	goto	u10591
	goto	u10590
u10591:
	goto	l16329
u10590:
	
l16327:	
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	804
	
l16329:	
;DK_PIC16_App.c: 804: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x21){gb_SystemMode=0x29;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10601
	goto	u10600
u10601:
	goto	l16335
u10600:
	
l16331:	
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10611
	goto	u10610
u10611:
	goto	l16335
u10610:
	
l16333:	
	movlw	(029h)
	movwf	(_gb_SystemMode)
	line	805
	
l16335:	
;DK_PIC16_App.c: 805: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x28){gb_SystemMode=0x24;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10621
	goto	u10620
u10621:
	goto	l16341
u10620:
	
l16337:	
	movf	(_gb_SystemMode),w
	xorlw	028h&0ffh
	skipz
	goto	u10631
	goto	u10630
u10631:
	goto	l16341
u10630:
	
l16339:	
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	806
	
l16341:	
;DK_PIC16_App.c: 806: if(RF_BandBuf[0]==0 && gb_SystemMode==0x22){gb_SystemMode=0x21;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10641
	goto	u10640
u10641:
	goto	l16347
u10640:
	
l16343:	
	movf	(_gb_SystemMode),w
	xorlw	022h&0ffh
	skipz
	goto	u10651
	goto	u10650
u10651:
	goto	l16347
u10650:
	
l16345:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	line	807
	
l16347:	
;DK_PIC16_App.c: 807: if(RF_BandBuf[0]==0 && gb_SystemMode==0x29){gb_SystemMode=0x28;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10661
	goto	u10660
u10661:
	goto	l4071
u10660:
	
l16349:	
	movf	(_gb_SystemMode),w
	xorlw	029h&0ffh
	skipz
	goto	u10671
	goto	u10670
u10671:
	goto	l4071
u10670:
	
l16351:	
	movlw	(028h)
	movwf	(_gb_SystemMode)
	goto	l4071
	line	810
	
l16353:	
;DK_PIC16_App.c: 810: if(gb_SystemMode==0x21){gb_SystemMode=0x2C+1;}
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10681
	goto	u10680
u10681:
	goto	l16357
u10680:
	
l16355:	
	movlw	(02Dh)
	movwf	(_gb_SystemMode)
	line	811
	
l16357:	
;DK_PIC16_App.c: 811: gb_SystemMode--;
	decf	(_gb_SystemMode),f
	line	812
	
l16359:	
;DK_PIC16_App.c: 812: if(gb_SystemMode==0x2A){gb_SystemMode=0x24;}
	movf	(_gb_SystemMode),w
	xorlw	02Ah&0ffh
	skipz
	goto	u10691
	goto	u10690
u10691:
	goto	l4071
u10690:
	
l16361:	
	movlw	(024h)
	movwf	(_gb_SystemMode)
	goto	l4071
	line	790
	
l16365:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_WorkModeSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_WorkModeSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_WorkModeSelect+0)+0,w
	movwf	fsr0l
	movf	(??_WorkModeSelect+0)+1,w
	skipnc
	incf	(??_WorkModeSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 16 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l16289
	xorlw	17^16	; case 17
	skipnz
	goto	l16319
	xorlw	18^17	; case 18
	skipnz
	goto	l16353
	goto	l4071
	opt asmopt_on

	line	820
	
l16367:	
;DK_PIC16_App.c: 820: else if(KeyValue==0x08 && gb_ParameterChangeFlag==2)
	movf	(WorkModeSelect@KeyValue),w
	xorlw	08h&0ffh
	skipz
	goto	u10701
	goto	u10700
u10701:
	goto	l16443
u10700:
	
l16369:	
	movf	(_gb_ParameterChangeFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u10711
	goto	u10710
u10711:
	goto	l16443
u10710:
	line	822
	
l16371:	
;DK_PIC16_App.c: 821: {
;DK_PIC16_App.c: 822: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	824
	
l16373:	
;DK_PIC16_App.c: 824: gb_SystemMode++;
	incf	(_gb_SystemMode),f
	line	825
;DK_PIC16_App.c: 825: switch(RF_ModemBuf[gb_Modem_Addr])
	goto	l16441
	line	828
	
l16375:	
;DK_PIC16_App.c: 828: if(gb_SystemMode>0x26){gb_SystemMode=0x21;}
	movlw	(027h)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u10721
	goto	u10720
u10721:
	goto	l16379
u10720:
	
l16377:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	line	829
	
l16379:	
;DK_PIC16_App.c: 829: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x21){gb_SystemMode=0x22;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10731
	goto	u10730
u10731:
	goto	l16385
u10730:
	
l16381:	
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10741
	goto	u10740
u10741:
	goto	l16385
u10740:
	
l16383:	
	movlw	(022h)
	movwf	(_gb_SystemMode)
	line	830
	
l16385:	
;DK_PIC16_App.c: 830: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x25){gb_SystemMode=0x26;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10751
	goto	u10750
u10751:
	goto	l16391
u10750:
	
l16387:	
	movf	(_gb_SystemMode),w
	xorlw	025h&0ffh
	skipz
	goto	u10761
	goto	u10760
u10761:
	goto	l16391
u10760:
	
l16389:	
	movlw	(026h)
	movwf	(_gb_SystemMode)
	line	831
	
l16391:	
;DK_PIC16_App.c: 831: if(RF_BandBuf[0]==0 && gb_SystemMode==0x22){gb_SystemMode=0x23;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10771
	goto	u10770
u10771:
	goto	l16397
u10770:
	
l16393:	
	movf	(_gb_SystemMode),w
	xorlw	022h&0ffh
	skipz
	goto	u10781
	goto	u10780
u10781:
	goto	l16397
u10780:
	
l16395:	
	movlw	(023h)
	movwf	(_gb_SystemMode)
	line	832
	
l16397:	
;DK_PIC16_App.c: 832: if(RF_BandBuf[0]==0 && gb_SystemMode==0x26){gb_SystemMode=0x21;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10791
	goto	u10790
u10791:
	goto	l4071
u10790:
	
l16399:	
	movf	(_gb_SystemMode),w
	xorlw	026h&0ffh
	skipz
	goto	u10801
	goto	u10800
u10801:
	goto	l4071
u10800:
	
l16401:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	goto	l4071
	line	835
	
l16403:	
;DK_PIC16_App.c: 835: if(gb_SystemMode>0x29){gb_SystemMode=0x21;}
	movlw	(02Ah)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u10811
	goto	u10810
u10811:
	goto	l4049
u10810:
	
l16405:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	
l4049:	
	line	836
;DK_PIC16_App.c: 836: if(gb_SystemMode==0x25){gb_SystemMode=0x28;}
	movf	(_gb_SystemMode),w
	xorlw	025h&0ffh
	skipz
	goto	u10821
	goto	u10820
u10821:
	goto	l16409
u10820:
	
l16407:	
	movlw	(028h)
	movwf	(_gb_SystemMode)
	line	837
	
l16409:	
;DK_PIC16_App.c: 837: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x21){gb_SystemMode=0x22;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10831
	goto	u10830
u10831:
	goto	l16415
u10830:
	
l16411:	
	movf	(_gb_SystemMode),w
	xorlw	021h&0ffh
	skipz
	goto	u10841
	goto	u10840
u10841:
	goto	l16415
u10840:
	
l16413:	
	movlw	(022h)
	movwf	(_gb_SystemMode)
	line	838
	
l16415:	
;DK_PIC16_App.c: 838: if(RF_FdevBuf[0]==0 && gb_SystemMode==0x28){gb_SystemMode=0x29;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10851
	goto	u10850
u10851:
	goto	l16421
u10850:
	
l16417:	
	movf	(_gb_SystemMode),w
	xorlw	028h&0ffh
	skipz
	goto	u10861
	goto	u10860
u10861:
	goto	l16421
u10860:
	
l16419:	
	movlw	(029h)
	movwf	(_gb_SystemMode)
	line	839
	
l16421:	
;DK_PIC16_App.c: 839: if(RF_BandBuf[0]==0 && gb_SystemMode==0x22){gb_SystemMode=0x23;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10871
	goto	u10870
u10871:
	goto	l16427
u10870:
	
l16423:	
	movf	(_gb_SystemMode),w
	xorlw	022h&0ffh
	skipz
	goto	u10881
	goto	u10880
u10881:
	goto	l16427
u10880:
	
l16425:	
	movlw	(023h)
	movwf	(_gb_SystemMode)
	line	840
	
l16427:	
;DK_PIC16_App.c: 840: if(RF_BandBuf[0]==0 && gb_SystemMode==0x29){gb_SystemMode=0x21;}
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10891
	goto	u10890
u10891:
	goto	l4071
u10890:
	
l16429:	
	movf	(_gb_SystemMode),w
	xorlw	029h&0ffh
	skipz
	goto	u10901
	goto	u10900
u10901:
	goto	l4071
u10900:
	goto	l16401
	line	843
	
l16433:	
;DK_PIC16_App.c: 843: if(gb_SystemMode>0x2C){gb_SystemMode=0x21;}
	movlw	(02Dh)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u10911
	goto	u10910
u10911:
	goto	l4056
u10910:
	
l16435:	
	movlw	(021h)
	movwf	(_gb_SystemMode)
	
l4056:	
	line	844
;DK_PIC16_App.c: 844: if(gb_SystemMode==0x25){gb_SystemMode=0x2B;}
	movf	(_gb_SystemMode),w
	xorlw	025h&0ffh
	skipz
	goto	u10921
	goto	u10920
u10921:
	goto	l4071
u10920:
	
l16437:	
	movlw	(02Bh)
	movwf	(_gb_SystemMode)
	goto	l4071
	line	825
	
l16441:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_WorkModeSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_WorkModeSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_WorkModeSelect+0)+0,w
	movwf	fsr0l
	movf	(??_WorkModeSelect+0)+1,w
	skipnc
	incf	(??_WorkModeSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 16 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l16375
	xorlw	17^16	; case 17
	skipnz
	goto	l16403
	xorlw	18^17	; case 18
	skipnz
	goto	l16433
	goto	l4071
	opt asmopt_on

	line	852
	
l16443:	
;DK_PIC16_App.c: 852: else if(KeyValue==0x02 && gb_ParameterChangeFlag==2)
	movf	(WorkModeSelect@KeyValue),w
	xorlw	02h&0ffh
	skipz
	goto	u10931
	goto	u10930
u10931:
	goto	l16479
u10930:
	
l16445:	
	movf	(_gb_ParameterChangeFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u10941
	goto	u10940
u10941:
	goto	l16479
u10940:
	line	854
	
l16447:	
;DK_PIC16_App.c: 853: {
;DK_PIC16_App.c: 854: if(gb_SystemMode==0x24)
	movf	(_gb_SystemMode),w
	xorlw	024h&0ffh
	skipz
	goto	u10951
	goto	u10950
u10951:
	goto	l16455
u10950:
	line	856
	
l16449:	
;DK_PIC16_App.c: 855: {
;DK_PIC16_App.c: 856: BeepOn((u16*)MusicTab_KeySet);
	movlw	low(_MusicTab_KeySet|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeySet|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	857
	
l16451:	
;DK_PIC16_App.c: 857: gb_SystemMode=0x02;
	movlw	(02h)
	movwf	(_gb_SystemMode)
	line	858
	
l16453:	
;DK_PIC16_App.c: 858: gb_SysMode_Set=0x51;
	movlw	(051h)
	movwf	(_gb_SysMode_Set)
	line	859
;DK_PIC16_App.c: 859: }
	goto	l16281
	line	862
	
l16455:	
;DK_PIC16_App.c: 860: else
;DK_PIC16_App.c: 861: {
;DK_PIC16_App.c: 862: BeepOn((u16*)MusicTab_KeyOver);
	movlw	low(_MusicTab_KeyOver|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyOver|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	864
;DK_PIC16_App.c: 864: switch(RF_ModemBuf[gb_Modem_Addr])
	goto	l16463
	line	867
	
l16457:	
;DK_PIC16_App.c: 867: gb_ModuleWorkMode=0;
	clrf	(_gb_ModuleWorkMode)
	line	868
;DK_PIC16_App.c: 868: break;
	goto	l16465
	line	869
;DK_PIC16_App.c: 869: case 0x11:
	
l4065:	
	line	870
;DK_PIC16_App.c: 870: gb_ModuleWorkMode=1;
	clrf	(_gb_ModuleWorkMode)
	incf	(_gb_ModuleWorkMode),f
	line	871
;DK_PIC16_App.c: 871: break;
	goto	l16465
	line	873
	
l16459:	
;DK_PIC16_App.c: 873: gb_ModuleWorkMode=2;
	movlw	(02h)
	movwf	(_gb_ModuleWorkMode)
	line	874
;DK_PIC16_App.c: 874: break;
	goto	l16465
	line	864
	
l16463:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_WorkModeSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_WorkModeSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_WorkModeSelect+0)+0,w
	movwf	fsr0l
	movf	(??_WorkModeSelect+0)+1,w
	skipnc
	incf	(??_WorkModeSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 16 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l16457
	xorlw	17^16	; case 17
	skipnz
	goto	l4065
	xorlw	18^17	; case 18
	skipnz
	goto	l16459
	goto	l16465
	opt asmopt_on

	line	877
	
l16465:	
;DK_PIC16_App.c: 877: if(gb_SystemMode==0x23){gb_ModuleWorkMode=4;}
	movf	(_gb_SystemMode),w
	xorlw	023h&0ffh
	skipz
	goto	u10961
	goto	u10960
u10961:
	goto	l16469
u10960:
	
l16467:	
	movlw	(04h)
	movwf	(_gb_ModuleWorkMode)
	line	880
	
l16469:	
;DK_PIC16_App.c: 880: gb_DispFlashFlag=0;
	clrf	(_gb_DispFlashFlag)
	line	881
	
l16471:	
;DK_PIC16_App.c: 881: if(gb_ParameterChangeFlag==2){gb_ParameterChangeFlag=1;}
	movf	(_gb_ParameterChangeFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u10971
	goto	u10970
u10971:
	goto	l4068
u10970:
	
l16473:	
	clrf	(_gb_ParameterChangeFlag)
	incf	(_gb_ParameterChangeFlag),f
	
l4068:	
	line	882
;DK_PIC16_App.c: 882: gb_ModuleWorkEnableFlag=1;
	clrf	(_gb_ModuleWorkEnableFlag)
	incf	(_gb_ModuleWorkEnableFlag),f
	line	883
	
l16475:	
;DK_PIC16_App.c: 883: gw_SendDataCount=0;
	clrf	(_gw_SendDataCount)
	clrf	(_gw_SendDataCount+1)
	line	884
;DK_PIC16_App.c: 884: gw_ReceiveDataCount=0;
	clrf	(_gw_ReceiveDataCount)
	clrf	(_gw_ReceiveDataCount+1)
	goto	l16281
	line	889
	
l16479:	
;DK_PIC16_App.c: 889: else if(KeyValue!=0x00)
	movf	(WorkModeSelect@KeyValue),w
	skipz
	goto	u10980
	goto	l4071
u10980:
	line	891
	
l16481:	
;DK_PIC16_App.c: 890: {
;DK_PIC16_App.c: 891: BeepOn((u16*)MusicTab_KeyErr);
	movlw	low(_MusicTab_KeyErr|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyErr|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	893
	
l4071:	
	return
	opt stack 0
GLOBAL	__end_of_WorkModeSelect
	__end_of_WorkModeSelect:
;; =============== function _WorkModeSelect ends ============

	signat	_WorkModeSelect,4216
	global	_ModemSelect
psect	text2165,local,class=CODE,delta=2
global __ptext2165
__ptext2165:

;; *************** function _ModemSelect *****************
;; Defined at:
;;		line 686 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;  KeyValue        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyValue        1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1C/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BeepOn
;;		_InitSystemParameter
;;		_SaveRFParameterToFlash
;; This function is called by:
;;		_MenuConfig
;; This function uses a non-reentrant model
;;
psect	text2165
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	686
	global	__size_of_ModemSelect
	__size_of_ModemSelect	equ	__end_of_ModemSelect-_ModemSelect
	
_ModemSelect:	
	opt	stack 9
; Regs used in _ModemSelect: [wreg-status,0+pclath+cstack]
;ModemSelect@KeyValue stored from wreg
	movwf	(ModemSelect@KeyValue)
	line	687
	
l16201:	
;DK_PIC16_App.c: 687: if(KeyValue==0x04)
	movf	(ModemSelect@KeyValue),w
	xorlw	04h&0ffh
	skipz
	goto	u10321
	goto	u10320
u10321:
	goto	l16215
u10320:
	line	689
	
l16203:	
;DK_PIC16_App.c: 688: {
;DK_PIC16_App.c: 689: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	691
	
l16205:	
;DK_PIC16_App.c: 691: if(gb_Modem_Addr){gb_Modem_Addr--;}
	movf	(_gb_Modem_Addr),w
	skipz
	goto	u10330
	goto	l16209
u10330:
	
l16207:	
	decf	(_gb_Modem_Addr),f
	goto	l4009
	line	696
	
l16209:	
;DK_PIC16_App.c: 695: {
;DK_PIC16_App.c: 696: gb_Modem_Addr++;
	incf	(_gb_Modem_Addr),f
	line	697
	
l16211:	
;DK_PIC16_App.c: 697: if(RF_ModemBuf[gb_Modem_Addr]==0)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_ModemSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_ModemSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_ModemSelect+0)+0,w
	movwf	fsr0l
	movf	(??_ModemSelect+0)+1,w
	skipnc
	incf	(??_ModemSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10341
	goto	u10340
u10341:
	goto	l16209
u10340:
	goto	l16207
	line	705
	
l16215:	
;DK_PIC16_App.c: 705: else if(KeyValue==0x08)
	movf	(ModemSelect@KeyValue),w
	xorlw	08h&0ffh
	skipz
	goto	u10351
	goto	u10350
u10351:
	goto	l16225
u10350:
	line	707
	
l16217:	
;DK_PIC16_App.c: 706: {
;DK_PIC16_App.c: 707: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	709
	
l16219:	
;DK_PIC16_App.c: 709: gb_Modem_Addr++;
	incf	(_gb_Modem_Addr),f
	line	710
	
l16221:	
;DK_PIC16_App.c: 710: if(RF_ModemBuf[gb_Modem_Addr]==0){gb_Modem_Addr=0;}
	movf	(_RF_ModemBuf+1),w
	movwf	(??_ModemSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_ModemSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_ModemSelect+0)+0,w
	movwf	fsr0l
	movf	(??_ModemSelect+0)+1,w
	skipnc
	incf	(??_ModemSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10361
	goto	u10360
u10361:
	goto	l4009
u10360:
	
l16223:	
	clrf	(_gb_Modem_Addr)
	goto	l4009
	line	712
	
l16225:	
;DK_PIC16_App.c: 712: else if(KeyValue==0x02)
	movf	(ModemSelect@KeyValue),w
	xorlw	02h&0ffh
	skipz
	goto	u10371
	goto	u10370
u10371:
	goto	l16253
u10370:
	line	714
	
l16227:	
;DK_PIC16_App.c: 713: {
;DK_PIC16_App.c: 714: BeepOn((u16*)MusicTab_KeyOK);
	movlw	low(_MusicTab_KeyOK|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyOK|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	716
	
l16229:	
;DK_PIC16_App.c: 716: gb_ParameterChangeFlag=2;
	movlw	(02h)
	movwf	(_gb_ParameterChangeFlag)
	line	717
	
l16231:	
;DK_PIC16_App.c: 717: gb_SystemMode=0x24;
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	719
	
l16233:	
;DK_PIC16_App.c: 719: if(gb_Modem_Addr_Backup!=gb_Modem_Addr)
	movf	(_gb_Modem_Addr_Backup),w
	xorwf	(_gb_Modem_Addr),w
	skipnz
	goto	u10381
	goto	u10380
u10381:
	goto	l16249
u10380:
	line	721
	
l16235:	
;DK_PIC16_App.c: 720: {
;DK_PIC16_App.c: 721: if(RF_ModemBuf[gb_Modem_Addr]==0x10)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_ModemSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_ModemSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_ModemSelect+0)+0,w
	movwf	fsr0l
	movf	(??_ModemSelect+0)+1,w
	skipnc
	incf	(??_ModemSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	010h
	skipz
	goto	u10391
	goto	u10390
u10391:
	goto	l16241
u10390:
	line	723
	
l16237:	
;DK_PIC16_App.c: 722: {
;DK_PIC16_App.c: 723: gb_FreqBuf_Addr=0;
	clrf	(_gb_FreqBuf_Addr)
	line	724
	
l16239:	
;DK_PIC16_App.c: 724: gb_RateBuf_Addr=1;
	clrf	(_gb_RateBuf_Addr)
	incf	(_gb_RateBuf_Addr),f
	line	725
;DK_PIC16_App.c: 725: gb_PowerBuf_Addr=0;
	clrf	(_gb_PowerBuf_Addr)
	line	726
;DK_PIC16_App.c: 726: gb_FdevBuf_Addr=0;
	clrf	(_gb_FdevBuf_Addr)
	line	727
;DK_PIC16_App.c: 727: gb_BandBuf_Addr=0;
	clrf	(_gb_BandBuf_Addr)
	line	728
;DK_PIC16_App.c: 728: }
	goto	l16249
	line	729
	
l16241:	
;DK_PIC16_App.c: 729: else if(RF_ModemBuf[gb_Modem_Addr]==0x11)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_ModemSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_ModemSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_ModemSelect+0)+0,w
	movwf	fsr0l
	movf	(??_ModemSelect+0)+1,w
	skipnc
	incf	(??_ModemSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	011h
	skipz
	goto	u10401
	goto	u10400
u10401:
	goto	l16245
u10400:
	goto	l16249
	line	732
	
l16245:	
;DK_PIC16_App.c: 732: else if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_ModemSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_ModemSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_ModemSelect+0)+0,w
	movwf	fsr0l
	movf	(??_ModemSelect+0)+1,w
	skipnc
	incf	(??_ModemSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u10411
	goto	u10410
u10411:
	goto	l4003
u10410:
	line	734
	
l16247:	
;DK_PIC16_App.c: 733: {
;DK_PIC16_App.c: 734: gb_FreqBuf_Addr=0;
	clrf	(_gb_FreqBuf_Addr)
	line	735
;DK_PIC16_App.c: 735: gb_RateBuf_Addr=0;
	clrf	(_gb_RateBuf_Addr)
	line	736
;DK_PIC16_App.c: 736: gb_PowerBuf_Addr=0;
	clrf	(_gb_PowerBuf_Addr)
	line	737
;DK_PIC16_App.c: 737: gb_FdevBuf_Addr=0;
	clrf	(_gb_FdevBuf_Addr)
	line	738
;DK_PIC16_App.c: 738: gb_BandBuf_Addr=0;
	clrf	(_gb_BandBuf_Addr)
	goto	l16249
	line	740
	
l4003:	
	line	741
	
l16249:	
;DK_PIC16_App.c: 739: }
;DK_PIC16_App.c: 740: }
;DK_PIC16_App.c: 741: InitSystemParameter();
	fcall	_InitSystemParameter
	line	742
	
l16251:	
;DK_PIC16_App.c: 742: SaveRFParameterToFlash();
	fcall	_SaveRFParameterToFlash
	line	743
;DK_PIC16_App.c: 743: }
	goto	l4009
	line	744
	
l16253:	
;DK_PIC16_App.c: 744: else if(KeyValue!=0x00)
	movf	(ModemSelect@KeyValue),w
	skipz
	goto	u10420
	goto	l4009
u10420:
	line	746
	
l16255:	
;DK_PIC16_App.c: 745: {
;DK_PIC16_App.c: 746: BeepOn((u16*)MusicTab_KeyErr);
	movlw	low(_MusicTab_KeyErr|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyErr|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	748
	
l4009:	
	return
	opt stack 0
GLOBAL	__end_of_ModemSelect
	__end_of_ModemSelect:
;; =============== function _ModemSelect ends ============

	signat	_ModemSelect,4216
	global	_RFParameterSelect
psect	text2166,local,class=CODE,delta=2
global __ptext2166
__ptext2166:

;; *************** function _RFParameterSelect *****************
;; Defined at:
;;		line 561 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;  KeyValue        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyValue        1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1C/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BeepOn
;;		_SaveRFParameterToFlash
;; This function is called by:
;;		_MenuConfig
;; This function uses a non-reentrant model
;;
psect	text2166
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	561
	global	__size_of_RFParameterSelect
	__size_of_RFParameterSelect	equ	__end_of_RFParameterSelect-_RFParameterSelect
	
_RFParameterSelect:	
	opt	stack 9
; Regs used in _RFParameterSelect: [wreg-status,0+pclath+cstack]
;RFParameterSelect@KeyValue stored from wreg
	movwf	(RFParameterSelect@KeyValue)
	line	562
	
l16089:	
;DK_PIC16_App.c: 562: if(KeyValue==0x01)
	decf	(RFParameterSelect@KeyValue),w
	skipz
	goto	u10101
	goto	u10100
u10101:
	goto	l16113
u10100:
	line	564
	
l16091:	
;DK_PIC16_App.c: 563: {
;DK_PIC16_App.c: 564: BeepOn((u16*)MusicTab_KeySet);
	movlw	low(_MusicTab_KeySet|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeySet|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	566
	
l16093:	
;DK_PIC16_App.c: 566: gb_SysMode_Set++;
	incf	(_gb_SysMode_Set),f
	line	567
	
l16095:	
;DK_PIC16_App.c: 567: if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_RFParameterSelect+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u10111
	goto	u10110
u10111:
	goto	l16103
u10110:
	line	569
	
l16097:	
;DK_PIC16_App.c: 568: {
;DK_PIC16_App.c: 569: if(gb_SysMode_Set==0x54){gb_SysMode_Set=0x55;}
	movf	(_gb_SysMode_Set),w
	xorlw	054h&0ffh
	skipz
	goto	u10121
	goto	u10120
u10121:
	goto	l3935
u10120:
	
l16099:	
	movlw	(055h)
	movwf	(_gb_SysMode_Set)
	
l3935:	
	line	570
;DK_PIC16_App.c: 570: if(gb_SysMode_Set>0x55){gb_SysMode_Set=0x51;}
	movlw	(056h)
	subwf	(_gb_SysMode_Set),w
	skipc
	goto	u10131
	goto	u10130
u10131:
	goto	l3986
u10130:
	
l16101:	
	movlw	(051h)
	movwf	(_gb_SysMode_Set)
	goto	l3986
	line	574
	
l16103:	
;DK_PIC16_App.c: 572: else
;DK_PIC16_App.c: 573: {
;DK_PIC16_App.c: 574: if(gb_SysMode_Set>0x53){gb_SysMode_Set=0x51;}
	movlw	(054h)
	subwf	(_gb_SysMode_Set),w
	skipc
	goto	u10141
	goto	u10140
u10141:
	goto	l16107
u10140:
	
l16105:	
	movlw	(051h)
	movwf	(_gb_SysMode_Set)
	line	575
	
l16107:	
;DK_PIC16_App.c: 575: if(RF_FdevBuf[0]==0 && gb_SysMode_Set==0x52){gb_SysMode_Set++;}
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10151
	goto	u10150
u10151:
	goto	l3986
u10150:
	
l16109:	
	movf	(_gb_SysMode_Set),w
	xorlw	052h&0ffh
	skipz
	goto	u10161
	goto	u10160
u10161:
	goto	l3986
u10160:
	
l16111:	
	incf	(_gb_SysMode_Set),f
	goto	l3986
	line	578
	
l16113:	
;DK_PIC16_App.c: 578: else if(KeyValue==0x04)
	movf	(RFParameterSelect@KeyValue),w
	xorlw	04h&0ffh
	skipz
	goto	u10171
	goto	u10170
u10171:
	goto	l16157
u10170:
	line	580
	
l16115:	
;DK_PIC16_App.c: 579: {
;DK_PIC16_App.c: 580: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	582
;DK_PIC16_App.c: 582: switch(gb_SysMode_Set)
	goto	l16155
	line	585
	
l16117:	
;DK_PIC16_App.c: 585: if(gb_FreqBuf_Addr){gb_FreqBuf_Addr--;}
	movf	(_gb_FreqBuf_Addr),w
	skipz
	goto	u10180
	goto	l16121
u10180:
	
l16119:	
	decf	(_gb_FreqBuf_Addr),f
	goto	l3986
	line	590
	
l16121:	
;DK_PIC16_App.c: 589: {
;DK_PIC16_App.c: 590: gb_FreqBuf_Addr++;
	incf	(_gb_FreqBuf_Addr),f
	line	591
	
l16123:	
;DK_PIC16_App.c: 591: if(RF_FreqBuf[gb_FreqBuf_Addr]==0)
	movf	(_RF_FreqBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_FreqBuf),w
	movwf	(??_RFParameterSelect+0)+0
	lslf	(_gb_FreqBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_RFParameterSelect+2)+0
	moviw	[1]fsr0
	movwf	(??_RFParameterSelect+2)+0+1
	movf	1+(??_RFParameterSelect+2)+0,w
	iorwf	0+(??_RFParameterSelect+2)+0,w
	skipz
	goto	u10191
	goto	u10190
u10191:
	goto	l16121
u10190:
	goto	l16119
	line	600
	
l16127:	
;DK_PIC16_App.c: 600: gb_PowerBuf_Addr++;
	incf	(_gb_PowerBuf_Addr),f
	line	601
	
l16129:	
;DK_PIC16_App.c: 601: if(RF_PowerBuf[gb_PowerBuf_Addr]==0){gb_PowerBuf_Addr=0;}
	movf	(_RF_PowerBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_PowerBuf),w
	movwf	(??_RFParameterSelect+0)+0
	movf	(_gb_PowerBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10201
	goto	u10200
u10201:
	goto	l3986
u10200:
	
l16131:	
	clrf	(_gb_PowerBuf_Addr)
	goto	l3986
	line	604
	
l16133:	
;DK_PIC16_App.c: 604: if(gb_RateBuf_Addr){gb_RateBuf_Addr--;}
	movf	(_gb_RateBuf_Addr),w
	skipz
	goto	u10210
	goto	l16137
u10210:
	
l16135:	
	decf	(_gb_RateBuf_Addr),f
	goto	l3986
	line	609
	
l16137:	
;DK_PIC16_App.c: 608: {
;DK_PIC16_App.c: 609: gb_RateBuf_Addr++;
	incf	(_gb_RateBuf_Addr),f
	line	610
	
l16139:	
;DK_PIC16_App.c: 610: if(RF_RateBuf[gb_RateBuf_Addr]==0)
	movf	(_RF_RateBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_RateBuf),w
	movwf	(??_RFParameterSelect+0)+0
	movf	(_gb_RateBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10221
	goto	u10220
u10221:
	goto	l16137
u10220:
	goto	l16135
	line	619
	
l16143:	
;DK_PIC16_App.c: 619: if(gb_BandBuf_Addr){gb_BandBuf_Addr--;}
	movf	(_gb_BandBuf_Addr),w
	skipz
	goto	u10230
	goto	l16147
u10230:
	
l16145:	
	decf	(_gb_BandBuf_Addr),f
	goto	l3986
	line	624
	
l16147:	
;DK_PIC16_App.c: 623: {
;DK_PIC16_App.c: 624: gb_BandBuf_Addr++;
	incf	(_gb_BandBuf_Addr),f
	line	625
	
l16149:	
;DK_PIC16_App.c: 625: if(RF_LoRaBandWidthBuf[gb_BandBuf_Addr]==0)
	movf	(_RF_LoRaBandWidthBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_LoRaBandWidthBuf),w
	movwf	(??_RFParameterSelect+0)+0
	lslf	(_gb_BandBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_RFParameterSelect+2)+0
	moviw	[1]fsr0
	movwf	(??_RFParameterSelect+2)+0+1
	movf	1+(??_RFParameterSelect+2)+0,w
	iorwf	0+(??_RFParameterSelect+2)+0,w
	skipz
	goto	u10241
	goto	u10240
u10241:
	goto	l16147
u10240:
	goto	l16145
	line	582
	
l16155:	
	movf	(_gb_SysMode_Set),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 81 to 85
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           19     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	81^0	; case 81
	skipnz
	goto	l16117
	xorlw	82^81	; case 82
	skipnz
	goto	l16127
	xorlw	83^82	; case 83
	skipnz
	goto	l16133
	xorlw	85^83	; case 85
	skipnz
	goto	l16143
	goto	l3986
	opt asmopt_on

	line	635
	
l16157:	
;DK_PIC16_App.c: 635: else if(KeyValue==0x08)
	movf	(RFParameterSelect@KeyValue),w
	xorlw	08h&0ffh
	skipz
	goto	u10251
	goto	u10250
u10251:
	goto	l16193
u10250:
	line	637
	
l16159:	
;DK_PIC16_App.c: 636: {
;DK_PIC16_App.c: 637: BeepOn((u16*)MusicTab_KeyMove);
	movlw	low(_MusicTab_KeyMove|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyMove|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	639
;DK_PIC16_App.c: 639: switch(gb_SysMode_Set)
	goto	l16191
	line	642
	
l16161:	
;DK_PIC16_App.c: 642: gb_FreqBuf_Addr++;
	incf	(_gb_FreqBuf_Addr),f
	line	643
	
l16163:	
;DK_PIC16_App.c: 643: if(RF_FreqBuf[gb_FreqBuf_Addr]==0){gb_FreqBuf_Addr=0;}
	movf	(_RF_FreqBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_FreqBuf),w
	movwf	(??_RFParameterSelect+0)+0
	lslf	(_gb_FreqBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_RFParameterSelect+2)+0
	moviw	[1]fsr0
	movwf	(??_RFParameterSelect+2)+0+1
	movf	1+(??_RFParameterSelect+2)+0,w
	iorwf	0+(??_RFParameterSelect+2)+0,w
	skipz
	goto	u10261
	goto	u10260
u10261:
	goto	l3986
u10260:
	
l16165:	
	clrf	(_gb_FreqBuf_Addr)
	goto	l3986
	line	646
	
l16167:	
;DK_PIC16_App.c: 646: if(gb_PowerBuf_Addr){gb_PowerBuf_Addr--;}
	movf	(_gb_PowerBuf_Addr),w
	skipz
	goto	u10270
	goto	l16171
u10270:
	
l16169:	
	decf	(_gb_PowerBuf_Addr),f
	goto	l3986
	line	651
	
l16171:	
;DK_PIC16_App.c: 650: {
;DK_PIC16_App.c: 651: gb_PowerBuf_Addr++;
	incf	(_gb_PowerBuf_Addr),f
	line	652
	
l16173:	
;DK_PIC16_App.c: 652: if(RF_PowerBuf[gb_PowerBuf_Addr]==0)
	movf	(_RF_PowerBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_PowerBuf),w
	movwf	(??_RFParameterSelect+0)+0
	movf	(_gb_PowerBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10281
	goto	u10280
u10281:
	goto	l16171
u10280:
	goto	l16169
	line	661
	
l16177:	
;DK_PIC16_App.c: 661: gb_RateBuf_Addr++;
	incf	(_gb_RateBuf_Addr),f
	line	662
	
l16179:	
;DK_PIC16_App.c: 662: if(RF_RateBuf[gb_RateBuf_Addr]==0){gb_RateBuf_Addr=0;}
	movf	(_RF_RateBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_RateBuf),w
	movwf	(??_RFParameterSelect+0)+0
	movf	(_gb_RateBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u10291
	goto	u10290
u10291:
	goto	l3986
u10290:
	
l16181:	
	clrf	(_gb_RateBuf_Addr)
	goto	l3986
	line	665
	
l16183:	
;DK_PIC16_App.c: 665: gb_BandBuf_Addr++;
	incf	(_gb_BandBuf_Addr),f
	line	666
	
l16185:	
;DK_PIC16_App.c: 666: if(RF_LoRaBandWidthBuf[gb_BandBuf_Addr]==0){gb_BandBuf_Addr=0;}
	movf	(_RF_LoRaBandWidthBuf+1),w
	movwf	(??_RFParameterSelect+0)+0+1
	movf	(_RF_LoRaBandWidthBuf),w
	movwf	(??_RFParameterSelect+0)+0
	lslf	(_gb_BandBuf_Addr),w
	addwf	(??_RFParameterSelect+0)+0,w
	movwf	fsr0l
	movf	(??_RFParameterSelect+0)+1,w
	skipnc
	incf	(??_RFParameterSelect+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_RFParameterSelect+2)+0
	moviw	[1]fsr0
	movwf	(??_RFParameterSelect+2)+0+1
	movf	1+(??_RFParameterSelect+2)+0,w
	iorwf	0+(??_RFParameterSelect+2)+0,w
	skipz
	goto	u10301
	goto	u10300
u10301:
	goto	l3986
u10300:
	
l16187:	
	clrf	(_gb_BandBuf_Addr)
	goto	l3986
	line	639
	
l16191:	
	movf	(_gb_SysMode_Set),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 81 to 85
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           19     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	81^0	; case 81
	skipnz
	goto	l16161
	xorlw	82^81	; case 82
	skipnz
	goto	l16167
	xorlw	83^82	; case 83
	skipnz
	goto	l16177
	xorlw	85^83	; case 85
	skipnz
	goto	l16183
	goto	l3986
	opt asmopt_on

	line	670
	
l16193:	
;DK_PIC16_App.c: 670: else if(KeyValue==0x02)
	movf	(RFParameterSelect@KeyValue),w
	xorlw	02h&0ffh
	skipz
	goto	u10311
	goto	u10310
u10311:
	goto	l3986
u10310:
	line	672
	
l16195:	
;DK_PIC16_App.c: 671: {
;DK_PIC16_App.c: 672: BeepOn((u16*)MusicTab_KeyOK);
	movlw	low(_MusicTab_KeyOK|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_KeyOK|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	674
	
l16197:	
;DK_PIC16_App.c: 674: gb_SystemMode=0x24;
	movlw	(024h)
	movwf	(_gb_SystemMode)
	line	675
	
l16199:	
;DK_PIC16_App.c: 675: SaveRFParameterToFlash();
	fcall	_SaveRFParameterToFlash
	line	677
	
l3986:	
	return
	opt stack 0
GLOBAL	__end_of_RFParameterSelect
	__end_of_RFParameterSelect:
;; =============== function _RFParameterSelect ends ============

	signat	_RFParameterSelect,4216
	global	_RFM98_TestConfig
psect	text2167,local,class=CODE,delta=2
global __ptext2167
__ptext2167:

;; *************** function _RFM98_TestConfig *****************
;; Defined at:
;;		line 814 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RFM98_Sleep
;;		___bmul
;;		_SPIWrite
;;		_RFM98_Standby
;; This function is called by:
;;		_RFM98_EntryTestTx
;;		_RFM98_EntryTestRx
;; This function uses a non-reentrant model
;;
psect	text2167
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	814
	global	__size_of_RFM98_TestConfig
	__size_of_RFM98_TestConfig	equ	__end_of_RFM98_TestConfig-_RFM98_TestConfig
	
_RFM98_TestConfig:	
	opt	stack 9
; Regs used in _RFM98_TestConfig: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	817
	
l16015:	
;DK_RFM98.c: 815: u8 i;
;DK_RFM98.c: 817: TRISD0=0;
	movlb 1	; select bank1
	bcf	(1144/8)^080h,(1144)&7
	line	818
;DK_RFM98.c: 818: LATD0=0;
	movlb 2	; select bank2
	bcf	(2168/8)^0100h,(2168)&7
	line	819
	
l16017:	
;DK_RFM98.c: 819: for(i=200;i!=0;i--)
	movlw	(0C8h)
	movlb 0	; select bank0
	movwf	(RFM98_TestConfig@i)
	line	820
	
l5433:	
# 820 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2167
	line	819
	
l16023:	
	movlb 0	; select bank0
	decf	(RFM98_TestConfig@i),f
	movf	(RFM98_TestConfig@i),f
	skipz
	goto	u10031
	goto	u10030
u10031:
	goto	l5433
u10030:
	
l5434:	
	line	821
;DK_RFM98.c: 821: LATD0=1;
	movlb 2	; select bank2
	bsf	(2168/8)^0100h,(2168)&7
	line	822
	
l16025:	
;DK_RFM98.c: 822: for(i=200;i!=0;i--)
	movlw	(0C8h)
	movlb 0	; select bank0
	movwf	(RFM98_TestConfig@i)
	line	823
	
l5435:	
# 823 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2167
	line	822
	
l16031:	
	movlb 0	; select bank0
	decf	(RFM98_TestConfig@i),f
	movf	(RFM98_TestConfig@i),f
	skipz
	goto	u10041
	goto	u10040
u10041:
	goto	l5435
u10040:
	
l5436:	
	line	824
;DK_RFM98.c: 824: TRISD0=1;
	movlb 1	; select bank1
	bsf	(1144/8)^080h,(1144)&7
	line	825
;DK_RFM98.c: 825: for(gb_SysTimer_1S=1;gb_SysTimer_1S>0;);
	movlb 0	; select bank0
	clrf	(_gb_SysTimer_1S)
	incf	(_gb_SysTimer_1S),f
	
l16033:	
	movf	(_gb_SysTimer_1S),f
	skipz
	goto	u10051
	goto	u10050
u10051:
	goto	l16033
u10050:
	line	827
	
l16039:	
;DK_RFM98.c: 827: RFM98_Sleep();
	fcall	_RFM98_Sleep
	line	828
	
l16041:	
;DK_RFM98.c: 828: for(i=250;i!=0;i--)
	movlw	(0FAh)
	movwf	(RFM98_TestConfig@i)
	line	829
	
l5439:	
# 829 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2167
	line	828
	
l16047:	
	movlb 0	; select bank0
	decf	(RFM98_TestConfig@i),f
	movf	(RFM98_TestConfig@i),f
	skipz
	goto	u10061
	goto	u10060
u10061:
	goto	l5439
u10060:
	line	831
	
l16049:	
;DK_RFM98.c: 831: for(i=0;i<3;i++)
	clrf	(RFM98_TestConfig@i)
	line	833
	
l16055:	
;DK_RFM98.c: 832: {
;DK_RFM98.c: 833: SPIWrite(RFM98FreqTbl[gb_FreqBuf_Addr][i]);
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_gb_FreqBuf_Addr),w
	fcall	___bmul
	addlw	low(_RFM98FreqTbl|8000h)
	movwf	(??_RFM98_TestConfig+0)+0
	movlw	high(_RFM98FreqTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_TestConfig+0)+0
	lslf	(RFM98_TestConfig@i),w
	addwf	(??_RFM98_TestConfig+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_TestConfig+0)+1,w
	skipnc
	incf	(??_RFM98_TestConfig+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	831
	
l16057:	
	incf	(RFM98_TestConfig@i),f
	
l16059:	
	movlw	(03h)
	subwf	(RFM98_TestConfig@i),w
	skipc
	goto	u10071
	goto	u10070
u10071:
	goto	l16055
u10070:
	line	835
	
l16061:	
;DK_RFM98.c: 834: }
;DK_RFM98.c: 835: for(i=0;i<2;i++)
	clrf	(RFM98_TestConfig@i)
	line	836
	
l16067:	
;DK_RFM98.c: 836: SPIWrite(RFM98FSKRateTbl[gb_RateBuf_Addr][i]);
	movf	(_gb_RateBuf_Addr),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low(_RFM98FSKRateTbl|8000h)
	movwf	(??_RFM98_TestConfig+0)+0
	movlw	high(_RFM98FSKRateTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_TestConfig+0)+0
	lslf	(RFM98_TestConfig@i),w
	addwf	(??_RFM98_TestConfig+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_TestConfig+0)+1,w
	skipnc
	incf	(??_RFM98_TestConfig+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	835
	
l16069:	
	incf	(RFM98_TestConfig@i),f
	
l16071:	
	movlw	(02h)
	subwf	(RFM98_TestConfig@i),w
	skipc
	goto	u10081
	goto	u10080
u10081:
	goto	l16067
u10080:
	line	838
	
l16073:	
;DK_RFM98.c: 838: SPIWrite(RFM98PowerTbl[gb_PowerBuf_Addr]);
	lslf	(_gb_PowerBuf_Addr),w
	addlw	low(_RFM98PowerTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98PowerTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	841
	
l16075:	
;DK_RFM98.c: 841: for(i=0;i<9;i++)
	clrf	(RFM98_TestConfig@i)
	line	842
	
l16081:	
;DK_RFM98.c: 842: SPIWrite(RFM98TestConfigTbl[i]);
	lslf	(RFM98_TestConfig@i),w
	addlw	low(_RFM98TestConfigTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98TestConfigTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	841
	
l16083:	
	incf	(RFM98_TestConfig@i),f
	
l16085:	
	movlw	(09h)
	subwf	(RFM98_TestConfig@i),w
	skipc
	goto	u10091
	goto	u10090
u10091:
	goto	l16081
u10090:
	line	843
	
l16087:	
;DK_RFM98.c: 843: RFM98_Standby();
	fcall	_RFM98_Standby
	line	844
	
l5447:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_TestConfig
	__end_of_RFM98_TestConfig:
;; =============== function _RFM98_TestConfig ends ============

	signat	_RFM98_TestConfig,88
	global	_RFM98_FSKTxWaitStable
psect	text2168,local,class=CODE,delta=2
global __ptext2168
__ptext2168:

;; *************** function _RFM98_FSKTxWaitStable *****************
;; Defined at:
;;		line 652 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_FskTxPacket
;;		_RFM98_TestTx
;; This function uses a non-reentrant model
;;
psect	text2168
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	652
	global	__size_of_RFM98_FSKTxWaitStable
	__size_of_RFM98_FSKTxWaitStable	equ	__end_of_RFM98_FSKTxWaitStable-_RFM98_FSKTxWaitStable
	
_RFM98_FSKTxWaitStable:	
	opt	stack 9
; Regs used in _RFM98_FSKTxWaitStable: [wreg+status,2+status,0+pclath+cstack]
	line	653
	
l16005:	
;DK_RFM98.c: 653: if(gb_WaitStableFlag==0x0f)
	movf	(_gb_WaitStableFlag),w
	xorlw	0Fh&0ffh
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l5400
u10000:
	line	655
	
l16007:	
;DK_RFM98.c: 654: {
;DK_RFM98.c: 655: if(gb_SysTimer_1S!=0)
	movf	(_gb_SysTimer_1S),w
	skipz
	goto	u10010
	goto	l5397
u10010:
	line	657
	
l16009:	
;DK_RFM98.c: 656: {
;DK_RFM98.c: 657: if((SPIRead(0x3E)&0xA0)==0xA0)
	movlw	(03Eh)
	fcall	_SPIRead
	movwf	(??_RFM98_FSKTxWaitStable+0)+0
	movlw	(0A0h)
	andwf	0+(??_RFM98_FSKTxWaitStable+0)+0,w
	movwf	(??_RFM98_FSKTxWaitStable+1)+0
	movf	0+(??_RFM98_FSKTxWaitStable+1)+0,w
	xorlw	0A0h&0ffh
	skipz
	goto	u10021
	goto	u10020
u10021:
	goto	l5400
u10020:
	line	659
	
l16011:	
;DK_RFM98.c: 658: {
;DK_RFM98.c: 659: gb_WaitStableFlag=1;
	clrf	(_gb_WaitStableFlag)
	incf	(_gb_WaitStableFlag),f
	goto	l5400
	line	662
	
l5397:	
	line	664
;DK_RFM98.c: 662: else
;DK_RFM98.c: 663: {
;DK_RFM98.c: 664: gb_ErrorFlag=1;
	clrf	(_gb_ErrorFlag)
	incf	(_gb_ErrorFlag),f
	line	665
	
l16013:	
;DK_RFM98.c: 665: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	668
	
l5400:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FSKTxWaitStable
	__end_of_RFM98_FSKTxWaitStable:
;; =============== function _RFM98_FSKTxWaitStable ends ============

	signat	_RFM98_FSKTxWaitStable,88
	global	_RFM98_FSKRxWaitStable
psect	text2169,local,class=CODE,delta=2
global __ptext2169
__ptext2169:

;; *************** function _RFM98_FSKRxWaitStable *****************
;; Defined at:
;;		line 566 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_FskRxPacket
;;		_RFM98_TestRx
;; This function uses a non-reentrant model
;;
psect	text2169
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	566
	global	__size_of_RFM98_FSKRxWaitStable
	__size_of_RFM98_FSKRxWaitStable	equ	__end_of_RFM98_FSKRxWaitStable-_RFM98_FSKRxWaitStable
	
_RFM98_FSKRxWaitStable:	
	opt	stack 9
; Regs used in _RFM98_FSKRxWaitStable: [wreg+status,2+status,0+pclath+cstack]
	line	567
	
l15995:	
;DK_RFM98.c: 567: if(gb_WaitStableFlag==0x0f)
	movf	(_gb_WaitStableFlag),w
	xorlw	0Fh&0ffh
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l5373
u9970:
	line	569
	
l15997:	
;DK_RFM98.c: 568: {
;DK_RFM98.c: 569: if(gb_SysTimer_1S!=0)
	movf	(_gb_SysTimer_1S),w
	skipz
	goto	u9980
	goto	l5370
u9980:
	line	571
	
l15999:	
;DK_RFM98.c: 570: {
;DK_RFM98.c: 571: if((SPIRead(0x3E)&0xC0)==0xC0)
	movlw	(03Eh)
	fcall	_SPIRead
	movwf	(??_RFM98_FSKRxWaitStable+0)+0
	movlw	(0C0h)
	andwf	0+(??_RFM98_FSKRxWaitStable+0)+0,w
	movwf	(??_RFM98_FSKRxWaitStable+1)+0
	movf	0+(??_RFM98_FSKRxWaitStable+1)+0,w
	xorlw	0C0h&0ffh
	skipz
	goto	u9991
	goto	u9990
u9991:
	goto	l5373
u9990:
	line	573
	
l16001:	
;DK_RFM98.c: 572: {
;DK_RFM98.c: 573: gb_WaitStableFlag=1;
	clrf	(_gb_WaitStableFlag)
	incf	(_gb_WaitStableFlag),f
	goto	l5373
	line	576
	
l5370:	
	line	578
;DK_RFM98.c: 576: else
;DK_RFM98.c: 577: {
;DK_RFM98.c: 578: gb_ErrorFlag=1;
	clrf	(_gb_ErrorFlag)
	incf	(_gb_ErrorFlag),f
	line	579
	
l16003:	
;DK_RFM98.c: 579: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	582
	
l5373:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FSKRxWaitStable
	__end_of_RFM98_FSKRxWaitStable:
;; =============== function _RFM98_FSKRxWaitStable ends ============

	signat	_RFM98_FSKRxWaitStable,88
	global	_RFM98_ReadRSSI
psect	text2170,local,class=CODE,delta=2
global __ptext2170
__ptext2170:

;; *************** function _RFM98_ReadRSSI *****************
;; Defined at:
;;		line 516 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2170
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	516
	global	__size_of_RFM98_ReadRSSI
	__size_of_RFM98_ReadRSSI	equ	__end_of_RFM98_ReadRSSI-_RFM98_ReadRSSI
	
_RFM98_ReadRSSI:	
	opt	stack 10
; Regs used in _RFM98_ReadRSSI: [wreg+status,2+status,0+pclath+cstack]
	line	517
	
l15983:	
	line	518
	
l15985:	
;DK_RFM98.c: 518: temp=SPIRead(0x11);
	movlw	(011h)
	fcall	_SPIRead
	movwf	(RFM98_ReadRSSI@temp)
	line	519
	
l15987:	
;DK_RFM98.c: 519: temp>>=1;
	lsrf	(RFM98_ReadRSSI@temp),f
	line	520
	
l15989:	
;DK_RFM98.c: 520: temp=127-temp;
	movf	(RFM98_ReadRSSI@temp),w
	sublw	07Fh
	movwf	(RFM98_ReadRSSI@temp)
	line	521
	
l15991:	
;DK_RFM98.c: 521: return temp;
	movf	(RFM98_ReadRSSI@temp),w
	line	522
	
l5356:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_ReadRSSI
	__end_of_RFM98_ReadRSSI:
;; =============== function _RFM98_ReadRSSI ends ============

	signat	_RFM98_ReadRSSI,89
	global	_RFM98_LoRaTxWaitStable
psect	text2171,local,class=CODE,delta=2
global __ptext2171
__ptext2171:

;; *************** function _RFM98_LoRaTxWaitStable *****************
;; Defined at:
;;		line 391 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_LoRaTxPacket
;; This function uses a non-reentrant model
;;
psect	text2171
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	391
	global	__size_of_RFM98_LoRaTxWaitStable
	__size_of_RFM98_LoRaTxWaitStable	equ	__end_of_RFM98_LoRaTxWaitStable-_RFM98_LoRaTxWaitStable
	
_RFM98_LoRaTxWaitStable:	
	opt	stack 9
; Regs used in _RFM98_LoRaTxWaitStable: [wreg+status,2+status,0+pclath+cstack]
	line	393
	
l15971:	
;DK_RFM98.c: 392: u8 temp;
;DK_RFM98.c: 393: if(gb_WaitStableFlag==0x0f)
	movf	(_gb_WaitStableFlag),w
	xorlw	0Fh&0ffh
	skipz
	goto	u9941
	goto	u9940
u9941:
	goto	l5345
u9940:
	line	395
	
l15973:	
;DK_RFM98.c: 394: {
;DK_RFM98.c: 395: if(gb_SysTimer_1S!=0)
	movf	(_gb_SysTimer_1S),w
	skipz
	goto	u9950
	goto	l5342
u9950:
	line	397
	
l15975:	
;DK_RFM98.c: 396: {
;DK_RFM98.c: 397: temp=SPIRead((u8)(0x2200>>8));
	movlw	(022h)
	fcall	_SPIRead
	movwf	(RFM98_LoRaTxWaitStable@temp)
	line	398
	
l15977:	
;DK_RFM98.c: 398: if(temp==21)
	movf	(RFM98_LoRaTxWaitStable@temp),w
	xorlw	015h&0ffh
	skipz
	goto	u9961
	goto	u9960
u9961:
	goto	l5345
u9960:
	line	400
	
l15979:	
;DK_RFM98.c: 399: {
;DK_RFM98.c: 400: gb_WaitStableFlag=1;
	clrf	(_gb_WaitStableFlag)
	incf	(_gb_WaitStableFlag),f
	goto	l5345
	line	403
	
l5342:	
	line	405
;DK_RFM98.c: 403: else
;DK_RFM98.c: 404: {
;DK_RFM98.c: 405: gb_ErrorFlag=1;
	clrf	(_gb_ErrorFlag)
	incf	(_gb_ErrorFlag),f
	line	406
	
l15981:	
;DK_RFM98.c: 406: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	409
	
l5345:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaTxWaitStable
	__end_of_RFM98_LoRaTxWaitStable:
;; =============== function _RFM98_LoRaTxWaitStable ends ============

	signat	_RFM98_LoRaTxWaitStable,88
	global	_RFM98_LoRaReadRSSI
psect	text2172,local,class=CODE,delta=2
global __ptext2172
__ptext2172:

;; *************** function _RFM98_LoRaReadRSSI *****************
;; Defined at:
;;		line 302 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2172
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	302
	global	__size_of_RFM98_LoRaReadRSSI
	__size_of_RFM98_LoRaReadRSSI	equ	__end_of_RFM98_LoRaReadRSSI-_RFM98_LoRaReadRSSI
	
_RFM98_LoRaReadRSSI:	
	opt	stack 10
; Regs used in _RFM98_LoRaReadRSSI: [wreg+status,2+status,0+pclath+cstack]
	line	303
	
l15961:	
	line	304
	
l15963:	
;DK_RFM98.c: 304: temp=SPIRead((u8)(0x1B00>>8));
	movlw	(01Bh)
	fcall	_SPIRead
	movwf	(RFM98_LoRaReadRSSI@temp)
	clrf	(RFM98_LoRaReadRSSI@temp+1)
	line	305
	
l15965:	
;DK_RFM98.c: 305: temp=temp+127-137;
	movlw	low(0FFF6h)
	addwf	(RFM98_LoRaReadRSSI@temp),f
	movlw	high(0FFF6h)
	addwfc	(RFM98_LoRaReadRSSI@temp+1),f
	line	306
	
l15967:	
;DK_RFM98.c: 306: return (u8)temp;
	movf	(RFM98_LoRaReadRSSI@temp),w
	line	307
	
l5320:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaReadRSSI
	__end_of_RFM98_LoRaReadRSSI:
;; =============== function _RFM98_LoRaReadRSSI ends ============

	signat	_RFM98_LoRaReadRSSI,89
	global	_RFM98_LoRaRxWaitStable
psect	text2173,local,class=CODE,delta=2
global __ptext2173
__ptext2173:

;; *************** function _RFM98_LoRaRxWaitStable *****************
;; Defined at:
;;		line 277 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPIRead
;; This function is called by:
;;		_RFM98_LoRaRxPacket
;; This function uses a non-reentrant model
;;
psect	text2173
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	277
	global	__size_of_RFM98_LoRaRxWaitStable
	__size_of_RFM98_LoRaRxWaitStable	equ	__end_of_RFM98_LoRaRxWaitStable-_RFM98_LoRaRxWaitStable
	
_RFM98_LoRaRxWaitStable:	
	opt	stack 9
; Regs used in _RFM98_LoRaRxWaitStable: [wreg+status,2+status,0+pclath+cstack]
	line	278
	
l15951:	
;DK_RFM98.c: 278: if(gb_WaitStableFlag==0x0f)
	movf	(_gb_WaitStableFlag),w
	xorlw	0Fh&0ffh
	skipz
	goto	u9911
	goto	u9910
u9911:
	goto	l5317
u9910:
	line	280
	
l15953:	
;DK_RFM98.c: 279: {
;DK_RFM98.c: 280: if(gb_SysTimer_1S!=0)
	movf	(_gb_SysTimer_1S),w
	skipz
	goto	u9920
	goto	l5314
u9920:
	line	282
	
l15955:	
;DK_RFM98.c: 281: {
;DK_RFM98.c: 282: if((SPIRead((u8)(0x1800>>8))&0x04)==0x04)
	movlw	(018h)
	fcall	_SPIRead
	movwf	(??_RFM98_LoRaRxWaitStable+0)+0
	btfss	0+(??_RFM98_LoRaRxWaitStable+0)+0,(2)&7
	goto	u9931
	goto	u9930
u9931:
	goto	l5317
u9930:
	line	284
	
l15957:	
;DK_RFM98.c: 283: {
;DK_RFM98.c: 284: gb_WaitStableFlag=1;
	clrf	(_gb_WaitStableFlag)
	incf	(_gb_WaitStableFlag),f
	goto	l5317
	line	287
	
l5314:	
	line	289
;DK_RFM98.c: 287: else
;DK_RFM98.c: 288: {
;DK_RFM98.c: 289: gb_ErrorFlag=1;
	clrf	(_gb_ErrorFlag)
	incf	(_gb_ErrorFlag),f
	line	290
	
l15959:	
;DK_RFM98.c: 290: gb_WaitStableFlag=0;
	clrf	(_gb_WaitStableFlag)
	line	293
	
l5317:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaRxWaitStable
	__end_of_RFM98_LoRaRxWaitStable:
;; =============== function _RFM98_LoRaRxWaitStable ends ============

	signat	_RFM98_LoRaRxWaitStable,88
	global	_RFM98_Config
psect	text2174,local,class=CODE,delta=2
global __ptext2174
__ptext2174:

;; *************** function _RFM98_Config *****************
;; Defined at:
;;		line 725 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1    0[BANK0 ] unsigned char 
;;  tmp             1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RFM98_Sleep
;;		_RFM98_EntryLoRa
;;		___bmul
;;		_SPIWrite
;;		_SPIRead
;;		_RFM98_Standby
;; This function is called by:
;;		_RFM98_LoRaEntryRx
;;		_RFM98_LoRaEntryTx
;;		_RFM98_FskEntryRx
;;		_RFM98_FskEntryTx
;; This function uses a non-reentrant model
;;
psect	text2174
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	725
	global	__size_of_RFM98_Config
	__size_of_RFM98_Config	equ	__end_of_RFM98_Config-_RFM98_Config
	
_RFM98_Config:	
	opt	stack 9
; Regs used in _RFM98_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;RFM98_Config@mode stored from wreg
	line	728
	movlb 0	; select bank0
	movwf	(RFM98_Config@mode)
	
l15843:	
;DK_RFM98.c: 726: u8 i;
;DK_RFM98.c: 728: TRISD0=0;
	movlb 1	; select bank1
	bcf	(1144/8)^080h,(1144)&7
	line	729
;DK_RFM98.c: 729: LATD0=0;
	movlb 2	; select bank2
	bcf	(2168/8)^0100h,(2168)&7
	line	730
	
l15845:	
;DK_RFM98.c: 730: for(i=200;i!=0;i--)
	movlw	(0C8h)
	movlb 0	; select bank0
	movwf	(RFM98_Config@i)
	line	731
	
l5412:	
# 731 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2174
	line	730
	
l15851:	
	movlb 0	; select bank0
	decf	(RFM98_Config@i),f
	movf	(RFM98_Config@i),f
	skipz
	goto	u9821
	goto	u9820
u9821:
	goto	l5412
u9820:
	
l5413:	
	line	732
;DK_RFM98.c: 732: LATD0=1;
	movlb 2	; select bank2
	bsf	(2168/8)^0100h,(2168)&7
	line	733
	
l15853:	
;DK_RFM98.c: 733: for(i=200;i!=0;i--)
	movlw	(0C8h)
	movlb 0	; select bank0
	movwf	(RFM98_Config@i)
	line	734
	
l5414:	
# 734 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2174
	line	733
	
l15859:	
	movlb 0	; select bank0
	decf	(RFM98_Config@i),f
	movf	(RFM98_Config@i),f
	skipz
	goto	u9831
	goto	u9830
u9831:
	goto	l5414
u9830:
	
l5415:	
	line	735
;DK_RFM98.c: 735: TRISD0=1;
	movlb 1	; select bank1
	bsf	(1144/8)^080h,(1144)&7
	line	736
;DK_RFM98.c: 736: for(gb_SysTimer_1S=1;gb_SysTimer_1S>0;);
	movlb 0	; select bank0
	clrf	(_gb_SysTimer_1S)
	incf	(_gb_SysTimer_1S),f
	
l15861:	
	movf	(_gb_SysTimer_1S),f
	skipz
	goto	u9841
	goto	u9840
u9841:
	goto	l15861
u9840:
	line	738
	
l15867:	
;DK_RFM98.c: 738: RFM98_Sleep();
	fcall	_RFM98_Sleep
	line	739
	
l15869:	
;DK_RFM98.c: 739: for(i=250;i!=0;i--)
	movlw	(0FAh)
	movwf	(RFM98_Config@i)
	line	740
	
l5418:	
# 740 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
NOP ;#
psect	text2174
	line	739
	
l15875:	
	movlb 0	; select bank0
	decf	(RFM98_Config@i),f
	movf	(RFM98_Config@i),f
	skipz
	goto	u9851
	goto	u9850
u9851:
	goto	l5418
u9850:
	line	742
	
l15877:	
;DK_RFM98.c: 742: if(!mode)
	movf	(RFM98_Config@mode),f
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l15923
u9860:
	line	744
	
l15879:	
;DK_RFM98.c: 743: {
;DK_RFM98.c: 744: RFM98_EntryLoRa();
	fcall	_RFM98_EntryLoRa
	line	747
	
l15881:	
;DK_RFM98.c: 747: for(i=0;i<3;i++)
	clrf	(RFM98_Config@i)
	line	749
	
l15887:	
;DK_RFM98.c: 748: {
;DK_RFM98.c: 749: SPIWrite(RFM98FreqTbl[gb_FreqBuf_Addr][i]);
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_gb_FreqBuf_Addr),w
	fcall	___bmul
	addlw	low(_RFM98FreqTbl|8000h)
	movwf	(??_RFM98_Config+0)+0
	movlw	high(_RFM98FreqTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_Config+0)+0
	lslf	(RFM98_Config@i),w
	addwf	(??_RFM98_Config+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_Config+0)+1,w
	skipnc
	incf	(??_RFM98_Config+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	747
	
l15889:	
	incf	(RFM98_Config@i),f
	
l15891:	
	movlw	(03h)
	subwf	(RFM98_Config@i),w
	skipc
	goto	u9871
	goto	u9870
u9871:
	goto	l15887
u9870:
	line	753
	
l15893:	
;DK_RFM98.c: 750: }
;DK_RFM98.c: 753: SPIWrite(RFM98PowerTbl[gb_PowerBuf_Addr]);
	lslf	(_gb_PowerBuf_Addr),w
	addlw	low(_RFM98PowerTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98PowerTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	755
	
l15895:	
;DK_RFM98.c: 755: SPIWrite(0x0B00+0x0B);
	movlw	low(0B0Bh)
	movwf	(?_SPIWrite)
	movlw	high(0B0Bh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	756
	
l15897:	
;DK_RFM98.c: 756: SPIWrite(0x0C00+0x23);
	movlw	low(0C23h)
	movwf	(?_SPIWrite)
	movlw	high(0C23h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	758
	
l15899:	
;DK_RFM98.c: 758: if(RFM98SpreadFactorTbl[gb_RateBuf_Addr]==6)
	movf	(_gb_RateBuf_Addr),w
	addlw	low(_RFM98SpreadFactorTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98SpreadFactorTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	xorlw	06h
	skipz
	goto	u9881
	goto	u9880
u9881:
	goto	l15913
u9880:
	line	761
	
l15901:	
;DK_RFM98.c: 759: {
;DK_RFM98.c: 760: u8 tmp;
;DK_RFM98.c: 761: SPIWrite(0x1D00+(RFM98LoRaBwTbl[gb_BandBuf_Addr]<<4)+(0x01<<1)+0x01);
	movf	(_gb_BandBuf_Addr),w
	addlw	low(_RFM98LoRaBwTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98LoRaBwTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	swapf	(?_SPIWrite),f
	swapf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite+1),f
	movf	(?_SPIWrite),w
	andlw	0fh
	iorwf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite),f
	movlw	low(01D03h)
	addwf	(?_SPIWrite),f
	movlw	high(01D03h)
	addwfc	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	762
;DK_RFM98.c: 762: SPIWrite(0x1E00+(RFM98SpreadFactorTbl[gb_RateBuf_Addr]<<4)+(0x01<<2)+0x03);
	movf	(_gb_RateBuf_Addr),w
	addlw	low(_RFM98SpreadFactorTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98SpreadFactorTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	swapf	(?_SPIWrite),f
	swapf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite+1),f
	movf	(?_SPIWrite),w
	andlw	0fh
	iorwf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite),f
	movlw	low(01E07h)
	addwf	(?_SPIWrite),f
	movlw	high(01E07h)
	addwfc	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	764
	
l15903:	
;DK_RFM98.c: 764: tmp = SPIRead(0x31);
	movlw	(031h)
	fcall	_SPIRead
	movwf	(RFM98_Config@tmp)
	line	765
	
l15905:	
;DK_RFM98.c: 765: tmp &= 0xF8;
	movlw	(0F8h)
	andwf	(RFM98_Config@tmp),f
	line	766
	
l15907:	
;DK_RFM98.c: 766: tmp |= 0x05;
	movlw	(05h)
	iorwf	(RFM98_Config@tmp),f
	line	767
	
l15909:	
;DK_RFM98.c: 767: SPIWrite(0x3100+tmp);
	movf	(RFM98_Config@tmp),w
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	movlw	(03100h >> 8)
	addwf	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	768
	
l15911:	
;DK_RFM98.c: 768: SPIWrite(0x3700+0x0C);
	movlw	low(0370Ch)
	movwf	(?_SPIWrite)
	movlw	high(0370Ch)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	769
;DK_RFM98.c: 769: }
	goto	l15915
	line	772
	
l15913:	
;DK_RFM98.c: 770: else
;DK_RFM98.c: 771: {
;DK_RFM98.c: 772: SPIWrite(0x1D00+(RFM98LoRaBwTbl[gb_BandBuf_Addr]<<4)+(0x01<<1)+0x00);
	movf	(_gb_BandBuf_Addr),w
	addlw	low(_RFM98LoRaBwTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98LoRaBwTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	swapf	(?_SPIWrite),f
	swapf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite+1),f
	movf	(?_SPIWrite),w
	andlw	0fh
	iorwf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite),f
	movlw	low(01D02h)
	addwf	(?_SPIWrite),f
	movlw	high(01D02h)
	addwfc	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	773
;DK_RFM98.c: 773: SPIWrite(0x1E00+(RFM98SpreadFactorTbl[gb_RateBuf_Addr]<<4)+(0x01<<2)+0x03);
	movf	(_gb_RateBuf_Addr),w
	addlw	low(_RFM98SpreadFactorTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98SpreadFactorTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(?_SPIWrite)
	clrf	(?_SPIWrite+1)
	swapf	(?_SPIWrite),f
	swapf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite+1),f
	movf	(?_SPIWrite),w
	andlw	0fh
	iorwf	(?_SPIWrite+1),f
	movlw	0f0h
	andwf	(?_SPIWrite),f
	movlw	low(01E07h)
	addwf	(?_SPIWrite),f
	movlw	high(01E07h)
	addwfc	(?_SPIWrite+1),f
	fcall	_SPIWrite
	line	775
	
l15915:	
;DK_RFM98.c: 774: }
;DK_RFM98.c: 775: SPIWrite(0x1F00+0xFF);
	movlw	low(01FFFh)
	movwf	(?_SPIWrite)
	movlw	high(01FFFh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	777
	
l15917:	
;DK_RFM98.c: 777: SPIWrite(0x2000 + 0);
	movlw	low(02000h)
	movwf	(?_SPIWrite)
	movlw	high(02000h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	778
	
l15919:	
;DK_RFM98.c: 778: SPIWrite(0x2100 + 12);
	movlw	low(0210Ch)
	movwf	(?_SPIWrite)
	movlw	high(0210Ch)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	780
	
l15921:	
;DK_RFM98.c: 780: SPIWrite(0x4100+0x01);
	movlw	low(04101h)
	movwf	(?_SPIWrite)
	movlw	high(04101h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	782
;DK_RFM98.c: 782: }
	goto	l15949
	line	785
	
l15923:	
;DK_RFM98.c: 783: else
;DK_RFM98.c: 784: {
;DK_RFM98.c: 785: for(i=0;i<3;i++)
	clrf	(RFM98_Config@i)
	line	787
	
l15929:	
;DK_RFM98.c: 786: {
;DK_RFM98.c: 787: SPIWrite(RFM98FreqTbl[gb_FreqBuf_Addr][i]);
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_gb_FreqBuf_Addr),w
	fcall	___bmul
	addlw	low(_RFM98FreqTbl|8000h)
	movwf	(??_RFM98_Config+0)+0
	movlw	high(_RFM98FreqTbl|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_RFM98_Config+0)+0
	lslf	(RFM98_Config@i),w
	addwf	(??_RFM98_Config+0)+0,w
	movwf	fsr0l
	movf	(??_RFM98_Config+0)+1,w
	skipnc
	incf	(??_RFM98_Config+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	785
	
l15931:	
	incf	(RFM98_Config@i),f
	
l15933:	
	movlw	(03h)
	subwf	(RFM98_Config@i),w
	skipc
	goto	u9891
	goto	u9890
u9891:
	goto	l15929
u9890:
	line	789
	
l15935:	
;DK_RFM98.c: 788: }
;DK_RFM98.c: 789: SPIWrite(RFM98PowerTbl[gb_PowerBuf_Addr]);
	lslf	(_gb_PowerBuf_Addr),w
	addlw	low(_RFM98PowerTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98PowerTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	791
	
l15937:	
;DK_RFM98.c: 791: for(i=0;i<16;i++)
	clrf	(RFM98_Config@i)
	line	792
	
l15943:	
;DK_RFM98.c: 792: SPIWrite(RFM98ConfigTbl[i]);
	lslf	(RFM98_Config@i),w
	addlw	low(_RFM98ConfigTbl|8000h)
	movwf	fsr0l
	movlw	high(_RFM98ConfigTbl|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_SPIWrite)
	moviw	[1]fsr0
	movwf	(?_SPIWrite+1)
	fcall	_SPIWrite
	line	791
	
l15945:	
	incf	(RFM98_Config@i),f
	
l15947:	
	movlw	(010h)
	subwf	(RFM98_Config@i),w
	skipc
	goto	u9901
	goto	u9900
u9901:
	goto	l15943
u9900:
	line	794
	
l15949:	
;DK_RFM98.c: 793: }
;DK_RFM98.c: 794: RFM98_Standby();
	fcall	_RFM98_Standby
	line	795
	
l5430:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_Config
	__end_of_RFM98_Config:
;; =============== function _RFM98_Config ends ============

	signat	_RFM98_Config,4216
	global	_PowerOnMusic
psect	text2175,local,class=CODE,delta=2
global __ptext2175
__ptext2175:

;; *************** function _PowerOnMusic *****************
;; Defined at:
;;		line 979 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_BeepOn
;;		_LCD_DisplayAll
;;		_LCD_Display
;;		_Clr_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2175
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	979
	global	__size_of_PowerOnMusic
	__size_of_PowerOnMusic	equ	__end_of_PowerOnMusic-_PowerOnMusic
	
_PowerOnMusic:	
	opt	stack 11
; Regs used in _PowerOnMusic: [wreg-status,0+pclath+cstack]
	line	980
	
l15823:	
;DK_PIC16_App.c: 980: BeepOn((u16*)MusicTab_PowerOn);
	movlw	low(_MusicTab_PowerOn|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_PowerOn|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	981
	
l15825:	
;DK_PIC16_App.c: 981: LCD_DisplayAll();
	fcall	_LCD_DisplayAll
	line	982
	
l15827:	
;DK_PIC16_App.c: 982: _DispSeg.u32Bits.Bit8=1;_DispSeg.u32Bits.Bit9=1;_DispSeg.u32Bits.Bit14=1;
	bsf	0+(__DispSeg)+01h,0
	
l15829:	
	bsf	0+(__DispSeg)+01h,1
	
l15831:	
	bsf	0+(__DispSeg)+01h,6
	line	985
	
l15833:	
;DK_PIC16_App.c: 984: {
;DK_PIC16_App.c: 985: if((gw_BeepTimer==0)&&(gw_ToneBuf[gb_BeepOnCount+1]==0))
	movlb 0	; select bank0
	movf	((_gw_BeepTimer+1)),w
	iorwf	((_gw_BeepTimer)),w
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l15839
u9800:
	
l15835:	
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	moviw	fsr1++
	iorwf	indf1,w
	skipz
	goto	u9811
	goto	u9810
u9811:
	goto	l15839
u9810:
	goto	l4095
	line	987
	
l15839:	
;DK_PIC16_App.c: 987: LCD_Display();
	fcall	_LCD_Display
	goto	l15833
	line	983
	
l4095:	
	line	989
;DK_PIC16_App.c: 988: }
;DK_PIC16_App.c: 989: _DispSeg.u32Bits.Bit8=0;_DispSeg.u32Bits.Bit9=0;_DispSeg.u32Bits.Bit14=0;
	bcf	0+(__DispSeg)+01h,0
	bcf	0+(__DispSeg)+01h,1
	bcf	0+(__DispSeg)+01h,6
	line	990
	
l15841:	
;DK_PIC16_App.c: 990: Clr_LCD();
	fcall	_Clr_LCD
	line	991
	
l4097:	
	return
	opt stack 0
GLOBAL	__end_of_PowerOnMusic
	__end_of_PowerOnMusic:
;; =============== function _PowerOnMusic ends ============

	signat	_PowerOnMusic,88
	global	_DisplayRFParameter
psect	text2176,local,class=CODE,delta=2
global __ptext2176
__ptext2176:

;; *************** function _DisplayRFParameter *****************
;; Defined at:
;;		line 319 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  TempDispBuf     2   13[BANK0 ] PTR unsigned char 
;;		 -> STR_19(7), STR_18(7), STR_17(7), STR_16(7), 
;;		 -> STR_15(7), STR_14(7), STR_13(7), STR_12(7), 
;;		 -> STR_11(7), STR_10(7), STR_9(7), STR_8(7), 
;;		 -> STR_7(7), STR_6(7), STR_5(7), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SendStringToDispBuf
;;		_BeepOn
;;		_SendNumberToDispBuf
;;		___lwdiv
;; This function is called by:
;;		_MenuConfig
;; This function uses a non-reentrant model
;;
psect	text2176
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	319
	global	__size_of_DisplayRFParameter
	__size_of_DisplayRFParameter	equ	__end_of_DisplayRFParameter-_DisplayRFParameter
	
_DisplayRFParameter:	
	opt	stack 10
; Regs used in _DisplayRFParameter: [wreg-status,0+pclath+cstack]
	line	321
	
l15563:	
;DK_PIC16_App.c: 320: u8 *TempDispBuf;
;DK_PIC16_App.c: 321: if(gb_ErrorFlag!=1)
	movlb 0	; select bank0
	decf	(_gb_ErrorFlag),w
	skipnz
	goto	u9541
	goto	u9540
u9541:
	goto	l15695
u9540:
	goto	l15693
	line	326
	
l15567:	
;DK_PIC16_App.c: 326: if(RF_ModemBuf[gb_Modem_Addr]==0x10)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	010h
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l15571
u9550:
	line	328
	
l15569:	
;DK_PIC16_App.c: 327: {
;DK_PIC16_App.c: 328: SendStringToDispBuf(25, (u8*)"sel-FS");
	movlw	low(STR_1|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_1|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(019h)
	fcall	_SendStringToDispBuf
	line	329
;DK_PIC16_App.c: 329: }
	goto	l15579
	line	330
	
l15571:	
;DK_PIC16_App.c: 330: else if(RF_ModemBuf[gb_Modem_Addr]==0x11)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	011h
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l15575
u9560:
	line	332
	
l15573:	
;DK_PIC16_App.c: 331: {
;DK_PIC16_App.c: 332: SendStringToDispBuf(25, (u8*)"sel-OO");
	movlw	low(STR_2|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_2|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(019h)
	fcall	_SendStringToDispBuf
	line	333
;DK_PIC16_App.c: 333: }
	goto	l15579
	line	334
	
l15575:	
;DK_PIC16_App.c: 334: else if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l15579
u9570:
	line	336
	
l15577:	
;DK_PIC16_App.c: 335: {
;DK_PIC16_App.c: 336: SendStringToDispBuf(25, (u8*)"sel-Lr");
	movlw	low(STR_3|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_3|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(019h)
	fcall	_SendStringToDispBuf
	line	338
	
l15579:	
;DK_PIC16_App.c: 337: }
;DK_PIC16_App.c: 338: gb_DispFlashFlag=2;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(_gb_DispFlashFlag)
	line	340
	
l15581:	
;DK_PIC16_App.c: 340: _DispSeg.u32Bits.Bit19=0;
	bcf	0+(__DispSeg)+02h,3
	line	341
	
l15583:	
;DK_PIC16_App.c: 341: _DispSeg.u32Bits.Bit20=0;
	bcf	0+(__DispSeg)+02h,4
	line	342
	
l15585:	
;DK_PIC16_App.c: 342: _DispSeg.u32Bits.Bit15=0;
	bcf	0+(__DispSeg)+01h,7
	line	343
	
l15587:	
;DK_PIC16_App.c: 343: _DispSeg.u32Bits.Bit17=0;
	bcf	0+(__DispSeg)+02h,1
	line	344
	
l15589:	
;DK_PIC16_App.c: 344: _DispSeg.u32Bits.Bit18=0;
	bcf	0+(__DispSeg)+02h,2
	line	345
	
l15591:	
;DK_PIC16_App.c: 345: _DispSeg.u32Bits.Bit23=0;_DispSeg.u32Bits.Bit16=0;
	bcf	0+(__DispSeg)+02h,7
	
l15593:	
	bcf	0+(__DispSeg)+02h,0
	line	346
	
l15595:	
;DK_PIC16_App.c: 346: _DispSeg.u32Bits.Bit5=0;_DispSeg.u32Bits.Bit6=0;_DispSeg.u32Bits.Bit7=0;_DispSeg.u32Bits.Bit8=0;
	bcf	(__DispSeg),5
	
l15597:	
	bcf	(__DispSeg),6
	
l15599:	
	bcf	(__DispSeg),7
	
l15601:	
	bcf	0+(__DispSeg)+01h,0
	line	348
	
l15603:	
;DK_PIC16_App.c: 348: _DispSeg.u32Bits.Bit10=1;
	bsf	0+(__DispSeg)+01h,2
	line	349
	
l15605:	
;DK_PIC16_App.c: 349: SendStringToDispBuf(18, RF_ModuleName);_DispSeg.u32Bits.Bit9=1;
	movf	(_RF_ModuleName+1),w
	movwf	(?_SendStringToDispBuf+1)
	movf	(_RF_ModuleName),w
	movwf	(?_SendStringToDispBuf)
	movlw	(012h)
	fcall	_SendStringToDispBuf
	
l15607:	
	movlb 0	; select bank0
	bsf	0+(__DispSeg)+01h,1
	goto	l3874
	line	353
	
l15611:	
;DK_PIC16_App.c: 353: SendStringToDispBuf(25, (u8*)"sel-RF");
	movlw	low(STR_4|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_4|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(019h)
	fcall	_SendStringToDispBuf
	line	354
	
l15613:	
;DK_PIC16_App.c: 354: gb_DispFlashFlag=5;
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(_gb_DispFlashFlag)
	line	356
	
l15615:	
;DK_PIC16_App.c: 356: _DispSeg.u32Bits.Bit19=0;
	bcf	0+(__DispSeg)+02h,3
	line	357
	
l15617:	
;DK_PIC16_App.c: 357: _DispSeg.u32Bits.Bit20=0;
	bcf	0+(__DispSeg)+02h,4
	line	358
	
l15619:	
;DK_PIC16_App.c: 358: _DispSeg.u32Bits.Bit15=0;
	bcf	0+(__DispSeg)+01h,7
	line	359
	
l15621:	
;DK_PIC16_App.c: 359: _DispSeg.u32Bits.Bit17=0;
	bcf	0+(__DispSeg)+02h,1
	line	360
	
l15623:	
;DK_PIC16_App.c: 360: _DispSeg.u32Bits.Bit18=0;
	bcf	0+(__DispSeg)+02h,2
	line	361
	
l15625:	
;DK_PIC16_App.c: 361: _DispSeg.u32Bits.Bit23=0;_DispSeg.u32Bits.Bit16=0;
	bcf	0+(__DispSeg)+02h,7
	
l15627:	
	bcf	0+(__DispSeg)+02h,0
	line	362
	
l15629:	
;DK_PIC16_App.c: 362: _DispSeg.u32Bits.Bit5=0;_DispSeg.u32Bits.Bit6=0;_DispSeg.u32Bits.Bit7=0;_DispSeg.u32Bits.Bit8=0;
	bcf	(__DispSeg),5
	
l15631:	
	bcf	(__DispSeg),6
	
l15633:	
	bcf	(__DispSeg),7
	
l15635:	
	bcf	0+(__DispSeg)+01h,0
	line	364
	
l15637:	
;DK_PIC16_App.c: 364: _DispSeg.u32Bits.Bit10=1;
	bsf	0+(__DispSeg)+01h,2
	line	365
	
l15639:	
;DK_PIC16_App.c: 365: SendStringToDispBuf(18, RF_ModuleName);_DispSeg.u32Bits.Bit9=1;
	movf	(_RF_ModuleName+1),w
	movwf	(?_SendStringToDispBuf+1)
	movf	(_RF_ModuleName),w
	movwf	(?_SendStringToDispBuf)
	movlw	(012h)
	fcall	_SendStringToDispBuf
	goto	l15607
	line	369
	
l15645:	
;DK_PIC16_App.c: 369: TempDispBuf=(u8*)" set  ";
	movlw	low(STR_5|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_5|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	370
;DK_PIC16_App.c: 370: gb_DispFlashFlag=2;
	movlw	(02h)
	movwf	(_gb_DispFlashFlag)
	line	371
;DK_PIC16_App.c: 371: break;
	goto	l15699
	line	373
	
l15647:	
;DK_PIC16_App.c: 373: TempDispBuf=(u8*)"FS--T ";
	movlw	low(STR_6|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_6|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	374
;DK_PIC16_App.c: 374: break;
	goto	l15699
	line	376
	
l15649:	
;DK_PIC16_App.c: 376: TempDispBuf=(u8*)"FS--R ";
	movlw	low(STR_7|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_7|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	377
;DK_PIC16_App.c: 377: break;
	goto	l15699
	line	379
	
l15651:	
;DK_PIC16_App.c: 379: TempDispBuf=(u8*)"FS--TR";
	movlw	low(STR_8|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_8|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	380
;DK_PIC16_App.c: 380: break;
	goto	l15699
	line	382
	
l15653:	
;DK_PIC16_App.c: 382: TempDispBuf=(u8*)"OO--T ";
	movlw	low(STR_9|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_9|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	383
;DK_PIC16_App.c: 383: break;
	goto	l15699
	line	385
	
l15655:	
;DK_PIC16_App.c: 385: TempDispBuf=(u8*)"OO--R ";
	movlw	low(STR_10|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_10|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	386
;DK_PIC16_App.c: 386: break;
	goto	l15699
	line	388
	
l15657:	
;DK_PIC16_App.c: 388: TempDispBuf=(u8*)"OO--TR";
	movlw	low(STR_11|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_11|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	389
;DK_PIC16_App.c: 389: break;
	goto	l15699
	line	391
	
l15659:	
;DK_PIC16_App.c: 391: TempDispBuf=(u8*)"LR--T ";
	movlw	low(STR_12|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_12|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	392
;DK_PIC16_App.c: 392: break;
	goto	l15699
	line	394
	
l15661:	
;DK_PIC16_App.c: 394: TempDispBuf=(u8*)"LR--R ";
	movlw	low(STR_13|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_13|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	395
;DK_PIC16_App.c: 395: break;
	goto	l15699
	line	397
	
l15663:	
;DK_PIC16_App.c: 397: TempDispBuf=(u8*)"LR--TR";
	movlw	low(STR_14|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_14|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	398
;DK_PIC16_App.c: 398: break;
	goto	l15699
	line	400
	
l15665:	
;DK_PIC16_App.c: 400: TempDispBuf=(u8*)" T--T ";
	movlw	low(STR_15|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_15|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	401
;DK_PIC16_App.c: 401: break;
	goto	l15699
	line	403
	
l15667:	
;DK_PIC16_App.c: 403: TempDispBuf=(u8*)" T--R ";
	movlw	low(STR_16|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_16|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	404
;DK_PIC16_App.c: 404: break;
	goto	l15699
	line	409
	
l15669:	
;DK_PIC16_App.c: 409: TempDispBuf=(u8*)"SLEEP ";
	movlw	low(STR_17|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_17|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	410
;DK_PIC16_App.c: 410: break;
	goto	l15699
	line	412
	
l15671:	
;DK_PIC16_App.c: 412: TempDispBuf=(u8*)" set  ";
	movlw	low(STR_18|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_18|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	413
;DK_PIC16_App.c: 413: if(gb_SysMode_Set==0x51){gb_DispFlashFlag=1;}
	movf	(_gb_SysMode_Set),w
	xorlw	051h&0ffh
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l15675
u9580:
	
l15673:	
	clrf	(_gb_DispFlashFlag)
	incf	(_gb_DispFlashFlag),f
	goto	l15699
	line	414
	
l15675:	
;DK_PIC16_App.c: 414: else if(gb_SysMode_Set==0x52){gb_DispFlashFlag=6;}
	movf	(_gb_SysMode_Set),w
	xorlw	052h&0ffh
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l15679
u9590:
	
l15677:	
	movlw	(06h)
	movwf	(_gb_DispFlashFlag)
	goto	l15699
	line	415
	
l15679:	
;DK_PIC16_App.c: 415: else if(gb_SysMode_Set==0x53){gb_DispFlashFlag=7;}
	movf	(_gb_SysMode_Set),w
	xorlw	053h&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l15683
u9600:
	
l15681:	
	movlw	(07h)
	movwf	(_gb_DispFlashFlag)
	goto	l15699
	line	416
	
l15683:	
;DK_PIC16_App.c: 416: else if(gb_SysMode_Set==0x54){gb_DispFlashFlag=8;}
	movf	(_gb_SysMode_Set),w
	xorlw	054h&0ffh
	skipz
	goto	u9611
	goto	u9610
u9611:
	goto	l15687
u9610:
	
l15685:	
	movlw	(08h)
	movwf	(_gb_DispFlashFlag)
	goto	l15699
	line	417
	
l15687:	
;DK_PIC16_App.c: 417: else if(gb_SysMode_Set==0x55){gb_DispFlashFlag=9;}
	movf	(_gb_SysMode_Set),w
	xorlw	055h&0ffh
	skipz
	goto	u9621
	goto	u9620
u9621:
	goto	l3894
u9620:
	
l15689:	
	movlw	(09h)
	movwf	(_gb_DispFlashFlag)
	goto	l15699
	line	418
	
l3894:	
	goto	l15699
	line	323
	
l15693:	
	movf	(_gb_SystemMode),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 1 to 45
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           99     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l15611
	xorlw	2^1	; case 2
	skipnz
	goto	l15671
	xorlw	4^2	; case 4
	skipnz
	goto	l15567
	xorlw	33^4	; case 33
	skipnz
	goto	l15665
	xorlw	34^33	; case 34
	skipnz
	goto	l15667
	xorlw	35^34	; case 35
	skipnz
	goto	l15669
	xorlw	36^35	; case 36
	skipnz
	goto	l15645
	xorlw	37^36	; case 37
	skipnz
	goto	l15647
	xorlw	38^37	; case 38
	skipnz
	goto	l15649
	xorlw	39^38	; case 39
	skipnz
	goto	l15651
	xorlw	40^39	; case 40
	skipnz
	goto	l15653
	xorlw	41^40	; case 41
	skipnz
	goto	l15655
	xorlw	42^41	; case 42
	skipnz
	goto	l15657
	xorlw	43^42	; case 43
	skipnz
	goto	l15659
	xorlw	44^43	; case 44
	skipnz
	goto	l15661
	xorlw	45^44	; case 45
	skipnz
	goto	l15663
	goto	l15699
	opt asmopt_on

	line	423
	
l15695:	
;DK_PIC16_App.c: 421: else
;DK_PIC16_App.c: 422: {
;DK_PIC16_App.c: 423: TempDispBuf=(u8*)" Err  ";
	movlw	low(STR_19|8000h)
	movwf	(DisplayRFParameter@TempDispBuf)
	movlw	high(STR_19|8000h)
	movwf	((DisplayRFParameter@TempDispBuf))+1
	line	424
;DK_PIC16_App.c: 424: gb_DispFlashFlag=2;
	movlw	(02h)
	movwf	(_gb_DispFlashFlag)
	line	425
	
l15697:	
;DK_PIC16_App.c: 425: BeepOn((u16*)MusicTab_Error);
	movlw	low(_MusicTab_Error|8000h)
	movwf	(?_BeepOn)
	movlw	high(_MusicTab_Error|8000h)
	movwf	((?_BeepOn))+1
	fcall	_BeepOn
	line	427
	
l15699:	
;DK_PIC16_App.c: 426: }
;DK_PIC16_App.c: 427: SendStringToDispBuf(25, TempDispBuf);
	movf	(DisplayRFParameter@TempDispBuf+1),w
	movwf	(?_SendStringToDispBuf+1)
	movf	(DisplayRFParameter@TempDispBuf),w
	movwf	(?_SendStringToDispBuf)
	movlw	(019h)
	fcall	_SendStringToDispBuf
	line	429
	
l15701:	
;DK_PIC16_App.c: 429: _DispSeg.u32Bits.Bit10=1;
	movlb 0	; select bank0
	bsf	0+(__DispSeg)+01h,2
	line	430
	
l15703:	
;DK_PIC16_App.c: 430: SendStringToDispBuf(18, RF_ModuleName);_DispSeg.u32Bits.Bit9=1;
	movf	(_RF_ModuleName+1),w
	movwf	(?_SendStringToDispBuf+1)
	movf	(_RF_ModuleName),w
	movwf	(?_SendStringToDispBuf)
	movlw	(012h)
	fcall	_SendStringToDispBuf
	
l15705:	
	movlb 0	; select bank0
	bsf	0+(__DispSeg)+01h,1
	line	431
;DK_PIC16_App.c: 431: switch(RF_FreqBuf[gb_FreqBuf_Addr])
	goto	l15709
	line	433
;DK_PIC16_App.c: 432: {
;DK_PIC16_App.c: 433: case 315:
	
l3902:	
	line	434
;DK_PIC16_App.c: 434: _DispSeg.u32Bits.Bit5=1;_DispSeg.u32Bits.Bit6=0;_DispSeg.u32Bits.Bit7=0;_DispSeg.u32Bits.Bit8=0;
	bsf	(__DispSeg),5
	bcf	(__DispSeg),6
	bcf	(__DispSeg),7
	bcf	0+(__DispSeg)+01h,0
	line	435
;DK_PIC16_App.c: 435: break;
	goto	l15711
	line	436
;DK_PIC16_App.c: 436: case 434:
	
l3904:	
	line	437
;DK_PIC16_App.c: 437: _DispSeg.u32Bits.Bit5=0;_DispSeg.u32Bits.Bit6=1;_DispSeg.u32Bits.Bit7=0;_DispSeg.u32Bits.Bit8=0;
	bcf	(__DispSeg),5
	bsf	(__DispSeg),6
	bcf	(__DispSeg),7
	bcf	0+(__DispSeg)+01h,0
	line	438
;DK_PIC16_App.c: 438: break;
	goto	l15711
	line	439
;DK_PIC16_App.c: 439: case 868:
	
l3905:	
	line	440
;DK_PIC16_App.c: 440: _DispSeg.u32Bits.Bit5=0;_DispSeg.u32Bits.Bit6=0;_DispSeg.u32Bits.Bit7=1;_DispSeg.u32Bits.Bit8=0;
	bcf	(__DispSeg),5
	bcf	(__DispSeg),6
	bsf	(__DispSeg),7
	bcf	0+(__DispSeg)+01h,0
	line	441
;DK_PIC16_App.c: 441: break;
	goto	l15711
	line	442
;DK_PIC16_App.c: 442: case 915:
	
l3906:	
	line	443
;DK_PIC16_App.c: 443: _DispSeg.u32Bits.Bit5=0;_DispSeg.u32Bits.Bit6=0;_DispSeg.u32Bits.Bit7=0;_DispSeg.u32Bits.Bit8=1;
	bcf	(__DispSeg),5
	bcf	(__DispSeg),6
	bcf	(__DispSeg),7
	bsf	0+(__DispSeg)+01h,0
	line	444
;DK_PIC16_App.c: 444: break;
	goto	l15711
	line	431
	
l15709:	
	movf	(_RF_FreqBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_FreqBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	lslf	(_gb_FreqBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_DisplayRFParameter+2)+0
	moviw	[1]fsr0
	movwf	(??_DisplayRFParameter+2)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_DisplayRFParameter+2)+0,w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l17143
	xorlw	3^1	; case 3
	skipnz
	goto	l17145
	goto	l15711
	opt asmopt_on
	
l17143:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 59 to 178
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          249     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_DisplayRFParameter+2)+0,w
	opt asmopt_off
	xorlw	59^0	; case 59
	skipnz
	goto	l3902
	xorlw	178^59	; case 178
	skipnz
	goto	l3904
	goto	l15711
	opt asmopt_on
	
l17145:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 100 to 147
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          105     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_DisplayRFParameter+2)+0,w
	opt asmopt_off
	xorlw	100^0	; case 100
	skipnz
	goto	l3905
	xorlw	147^100	; case 147
	skipnz
	goto	l3906
	goto	l15711
	opt asmopt_on

	line	446
	
l15711:	
;DK_PIC16_App.c: 446: SendNumberToDispBuf(12,RF_RateBuf[gb_RateBuf_Addr]);
	movf	(_RF_RateBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_RateBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_RateBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(0Ch)
	fcall	_SendNumberToDispBuf
	line	447
	
l15713:	
;DK_PIC16_App.c: 447: if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u9631
	goto	u9630
u9631:
	goto	l3907
u9630:
	line	449
	
l15715:	
;DK_PIC16_App.c: 448: {
;DK_PIC16_App.c: 449: _DispSeg.u32Bits.Bit23=0;_DispSeg.u32Bits.Bit16=0;
	bcf	0+(__DispSeg)+02h,7
	bcf	0+(__DispSeg)+02h,0
	line	450
;DK_PIC16_App.c: 450: }
	goto	l15717
	line	451
	
l3907:	
	line	453
;DK_PIC16_App.c: 451: else
;DK_PIC16_App.c: 452: {
;DK_PIC16_App.c: 453: _DispSeg.u32Bits.Bit23=1;_DispSeg.u32Bits.Bit16=1;
	bsf	0+(__DispSeg)+02h,7
	bsf	0+(__DispSeg)+02h,0
	line	456
	
l15717:	
;DK_PIC16_App.c: 454: }
;DK_PIC16_App.c: 456: if(RF_FdevBuf[0]==0 && RF_ModemBuf[gb_Modem_Addr]!=0x12)
	movf	(_RF_FdevBuf),w
	movwf	fsr0l
	movf	((_RF_FdevBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u9641
	goto	u9640
u9641:
	goto	l15733
u9640:
	
l15719:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipnz
	goto	u9651
	goto	u9650
u9651:
	goto	l15733
u9650:
	line	458
	
l15721:	
;DK_PIC16_App.c: 457: {
;DK_PIC16_App.c: 458: SendStringToDispBuf(29,(u8*)"    ");_DispSeg.u32Bits.Bit19=0;
	movlw	low(STR_20|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_20|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(01Dh)
	fcall	_SendStringToDispBuf
	
l15723:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+02h,3
	line	459
;DK_PIC16_App.c: 459: SendNumberToDispBuf(0,gw_ReceiveDataCount);_DispSeg.u32Bits.Bit20=1;
	movf	(_gw_ReceiveDataCount+1),w
	movwf	(?_SendNumberToDispBuf+1)
	movf	(_gw_ReceiveDataCount),w
	movwf	(?_SendNumberToDispBuf)
	movlw	(0)
	fcall	_SendNumberToDispBuf
	
l15725:	
	bsf	0+(__DispSeg)+02h,4
	line	460
;DK_PIC16_App.c: 460: SendStringToDispBuf(14,(u8*)"  ");_DispSeg.u32Bits.Bit15=0;
	movlw	low(STR_21|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_21|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(0Eh)
	fcall	_SendStringToDispBuf
	
l15727:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+01h,7
	line	461
;DK_PIC16_App.c: 461: SendStringToDispBuf(5,(u8*)"   ");_DispSeg.u32Bits.Bit17=0;
	movlw	low(STR_22|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_22|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(05h)
	fcall	_SendStringToDispBuf
	
l15729:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+02h,1
	line	462
;DK_PIC16_App.c: 462: SendNumberToDispBuf(8,RF_BandBuf[gb_BandBuf_Addr]);_DispSeg.u32Bits.Bit18=1;
	movf	(_RF_BandBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_BandBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_BandBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(08h)
	fcall	_SendNumberToDispBuf
	
l15731:	
	bsf	0+(__DispSeg)+02h,2
	line	463
;DK_PIC16_App.c: 463: }
	goto	l15785
	line	464
	
l15733:	
;DK_PIC16_App.c: 464: else if(RF_BandBuf[0]==0 && RF_ModemBuf[gb_Modem_Addr]!=0x12)
	movf	(_RF_BandBuf),w
	movwf	fsr0l
	movf	((_RF_BandBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u9661
	goto	u9660
u9661:
	goto	l15749
u9660:
	
l15735:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipnz
	goto	u9671
	goto	u9670
u9671:
	goto	l15749
u9670:
	line	466
	
l15737:	
;DK_PIC16_App.c: 465: {
;DK_PIC16_App.c: 466: SendNumberToDispBuf(29,gw_SendDataCount);_DispSeg.u32Bits.Bit19=1;
	movf	(_gw_SendDataCount+1),w
	movwf	(?_SendNumberToDispBuf+1)
	movf	(_gw_SendDataCount),w
	movwf	(?_SendNumberToDispBuf)
	movlw	(01Dh)
	fcall	_SendNumberToDispBuf
	
l15739:	
	bsf	0+(__DispSeg)+02h,3
	line	467
;DK_PIC16_App.c: 467: SendStringToDispBuf(0,(u8*)"    ");_DispSeg.u32Bits.Bit20=0;
	movlw	low(STR_23|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_23|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(0)
	fcall	_SendStringToDispBuf
	
l15741:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+02h,4
	line	468
;DK_PIC16_App.c: 468: SendNumberToDispBuf(14,RF_PowerBuf[gb_PowerBuf_Addr]);_DispSeg.u32Bits.Bit15=1;
	movf	(_RF_PowerBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_PowerBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_PowerBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(0Eh)
	fcall	_SendNumberToDispBuf
	
l15743:	
	bsf	0+(__DispSeg)+01h,7
	line	469
;DK_PIC16_App.c: 469: SendNumberToDispBuf(5,RF_FdevBuf[gb_FdevBuf_Addr]);_DispSeg.u32Bits.Bit17=1;
	movf	(_RF_FdevBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_FdevBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_FdevBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(05h)
	fcall	_SendNumberToDispBuf
	
l15745:	
	bsf	0+(__DispSeg)+02h,1
	line	470
;DK_PIC16_App.c: 470: SendStringToDispBuf(8,(u8*)"   ");_DispSeg.u32Bits.Bit18=0;
	movlw	low(STR_24|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_24|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(08h)
	fcall	_SendStringToDispBuf
	
l15747:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+02h,2
	line	471
;DK_PIC16_App.c: 471: }
	goto	l15785
	line	474
	
l15749:	
;DK_PIC16_App.c: 472: else
;DK_PIC16_App.c: 473: {
;DK_PIC16_App.c: 474: SendNumberToDispBuf(29,gw_SendDataCount);_DispSeg.u32Bits.Bit19=1;
	movf	(_gw_SendDataCount+1),w
	movwf	(?_SendNumberToDispBuf+1)
	movf	(_gw_SendDataCount),w
	movwf	(?_SendNumberToDispBuf)
	movlw	(01Dh)
	fcall	_SendNumberToDispBuf
	
l15751:	
	bsf	0+(__DispSeg)+02h,3
	line	475
;DK_PIC16_App.c: 475: SendNumberToDispBuf(0,gw_ReceiveDataCount);_DispSeg.u32Bits.Bit20=1;
	movf	(_gw_ReceiveDataCount+1),w
	movwf	(?_SendNumberToDispBuf+1)
	movf	(_gw_ReceiveDataCount),w
	movwf	(?_SendNumberToDispBuf)
	movlw	(0)
	fcall	_SendNumberToDispBuf
	
l15753:	
	bsf	0+(__DispSeg)+02h,4
	line	476
;DK_PIC16_App.c: 476: SendNumberToDispBuf(14,RF_PowerBuf[gb_PowerBuf_Addr]);_DispSeg.u32Bits.Bit15=1;
	movf	(_RF_PowerBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_PowerBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_PowerBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(0Eh)
	fcall	_SendNumberToDispBuf
	
l15755:	
	bsf	0+(__DispSeg)+01h,7
	line	477
	
l15757:	
;DK_PIC16_App.c: 477: if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u9681
	goto	u9680
u9681:
	goto	l15777
u9680:
	line	479
	
l15759:	
;DK_PIC16_App.c: 478: {
;DK_PIC16_App.c: 479: SendStringToDispBuf(5,(u8*)"   ");_DispSeg.u32Bits.Bit17=0;
	movlw	low(STR_25|8000h)
	movwf	(?_SendStringToDispBuf)
	movlw	high(STR_25|8000h)
	movwf	((?_SendStringToDispBuf))+1
	movlw	(05h)
	fcall	_SendStringToDispBuf
	
l15761:	
	movlb 0	; select bank0
	bcf	0+(__DispSeg)+02h,1
	line	480
	
l15763:	
;DK_PIC16_App.c: 480: if(RF_LoRaBandWidthBuf[gb_BandBuf_Addr]<1000)
	movf	(_RF_LoRaBandWidthBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_LoRaBandWidthBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	lslf	(_gb_BandBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_DisplayRFParameter+2)+0
	moviw	[1]fsr0
	movwf	(??_DisplayRFParameter+2)+0+1
	movlw	high(03E8h)
	subwf	1+(??_DisplayRFParameter+2)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_DisplayRFParameter+2)+0,w
	skipnc
	goto	u9691
	goto	u9690
u9691:
	goto	l15771
u9690:
	line	482
	
l15765:	
;DK_PIC16_App.c: 481: {
;DK_PIC16_App.c: 482: SendNumberToDispBuf(8,RF_LoRaBandWidthBuf[gb_BandBuf_Addr]);_DispSeg.u32Bits.Bit18=1; _DispSeg.u32Bits.Bit25=1;
	movf	(_RF_LoRaBandWidthBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_LoRaBandWidthBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	lslf	(_gb_BandBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(?_SendNumberToDispBuf)
	moviw	[1]fsr0
	movwf	(?_SendNumberToDispBuf+1)
	movlw	(08h)
	fcall	_SendNumberToDispBuf
	
l15767:	
	bsf	0+(__DispSeg)+02h,2
	
l15769:	
	bsf	0+(__DispSeg)+03h,1
	line	483
;DK_PIC16_App.c: 483: }
	goto	l15785
	line	486
	
l15771:	
;DK_PIC16_App.c: 484: else
;DK_PIC16_App.c: 485: {
;DK_PIC16_App.c: 486: SendNumberToDispBuf(8,RF_LoRaBandWidthBuf[gb_BandBuf_Addr]/10);_DispSeg.u32Bits.Bit18=1; _DispSeg.u32Bits.Bit25=0;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RF_LoRaBandWidthBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_LoRaBandWidthBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	lslf	(_gb_BandBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	0+(?___lwdiv)+02h
	moviw	[1]fsr0
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(?_SendNumberToDispBuf+1)
	movf	(0+(?___lwdiv)),w
	movwf	(?_SendNumberToDispBuf)
	movlw	(08h)
	fcall	_SendNumberToDispBuf
	
l15773:	
	bsf	0+(__DispSeg)+02h,2
	
l15775:	
	bcf	0+(__DispSeg)+03h,1
	goto	l15785
	line	491
	
l15777:	
;DK_PIC16_App.c: 489: else
;DK_PIC16_App.c: 490: {
;DK_PIC16_App.c: 491: SendNumberToDispBuf(5,RF_FdevBuf[gb_FdevBuf_Addr]);_DispSeg.u32Bits.Bit17=1;
	movf	(_RF_FdevBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_FdevBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_FdevBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(05h)
	fcall	_SendNumberToDispBuf
	
l15779:	
	bsf	0+(__DispSeg)+02h,1
	line	492
;DK_PIC16_App.c: 492: SendNumberToDispBuf(8,RF_BandBuf[gb_BandBuf_Addr]);_DispSeg.u32Bits.Bit18=1;_DispSeg.u32Bits.Bit25=0;
	movf	(_RF_BandBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_BandBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movf	(_gb_BandBuf_Addr),w
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(?_SendNumberToDispBuf)
	clrf	(?_SendNumberToDispBuf+1)
	movlw	(08h)
	fcall	_SendNumberToDispBuf
	goto	l15773
	line	496
	
l15785:	
;DK_PIC16_App.c: 493: }
;DK_PIC16_App.c: 494: }
;DK_PIC16_App.c: 496: if(RF_RSSIBuf[0]!=0 &&(gb_SystemMode==0x26||gb_SystemMode==0x22||gb_SystemMode==0x2C||gb_SystemMode==0x29))
	movf	(_RF_RSSIBuf),w
	movwf	fsr0l
	movf	((_RF_RSSIBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorlw	0
	skipnz
	goto	u9701
	goto	u9700
u9701:
	goto	l3917
u9700:
	
l15787:	
	movf	(_gb_SystemMode),w
	xorlw	026h&0ffh
	skipnz
	goto	u9711
	goto	u9710
u9711:
	goto	l3919
u9710:
	
l15789:	
	movf	(_gb_SystemMode),w
	xorlw	022h&0ffh
	skipnz
	goto	u9721
	goto	u9720
u9721:
	goto	l3919
u9720:
	
l15791:	
	movf	(_gb_SystemMode),w
	xorlw	02Ch&0ffh
	skipnz
	goto	u9731
	goto	u9730
u9731:
	goto	l3919
u9730:
	
l15793:	
	movf	(_gb_SystemMode),w
	xorlw	029h&0ffh
	skipz
	goto	u9741
	goto	u9740
u9741:
	goto	l3917
u9740:
	
l3919:	
	line	498
;DK_PIC16_App.c: 497: {
;DK_PIC16_App.c: 498: _DispSeg.u32Bits.Bit0=1;
	bsf	(__DispSeg),0
	line	499
	
l15795:	
;DK_PIC16_App.c: 499: if(gb_RF_RSSI!=0xff)
	movf	(_gb_RF_RSSI),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u9751
	goto	u9750
u9751:
	goto	l3874
u9750:
	line	501
	
l15797:	
;DK_PIC16_App.c: 500: {
;DK_PIC16_App.c: 501: _DispSeg.u32Bits.Bit1=1;
	bsf	(__DispSeg),1
	line	502
;DK_PIC16_App.c: 502: _DispSeg.u32Bits.Bit2=1;
	bsf	(__DispSeg),2
	line	503
;DK_PIC16_App.c: 503: _DispSeg.u32Bits.Bit3=1;
	bsf	(__DispSeg),3
	line	504
;DK_PIC16_App.c: 504: _DispSeg.u32Bits.Bit4=1;
	bsf	(__DispSeg),4
	line	505
	
l15799:	
;DK_PIC16_App.c: 505: if(gb_RF_RSSI<RF_RSSIBuf[3]){_DispSeg.u32Bits.Bit4=0;}
	movf	(_RF_RSSIBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_RSSIBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movlw	03h
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	subwf	(_gb_RF_RSSI),w
	skipnc
	goto	u9761
	goto	u9760
u9761:
	goto	l15803
u9760:
	
l15801:	
	bcf	(__DispSeg),4
	line	506
	
l15803:	
;DK_PIC16_App.c: 506: if(gb_RF_RSSI<RF_RSSIBuf[2]){_DispSeg.u32Bits.Bit3=0;}
	movf	(_RF_RSSIBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_RSSIBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movlw	02h
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	subwf	(_gb_RF_RSSI),w
	skipnc
	goto	u9771
	goto	u9770
u9771:
	goto	l15807
u9770:
	
l15805:	
	bcf	(__DispSeg),3
	line	507
	
l15807:	
;DK_PIC16_App.c: 507: if(gb_RF_RSSI<RF_RSSIBuf[1]){_DispSeg.u32Bits.Bit2=0;}
	movf	(_RF_RSSIBuf+1),w
	movwf	(??_DisplayRFParameter+0)+0+1
	movf	(_RF_RSSIBuf),w
	movwf	(??_DisplayRFParameter+0)+0
	movlw	01h
	addwf	(??_DisplayRFParameter+0)+0,w
	movwf	fsr0l
	movf	(??_DisplayRFParameter+0)+1,w
	skipnc
	incf	(??_DisplayRFParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	subwf	(_gb_RF_RSSI),w
	skipnc
	goto	u9781
	goto	u9780
u9781:
	goto	l15811
u9780:
	
l15809:	
	bcf	(__DispSeg),2
	line	508
	
l15811:	
;DK_PIC16_App.c: 508: if(gb_RF_RSSI<RF_RSSIBuf[0]){_DispSeg.u32Bits.Bit1=0;}
	movf	(_RF_RSSIBuf),w
	movwf	fsr0l
	movf	((_RF_RSSIBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	subwf	(_gb_RF_RSSI),w
	skipnc
	goto	u9791
	goto	u9790
u9791:
	goto	l3874
u9790:
	
l15813:	
	bcf	(__DispSeg),1
	goto	l3874
	line	512
	
l3917:	
	line	514
;DK_PIC16_App.c: 512: else
;DK_PIC16_App.c: 513: {
;DK_PIC16_App.c: 514: _DispSeg.u32Bits.Bit0=0;_DispSeg.u32Bits.Bit1=0;_DispSeg.u32Bits.Bit2=0;_DispSeg.u32Bits.Bit3=0;_DispSeg.u32Bits.Bit4=0;
	bcf	(__DispSeg),0
	bcf	(__DispSeg),1
	bcf	(__DispSeg),2
	bcf	(__DispSeg),3
	bcf	(__DispSeg),4
	line	516
	
l3874:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRFParameter
	__end_of_DisplayRFParameter:
;; =============== function _DisplayRFParameter ends ============

	signat	_DisplayRFParameter,88
	global	_SaveRFParameterToFlash
psect	text2177,local,class=CODE,delta=2
global __ptext2177
__ptext2177:

;; *************** function _SaveRFParameterToFlash *****************
;; Defined at:
;;		line 221 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1C/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_FlashErase
;;		_FlashWrite
;; This function is called by:
;;		_RFParameterSelect
;;		_ModemSelect
;;		_WorkModeSelect
;; This function uses a non-reentrant model
;;
psect	text2177
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	221
	global	__size_of_SaveRFParameterToFlash
	__size_of_SaveRFParameterToFlash	equ	__end_of_SaveRFParameterToFlash-_SaveRFParameterToFlash
	
_SaveRFParameterToFlash:	
	opt	stack 9
; Regs used in _SaveRFParameterToFlash: [wreg+fsr1l-status,0+pclath+cstack]
	line	224
	
l15531:	
;DK_PIC16_App.c: 222: u8 i;
;DK_PIC16_App.c: 224: FlashErase(0x3820);
	movlw	0
	movwf	(?_FlashErase+3)
	movlw	0
	movwf	(?_FlashErase+2)
	movlw	038h
	movwf	(?_FlashErase+1)
	movlw	020h
	movwf	(?_FlashErase)

	fcall	_FlashErase
	line	225
	
l15533:	
;DK_PIC16_App.c: 225: gb_RxData[0]=0x5A;
	movlw	(05Ah)
	movlb 2	; select bank2
	movwf	(_gb_RxData)^0100h
	line	226
	
l15535:	
;DK_PIC16_App.c: 226: gb_RxData[1]=gb_FreqBuf_Addr;
	movlb 0	; select bank0
	movf	(_gb_FreqBuf_Addr),w
	movlb 2	; select bank2
	movwf	0+(_gb_RxData)^0100h+01h
	line	227
	
l15537:	
;DK_PIC16_App.c: 227: gb_RxData[2]=gb_RateBuf_Addr;
	movlb 0	; select bank0
	movf	(_gb_RateBuf_Addr),w
	movlb 2	; select bank2
	movwf	0+(_gb_RxData)^0100h+02h
	line	228
	
l15539:	
;DK_PIC16_App.c: 228: gb_RxData[3]=gb_PowerBuf_Addr;
	movlb 0	; select bank0
	movf	(_gb_PowerBuf_Addr),w
	movlb 2	; select bank2
	movwf	0+(_gb_RxData)^0100h+03h
	line	229
	
l15541:	
;DK_PIC16_App.c: 229: gb_RxData[4]=gb_FdevBuf_Addr;
	movlb 0	; select bank0
	movf	(_gb_FdevBuf_Addr),w
	movlb 2	; select bank2
	movwf	0+(_gb_RxData)^0100h+04h
	line	230
	
l15543:	
;DK_PIC16_App.c: 230: gb_RxData[5]=gb_BandBuf_Addr;
	movlb 0	; select bank0
	movf	(_gb_BandBuf_Addr),w
	movlb 2	; select bank2
	movwf	0+(_gb_RxData)^0100h+05h
	line	231
	
l15545:	
;DK_PIC16_App.c: 231: gb_RxData[6]=gb_Modem_Addr;
	movf	(_gb_Modem_Addr),w
	movwf	0+(_gb_RxData)^0100h+06h
	line	232
	
l15547:	
;DK_PIC16_App.c: 232: gb_RxData[8]=gb_SystemMode;
	movf	(_gb_SystemMode),w
	movwf	0+(_gb_RxData)^0100h+08h
	line	233
	
l15549:	
;DK_PIC16_App.c: 233: FlashWrite(0x3820, gb_RxData);
	movlw	0
	movwf	(?_FlashWrite+3)
	movlw	0
	movwf	(?_FlashWrite+2)
	movlw	038h
	movwf	(?_FlashWrite+1)
	movlw	020h
	movwf	(?_FlashWrite)

	movlw	(_gb_RxData)&0ffh
	movwf	0+(?_FlashWrite)+04h
	fcall	_FlashWrite
	line	234
	
l15551:	
;DK_PIC16_App.c: 234: for(i=0; i<32; i++)
	clrf	(SaveRFParameterToFlash@i)
	line	235
	
l15557:	
;DK_PIC16_App.c: 235: gb_RxData[i] = 0;
	movf	(SaveRFParameterToFlash@i),w
	addlw	_gb_RxData&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	234
	
l15559:	
	incf	(SaveRFParameterToFlash@i),f
	
l15561:	
	movlw	(020h)
	subwf	(SaveRFParameterToFlash@i),w
	skipc
	goto	u9531
	goto	u9530
u9531:
	goto	l15557
u9530:
	line	236
	
l3842:	
	return
	opt stack 0
GLOBAL	__end_of_SaveRFParameterToFlash
	__end_of_SaveRFParameterToFlash:
;; =============== function _SaveRFParameterToFlash ends ============

	signat	_SaveRFParameterToFlash,88
	global	_LCD_Init
psect	text2178,local,class=CODE,delta=2
global __ptext2178
__ptext2178:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 160 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CK1622_WriteCmd
;;		_Clr_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2178
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	160
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 11
; Regs used in _LCD_Init: [wreg-status,0+pclath+cstack]
	line	161
	
l15527:	
;DK_LCD.c: 161: CK1622_WriteCmd(0x01);
	movlw	(01h)
	fcall	_CK1622_WriteCmd
	line	162
;DK_LCD.c: 162: CK1622_WriteCmd(0x03);
	movlw	(03h)
	fcall	_CK1622_WriteCmd
	line	163
;DK_LCD.c: 163: CK1622_WriteCmd(0xE3);
	movlw	(0E3h)
	fcall	_CK1622_WriteCmd
	line	164
;DK_LCD.c: 164: CK1622_WriteCmd(0x05);
	movlw	(05h)
	fcall	_CK1622_WriteCmd
	line	165
;DK_LCD.c: 165: CK1622_WriteCmd(0x18);
	movlw	(018h)
	fcall	_CK1622_WriteCmd
	line	166
;DK_LCD.c: 166: CK1622_WriteCmd(0x80);
	movlw	(080h)
	fcall	_CK1622_WriteCmd
	line	167
;DK_LCD.c: 167: CK1622_WriteCmd(0x08);
	movlw	(08h)
	fcall	_CK1622_WriteCmd
	line	168
;DK_LCD.c: 168: CK1622_WriteCmd(0x0D);
	movlw	(0Dh)
	fcall	_CK1622_WriteCmd
	line	169
;DK_LCD.c: 169: CK1622_WriteCmd(0x06);
	movlw	(06h)
	fcall	_CK1622_WriteCmd
	line	170
;DK_LCD.c: 170: CK1622_WriteCmd(0xA0);
	movlw	(0A0h)
	fcall	_CK1622_WriteCmd
	line	172
	
l15529:	
;DK_LCD.c: 172: Clr_LCD();
	fcall	_Clr_LCD
	line	173
	
l2350:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_PowerUpDelay
psect	text2179,local,class=CODE,delta=2
global __ptext2179
__ptext2179:

;; *************** function _PowerUpDelay *****************
;; Defined at:
;;		line 279 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17E/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2179
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	279
	global	__size_of_PowerUpDelay
	__size_of_PowerUpDelay	equ	__end_of_PowerUpDelay-_PowerUpDelay
	
_PowerUpDelay:	
	opt	stack 12
; Regs used in _PowerUpDelay: [wreg+status,2+status,0+pclath+cstack]
	line	280
	
l15525:	
;main.c: 280: Delay_ms(200);
	movlw	0C8h
	movwf	(?_Delay_ms)
	clrf	(?_Delay_ms+1)
	clrf	(?_Delay_ms+2)
	clrf	(?_Delay_ms+3)

	fcall	_Delay_ms
	line	281
	
l7946:	
	return
	opt stack 0
GLOBAL	__end_of_PowerUpDelay
	__end_of_PowerUpDelay:
;; =============== function _PowerUpDelay ends ============

	signat	_PowerUpDelay,88
	global	_RFM98_FskClearFIFO
psect	text2180,local,class=CODE,delta=2
global __ptext2180
__ptext2180:

;; *************** function _RFM98_FskClearFIFO *****************
;; Defined at:
;;		line 531 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_FskRxPacket
;; This function uses a non-reentrant model
;;
psect	text2180
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	531
	global	__size_of_RFM98_FskClearFIFO
	__size_of_RFM98_FskClearFIFO	equ	__end_of_RFM98_FskClearFIFO-_RFM98_FskClearFIFO
	
_RFM98_FskClearFIFO:	
	opt	stack 10
; Regs used in _RFM98_FskClearFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	532
	
l15523:	
;DK_RFM98.c: 532: SPIWrite(0x0101);
	movlw	low(0101h)
	movwf	(?_SPIWrite)
	movlw	high(0101h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	533
;DK_RFM98.c: 533: SPIWrite(0x0105+0x08);
	movlw	low(010Dh)
	movwf	(?_SPIWrite)
	movlw	high(010Dh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	534
	
l5359:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_FskClearFIFO
	__end_of_RFM98_FskClearFIFO:
;; =============== function _RFM98_FskClearFIFO ends ============

	signat	_RFM98_FskClearFIFO,88
	global	_BurstWrite
psect	text2181,local,class=CODE,delta=2
global __ptext2181
__ptext2181:

;; *************** function _BurstWrite *****************
;; Defined at:
;;		line 148 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;  adr             1    wreg     unsigned char 
;;  ptr             2    4[COMMON] PTR unsigned char 
;;		 -> RFM98Data(22), 
;;  length          1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adr             1    0[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPICmd8bit
;; This function is called by:
;;		_RFM98_LoRaTxPacket
;;		_RFM98_FskTxPacket
;; This function uses a non-reentrant model
;;
psect	text2181
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	148
	global	__size_of_BurstWrite
	__size_of_BurstWrite	equ	__end_of_BurstWrite-_BurstWrite
	
_BurstWrite:	
	opt	stack 10
; Regs used in _BurstWrite: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;BurstWrite@adr stored from wreg
	line	151
	movwf	(BurstWrite@adr)
	
l15507:	
;DK_SPI.c: 149: u8 i;
;DK_SPI.c: 151: if(length<=1)
	movlw	(02h)
	subwf	(BurstWrite@length),w
	skipnc
	goto	u9511
	goto	u9510
u9511:
	goto	l6676
u9510:
	goto	l6677
	line	153
	
l6676:	
	line	155
;DK_SPI.c: 153: else
;DK_SPI.c: 154: {
;DK_SPI.c: 155: RC3=0;
	bcf	(115/8),(115)&7
	line	156
;DK_SPI.c: 156: RA0=0;
	bcf	(96/8),(96)&7
	line	157
	
l15513:	
;DK_SPI.c: 157: SPICmd8bit(adr|0x80);
	movf	(BurstWrite@adr),w
	iorlw	080h
	fcall	_SPICmd8bit
	line	158
	
l15515:	
;DK_SPI.c: 158: for(i=0;i<length;i++)
	clrf	(BurstWrite@i)
	goto	l15521
	line	159
	
l15517:	
;DK_SPI.c: 159: SPICmd8bit(ptr[i]);
	movf	(BurstWrite@ptr+1),w
	movwf	(??_BurstWrite+0)+0+1
	movf	(BurstWrite@ptr),w
	movwf	(??_BurstWrite+0)+0
	movf	(BurstWrite@i),w
	addwf	(??_BurstWrite+0)+0,w
	movwf	fsr0l
	movf	(??_BurstWrite+0)+1,w
	skipnc
	incf	(??_BurstWrite+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	fcall	_SPICmd8bit
	line	158
	
l15519:	
	incf	(BurstWrite@i),f
	
l15521:	
	movf	(BurstWrite@length),w
	subwf	(BurstWrite@i),w
	skipc
	goto	u9521
	goto	u9520
u9521:
	goto	l15517
u9520:
	
l6681:	
	line	160
;DK_SPI.c: 160: RA0=1;
	bsf	(96/8),(96)&7
	line	162
	
l6677:	
	return
	opt stack 0
GLOBAL	__end_of_BurstWrite
	__end_of_BurstWrite:
;; =============== function _BurstWrite ends ============

	signat	_BurstWrite,12408
	global	_SPIBurstRead
psect	text2182,local,class=CODE,delta=2
global __ptext2182
__ptext2182:

;; *************** function _SPIBurstRead *****************
;; Defined at:
;;		line 124 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;  adr             1    wreg     unsigned char 
;;  ptr             1    4[COMMON] PTR unsigned char 
;;		 -> gb_RxData(32), 
;;  length          1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adr             1    7[COMMON] unsigned char 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPICmd8bit
;;		_SPIRead8bit
;; This function is called by:
;;		_RFM98_LoRaRxPacket
;;		_RFM98_FskRxPacket
;; This function uses a non-reentrant model
;;
psect	text2182
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	124
	global	__size_of_SPIBurstRead
	__size_of_SPIBurstRead	equ	__end_of_SPIBurstRead-_SPIBurstRead
	
_SPIBurstRead:	
	opt	stack 10
; Regs used in _SPIBurstRead: [wreg+fsr1l-status,0+pclath+cstack]
;SPIBurstRead@adr stored from wreg
	line	126
	movwf	(SPIBurstRead@adr)
	
l15491:	
;DK_SPI.c: 125: u8 i;
;DK_SPI.c: 126: if(length<=1)
	movlw	(02h)
	subwf	(SPIBurstRead@length),w
	skipnc
	goto	u9491
	goto	u9490
u9491:
	goto	l6668
u9490:
	goto	l6669
	line	128
	
l6668:	
	line	130
;DK_SPI.c: 128: else
;DK_SPI.c: 129: {
;DK_SPI.c: 130: RC3=0;
	bcf	(115/8),(115)&7
	line	131
;DK_SPI.c: 131: RA0=0;
	bcf	(96/8),(96)&7
	line	132
	
l15497:	
;DK_SPI.c: 132: SPICmd8bit(adr);
	movf	(SPIBurstRead@adr),w
	fcall	_SPICmd8bit
	line	133
	
l15499:	
;DK_SPI.c: 133: for(i=0;i<length;i++)
	clrf	(SPIBurstRead@i)
	goto	l15505
	line	134
	
l15501:	
;DK_SPI.c: 134: ptr[i] = SPIRead8bit();
	movf	(SPIBurstRead@i),w
	addwf	(SPIBurstRead@ptr),w
	movwf	(??_SPIBurstRead+0)+0
	movf	0+(??_SPIBurstRead+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	fcall	_SPIRead8bit
	movwf	indf1
	line	133
	
l15503:	
	incf	(SPIBurstRead@i),f
	
l15505:	
	movf	(SPIBurstRead@length),w
	subwf	(SPIBurstRead@i),w
	skipc
	goto	u9501
	goto	u9500
u9501:
	goto	l15501
u9500:
	
l6673:	
	line	135
;DK_SPI.c: 135: RA0=1;
	bsf	(96/8),(96)&7
	line	137
	
l6669:	
	return
	opt stack 0
GLOBAL	__end_of_SPIBurstRead
	__end_of_SPIBurstRead:
;; =============== function _SPIBurstRead ends ============

	signat	_SPIBurstRead,12408
	global	_SPIRead
psect	text2183,local,class=CODE,delta=2
global __ptext2183
__ptext2183:

;; *************** function _SPIRead *****************
;; Defined at:
;;		line 77 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;  adr             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adr             1    4[COMMON] unsigned char 
;;  tmp             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPICmd8bit
;;		_SPIRead8bit
;; This function is called by:
;;		_RFM98_LoRaEntryRx
;;		_RFM98_LoRaRxWaitStable
;;		_RFM98_LoRaReadRSSI
;;		_RFM98_LoRaRxPacket
;;		_RFM98_LoRaEntryTx
;;		_RFM98_LoRaTxWaitStable
;;		_RFM98_LoRaTxPacket
;;		_RFM98_ReadRSSI
;;		_RFM98_FSKRxWaitStable
;;		_RFM98_FSKTxWaitStable
;;		_RFM98_Config
;; This function uses a non-reentrant model
;;
psect	text2183
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	77
	global	__size_of_SPIRead
	__size_of_SPIRead	equ	__end_of_SPIRead-_SPIRead
	
_SPIRead:	
	opt	stack 9
; Regs used in _SPIRead: [wreg+status,2+status,0+pclath+cstack]
;SPIRead@adr stored from wreg
	line	79
	movwf	(SPIRead@adr)
	
l15483:	
;DK_SPI.c: 78: u8 tmp;
;DK_SPI.c: 79: SPICmd8bit(adr);
	movf	(SPIRead@adr),w
	fcall	_SPICmd8bit
	line	80
;DK_SPI.c: 80: tmp = SPIRead8bit();
	fcall	_SPIRead8bit
	movwf	(SPIRead@tmp)
	line	81
	
l15485:	
;DK_SPI.c: 81: RA0=1;
	bsf	(96/8),(96)&7
	line	82
	
l15487:	
;DK_SPI.c: 82: return(tmp);
	movf	(SPIRead@tmp),w
	line	83
	
l6658:	
	return
	opt stack 0
GLOBAL	__end_of_SPIRead
	__end_of_SPIRead:
;; =============== function _SPIRead ends ============

	signat	_SPIRead,4217
	global	_RFM98_LoRaClearIrq
psect	text2184,local,class=CODE,delta=2
global __ptext2184
__ptext2184:

;; *************** function _RFM98_LoRaClearIrq *****************
;; Defined at:
;;		line 236 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_LoRaEntryRx
;;		_RFM98_LoRaRxPacket
;;		_RFM98_LoRaEntryTx
;;		_RFM98_LoRaTxPacket
;; This function uses a non-reentrant model
;;
psect	text2184
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	236
	global	__size_of_RFM98_LoRaClearIrq
	__size_of_RFM98_LoRaClearIrq	equ	__end_of_RFM98_LoRaClearIrq-_RFM98_LoRaClearIrq
	
_RFM98_LoRaClearIrq:	
	opt	stack 10
; Regs used in _RFM98_LoRaClearIrq: [wreg+status,2+status,0+pclath+cstack]
	line	237
	
l15481:	
;DK_RFM98.c: 237: SPIWrite(0x1200+0xFF);
	movlw	low(012FFh)
	movwf	(?_SPIWrite)
	movlw	high(012FFh)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	238
	
l5307:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_LoRaClearIrq
	__end_of_RFM98_LoRaClearIrq:
;; =============== function _RFM98_LoRaClearIrq ends ============

	signat	_RFM98_LoRaClearIrq,88
	global	_RFM98_EntryLoRa
psect	text2185,local,class=CODE,delta=2
global __ptext2185
__ptext2185:

;; *************** function _RFM98_EntryLoRa *****************
;; Defined at:
;;		line 225 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Config
;; This function uses a non-reentrant model
;;
psect	text2185
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	225
	global	__size_of_RFM98_EntryLoRa
	__size_of_RFM98_EntryLoRa	equ	__end_of_RFM98_EntryLoRa-_RFM98_EntryLoRa
	
_RFM98_EntryLoRa:	
	opt	stack 9
; Regs used in _RFM98_EntryLoRa: [wreg+status,2+status,0+pclath+cstack]
	line	226
	
l15479:	
;DK_RFM98.c: 226: SPIWrite(0x0100+0x80+0x08);
	movlw	low(0188h)
	movwf	(?_SPIWrite)
	movlw	high(0188h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	227
	
l5304:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_EntryLoRa
	__end_of_RFM98_EntryLoRa:
;; =============== function _RFM98_EntryLoRa ends ============

	signat	_RFM98_EntryLoRa,88
	global	_RFM98_Sleep
psect	text2186,local,class=CODE,delta=2
global __ptext2186
__ptext2186:

;; *************** function _RFM98_Sleep *****************
;; Defined at:
;;		line 210 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_Config
;;		_RFM98_TestConfig
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2186
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	210
	global	__size_of_RFM98_Sleep
	__size_of_RFM98_Sleep	equ	__end_of_RFM98_Sleep-_RFM98_Sleep
	
_RFM98_Sleep:	
	opt	stack 9
; Regs used in _RFM98_Sleep: [wreg+status,2+status,0+pclath+cstack]
	line	211
	
l15477:	
;DK_RFM98.c: 211: SPIWrite(0x0100+0x00+0x08);
	movlw	low(0108h)
	movwf	(?_SPIWrite)
	movlw	high(0108h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	212
	
l5301:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_Sleep
	__end_of_RFM98_Sleep:
;; =============== function _RFM98_Sleep ends ============

	signat	_RFM98_Sleep,88
	global	_RFM98_Standby
psect	text2187,local,class=CODE,delta=2
global __ptext2187
__ptext2187:

;; *************** function _RFM98_Standby *****************
;; Defined at:
;;		line 199 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPIWrite
;; This function is called by:
;;		_RFM98_LoRaTxPacket
;;		_RFM98_FskTxPacket
;;		_RFM98_Config
;;		_RFM98_TestConfig
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2187
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_RFM98.c"
	line	199
	global	__size_of_RFM98_Standby
	__size_of_RFM98_Standby	equ	__end_of_RFM98_Standby-_RFM98_Standby
	
_RFM98_Standby:	
	opt	stack 9
; Regs used in _RFM98_Standby: [wreg+status,2+status,0+pclath+cstack]
	line	200
	
l15475:	
;DK_RFM98.c: 200: SPIWrite(0x0100+0x01+0x08);
	movlw	low(0109h)
	movwf	(?_SPIWrite)
	movlw	high(0109h)
	movwf	((?_SPIWrite))+1
	fcall	_SPIWrite
	line	201
	
l5298:	
	return
	opt stack 0
GLOBAL	__end_of_RFM98_Standby
	__end_of_RFM98_Standby:
;; =============== function _RFM98_Standby ends ============

	signat	_RFM98_Standby,88
	global	_ModuleSelectModeEntryCheck
psect	text2188,local,class=CODE,delta=2
global __ptext2188
__ptext2188:

;; *************** function _ModuleSelectModeEntryCheck *****************
;; Defined at:
;;		line 525 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_FlashRead
;;		_InitSystemParameter
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2188
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	525
	global	__size_of_ModuleSelectModeEntryCheck
	__size_of_ModuleSelectModeEntryCheck	equ	__end_of_ModuleSelectModeEntryCheck-_ModuleSelectModeEntryCheck
	
_ModuleSelectModeEntryCheck:	
	opt	stack 12
; Regs used in _ModuleSelectModeEntryCheck: [wreg-status,0+pclath+cstack]
	line	526
	
l15459:	
;DK_PIC16_App.c: 526: gb_FirstPowerUpFlag=1;
	clrf	(_gb_FirstPowerUpFlag)
	incf	(_gb_FirstPowerUpFlag),f
	line	527
	
l15461:	
;DK_PIC16_App.c: 527: FlashRead(0x3820, gb_RxData);
	movlw	0
	movwf	(?_FlashRead+3)
	movlw	0
	movwf	(?_FlashRead+2)
	movlw	038h
	movwf	(?_FlashRead+1)
	movlw	020h
	movwf	(?_FlashRead)

	movlw	(_gb_RxData)&0ffh
	movwf	0+(?_FlashRead)+04h
	fcall	_FlashRead
	line	529
	
l15463:	
;DK_PIC16_App.c: 529: if(gb_RxData[0]==0x5A)
	movlb 2	; select bank2
	movf	(_gb_RxData)^0100h,w
	xorlw	05Ah&0ffh
	skipz
	goto	u9481
	goto	u9480
u9481:
	goto	l15467
u9480:
	line	531
	
l15465:	
;DK_PIC16_App.c: 530: {
;DK_PIC16_App.c: 531: gb_FreqBuf_Addr=gb_RxData[1];
	movf	0+(_gb_RxData)^0100h+01h,w
	movlb 0	; select bank0
	movwf	(_gb_FreqBuf_Addr)
	line	532
;DK_PIC16_App.c: 532: gb_RateBuf_Addr=gb_RxData[2];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+02h,w
	movlb 0	; select bank0
	movwf	(_gb_RateBuf_Addr)
	line	533
;DK_PIC16_App.c: 533: gb_PowerBuf_Addr=gb_RxData[3];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+03h,w
	movlb 0	; select bank0
	movwf	(_gb_PowerBuf_Addr)
	line	534
;DK_PIC16_App.c: 534: gb_FdevBuf_Addr=gb_RxData[4];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+04h,w
	movlb 0	; select bank0
	movwf	(_gb_FdevBuf_Addr)
	line	535
;DK_PIC16_App.c: 535: gb_BandBuf_Addr=gb_RxData[5];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+05h,w
	movlb 0	; select bank0
	movwf	(_gb_BandBuf_Addr)
	line	536
;DK_PIC16_App.c: 536: gb_Modem_Addr_Backup=gb_Modem_Addr=gb_RxData[6];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+06h,w
	movwf	(_gb_Modem_Addr)
	movlb 0	; select bank0
	movwf	(_gb_Modem_Addr_Backup)
	line	537
;DK_PIC16_App.c: 537: gb_SystemMode=gb_RxData[8];
	movlb 2	; select bank2
	movf	0+(_gb_RxData)^0100h+08h,w
	movwf	(_gb_SystemMode)
	line	538
;DK_PIC16_App.c: 538: }
	goto	l15473
	line	541
	
l15467:	
;DK_PIC16_App.c: 539: else
;DK_PIC16_App.c: 540: {
;DK_PIC16_App.c: 541: gb_FreqBuf_Addr=0;
	movlb 0	; select bank0
	clrf	(_gb_FreqBuf_Addr)
	line	542
	
l15469:	
;DK_PIC16_App.c: 542: gb_RateBuf_Addr=1;
	clrf	(_gb_RateBuf_Addr)
	incf	(_gb_RateBuf_Addr),f
	line	543
;DK_PIC16_App.c: 543: gb_PowerBuf_Addr=0;
	clrf	(_gb_PowerBuf_Addr)
	line	544
;DK_PIC16_App.c: 544: gb_FdevBuf_Addr=0;
	clrf	(_gb_FdevBuf_Addr)
	line	545
;DK_PIC16_App.c: 545: gb_BandBuf_Addr=0;
	clrf	(_gb_BandBuf_Addr)
	line	546
;DK_PIC16_App.c: 546: gb_Modem_Addr_Backup=gb_Modem_Addr=0;
	clrf	(_gb_Modem_Addr)
	clrf	(_gb_Modem_Addr_Backup)
	line	548
	
l15471:	
;DK_PIC16_App.c: 548: gb_SystemMode=0x04;
	movlw	(04h)
	movwf	(_gb_SystemMode)
	line	551
	
l15473:	
;DK_PIC16_App.c: 549: }
;DK_PIC16_App.c: 551: InitSystemParameter();
	fcall	_InitSystemParameter
	line	552
	
l3930:	
	return
	opt stack 0
GLOBAL	__end_of_ModuleSelectModeEntryCheck
	__end_of_ModuleSelectModeEntryCheck:
;; =============== function _ModuleSelectModeEntryCheck ends ============

	signat	_ModuleSelectModeEntryCheck,88
	global	_KeyScan
psect	text2189,local,class=CODE,delta=2
global __ptext2189
__ptext2189:

;; *************** function _KeyScan *****************
;; Defined at:
;;		line 119 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    4[COMMON] unsigned char 
;;  keyValue        1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyRead
;; This function is called by:
;;		_MenuConfig
;; This function uses a non-reentrant model
;;
psect	text2189
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	119
	global	__size_of_KeyScan
	__size_of_KeyScan	equ	__end_of_KeyScan-_KeyScan
	
_KeyScan:	
	opt	stack 11
; Regs used in _KeyScan: [wreg+status,2+status,0+pclath+cstack]
	line	121
	
l15429:	
;DK_PIC16_App.c: 120: u8 temp;
;DK_PIC16_App.c: 121: u8 keyValue=0;
	clrf	(KeyScan@keyValue)
	line	122
	
l15431:	
;DK_PIC16_App.c: 122: temp=KeyRead();
	fcall	_KeyRead
	movwf	(KeyScan@temp)
	line	123
	
l15433:	
;DK_PIC16_App.c: 123: if(temp!=0x00)
	movf	(KeyScan@temp),w
	skipz
	goto	u9430
	goto	l15447
u9430:
	line	125
	
l15435:	
;DK_PIC16_App.c: 124: {
;DK_PIC16_App.c: 125: if(gb_KeyDownFlag==0)
	movf	(_gb_KeyDownFlag),f
	skipz
	goto	u9441
	goto	u9440
u9441:
	goto	l15441
u9440:
	line	127
	
l15437:	
;DK_PIC16_App.c: 126: {
;DK_PIC16_App.c: 127: gw_KeyDebounceTimer=50;
	movlw	032h
	movwf	(_gw_KeyDebounceTimer)
	clrf	(_gw_KeyDebounceTimer+1)
	line	128
	
l15439:	
;DK_PIC16_App.c: 128: gb_KeyDownFlag=1;
	clrf	(_gb_KeyDownFlag)
	incf	(_gb_KeyDownFlag),f
	line	129
;DK_PIC16_App.c: 129: gb_KeyValue=temp;
	movf	(KeyScan@temp),w
	movwf	(_gb_KeyValue)
	line	130
;DK_PIC16_App.c: 130: }
	goto	l15455
	line	131
	
l15441:	
;DK_PIC16_App.c: 131: else if(gw_KeyDebounceTimer==0 && gb_KeyValue==temp)
	movf	((_gw_KeyDebounceTimer+1)),w
	iorwf	((_gw_KeyDebounceTimer)),w
	skipz
	goto	u9451
	goto	u9450
u9451:
	goto	l15455
u9450:
	
l15443:	
	movf	(_gb_KeyValue),w
	xorwf	(KeyScan@temp),w
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l15455
u9460:
	line	133
	
l15445:	
;DK_PIC16_App.c: 132: {
;DK_PIC16_App.c: 133: gb_KeyDownFlag=2;
	movlw	(02h)
	movwf	(_gb_KeyDownFlag)
	goto	l15455
	line	136
	
l15447:	
;DK_PIC16_App.c: 136: else if(gb_KeyDownFlag==2)
	movf	(_gb_KeyDownFlag),w
	xorlw	02h&0ffh
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l15451
u9470:
	line	138
	
l15449:	
;DK_PIC16_App.c: 137: {
;DK_PIC16_App.c: 138: keyValue=gb_KeyValue;
	movf	(_gb_KeyValue),w
	movwf	(KeyScan@keyValue)
	line	139
	
l15451:	
;DK_PIC16_App.c: 139: gb_KeyDownFlag=0;
	clrf	(_gb_KeyDownFlag)
	line	145
;DK_PIC16_App.c: 140: }
	
l15455:	
;DK_PIC16_App.c: 144: }
;DK_PIC16_App.c: 145: return keyValue;
	movf	(KeyScan@keyValue),w
	line	146
	
l3814:	
	return
	opt stack 0
GLOBAL	__end_of_KeyScan
	__end_of_KeyScan:
;; =============== function _KeyScan ends ============

	signat	_KeyScan,89
	global	_LCD_Display
psect	text2190,local,class=CODE,delta=2
global __ptext2190
__ptext2190:

;; *************** function _LCD_Display *****************
;; Defined at:
;;		line 507 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SendSegDataToDispBuf
;;		_FlashDisplay
;;		_CK1622_WriteByte
;; This function is called by:
;;		_MenuConfig
;;		_PowerOnMusic
;; This function uses a non-reentrant model
;;
psect	text2190
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	507
	global	__size_of_LCD_Display
	__size_of_LCD_Display	equ	__end_of_LCD_Display-_LCD_Display
	
_LCD_Display:	
	opt	stack 11
; Regs used in _LCD_Display: [wreg-status,0+pclath+cstack]
	line	508
	
l15399:	
	line	509
	
l15401:	
;DK_LCD.c: 509: SendSegDataToDispBuf();
	fcall	_SendSegDataToDispBuf
	line	510
	
l15403:	
;DK_LCD.c: 510: for(i=0;i<32;i++){DispBufCache[i]=DispBuf[i];}
	clrf	(LCD_Display@i)
	
l15409:	
	movf	(LCD_Display@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(LCD_Display@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l15411:	
	incf	(LCD_Display@i),f
	
l15413:	
	movlw	(020h)
	subwf	(LCD_Display@i),w
	skipc
	goto	u9411
	goto	u9410
u9411:
	goto	l15409
u9410:
	line	511
	
l15415:	
;DK_LCD.c: 511: FlashDisplay();
	fcall	_FlashDisplay
	line	513
	
l15417:	
;DK_LCD.c: 513: for(i=0;i<60;i+=2)
	clrf	(LCD_Display@i)
	line	515
	
l15423:	
;DK_LCD.c: 514: {
;DK_LCD.c: 515: CK1622_WriteByte(i,DispBufCache[i/2]);
	lsrf	(LCD_Display@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(?_CK1622_WriteByte)
	movf	(LCD_Display@i),w
	fcall	_CK1622_WriteByte
	line	513
	
l15425:	
	incf	(LCD_Display@i),f
	incf	(LCD_Display@i),f
	
l15427:	
	movlw	(03Ch)
	subwf	(LCD_Display@i),w
	skipc
	goto	u9421
	goto	u9420
u9421:
	goto	l15423
u9420:
	line	517
	
l2534:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Display
	__end_of_LCD_Display:
;; =============== function _LCD_Display ends ============

	signat	_LCD_Display,88
	global	_SendNumberToDispBuf
psect	text2191,local,class=CODE,delta=2
global __ptext2191
__ptext2191:

;; *************** function _SendNumberToDispBuf *****************
;; Defined at:
;;		line 256 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  dat             2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  addr            1    8[BANK0 ] unsigned char 
;;  temp            1    7[BANK0 ] unsigned char 
;;  length          1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;;		___lwdiv
;;		_AsciiToDisplay
;; This function is called by:
;;		_DisplayRFParameter
;; This function uses a non-reentrant model
;;
psect	text2191
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	256
	global	__size_of_SendNumberToDispBuf
	__size_of_SendNumberToDispBuf	equ	__end_of_SendNumberToDispBuf-_SendNumberToDispBuf
	
_SendNumberToDispBuf:	
	opt	stack 10
; Regs used in _SendNumberToDispBuf: [wreg-status,0+pclath+cstack]
;SendNumberToDispBuf@addr stored from wreg
	movwf	(SendNumberToDispBuf@addr)
	line	257
	
l15267:	
;DK_LCD.c: 257: u8 length=0;
	clrf	(SendNumberToDispBuf@length)
	line	260
;DK_LCD.c: 260: switch(addr)
	goto	l15285
	line	266
	
l15269:	
;DK_LCD.c: 266: length=4;
	movlw	(04h)
	movwf	(SendNumberToDispBuf@length)
	line	267
;DK_LCD.c: 267: break;
	goto	l15287
	line	275
	
l15275:	
;DK_LCD.c: 275: length=2;
	movlw	(02h)
	movwf	(SendNumberToDispBuf@length)
	line	276
;DK_LCD.c: 276: break;
	goto	l15287
	line	278
	
l15277:	
;DK_LCD.c: 278: length=3;
	movlw	(03h)
	movwf	(SendNumberToDispBuf@length)
	line	279
;DK_LCD.c: 279: break;
	goto	l15287
	line	260
	
l15285:	
	movf	(SendNumberToDispBuf@addr),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 29
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           66     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable            34     4 (fixed)
; spacedrange           65     6 (fixed)
; locatedrange          30     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l15269
	xorlw	5^0	; case 5
	skipnz
	goto	l15277
	xorlw	8^5	; case 8
	skipnz
	goto	l15277
	xorlw	12^8	; case 12
	skipnz
	goto	l15277
	xorlw	14^12	; case 14
	skipnz
	goto	l15275
	xorlw	18^14	; case 18
	skipnz
	goto	l15269
	xorlw	29^18	; case 29
	skipnz
	goto	l15269
	goto	l15287
	opt asmopt_on

	line	287
	
l15287:	
;DK_LCD.c: 287: if(length==4 && addr==0)
	movf	(SendNumberToDispBuf@length),w
	xorlw	04h&0ffh
	skipz
	goto	u9221
	goto	u9220
u9221:
	goto	l15315
u9220:
	
l15289:	
	movf	(SendNumberToDispBuf@addr),f
	skipz
	goto	u9231
	goto	u9230
u9231:
	goto	l15315
u9230:
	line	289
	
l15291:	
;DK_LCD.c: 288: {
;DK_LCD.c: 289: temp=(u8)(dat%10); DispBuf[addr+3]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwmod)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15293:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+03h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	290
	
l15295:	
;DK_LCD.c: 290: temp=(u8)(dat/10%10); DispBuf[addr+2]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	291
	
l15297:	
;DK_LCD.c: 291: temp=(u8)(dat/100%10); DispBuf[addr+1]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15299:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+01h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	292
;DK_LCD.c: 292: temp=(u8)(dat/1000); DispBuf[addr]=LCDDigTable[temp];
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15301:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	294
	
l15303:	
;DK_LCD.c: 294: if(dat<1000){DispBuf[addr]=AsciiToDisplay(' ');}
	movlw	high(03E8h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9241
	goto	u9240
u9241:
	goto	l15307
u9240:
	
l15305:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	295
	
l15307:	
;DK_LCD.c: 295: if(dat<100){DispBuf[addr+1]=AsciiToDisplay(' ');}
	movlw	high(064h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(064h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9251
	goto	u9250
u9251:
	goto	l15311
u9250:
	
l15309:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+01h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	296
	
l15311:	
;DK_LCD.c: 296: if(dat<10){DispBuf[addr+2]=AsciiToDisplay(' ');}
	movlw	high(0Ah)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9261
	goto	u9260
u9261:
	goto	l2416
u9260:
	
l15313:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	goto	l2416
	line	298
	
l15315:	
;DK_LCD.c: 298: else if(length==4)
	movf	(SendNumberToDispBuf@length),w
	xorlw	04h&0ffh
	skipz
	goto	u9271
	goto	u9270
u9271:
	goto	l15341
u9270:
	line	300
	
l15317:	
;DK_LCD.c: 299: {
;DK_LCD.c: 300: temp=(u8)(dat%10); DispBuf[addr-3]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwmod)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15319:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-3&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	301
	
l15321:	
;DK_LCD.c: 301: temp=(u8)(dat/10%10); DispBuf[addr-2]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-2&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	302
	
l15323:	
;DK_LCD.c: 302: temp=(u8)(dat/100%10); DispBuf[addr-1]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15325:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	303
;DK_LCD.c: 303: temp=(u8)(dat/1000); DispBuf[addr]=LCDDigTable[temp];
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15327:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	305
	
l15329:	
;DK_LCD.c: 305: if(dat<1000){DispBuf[addr]=AsciiToDisplay(' ');}
	movlw	high(03E8h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9281
	goto	u9280
u9281:
	goto	l15333
u9280:
	
l15331:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	306
	
l15333:	
;DK_LCD.c: 306: if(dat<100){DispBuf[addr-1]=AsciiToDisplay(' ');}
	movlw	high(064h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(064h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9291
	goto	u9290
u9291:
	goto	l15337
u9290:
	
l15335:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	307
	
l15337:	
;DK_LCD.c: 307: if(dat<10){DispBuf[addr-2]=AsciiToDisplay(' ');}
	movlw	high(0Ah)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9301
	goto	u9300
u9301:
	goto	l2416
u9300:
	
l15339:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-2&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	goto	l2416
	line	309
	
l15341:	
;DK_LCD.c: 309: else if(length==3 && addr==12)
	movf	(SendNumberToDispBuf@length),w
	xorlw	03h&0ffh
	skipz
	goto	u9311
	goto	u9310
u9311:
	goto	l15365
u9310:
	
l15343:	
	movf	(SendNumberToDispBuf@addr),w
	xorlw	0Ch&0ffh
	skipz
	goto	u9321
	goto	u9320
u9321:
	goto	l15365
u9320:
	line	311
	
l15345:	
;DK_LCD.c: 310: {
;DK_LCD.c: 311: temp=(u8)(dat%10); DispBuf[4]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwmod)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15347:	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 1	; select bank1
	movwf	0+(_DispBuf)^080h+04h
	line	312
	
l15349:	
;DK_LCD.c: 312: temp=(u8)(dat/10%10); DispBuf[addr-1]=LCDDigTable[temp];
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15351:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	313
	
l15353:	
;DK_LCD.c: 313: temp=(u8)(dat/100); DispBuf[addr]=LCDDigTable[temp];
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15355:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	316
	
l15357:	
;DK_LCD.c: 316: if(dat<100){DispBuf[addr]=AsciiToDisplay(' ');}
	movlw	high(064h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(064h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9331
	goto	u9330
u9331:
	goto	l15361
u9330:
	
l15359:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	317
	
l15361:	
;DK_LCD.c: 317: if(dat<10){DispBuf[addr-1]=AsciiToDisplay(' ');}
	movlw	high(0Ah)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9341
	goto	u9340
u9341:
	goto	l2416
u9340:
	
l15363:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	goto	l2416
	line	319
	
l15365:	
;DK_LCD.c: 319: else if(length==3 && addr!=12)
	movf	(SendNumberToDispBuf@length),w
	xorlw	03h&0ffh
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l15387
u9350:
	
l15367:	
	movf	(SendNumberToDispBuf@addr),w
	xorlw	0Ch&0ffh
	skipnz
	goto	u9361
	goto	u9360
u9361:
	goto	l15387
u9360:
	line	321
	
l15369:	
;DK_LCD.c: 320: {
;DK_LCD.c: 321: temp=(u8)(dat%10); DispBuf[addr+2]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwmod)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15371:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	322
	
l15373:	
;DK_LCD.c: 322: temp=(u8)(dat/10%10); DispBuf[addr+1]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+01h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	323
	
l15375:	
;DK_LCD.c: 323: temp=(u8)(dat/100); DispBuf[addr]=LCDDigTable[temp];
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15377:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	326
	
l15379:	
;DK_LCD.c: 326: if(dat<100){DispBuf[addr]=AsciiToDisplay(' ');}
	movlw	high(064h)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(064h)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9371
	goto	u9370
u9371:
	goto	l15383
u9370:
	
l15381:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	327
	
l15383:	
;DK_LCD.c: 327: if(dat<10){DispBuf[addr+1]=AsciiToDisplay(' ');}
	movlw	high(0Ah)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9381
	goto	u9380
u9381:
	goto	l2416
u9380:
	
l15385:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+01h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	goto	l2416
	line	329
	
l15387:	
;DK_LCD.c: 329: else if(length==2)
	movf	(SendNumberToDispBuf@length),w
	xorlw	02h&0ffh
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l2416
u9390:
	line	331
	
l15389:	
;DK_LCD.c: 330: {
;DK_LCD.c: 331: temp=(u8)(dat%10); DispBuf[addr-1]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwmod)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(SendNumberToDispBuf@temp)
	
l15391:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	332
	
l15393:	
;DK_LCD.c: 332: temp=(u8)(dat/10); DispBuf[addr]=LCDDigTable[temp];
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(SendNumberToDispBuf@dat+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(SendNumberToDispBuf@dat),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(SendNumberToDispBuf@temp)
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendNumberToDispBuf@temp),w
	addlw	low(_LCDDigTable|8000h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	line	335
	
l15395:	
;DK_LCD.c: 335: if(dat<10){DispBuf[addr]=AsciiToDisplay(' ');}
	movlw	high(0Ah)
	subwf	(SendNumberToDispBuf@dat+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SendNumberToDispBuf@dat),w
	skipnc
	goto	u9401
	goto	u9400
u9401:
	goto	l2416
u9400:
	
l15397:	
	movf	(SendNumberToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	fcall	_AsciiToDisplay
	movwf	indf1
	line	337
	
l2416:	
	return
	opt stack 0
GLOBAL	__end_of_SendNumberToDispBuf
	__end_of_SendNumberToDispBuf:
;; =============== function _SendNumberToDispBuf ends ============

	signat	_SendNumberToDispBuf,8312
	global	_SendStringToDispBuf
psect	text2192,local,class=CODE,delta=2
global __ptext2192
__ptext2192:

;; *************** function _SendStringToDispBuf *****************
;; Defined at:
;;		line 201 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  datBuf          2    4[COMMON] PTR unsigned char 
;;		 -> NULL(0), STR_25(4), STR_24(4), STR_23(5), 
;;		 -> STR_22(4), STR_21(3), STR_20(5), STR_19(7), 
;;		 -> STR_18(7), STR_17(7), STR_16(7), STR_15(7), 
;;		 -> STR_14(7), STR_13(7), STR_12(7), STR_11(7), 
;;		 -> STR_10(7), STR_9(7), STR_8(7), STR_7(7), 
;;		 -> STR_6(7), STR_5(7), STR_4(7), STR_3(7), 
;;		 -> STR_2(7), STR_1(7), C_RFM98_ModuleName(5), 
;; Auto vars:     Size  Location     Type
;;  addr            1    9[COMMON] unsigned char 
;;  length          1    8[COMMON] unsigned char 
;;  i               1    7[COMMON] unsigned char 
;;  j               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_AsciiToDisplay
;; This function is called by:
;;		_DisplayRFParameter
;; This function uses a non-reentrant model
;;
psect	text2192
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	201
	global	__size_of_SendStringToDispBuf
	__size_of_SendStringToDispBuf	equ	__end_of_SendStringToDispBuf-_SendStringToDispBuf
	
_SendStringToDispBuf:	
	opt	stack 10
; Regs used in _SendStringToDispBuf: [wreg-status,0+pclath+cstack]
;SendStringToDispBuf@addr stored from wreg
	movwf	(SendStringToDispBuf@addr)
	line	202
	
l15209:	
;DK_LCD.c: 202: u8 i,j=0;
	clrf	(SendStringToDispBuf@j)
	line	203
;DK_LCD.c: 203: u8 length=0;
	clrf	(SendStringToDispBuf@length)
	line	205
;DK_LCD.c: 205: switch(addr)
	goto	l15229
	line	208
	
l15211:	
;DK_LCD.c: 208: length=6;
	movlw	(06h)
	movwf	(SendStringToDispBuf@length)
	line	209
;DK_LCD.c: 209: break;
	goto	l15231
	line	211
	
l15213:	
;DK_LCD.c: 211: length=4;
	movlw	(04h)
	movwf	(SendStringToDispBuf@length)
	line	212
;DK_LCD.c: 212: break;
	goto	l15231
	line	220
	
l15219:	
;DK_LCD.c: 220: length=2;
	movlw	(02h)
	movwf	(SendStringToDispBuf@length)
	line	221
;DK_LCD.c: 221: break;
	goto	l15231
	line	223
	
l15221:	
;DK_LCD.c: 223: length=3;
	movlw	(03h)
	movwf	(SendStringToDispBuf@length)
	line	224
;DK_LCD.c: 224: break;
	goto	l15231
	line	205
	
l15229:	
	movf	(SendStringToDispBuf@addr),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 29
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte           66     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable            34     4 (fixed)
; spacedrange           65     6 (fixed)
; locatedrange          30     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l15213
	xorlw	5^0	; case 5
	skipnz
	goto	l15221
	xorlw	8^5	; case 8
	skipnz
	goto	l15221
	xorlw	12^8	; case 12
	skipnz
	goto	l15221
	xorlw	14^12	; case 14
	skipnz
	goto	l15219
	xorlw	18^14	; case 18
	skipnz
	goto	l15213
	xorlw	25^18	; case 25
	skipnz
	goto	l15211
	xorlw	29^25	; case 29
	skipnz
	goto	l15213
	goto	l15231
	opt asmopt_on

	line	232
	
l15231:	
;DK_LCD.c: 232: if(addr==12)
	movf	(SendStringToDispBuf@addr),w
	xorlw	0Ch&0ffh
	skipz
	goto	u9141
	goto	u9140
u9141:
	goto	l15237
u9140:
	line	234
	
l15233:	
;DK_LCD.c: 233: {
;DK_LCD.c: 234: DispBuf[addr]=AsciiToDisplay(datBuf[0]);
	movf	(SendStringToDispBuf@addr),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendStringToDispBuf@datBuf),w
	movwf	fsr0l
	movf	((SendStringToDispBuf@datBuf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_AsciiToDisplay
	movwf	indf1
	line	235
;DK_LCD.c: 235: DispBuf[addr-1]=AsciiToDisplay(datBuf[1]);
	movf	(SendStringToDispBuf@addr),w
	addlw	_DispBuf+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendStringToDispBuf@datBuf+1),w
	movlb 0	; select bank0
	movwf	(??_SendStringToDispBuf+0)+0+1
	movf	(SendStringToDispBuf@datBuf),w
	movwf	(??_SendStringToDispBuf+0)+0
	movlw	01h
	addwf	(??_SendStringToDispBuf+0)+0,w
	movwf	fsr0l
	movf	(??_SendStringToDispBuf+0)+1,w
	skipnc
	incf	(??_SendStringToDispBuf+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	fcall	_AsciiToDisplay
	movwf	indf1
	line	236
	
l15235:	
;DK_LCD.c: 236: DispBuf[4]=AsciiToDisplay(datBuf[2]);
	movf	(SendStringToDispBuf@datBuf+1),w
	movwf	(??_SendStringToDispBuf+0)+0+1
	movf	(SendStringToDispBuf@datBuf),w
	movwf	(??_SendStringToDispBuf+0)+0
	movlw	02h
	addwf	(??_SendStringToDispBuf+0)+0,w
	movwf	fsr0l
	movf	(??_SendStringToDispBuf+0)+1,w
	skipnc
	incf	(??_SendStringToDispBuf+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	fcall	_AsciiToDisplay
	movlb 1	; select bank1
	movwf	0+(_DispBuf)^080h+04h
	line	237
;DK_LCD.c: 237: }
	goto	l2384
	line	238
	
l15237:	
;DK_LCD.c: 238: else if(addr==29 || addr==25 || addr==18 || addr==14)
	movf	(SendStringToDispBuf@addr),w
	xorlw	01Dh&0ffh
	skipnz
	goto	u9151
	goto	u9150
u9151:
	goto	l15245
u9150:
	
l15239:	
	movf	(SendStringToDispBuf@addr),w
	xorlw	019h&0ffh
	skipnz
	goto	u9161
	goto	u9160
u9161:
	goto	l15245
u9160:
	
l15241:	
	movf	(SendStringToDispBuf@addr),w
	xorlw	012h&0ffh
	skipnz
	goto	u9171
	goto	u9170
u9171:
	goto	l15245
u9170:
	
l15243:	
	movf	(SendStringToDispBuf@addr),w
	xorlw	0Eh&0ffh
	skipz
	goto	u9181
	goto	u9180
u9181:
	goto	l15255
u9180:
	line	240
	
l15245:	
;DK_LCD.c: 239: {
;DK_LCD.c: 240: for(i=addr;i>addr-length;i--){DispBuf[i]=AsciiToDisplay(datBuf[j++]);}
	movf	(SendStringToDispBuf@addr),w
	movwf	(SendStringToDispBuf@i)
	goto	l15253
	
l15247:	
	movf	(SendStringToDispBuf@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendStringToDispBuf@datBuf+1),w
	movlb 0	; select bank0
	movwf	(??_SendStringToDispBuf+0)+0+1
	movf	(SendStringToDispBuf@datBuf),w
	movwf	(??_SendStringToDispBuf+0)+0
	movf	(SendStringToDispBuf@j),w
	addwf	(??_SendStringToDispBuf+0)+0,w
	movwf	fsr0l
	movf	(??_SendStringToDispBuf+0)+1,w
	skipnc
	incf	(??_SendStringToDispBuf+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	fcall	_AsciiToDisplay
	movwf	indf1
	
l15249:	
	incf	(SendStringToDispBuf@j),f
	
l15251:	
	decf	(SendStringToDispBuf@i),f
	
l15253:	
	movf	(SendStringToDispBuf@addr),w
	movlb 0	; select bank0
	movwf	(??_SendStringToDispBuf+0)+0
	clrf	(??_SendStringToDispBuf+0)+0+1
	movf	1+(??_SendStringToDispBuf+0)+0,w
	movwf	(??_SendStringToDispBuf+2)+0+1
	movf	(SendStringToDispBuf@length),w
	subwf	0+(??_SendStringToDispBuf+0)+0,w
	movwf	(??_SendStringToDispBuf+2)+0
	skipc
	decf	(??_SendStringToDispBuf+2)+0+1,f
	movf	1+(??_SendStringToDispBuf+2)+0,w
	xorlw	80h
	movwf	(??_SendStringToDispBuf+4)+0
	movlw	80h
	subwf	(??_SendStringToDispBuf+4)+0,w
	skipz
	goto	u9195
	movf	(SendStringToDispBuf@i),w
	subwf	0+(??_SendStringToDispBuf+2)+0,w
u9195:

	skipc
	goto	u9191
	goto	u9190
u9191:
	goto	l15247
u9190:
	goto	l2384
	line	242
	
l15255:	
;DK_LCD.c: 242: else if(length!=0)
	movf	(SendStringToDispBuf@length),w
	skipz
	goto	u9200
	goto	l2384
u9200:
	line	244
	
l15257:	
;DK_LCD.c: 243: {
;DK_LCD.c: 244: for(i=addr;i<addr+length;i++){DispBuf[i]=AsciiToDisplay(datBuf[j++]);}
	movf	(SendStringToDispBuf@addr),w
	movwf	(SendStringToDispBuf@i)
	goto	l15265
	
l15259:	
	movf	(SendStringToDispBuf@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(SendStringToDispBuf@datBuf+1),w
	movlb 0	; select bank0
	movwf	(??_SendStringToDispBuf+0)+0+1
	movf	(SendStringToDispBuf@datBuf),w
	movwf	(??_SendStringToDispBuf+0)+0
	movf	(SendStringToDispBuf@j),w
	addwf	(??_SendStringToDispBuf+0)+0,w
	movwf	fsr0l
	movf	(??_SendStringToDispBuf+0)+1,w
	skipnc
	incf	(??_SendStringToDispBuf+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	fcall	_AsciiToDisplay
	movwf	indf1
	
l15261:	
	incf	(SendStringToDispBuf@j),f
	
l15263:	
	incf	(SendStringToDispBuf@i),f
	
l15265:	
	movf	(SendStringToDispBuf@addr),w
	addwf	(SendStringToDispBuf@length),w
	movlb 0	; select bank0
	movwf	(??_SendStringToDispBuf+0)+0
	clrf	(??_SendStringToDispBuf+0)+0+1
	rlf	1+(??_SendStringToDispBuf+0)+0,f
	
	movf	1+(??_SendStringToDispBuf+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u9215
	movf	0+(??_SendStringToDispBuf+0)+0,w
	subwf	(SendStringToDispBuf@i),w
u9215:

	skipc
	goto	u9211
	goto	u9210
u9211:
	goto	l15259
u9210:
	line	246
	
l2384:	
	return
	opt stack 0
GLOBAL	__end_of_SendStringToDispBuf
	__end_of_SendStringToDispBuf:
;; =============== function _SendStringToDispBuf ends ============

	signat	_SendStringToDispBuf,8312
	global	_Clr_LCD
psect	text2193,local,class=CODE,delta=2
global __ptext2193
__ptext2193:

;; *************** function _Clr_LCD *****************
;; Defined at:
;;		line 144 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
;;  j               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CK1622_WriteByte
;; This function is called by:
;;		_LCD_Init
;;		_WorkModeSelect
;;		_PowerOnMusic
;; This function uses a non-reentrant model
;;
psect	text2193
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	144
	global	__size_of_Clr_LCD
	__size_of_Clr_LCD	equ	__end_of_Clr_LCD-_Clr_LCD
	
_Clr_LCD:	
	opt	stack 10
; Regs used in _Clr_LCD: [wreg-status,0+pclath+cstack]
	line	145
	
l15193:	
;DK_LCD.c: 145: u8 i,j=0;
	clrf	(Clr_LCD@j)
	line	146
;DK_LCD.c: 146: for(i=0;i<64;i+=2)
	clrf	(Clr_LCD@i)
	line	148
	
l15199:	
;DK_LCD.c: 147: {
;DK_LCD.c: 148: CK1622_WriteByte(i,0x00);
	clrf	(?_CK1622_WriteByte)
	movf	(Clr_LCD@i),w
	fcall	_CK1622_WriteByte
	line	149
	
l15201:	
;DK_LCD.c: 149: DispBuf[j++]=LCDDigTable[36];
	movf	(Clr_LCD@j),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	
l15203:	
	incf	(Clr_LCD@j),f
	line	146
	
l15205:	
	incf	(Clr_LCD@i),f
	incf	(Clr_LCD@i),f
	
l15207:	
	movlw	(040h)
	subwf	(Clr_LCD@i),w
	skipc
	goto	u9131
	goto	u9130
u9131:
	goto	l15199
u9130:
	line	151
	
l2347:	
	return
	opt stack 0
GLOBAL	__end_of_Clr_LCD
	__end_of_Clr_LCD:
;; =============== function _Clr_LCD ends ============

	signat	_Clr_LCD,88
	global	_FlashWrite
psect	text2194,local,class=CODE,delta=2
global __ptext2194
__ptext2194:

;; *************** function _FlashWrite *****************
;; Defined at:
;;		line 84 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
;; Parameters:    Size  Location     Type
;;  FlashAdr        4    2[COMMON] unsigned long 
;;  array           1    6[COMMON] PTR unsigned char 
;;		 -> gb_RxData(32), 
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/3
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_FlashUnlock
;; This function is called by:
;;		_SaveRFParameterToFlash
;; This function uses a non-reentrant model
;;
psect	text2194
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
	line	84
	global	__size_of_FlashWrite
	__size_of_FlashWrite	equ	__end_of_FlashWrite-_FlashWrite
	
_FlashWrite:	
	opt	stack 9
; Regs used in _FlashWrite: [wreg+fsr1l-status,0+pclath+cstack]
	line	87
	
l15157:	
;DK_Flash.c: 85: u8 i;
;DK_Flash.c: 87: GIE = 0;
	bcf	(95/8),(95)&7
	line	89
	
l15159:	
;DK_Flash.c: 89: PMADR = FlashAdr;
	movf	(FlashWrite@FlashAdr+1),w
	movlb 3	; select bank3
	movwf	(401+1)^0180h	;volatile
	movf	(FlashWrite@FlashAdr),w
	movwf	(401)^0180h	;volatile
	line	91
	
l15161:	
;DK_Flash.c: 91: CFGS = 0;
	bcf	(3246/8)^0180h,(3246)&7
	line	92
	
l15163:	
;DK_Flash.c: 92: FREE = 0;
	bcf	(3244/8)^0180h,(3244)&7
	line	93
	
l15165:	
;DK_Flash.c: 93: LWLO = 1;
	bsf	(3245/8)^0180h,(3245)&7
	line	94
	
l15167:	
;DK_Flash.c: 94: WREN = 1;
	bsf	(3242/8)^0180h,(3242)&7
	line	95
	
l15169:	
;DK_Flash.c: 95: for(i=0;i<32;)
	clrf	(FlashWrite@i)
	line	97
	
l15175:	
;DK_Flash.c: 96: {
;DK_Flash.c: 97: PMDATL = array[i];
	movf	(FlashWrite@i),w
	addwf	(FlashWrite@array),w
	movwf	(??_FlashWrite+0)+0
	movf	0+(??_FlashWrite+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(403)^0180h	;volatile
	line	98
	
l15177:	
;DK_Flash.c: 98: PMDATH = 0;
	clrf	(404)^0180h	;volatile
	line	99
	
l15179:	
;DK_Flash.c: 99: i++;
	incf	(FlashWrite@i),f
	line	100
	
l15181:	
;DK_Flash.c: 100: if(i<32)
	movlw	(020h)
	subwf	(FlashWrite@i),w
	skipnc
	goto	u9111
	goto	u9110
u9111:
	goto	l1156
u9110:
	line	102
	
l15183:	
;DK_Flash.c: 101: {
;DK_Flash.c: 102: FlashUnlock();
	fcall	_FlashUnlock
	line	103
	
l15185:	
;DK_Flash.c: 103: PMADR++;
	movlb 3	; select bank3
	incf	(401)^0180h,f	;volatile
	skipnz
	incf	(401+1)^0180h,f	;volatile
	line	104
;DK_Flash.c: 104: }
	goto	l15191
	line	105
	
l1156:	
	line	107
;DK_Flash.c: 105: else
;DK_Flash.c: 106: {
;DK_Flash.c: 107: LWLO = 0;
	bcf	(3245/8)^0180h,(3245)&7
	line	108
	
l15187:	
;DK_Flash.c: 108: FlashUnlock();
	fcall	_FlashUnlock
	line	109
	
l15189:	
# 109 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
psect	text2194
	line	110
;DK_Flash.c: 110: break;
	goto	l1155
	line	95
	
l15191:	
	movlw	(020h)
	subwf	(FlashWrite@i),w
	skipc
	goto	u9121
	goto	u9120
u9121:
	goto	l15175
u9120:
	
l1155:	
	line	113
;DK_Flash.c: 111: }
;DK_Flash.c: 112: }
;DK_Flash.c: 113: WREN = 0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	114
;DK_Flash.c: 114: GIE = 1;
	bsf	(95/8),(95)&7
	line	115
	
l1158:	
	return
	opt stack 0
GLOBAL	__end_of_FlashWrite
	__end_of_FlashWrite:
;; =============== function _FlashWrite ends ============

	signat	_FlashWrite,8312
	global	_FlashErase
psect	text2195,local,class=CODE,delta=2
global __ptext2195
__ptext2195:

;; *************** function _FlashErase *****************
;; Defined at:
;;		line 62 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
;; Parameters:    Size  Location     Type
;;  FlashAdr        4    2[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/3
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_FlashUnlock
;; This function is called by:
;;		_SaveRFParameterToFlash
;; This function uses a non-reentrant model
;;
psect	text2195
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
	line	62
	global	__size_of_FlashErase
	__size_of_FlashErase	equ	__end_of_FlashErase-_FlashErase
	
_FlashErase:	
	opt	stack 9
; Regs used in _FlashErase: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l15141:	
;DK_Flash.c: 63: GIE = 0;
	bcf	(95/8),(95)&7
	line	64
;DK_Flash.c: 64: CFGS = 0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	65
	
l15143:	
;DK_Flash.c: 65: PMADR = FlashAdr;
	movf	(FlashErase@FlashAdr+1),w
	movwf	(401+1)^0180h	;volatile
	movf	(FlashErase@FlashAdr),w
	movwf	(401)^0180h	;volatile
	line	66
	
l15145:	
;DK_Flash.c: 66: FREE = 1;
	bsf	(3244/8)^0180h,(3244)&7
	line	67
	
l15147:	
;DK_Flash.c: 67: WREN = 1;
	bsf	(3242/8)^0180h,(3242)&7
	line	68
	
l15149:	
;DK_Flash.c: 68: FlashUnlock();
	fcall	_FlashUnlock
	line	70
	
l15151:	
# 70 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
psect	text2195
	line	72
	
l15153:	
;DK_Flash.c: 72: WREN = 0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7
	line	73
	
l15155:	
;DK_Flash.c: 73: GIE = 1;
	bsf	(95/8),(95)&7
	line	74
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of_FlashErase
	__end_of_FlashErase:
;; =============== function _FlashErase ends ============

	signat	_FlashErase,4216
	global	___lwmod
psect	text2196,local,class=CODE,delta=2
global __ptext2196
__ptext2196:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendNumberToDispBuf
;; This function uses a non-reentrant model
;;
psect	text2196
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 10
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l15121:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u9071
	goto	u9070
u9071:
	goto	l15137
u9070:
	line	9
	
l15123:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l15127
	line	11
	
l15125:	
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l15127:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u9081
	goto	u9080
u9081:
	goto	l15125
u9080:
	line	15
	
l15129:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u9095
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u9095:
	skipc
	goto	u9091
	goto	u9090
u9091:
	goto	l15133
u9090:
	line	16
	
l15131:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	line	17
	
l15133:	
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l15135:	
	decfsz	(___lwmod@counter),f
	goto	u9101
	goto	u9100
u9101:
	goto	l15129
u9100:
	line	20
	
l15137:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l7978:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text2197,local,class=CODE,delta=2
global __ptext2197
__ptext2197:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendNumberToDispBuf
;;		_DisplayRFParameter
;; This function uses a non-reentrant model
;;
psect	text2197
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 11
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l15095:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l15097:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u9031
	goto	u9030
u9031:
	goto	l15117
u9030:
	line	11
	
l15099:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l15103
	line	13
	
l15101:	
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l15103:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u9041
	goto	u9040
u9041:
	goto	l15101
u9040:
	line	17
	
l15105:	
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l15107:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u9055
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u9055:
	skipc
	goto	u9051
	goto	u9050
u9051:
	goto	l15113
u9050:
	line	19
	
l15109:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l15111:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l15113:	
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l15115:	
	decfsz	(___lwdiv@counter),f
	goto	u9061
	goto	u9060
u9061:
	goto	l15105
u9060:
	line	25
	
l15117:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l7968:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text2198,local,class=CODE,delta=2
global __ptext2198
__ptext2198:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RFM98_Config
;;		_RFM98_TestConfig
;; This function uses a non-reentrant model
;;
psect	text2198
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 10
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l15063:	
	clrf	(___bmul@product)
	line	7
	
l15065:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u8991
	goto	u8990
u8991:
	goto	l15069
u8990:
	line	8
	
l15067:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l15069:	
	lslf	(___bmul@multiplicand),f
	line	10
	
l15071:	
	lsrf	(___bmul@multiplier),f
	line	11
	
l15073:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u9001
	goto	u9000
u9001:
	goto	l15065
u9000:
	line	12
	
l15075:	
	movf	(___bmul@product),w
	line	13
	
l7952:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_Uart_init
psect	text2199,local,class=CODE,delta=2
global __ptext2199
__ptext2199:

;; *************** function _Uart_init *****************
;; Defined at:
;;		line 188 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2199
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	188
	global	__size_of_Uart_init
	__size_of_Uart_init	equ	__end_of_Uart_init-_Uart_init
	
_Uart_init:	
	opt	stack 13
; Regs used in _Uart_init: [wreg+status,2+status,0]
	line	189
	
l15045:	
;main.c: 189: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7
	line	190
;main.c: 190: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7
	line	191
	
l15047:	
;main.c: 191: SPBRGL = 0x19;
	movlw	(019h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	193
	
l15049:	
;main.c: 193: SPBRGH = 0x00;
	clrf	(412)^0180h	;volatile
	line	194
	
l15051:	
;main.c: 194: BAUDCON = 0x00;
	clrf	(415)^0180h	;volatile
	line	195
	
l15053:	
;main.c: 195: RCSTA = RCSTA|0x90;
	movlw	(090h)
	iorwf	(413)^0180h,f	;volatile
	line	196
	
l15055:	
;main.c: 196: TXSTA = TXSTA|0x20;
	bsf	(414)^0180h+(5/8),(5)&7	;volatile
	line	197
	
l15057:	
;main.c: 197: RCIE = 1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	198
	
l15059:	
;main.c: 198: INTCON = 0xC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	199
	
l15061:	
;main.c: 199: TXIE=0;
	bcf	(1164/8)^080h,(1164)&7
	line	201
	
l7927:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_init
	__end_of_Uart_init:
;; =============== function _Uart_init ends ============

	signat	_Uart_init,88
	global	_timer2_init
psect	text2200,local,class=CODE,delta=2
global __ptext2200
__ptext2200:

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 174 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2200
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	174
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:	
	opt	stack 13
; Regs used in _timer2_init: [wreg]
	line	175
	
l15041:	
;main.c: 175: INTCON = 0xc0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	176
;main.c: 176: T2CON = 0x1d;
	movlw	(01Dh)
	movlb 0	; select bank0
	movwf	(28)	;volatile
	line	177
;main.c: 177: PR2 = 250;
	movlw	(0FAh)
	movwf	(27)	;volatile
	line	178
	
l15043:	
;main.c: 178: TMR2IE = 1;
	movlb 1	; select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	179
	
l7924:	
	return
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
;; =============== function _timer2_init ends ============

	signat	_timer2_init,88
	global	_timer1_init
psect	text2201,local,class=CODE,delta=2
global __ptext2201
__ptext2201:

;; *************** function _timer1_init *****************
;; Defined at:
;;		line 157 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/3
;;		On exit  : 17F/1
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2201
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	157
	global	__size_of_timer1_init
	__size_of_timer1_init	equ	__end_of_timer1_init-_timer1_init
	
_timer1_init:	
	opt	stack 13
; Regs used in _timer1_init: [wreg+status,2]
	line	158
	
l15031:	
;main.c: 158: INTCON = 0xc0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	159
;main.c: 159: T1CON = 0x4d;
	movlw	(04Dh)
	movlb 0	; select bank0
	movwf	(24)	;volatile
	line	161
	
l15033:	
;main.c: 161: TMR1H = 0x00;
	clrf	(23)	;volatile
	line	162
	
l15035:	
;main.c: 162: TMR1L = 0x00;
	clrf	(22)	;volatile
	line	163
	
l15037:	
;main.c: 163: TMR1ON = 0;
	bcf	(192/8),(192)&7
	line	164
	
l15039:	
;main.c: 164: TMR1IE = 1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	165
	
l7921:	
	return
	opt stack 0
GLOBAL	__end_of_timer1_init
	__end_of_timer1_init:
;; =============== function _timer1_init ends ============

	signat	_timer1_init,88
	global	_InitPort
psect	text2202,local,class=CODE,delta=2
global __ptext2202
__ptext2202:

;; *************** function _InitPort *****************
;; Defined at:
;;		line 91 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17E/1
;;		On exit  : 17F/3
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2202
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	91
	global	__size_of_InitPort
	__size_of_InitPort	equ	__end_of_InitPort-_InitPort
	
_InitPort:	
	opt	stack 13
; Regs used in _InitPort: [wreg+status,2]
	line	92
	
l14997:	
;main.c: 92: PORTA = 0x01;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	93
;main.c: 93: LATA = 0x01;
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	94
;main.c: 94: TRISA = 0x10;
	movlw	(010h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	95
	
l14999:	
;main.c: 95: ANSELA= 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	97
	
l15001:	
;main.c: 97: PORTB = 0x00;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	98
	
l15003:	
;main.c: 98: LATB = 0x00;
	movlb 2	; select bank2
	clrf	(269)^0100h	;volatile
	line	99
	
l15005:	
;main.c: 99: TRISB = 0x3F;
	movlw	(03Fh)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	100
	
l15007:	
;main.c: 100: WPUB = 0x0F;
	movlw	(0Fh)
	movlb 4	; select bank4
	movwf	(525)^0200h	;volatile
	line	101
	
l15009:	
;main.c: 101: ANSELB= 0x00;
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	103
;main.c: 103: PORTC = 0x10;
	movlw	(010h)
	movlb 0	; select bank0
	movwf	(14)	;volatile
	line	104
;main.c: 104: LATC = 0x10;
	movlw	(010h)
	movlb 2	; select bank2
	movwf	(270)^0100h	;volatile
	line	105
;main.c: 105: TRISC = 0xA0;
	movlw	(0A0h)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	106
	
l15011:	
;main.c: 106: ANSELC= 0x00;
	movlb 3	; select bank3
	clrf	(398)^0180h	;volatile
	line	108
	
l15013:	
;main.c: 108: PORTD = 0x00;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	109
	
l15015:	
;main.c: 109: LATD = 0x00;
	movlb 2	; select bank2
	clrf	(271)^0100h	;volatile
	line	110
	
l15017:	
;main.c: 110: TRISD = 0x00;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	111
	
l15019:	
;main.c: 111: ANSELD= 0x00;
	movlb 3	; select bank3
	clrf	(399)^0180h	;volatile
	line	113
	
l15021:	
;main.c: 113: PORTE = 0x04;
	movlw	(04h)
	movlb 0	; select bank0
	movwf	(16)	;volatile
	line	114
	
l15023:	
;main.c: 114: LATE = 0x04;
	movlw	(04h)
	movlb 2	; select bank2
	movwf	(272)^0100h	;volatile
	line	115
	
l15025:	
;main.c: 115: TRISE = 0x00;
	movlb 1	; select bank1
	clrf	(144)^080h	;volatile
	line	116
	
l15027:	
;main.c: 116: WPUE = 0x00;
	movlb 4	; select bank4
	clrf	(528)^0200h	;volatile
	line	117
	
l15029:	
;main.c: 117: ANSELE= 0x00;
	movlb 3	; select bank3
	clrf	(400)^0180h	;volatile
	line	118
	
l7915:	
	return
	opt stack 0
GLOBAL	__end_of_InitPort
	__end_of_InitPort:
;; =============== function _InitPort ends ============

	signat	_InitPort,88
	global	_InitSfr
psect	text2203,local,class=CODE,delta=2
global __ptext2203
__ptext2203:

;; *************** function _InitSfr *****************
;; Defined at:
;;		line 127 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2203
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	127
	global	__size_of_InitSfr
	__size_of_InitSfr	equ	__end_of_InitSfr-_InitSfr
	
_InitSfr:	
	opt	stack 13
; Regs used in _InitSfr: [wreg+status,2]
	line	128
	
l14967:	
;main.c: 128: OSCCON = 0x78;
	movlw	(078h)
	movwf	(153)^080h	;volatile
	line	129
;main.c: 129: OPTION_REG = 0x06;
	movlw	(06h)
	movwf	(149)^080h	;volatile
	line	130
;main.c: 130: WDTCON = 0x02;
	movlw	(02h)
	movwf	(151)^080h	;volatile
	line	131
	
l14969:	
;main.c: 131: PCON = 0x00;
	clrf	(150)^080h	;volatile
	line	133
	
l14971:	
;main.c: 133: FVRCON = 0;
	movlb 2	; select bank2
	clrf	(279)^0100h	;volatile
	line	134
	
l14973:	
;main.c: 134: APFCON = 0;
	clrf	(285)^0100h	;volatile
	line	135
	
l14975:	
;main.c: 135: BORCON = 0;
	clrf	(278)^0100h	;volatile
	line	136
	
l14977:	
;main.c: 136: ANSELA = 0;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	137
	
l14979:	
;main.c: 137: ANSELB = 0;
	clrf	(397)^0180h	;volatile
	line	138
	
l14981:	
;main.c: 138: ANSELC = 0;
	clrf	(398)^0180h	;volatile
	line	139
	
l14983:	
;main.c: 139: ANSELD = 0;
	clrf	(399)^0180h	;volatile
	line	140
	
l14985:	
;main.c: 140: ANSELE = 0;
	clrf	(400)^0180h	;volatile
	line	142
	
l14987:	
;main.c: 142: INTCON = 0;
	clrf	(11)	;volatile
	line	143
	
l14989:	
;main.c: 143: PIR1 = 0;
	movlb 0	; select bank0
	clrf	(17)	;volatile
	line	144
	
l14991:	
;main.c: 144: PIR2 = 0;
	clrf	(18)	;volatile
	line	145
	
l14993:	
;main.c: 145: ADCON0 = 0;
	movlb 1	; select bank1
	clrf	(157)^080h	;volatile
	line	147
	
l14995:	
;main.c: 147: (GIE = 0);
	bcf	(95/8),(95)&7
	line	148
	
l7918:	
	return
	opt stack 0
GLOBAL	__end_of_InitSfr
	__end_of_InitSfr:
;; =============== function _InitSfr ends ============

	signat	_InitSfr,88
	global	_SPIRead8bit
psect	text2204,local,class=CODE,delta=2
global __ptext2204
__ptext2204:

;; *************** function _SPIRead8bit *****************
;; Defined at:
;;		line 50 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bitcnt          1    3[COMMON] unsigned char 
;;  RdPara          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPIRead
;;		_SPIBurstRead
;; This function uses a non-reentrant model
;;
psect	text2204
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	50
	global	__size_of_SPIRead8bit
	__size_of_SPIRead8bit	equ	__end_of_SPIRead8bit-_SPIRead8bit
	
_SPIRead8bit:	
	opt	stack 9
; Regs used in _SPIRead8bit: [wreg+status,2+status,0]
	line	51
	
l14947:	
;DK_SPI.c: 51: u8 RdPara = 0;
	clrf	(SPIRead8bit@RdPara)
	line	54
	
l14949:	
;DK_SPI.c: 52: u8 bitcnt;
;DK_SPI.c: 54: RA0=0;
	bcf	(96/8),(96)&7
	line	55
	
l14951:	
;DK_SPI.c: 55: RC4=1;
	bsf	(116/8),(116)&7
	line	56
	
l14953:	
;DK_SPI.c: 56: for(bitcnt=8; bitcnt!=0; bitcnt--)
	movlw	(08h)
	movwf	(SPIRead8bit@bitcnt)
	line	57
	
l6651:	
	line	58
;DK_SPI.c: 57: {
;DK_SPI.c: 58: RC3=0;
	bcf	(115/8),(115)&7
	line	59
;DK_SPI.c: 59: RdPara <<= 1;
	lslf	(SPIRead8bit@RdPara),f
	line	60
;DK_SPI.c: 60: RC3=1;
	bsf	(115/8),(115)&7
	line	61
;DK_SPI.c: 61: if(RC5)
	btfss	(117/8),(117)&7
	goto	u8971
	goto	u8970
u8971:
	goto	l14961
u8970:
	line	62
	
l14959:	
;DK_SPI.c: 62: RdPara |= 0x01;
	bsf	(SPIRead8bit@RdPara)+(0/8),(0)&7
	line	56
	
l14961:	
	decf	(SPIRead8bit@bitcnt),f
	movf	(SPIRead8bit@bitcnt),f
	skipz
	goto	u8981
	goto	u8980
u8981:
	goto	l6651
u8980:
	
l6652:	
	line	66
;DK_SPI.c: 65: }
;DK_SPI.c: 66: RC3=0;
	bcf	(115/8),(115)&7
	line	67
	
l14963:	
;DK_SPI.c: 67: return(RdPara);
	movf	(SPIRead8bit@RdPara),w
	line	68
	
l6655:	
	return
	opt stack 0
GLOBAL	__end_of_SPIRead8bit
	__end_of_SPIRead8bit:
;; =============== function _SPIRead8bit ends ============

	signat	_SPIRead8bit,89
	global	_SPICmd8bit
psect	text2205,local,class=CODE,delta=2
global __ptext2205
__ptext2205:

;; *************** function _SPICmd8bit *****************
;; Defined at:
;;		line 23 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;  WrPara          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  WrPara          1    2[COMMON] unsigned char 
;;  bitcnt          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPIRead
;;		_SPIBurstRead
;;		_BurstWrite
;; This function uses a non-reentrant model
;;
psect	text2205
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	23
	global	__size_of_SPICmd8bit
	__size_of_SPICmd8bit	equ	__end_of_SPICmd8bit-_SPICmd8bit
	
_SPICmd8bit:	
	opt	stack 9
; Regs used in _SPICmd8bit: [wreg+status,2+status,0]
;SPICmd8bit@WrPara stored from wreg
	line	25
	movwf	(SPICmd8bit@WrPara)
	
l14935:	
;DK_SPI.c: 24: u8 bitcnt;
;DK_SPI.c: 25: RA0=0;
	bcf	(96/8),(96)&7
	line	26
;DK_SPI.c: 26: RC3=0;
	bcf	(115/8),(115)&7
	line	28
	
l14937:	
;DK_SPI.c: 28: for(bitcnt=8; bitcnt!=0; bitcnt--)
	movlw	(08h)
	movwf	(SPICmd8bit@bitcnt)
	line	29
	
l6644:	
	line	30
;DK_SPI.c: 29: {
;DK_SPI.c: 30: RC3=0;
	bcf	(115/8),(115)&7
	line	31
;DK_SPI.c: 31: if(WrPara&0x80)
	btfss	(SPICmd8bit@WrPara),(7)&7
	goto	u8951
	goto	u8950
u8951:
	goto	l6646
u8950:
	line	32
	
l14943:	
;DK_SPI.c: 32: RC4=1;
	bsf	(116/8),(116)&7
	goto	l6647
	line	33
	
l6646:	
	line	34
;DK_SPI.c: 33: else
;DK_SPI.c: 34: RC4=0;
	bcf	(116/8),(116)&7
	
l6647:	
	line	35
;DK_SPI.c: 35: RC3=1;
	bsf	(115/8),(115)&7
	line	36
;DK_SPI.c: 36: WrPara <<= 1;
	lslf	(SPICmd8bit@WrPara),f
	line	28
	
l14945:	
	decf	(SPICmd8bit@bitcnt),f
	movf	(SPICmd8bit@bitcnt),f
	skipz
	goto	u8961
	goto	u8960
u8961:
	goto	l6644
u8960:
	
l6645:	
	line	38
;DK_SPI.c: 37: }
;DK_SPI.c: 38: RC3=0;
	bcf	(115/8),(115)&7
	line	39
;DK_SPI.c: 39: RC4=1;
	bsf	(116/8),(116)&7
	line	40
	
l6648:	
	return
	opt stack 0
GLOBAL	__end_of_SPICmd8bit
	__end_of_SPICmd8bit:
;; =============== function _SPICmd8bit ends ============

	signat	_SPICmd8bit,4216
	global	_SPIWrite
psect	text2206,local,class=CODE,delta=2
global __ptext2206
__ptext2206:

;; *************** function _SPIWrite *****************
;; Defined at:
;;		line 92 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
;; Parameters:    Size  Location     Type
;;  WrPara          2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  bitcnt          1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RFM98_Standby
;;		_RFM98_Sleep
;;		_RFM98_EntryLoRa
;;		_RFM98_LoRaClearIrq
;;		_RFM98_LoRaEntryRx
;;		_RFM98_LoRaRxPacket
;;		_RFM98_LoRaEntryTx
;;		_RFM98_LoRaTxPacket
;;		_RFM98_FskClearFIFO
;;		_RFM98_FskEntryRx
;;		_RFM98_FskEntryTx
;;		_RFM98_FskTxPacket
;;		_RFM98_Config
;;		_RFM98_TestConfig
;;		_RFM98_EntryTestTx
;;		_RFM98_EntryTestRx
;; This function uses a non-reentrant model
;;
psect	text2206
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_SPI.c"
	line	92
	global	__size_of_SPIWrite
	__size_of_SPIWrite	equ	__end_of_SPIWrite-_SPIWrite
	
_SPIWrite:	
	opt	stack 11
; Regs used in _SPIWrite: [wreg+status,2+status,0]
	line	95
	
l14923:	
;DK_SPI.c: 93: u8 bitcnt;
;DK_SPI.c: 95: RC3=0;
	bcf	(115/8),(115)&7
	line	96
;DK_SPI.c: 96: RA0=0;
	bcf	(96/8),(96)&7
	line	98
;DK_SPI.c: 98: WrPara |= 0x8000;
	bsf	(SPIWrite@WrPara)+(15/8),(15)&7
	line	100
	
l14925:	
;DK_SPI.c: 100: for(bitcnt=16; bitcnt!=0; bitcnt--)
	movlw	(010h)
	movwf	(SPIWrite@bitcnt)
	line	101
	
l6661:	
	line	102
;DK_SPI.c: 101: {
;DK_SPI.c: 102: RC3=0;
	bcf	(115/8),(115)&7
	line	103
;DK_SPI.c: 103: if(WrPara&0x8000)
	btfss	(SPIWrite@WrPara+1),(15)&7
	goto	u8931
	goto	u8930
u8931:
	goto	l6663
u8930:
	line	104
	
l14931:	
;DK_SPI.c: 104: RC4=1;
	bsf	(116/8),(116)&7
	goto	l6664
	line	105
	
l6663:	
	line	106
;DK_SPI.c: 105: else
;DK_SPI.c: 106: RC4=0;
	bcf	(116/8),(116)&7
	
l6664:	
	line	107
;DK_SPI.c: 107: RC3=1;
	bsf	(115/8),(115)&7
	line	108
	
l14933:	
;DK_SPI.c: 108: WrPara <<= 1;
	lslf	(SPIWrite@WrPara),f
	rlf	(SPIWrite@WrPara+1),f
	line	100
	decf	(SPIWrite@bitcnt),f
	movf	(SPIWrite@bitcnt),f
	skipz
	goto	u8941
	goto	u8940
u8941:
	goto	l6661
u8940:
	
l6662:	
	line	110
;DK_SPI.c: 109: }
;DK_SPI.c: 110: RC3=0;
	bcf	(115/8),(115)&7
	line	111
;DK_SPI.c: 111: RC4=1;
	bsf	(116/8),(116)&7
	line	112
;DK_SPI.c: 112: RA0=1;
	bsf	(96/8),(96)&7
	line	113
	
l6665:	
	return
	opt stack 0
GLOBAL	__end_of_SPIWrite
	__end_of_SPIWrite:
;; =============== function _SPIWrite ends ============

	signat	_SPIWrite,4216
	global	_BeepOff
psect	text2207,local,class=CODE,delta=2
global __ptext2207
__ptext2207:

;; *************** function _BeepOff *****************
;; Defined at:
;;		line 964 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2207
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	964
	global	__size_of_BeepOff
	__size_of_BeepOff	equ	__end_of_BeepOff-_BeepOff
	
_BeepOff:	
	opt	stack 13
; Regs used in _BeepOff: [status,2]
	line	965
	
l14917:	
;DK_PIC16_App.c: 965: TMR1ON = 0;
	movlb 0	; select bank0
	bcf	(192/8),(192)&7
	line	966
	
l14919:	
;DK_PIC16_App.c: 966: gb_BeepOnFlag = 0;
	clrf	(_gb_BeepOnFlag)
	line	967
;DK_PIC16_App.c: 967: gb_BeepOnCount=0;
	clrf	(_gb_BeepOnCount)
	line	968
;DK_PIC16_App.c: 968: gw_BeepTimer=0;
	clrf	(_gw_BeepTimer)
	clrf	(_gw_BeepTimer+1)
	line	969
	
l14921:	
;DK_PIC16_App.c: 969: RC2=0;
	bcf	(114/8),(114)&7
	line	970
	
l4090:	
	return
	opt stack 0
GLOBAL	__end_of_BeepOff
	__end_of_BeepOff:
;; =============== function _BeepOff ends ============

	signat	_BeepOff,88
	global	_BeepOn
psect	text2208,local,class=CODE,delta=2
global __ptext2208
__ptext2208:

;; *************** function _BeepOn *****************
;; Defined at:
;;		line 929 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;  Tone            2    2[COMMON] PTR unsigned int 
;;		 -> MusicTab_RxSuccess(8), MusicTab_PowerOn(36), MusicTab_KeyOver(32), MusicTab_KeyErr(8), 
;;		 -> MusicTab_KeyOK(12), MusicTab_KeyMove(8), MusicTab_KeySet(12), MusicTab_Error(20), 
;; Auto vars:     Size  Location     Type
;;  i               1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayRFParameter
;;		_RFParameterSelect
;;		_ModemSelect
;;		_WorkModeSelect
;;		_PowerOnMusic
;;		_RFM98_Running
;; This function uses a non-reentrant model
;;
psect	text2208
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	929
	global	__size_of_BeepOn
	__size_of_BeepOn	equ	__end_of_BeepOn-_BeepOn
	
_BeepOn:	
	opt	stack 12
; Regs used in _BeepOn: [wreg-status,0+pclath]
	line	930
	
l14899:	
;DK_PIC16_App.c: 930: u8 i=0;
	clrf	(BeepOn@i)
	line	931
	
l14901:	
;DK_PIC16_App.c: 931: if(!gb_BeepOnFlag)
	movlb 0	; select bank0
	movf	(_gb_BeepOnFlag),f
	skipz
	goto	u8911
	goto	u8910
u8911:
	goto	l4087
u8910:
	line	933
	
l14903:	
;DK_PIC16_App.c: 932: {
;DK_PIC16_App.c: 933: gb_BeepOnFlag = 1;
	clrf	(_gb_BeepOnFlag)
	incf	(_gb_BeepOnFlag),f
	line	934
	
l14905:	
;DK_PIC16_App.c: 934: gb_BeepOnCount=0;
	clrf	(_gb_BeepOnCount)
	line	935
;DK_PIC16_App.c: 935: gw_BeepTimer=0;
	clrf	(_gw_BeepTimer)
	clrf	(_gw_BeepTimer+1)
	line	936
	
l14907:	
;DK_PIC16_App.c: 936: RC2=0;
	bcf	(114/8),(114)&7
	line	940
	
l14909:	
;DK_PIC16_App.c: 939: {
;DK_PIC16_App.c: 940: if(Tone[i+1]!=0)
	movf	(BeepOn@i),w
	movwf	(??_BeepOn+0)+0
	lslf	(??_BeepOn+0)+0,f
	movf	0+(??_BeepOn+0)+0,w
	addwf	(BeepOn@Tone),w
	movwf	(??_BeepOn+1)+0
	movf	(BeepOn@Tone+1),w
	skipnc
	incf	wreg,f
	btfsc	0+(??_BeepOn+0)+0,7
	decf	wreg,f
	movwf	((??_BeepOn+1)+0)+1
	movlw	02h
	addwf	(??_BeepOn+1)+0,w
	movwf	fsr0l
	movf	(??_BeepOn+1)+1,w
	skipnc
	incf	(??_BeepOn+1)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_BeepOn+3)+0
	moviw	[1]fsr0
	movwf	(??_BeepOn+3)+0+1
	movf	1+(??_BeepOn+3)+0,w
	iorwf	0+(??_BeepOn+3)+0,w
	skipnz
	goto	u8921
	goto	u8920
u8921:
	goto	l14915
u8920:
	line	942
	
l14911:	
;DK_PIC16_App.c: 941: {
;DK_PIC16_App.c: 942: gw_ToneBuf[i]=Tone[i];
	movf	(BeepOn@Tone+1),w
	movwf	(??_BeepOn+0)+0+1
	movf	(BeepOn@Tone),w
	movwf	(??_BeepOn+0)+0
	lslf	(BeepOn@i),w
	addwf	(??_BeepOn+0)+0,w
	movwf	fsr0l
	movf	(??_BeepOn+0)+1,w
	skipnc
	incf	(??_BeepOn+0)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_BeepOn+2)+0
	moviw	[1]fsr0
	movwf	(??_BeepOn+2)+0+1
	lslf	(BeepOn@i),w
	addlw	_gw_ToneBuf&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	movf	0+(??_BeepOn+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_BeepOn+2)+0,w
	movwi	[1]fsr1
	line	943
;DK_PIC16_App.c: 943: gw_ToneBuf[i+1]=Tone[i+1];
	movf	(BeepOn@i),w
	movwf	(??_BeepOn+0)+0
	lslf	(??_BeepOn+0)+0,f
	movf	0+(??_BeepOn+0)+0,w
	addwf	(BeepOn@Tone),w
	movwf	(??_BeepOn+1)+0
	movf	(BeepOn@Tone+1),w
	skipnc
	incf	wreg,f
	btfsc	0+(??_BeepOn+0)+0,7
	decf	wreg,f
	movwf	((??_BeepOn+1)+0)+1
	movlw	02h
	addwf	(??_BeepOn+1)+0,w
	movwf	fsr0l
	movf	(??_BeepOn+1)+1,w
	skipnc
	incf	(??_BeepOn+1)+1,w
	movwf	fsr0h

	moviw	[0]fsr0
	movwf	(??_BeepOn+3)+0
	moviw	[1]fsr0
	movwf	(??_BeepOn+3)+0+1
	lslf	(BeepOn@i),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	movf	0+(??_BeepOn+3)+0,w
	movwi	[0]fsr1
	movf	1+(??_BeepOn+3)+0,w
	movwi	[1]fsr1
	line	944
	
l14913:	
;DK_PIC16_App.c: 944: i+=2;
	incf	(BeepOn@i),f
	incf	(BeepOn@i),f
	line	945
;DK_PIC16_App.c: 945: }
	goto	l14909
	line	948
	
l14915:	
;DK_PIC16_App.c: 946: else
;DK_PIC16_App.c: 947: {
;DK_PIC16_App.c: 948: gw_ToneBuf[i]=0;
	lslf	(BeepOn@i),w
	addlw	_gw_ToneBuf&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	949
;DK_PIC16_App.c: 949: gw_ToneBuf[i+1]=0;
	lslf	(BeepOn@i),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	938
;DK_PIC16_App.c: 950: break;
	
l4085:	
	line	953
;DK_PIC16_App.c: 951: }
;DK_PIC16_App.c: 952: }
;DK_PIC16_App.c: 953: TMR1ON = 1;
	movlb 0	; select bank0
	bsf	(192/8),(192)&7
	line	955
	
l4087:	
	return
	opt stack 0
GLOBAL	__end_of_BeepOn
	__end_of_BeepOn:
;; =============== function _BeepOn ends ============

	signat	_BeepOn,4216
	global	_InitSystemParameter
psect	text2209,local,class=CODE,delta=2
global __ptext2209
__ptext2209:

;; *************** function _InitSystemParameter *****************
;; Defined at:
;;		line 245 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1D/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ModuleSelectModeEntryCheck
;;		_ModemSelect
;; This function uses a non-reentrant model
;;
psect	text2209
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	245
	global	__size_of_InitSystemParameter
	__size_of_InitSystemParameter	equ	__end_of_InitSystemParameter-_InitSystemParameter
	
_InitSystemParameter:	
	opt	stack 11
; Regs used in _InitSystemParameter: [wreg-fsr0h+status,2+status,0+pclath]
	line	246
	
l14849:	
;DK_PIC16_App.c: 246: gw_SendDataCount=0;
	movlb 0	; select bank0
	clrf	(_gw_SendDataCount)
	clrf	(_gw_SendDataCount+1)
	line	247
;DK_PIC16_App.c: 247: gw_ReceiveDataCount=0;
	clrf	(_gw_ReceiveDataCount)
	clrf	(_gw_ReceiveDataCount+1)
	line	249
	
l14851:	
;DK_PIC16_App.c: 249: if(RF_ModemBuf[1]==0 && gb_SystemMode==0x04){gb_SystemMode=0x24;}
	movf	(_RF_ModemBuf+1),w
	movwf	(??_InitSystemParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_InitSystemParameter+0)+0
	movlw	01h
	addwf	(??_InitSystemParameter+0)+0,w
	movwf	fsr0l
	movf	(??_InitSystemParameter+0)+1,w
	skipnc
	incf	(??_InitSystemParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u8801
	goto	u8800
u8801:
	goto	l3845
u8800:
	
l14853:	
	movf	(_gb_SystemMode),w
	xorlw	04h&0ffh
	skipz
	goto	u8811
	goto	u8810
u8811:
	goto	l3845
u8810:
	
l14855:	
	movlw	(024h)
	movwf	(_gb_SystemMode)
	
l3845:	
	line	251
;DK_PIC16_App.c: 251: gw_RF_SentInterval=500;
	movlw	low(01F4h)
	movwf	(_gw_RF_SentInterval)
	movlw	high(01F4h)
	movwf	((_gw_RF_SentInterval))+1
	line	253
;DK_PIC16_App.c: 253: RF_ModemBuf=(u8*)C_RFM98_ModemBuf;
	movlw	low(_C_RFM98_ModemBuf|8000h)
	movwf	(_RF_ModemBuf)
	movlw	high(_C_RFM98_ModemBuf|8000h)
	movwf	((_RF_ModemBuf))+1
	line	254
	
l14857:	
;DK_PIC16_App.c: 254: if(RF_ModemBuf[gb_Modem_Addr]==0x10)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_InitSystemParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_InitSystemParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_InitSystemParameter+0)+0,w
	movwf	fsr0l
	movf	(??_InitSystemParameter+0)+1,w
	skipnc
	incf	(??_InitSystemParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	010h
	skipz
	goto	u8821
	goto	u8820
u8821:
	goto	l14861
u8820:
	line	256
	
l14859:	
;DK_PIC16_App.c: 255: {
;DK_PIC16_App.c: 256: RF_ModuleName=(u8*)C_RFM98_ModuleName;
	movlw	low(_C_RFM98_ModuleName|8000h)
	movwf	(_RF_ModuleName)
	movlw	high(_C_RFM98_ModuleName|8000h)
	movwf	((_RF_ModuleName))+1
	line	257
;DK_PIC16_App.c: 257: RF_FreqBuf=(u16*)C_RFM98_FreqBuf;
	movlw	low(_C_RFM98_FreqBuf|8000h)
	movwf	(_RF_FreqBuf)
	movlw	high(_C_RFM98_FreqBuf|8000h)
	movwf	((_RF_FreqBuf))+1
	line	258
;DK_PIC16_App.c: 258: RF_RateBuf=(u8*)C_RFM98_RateBuf;
	movlw	low(_C_RFM98_RateBuf|8000h)
	movwf	(_RF_RateBuf)
	movlw	high(_C_RFM98_RateBuf|8000h)
	movwf	((_RF_RateBuf))+1
	line	259
;DK_PIC16_App.c: 259: RF_PowerBuf=(u8*)C_RFM98_PowerBuf;
	movlw	low(_C_RFM98_PowerBuf|8000h)
	movwf	(_RF_PowerBuf)
	movlw	high(_C_RFM98_PowerBuf|8000h)
	movwf	((_RF_PowerBuf))+1
	line	260
;DK_PIC16_App.c: 260: RF_FdevBuf=(u8*)C_RFM98_FdevBuf;
	movlw	low(_C_RFM98_FdevBuf|8000h)
	movwf	(_RF_FdevBuf)
	movlw	high(_C_RFM98_FdevBuf|8000h)
	movwf	((_RF_FdevBuf))+1
	line	261
;DK_PIC16_App.c: 261: RF_BandBuf=(u8*)C_RFM98_BandBuf;
	movlw	low(_C_RFM98_BandBuf|8000h)
	movwf	(_RF_BandBuf)
	movlw	high(_C_RFM98_BandBuf|8000h)
	movwf	((_RF_BandBuf))+1
	line	262
;DK_PIC16_App.c: 262: RF_RSSIBuf=(u8*)C_RFM98_RSSIBuf;
	movlw	low(_C_RFM98_RSSIBuf|8000h)
	movwf	(_RF_RSSIBuf)
	movlw	high(_C_RFM98_RSSIBuf|8000h)
	movwf	((_RF_RSSIBuf))+1
	line	263
;DK_PIC16_App.c: 263: }
	goto	l3847
	line	264
	
l14861:	
;DK_PIC16_App.c: 264: else if(RF_ModemBuf[gb_Modem_Addr]==0x12)
	movf	(_RF_ModemBuf+1),w
	movwf	(??_InitSystemParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_InitSystemParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_InitSystemParameter+0)+0,w
	movwf	fsr0l
	movf	(??_InitSystemParameter+0)+1,w
	skipnc
	incf	(??_InitSystemParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	xorlw	012h
	skipz
	goto	u8831
	goto	u8830
u8831:
	goto	l3847
u8830:
	line	266
	
l14863:	
;DK_PIC16_App.c: 265: {
;DK_PIC16_App.c: 266: RF_ModuleName=(u8*)C_RFM98_ModuleName;
	movlw	low(_C_RFM98_ModuleName|8000h)
	movwf	(_RF_ModuleName)
	movlw	high(_C_RFM98_ModuleName|8000h)
	movwf	((_RF_ModuleName))+1
	line	267
;DK_PIC16_App.c: 267: RF_FreqBuf=(u16*)C_RFM98_FreqBuf;
	movlw	low(_C_RFM98_FreqBuf|8000h)
	movwf	(_RF_FreqBuf)
	movlw	high(_C_RFM98_FreqBuf|8000h)
	movwf	((_RF_FreqBuf))+1
	line	268
;DK_PIC16_App.c: 268: RF_PowerBuf=(u8*)C_RFM98_PowerBuf;
	movlw	low(_C_RFM98_PowerBuf|8000h)
	movwf	(_RF_PowerBuf)
	movlw	high(_C_RFM98_PowerBuf|8000h)
	movwf	((_RF_PowerBuf))+1
	line	269
;DK_PIC16_App.c: 269: RF_FdevBuf=(u8*)C_RFM98_FdevBuf;
	movlw	low(_C_RFM98_FdevBuf|8000h)
	movwf	(_RF_FdevBuf)
	movlw	high(_C_RFM98_FdevBuf|8000h)
	movwf	((_RF_FdevBuf))+1
	line	270
;DK_PIC16_App.c: 270: RF_RateBuf=(u8*)C_RFM98_SpreadFactorBuf;
	movlw	low(_C_RFM98_SpreadFactorBuf|8000h)
	movwf	(_RF_RateBuf)
	movlw	high(_C_RFM98_SpreadFactorBuf|8000h)
	movwf	((_RF_RateBuf))+1
	line	271
;DK_PIC16_App.c: 271: RF_LoRaBandWidthBuf=(u16*)C_RFM98_LoRaBandBuf;
	movlw	low(_C_RFM98_LoRaBandBuf|8000h)
	movwf	(_RF_LoRaBandWidthBuf)
	movlw	high(_C_RFM98_LoRaBandBuf|8000h)
	movwf	((_RF_LoRaBandWidthBuf))+1
	line	272
;DK_PIC16_App.c: 272: RF_RSSIBuf=(u8*)C_RFM98_LoRaRSSIBuf;
	movlw	low(_C_RFM98_LoRaRSSIBuf|8000h)
	movwf	(_RF_RSSIBuf)
	movlw	high(_C_RFM98_LoRaRSSIBuf|8000h)
	movwf	((_RF_RSSIBuf))+1
	line	273
;DK_PIC16_App.c: 273: gb_RateBuf_Addr=3;
	movlw	(03h)
	movwf	(_gb_RateBuf_Addr)
	line	274
;DK_PIC16_App.c: 274: gb_BandBuf_Addr=7;
	movlw	(07h)
	movwf	(_gb_BandBuf_Addr)
	line	277
	
l3847:	
;DK_PIC16_App.c: 275: }
;DK_PIC16_App.c: 277: if(gb_FirstPowerUpFlag==1)
	decf	(_gb_FirstPowerUpFlag),w
	skipz
	goto	u8841
	goto	u8840
u8841:
	goto	l3863
u8840:
	line	279
	
l14865:	
;DK_PIC16_App.c: 278: {
;DK_PIC16_App.c: 279: if((gb_SystemMode>=0x25 && gb_SystemMode<=0x2D) || (gb_SystemMode>=0x21 && gb_SystemMode<=0x23))
	movlw	(025h)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u8851
	goto	u8850
u8851:
	goto	l14869
u8850:
	
l14867:	
	movlw	(02Eh)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u8861
	goto	u8860
u8861:
	goto	l14879
u8860:
	
l14869:	
	movlw	(021h)
	subwf	(_gb_SystemMode),w
	skipc
	goto	u8871
	goto	u8870
u8871:
	goto	l14889
u8870:
	
l14871:	
	movlw	(024h)
	subwf	(_gb_SystemMode),w
	skipnc
	goto	u8881
	goto	u8880
u8881:
	goto	l14889
u8880:
	goto	l14879
	line	284
	
l14873:	
;DK_PIC16_App.c: 284: gb_ModuleWorkMode=0;
	clrf	(_gb_ModuleWorkMode)
	line	285
;DK_PIC16_App.c: 285: break;
	goto	l14881
	line	286
;DK_PIC16_App.c: 286: case 0x11:
	
l3858:	
	line	287
;DK_PIC16_App.c: 287: gb_ModuleWorkMode=1;
	clrf	(_gb_ModuleWorkMode)
	incf	(_gb_ModuleWorkMode),f
	line	288
;DK_PIC16_App.c: 288: break;
	goto	l14881
	line	290
	
l14875:	
;DK_PIC16_App.c: 290: gb_ModuleWorkMode=2;
	movlw	(02h)
	movwf	(_gb_ModuleWorkMode)
	line	291
;DK_PIC16_App.c: 291: break;
	goto	l14881
	line	281
	
l14879:	
	movf	(_RF_ModemBuf+1),w
	movwf	(??_InitSystemParameter+0)+0+1
	movf	(_RF_ModemBuf),w
	movwf	(??_InitSystemParameter+0)+0
	movf	(_gb_Modem_Addr),w
	addwf	(??_InitSystemParameter+0)+0,w
	movwf	fsr0l
	movf	(??_InitSystemParameter+0)+1,w
	skipnc
	incf	(??_InitSystemParameter+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 16 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l14873
	xorlw	17^16	; case 17
	skipnz
	goto	l3858
	xorlw	18^17	; case 18
	skipnz
	goto	l14875
	goto	l14881
	opt asmopt_on

	line	294
	
l14881:	
;DK_PIC16_App.c: 294: if(gb_SystemMode==0x23){gb_ModuleWorkMode=4;}
	movf	(_gb_SystemMode),w
	xorlw	023h&0ffh
	skipz
	goto	u8891
	goto	u8890
u8891:
	goto	l14885
u8890:
	
l14883:	
	movlw	(04h)
	movwf	(_gb_ModuleWorkMode)
	line	296
	
l14885:	
;DK_PIC16_App.c: 296: gb_ModuleWorkEnableFlag=1;
	clrf	(_gb_ModuleWorkEnableFlag)
	incf	(_gb_ModuleWorkEnableFlag),f
	line	297
	
l14887:	
;DK_PIC16_App.c: 297: gb_ParameterChangeFlag=1;
	clrf	(_gb_ParameterChangeFlag)
	incf	(_gb_ParameterChangeFlag),f
	line	298
;DK_PIC16_App.c: 298: }
	goto	l3863
	line	301
	
l14889:	
;DK_PIC16_App.c: 299: else
;DK_PIC16_App.c: 300: {
;DK_PIC16_App.c: 301: if(gb_SystemMode==0x02)
	movf	(_gb_SystemMode),w
	xorlw	02h&0ffh
	skipz
	goto	u8901
	goto	u8900
u8901:
	goto	l14893
u8900:
	line	303
	
l14891:	
;DK_PIC16_App.c: 302: {
;DK_PIC16_App.c: 303: gb_SysMode_Set=0x51;
	movlw	(051h)
	movwf	(_gb_SysMode_Set)
	line	305
	
l14893:	
;DK_PIC16_App.c: 304: }
;DK_PIC16_App.c: 305: gb_ModuleWorkEnableFlag=0;
	clrf	(_gb_ModuleWorkEnableFlag)
	line	306
	
l14895:	
;DK_PIC16_App.c: 306: gb_ModuleWorkMode=3;
	movlw	(03h)
	movwf	(_gb_ModuleWorkMode)
	line	307
	
l14897:	
;DK_PIC16_App.c: 307: gb_ParameterChangeFlag=2;
	movlw	(02h)
	movwf	(_gb_ParameterChangeFlag)
	line	310
	
l3863:	
	return
	opt stack 0
GLOBAL	__end_of_InitSystemParameter
	__end_of_InitSystemParameter:
;; =============== function _InitSystemParameter ends ============

	signat	_InitSystemParameter,88
	global	_RxLED_Deal
psect	text2210,local,class=CODE,delta=2
global __ptext2210
__ptext2210:

;; *************** function _RxLED_Deal *****************
;; Defined at:
;;		line 203 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2210
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	203
	global	__size_of_RxLED_Deal
	__size_of_RxLED_Deal	equ	__end_of_RxLED_Deal-_RxLED_Deal
	
_RxLED_Deal:	
	opt	stack 13
; Regs used in _RxLED_Deal: [wreg]
	line	204
	
l14841:	
;DK_PIC16_App.c: 204: if(gb_StatusRx==1)
	decf	(_gb_StatusRx),w
	skipz
	goto	u8781
	goto	u8780
u8781:
	goto	l14845
u8780:
	line	206
	
l14843:	
;DK_PIC16_App.c: 205: {
;DK_PIC16_App.c: 206: RD7=1;
	bsf	(127/8),(127)&7
	line	207
;DK_PIC16_App.c: 207: }
	goto	l3837
	line	208
	
l14845:	
;DK_PIC16_App.c: 208: else if(gb_SystemMode!=0x03)
	movf	(_gb_SystemMode),w
	xorlw	03h&0ffh
	skipnz
	goto	u8791
	goto	u8790
u8791:
	goto	l3837
u8790:
	line	210
	
l14847:	
;DK_PIC16_App.c: 209: {
;DK_PIC16_App.c: 210: RD7=0;
	bcf	(127/8),(127)&7
	line	212
	
l3837:	
	return
	opt stack 0
GLOBAL	__end_of_RxLED_Deal
	__end_of_RxLED_Deal:
;; =============== function _RxLED_Deal ends ============

	signat	_RxLED_Deal,88
	global	_TxLED_Deal
psect	text2211,local,class=CODE,delta=2
global __ptext2211
__ptext2211:

;; *************** function _TxLED_Deal *****************
;; Defined at:
;;		line 155 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2211
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	155
	global	__size_of_TxLED_Deal
	__size_of_TxLED_Deal	equ	__end_of_TxLED_Deal-_TxLED_Deal
	
_TxLED_Deal:	
	opt	stack 13
; Regs used in _TxLED_Deal: [wreg-fsr0h+status,2+status,0]
	line	156
	
l14819:	
;DK_PIC16_App.c: 156: if(gb_StatusTx==1)
	decf	(_gb_StatusTx),w
	skipz
	goto	u8691
	goto	u8690
u8691:
	goto	l14835
u8690:
	line	158
	
l14821:	
;DK_PIC16_App.c: 157: {
;DK_PIC16_App.c: 158: if(gw_TxLedTimer==0)
	movf	((_gw_TxLedTimer+1)),w
	iorwf	((_gw_TxLedTimer)),w
	skipz
	goto	u8701
	goto	u8700
u8701:
	goto	l3831
u8700:
	line	160
	
l14823:	
;DK_PIC16_App.c: 159: {
;DK_PIC16_App.c: 160: gw_TxLedTimer=300;
	movlw	low(012Ch)
	movwf	(_gw_TxLedTimer)
	movlw	high(012Ch)
	movwf	((_gw_TxLedTimer))+1
	line	161
	
l14825:	
;DK_PIC16_App.c: 161: gb_TxLedCount++;
	incf	(_gb_TxLedCount),f
	line	162
	
l14827:	
;DK_PIC16_App.c: 162: if(gb_TxLedCount>6)
	movlw	(07h)
	subwf	(_gb_TxLedCount),w
	skipc
	goto	u8711
	goto	u8710
u8711:
	goto	l14833
u8710:
	line	164
	
l14829:	
;DK_PIC16_App.c: 163: {
;DK_PIC16_App.c: 164: gb_TxLedCount=0;
	clrf	(_gb_TxLedCount)
	goto	l14833
	line	169
;DK_PIC16_App.c: 168: {
;DK_PIC16_App.c: 169: case 1:
	
l3821:	
	line	170
;DK_PIC16_App.c: 170: RD4 = 1; break;
	bsf	(124/8),(124)&7
	goto	l3831
	line	171
;DK_PIC16_App.c: 171: case 2:
	
l3823:	
	line	172
;DK_PIC16_App.c: 172: RD3 = RD5 = 1; break;
	bsf	(125/8),(125)&7
	btfsc	(125/8),(125)&7
	goto	u8721
	goto	u8720
	
u8721:
	movlb 0	; select bank0
	bsf	(123/8),(123)&7
	goto	u8734
u8720:
	movlb 0	; select bank0
	bcf	(123/8),(123)&7
u8734:
	goto	l3831
	line	173
;DK_PIC16_App.c: 173: case 3:
	
l3824:	
	line	174
;DK_PIC16_App.c: 174: RD1 = RD2 = RD6 = 1; break;
	bsf	(126/8),(126)&7
	btfsc	(126/8),(126)&7
	goto	u8741
	goto	u8740
	
u8741:
	movlb 0	; select bank0
	bsf	(122/8),(122)&7
	goto	u8754
u8740:
	movlb 0	; select bank0
	bcf	(122/8),(122)&7
u8754:
	btfsc	(122/8),(122)&7
	goto	u8751
	goto	u8750
	
u8751:
	movlb 0	; select bank0
	bsf	(121/8),(121)&7
	goto	u8764
u8750:
	movlb 0	; select bank0
	bcf	(121/8),(121)&7
u8764:
	goto	l3831
	line	175
;DK_PIC16_App.c: 175: case 4:
	
l3825:	
	line	176
;DK_PIC16_App.c: 176: RD4 = 0; break;
	bcf	(124/8),(124)&7
	goto	l3831
	line	177
;DK_PIC16_App.c: 177: case 5:
	
l3826:	
	line	178
;DK_PIC16_App.c: 178: RD3 = RD5 = 0; break;
	bcf	(125/8),(125)&7
	bcf	(123/8),(123)&7
	goto	l3831
	line	179
;DK_PIC16_App.c: 179: case 6:
	
l3827:	
	line	180
;DK_PIC16_App.c: 180: RD1 = RD2 = RD6 = 0; break;
	bcf	(126/8),(126)&7
	bcf	(122/8),(122)&7
	bcf	(121/8),(121)&7
	goto	l3831
	line	167
	
l14833:	
	movf	(_gb_TxLedCount),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           21     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3821
	xorlw	2^1	; case 2
	skipnz
	goto	l3823
	xorlw	3^2	; case 3
	skipnz
	goto	l3824
	xorlw	4^3	; case 4
	skipnz
	goto	l3825
	xorlw	5^4	; case 5
	skipnz
	goto	l3826
	xorlw	6^5	; case 6
	skipnz
	goto	l3827
	goto	l3818
	opt asmopt_on

	line	184
	
l3818:	
	line	185
;DK_PIC16_App.c: 184: }
;DK_PIC16_App.c: 185: }
	goto	l3831
	line	188
	
l14835:	
;DK_PIC16_App.c: 186: else
;DK_PIC16_App.c: 187: {
;DK_PIC16_App.c: 188: if(gb_SystemMode!=0x03)
	movf	(_gb_SystemMode),w
	xorlw	03h&0ffh
	skipnz
	goto	u8771
	goto	u8770
u8771:
	goto	l3831
u8770:
	line	190
	
l14837:	
;DK_PIC16_App.c: 189: {
;DK_PIC16_App.c: 190: RD4=RD3=RD5=RD1=RD2=RD6=0;
	bcf	(126/8),(126)&7
	bcf	(122/8),(122)&7
	bcf	(121/8),(121)&7
	bcf	(125/8),(125)&7
	bcf	(123/8),(123)&7
	bcf	(124/8),(124)&7
	line	191
	
l14839:	
;DK_PIC16_App.c: 191: gb_TxLedCount=0;
	clrf	(_gb_TxLedCount)
	line	194
	
l3831:	
	return
	opt stack 0
GLOBAL	__end_of_TxLED_Deal
	__end_of_TxLED_Deal:
;; =============== function _TxLED_Deal ends ============

	signat	_TxLED_Deal,88
	global	_KeyRead
psect	text2212,local,class=CODE,delta=2
global __ptext2212
__ptext2212:

;; *************** function _KeyRead *****************
;; Defined at:
;;		line 91 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyScan
;; This function uses a non-reentrant model
;;
psect	text2212
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	91
	global	__size_of_KeyRead
	__size_of_KeyRead	equ	__end_of_KeyRead-_KeyRead
	
_KeyRead:	
	opt	stack 11
; Regs used in _KeyRead: [wreg+status,2]
	line	92
	
l14803:	
;DK_PIC16_App.c: 92: u8 temp=0;
	clrf	(KeyRead@temp)
	line	93
	
l14805:	
;DK_PIC16_App.c: 93: if(RB0==0)
	movlb 0	; select bank0
	btfsc	(104/8),(104)&7
	goto	u8651
	goto	u8650
u8651:
	goto	l3800
u8650:
	line	95
	
l14807:	
;DK_PIC16_App.c: 94: {
;DK_PIC16_App.c: 95: temp|=0x02;
	bsf	(KeyRead@temp)+(1/8),(1)&7
	line	96
	
l3800:	
	line	97
;DK_PIC16_App.c: 96: }
;DK_PIC16_App.c: 97: if(RB1==0)
	btfsc	(105/8),(105)&7
	goto	u8661
	goto	u8660
u8661:
	goto	l3801
u8660:
	line	99
	
l14809:	
;DK_PIC16_App.c: 98: {
;DK_PIC16_App.c: 99: temp|=0x04;
	bsf	(KeyRead@temp)+(2/8),(2)&7
	line	100
	
l3801:	
	line	101
;DK_PIC16_App.c: 100: }
;DK_PIC16_App.c: 101: if(RB2==0)
	btfsc	(106/8),(106)&7
	goto	u8671
	goto	u8670
u8671:
	goto	l3802
u8670:
	line	103
	
l14811:	
;DK_PIC16_App.c: 102: {
;DK_PIC16_App.c: 103: temp|=0x01;
	bsf	(KeyRead@temp)+(0/8),(0)&7
	line	104
	
l3802:	
	line	105
;DK_PIC16_App.c: 104: }
;DK_PIC16_App.c: 105: if(RB3==0)
	btfsc	(107/8),(107)&7
	goto	u8681
	goto	u8680
u8681:
	goto	l14815
u8680:
	line	107
	
l14813:	
;DK_PIC16_App.c: 106: {
;DK_PIC16_App.c: 107: temp|=0x08;
	bsf	(KeyRead@temp)+(3/8),(3)&7
	line	109
	
l14815:	
;DK_PIC16_App.c: 108: }
;DK_PIC16_App.c: 109: return temp;
	movf	(KeyRead@temp),w
	line	110
	
l3804:	
	return
	opt stack 0
GLOBAL	__end_of_KeyRead
	__end_of_KeyRead:
;; =============== function _KeyRead ends ============

	signat	_KeyRead,89
	global	_Delay_ms
psect	text2213,local,class=CODE,delta=2
global __ptext2213
__ptext2213:

;; *************** function _Delay_ms *****************
;; Defined at:
;;		line 73 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;  time            4    2[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17E/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PowerUpDelay
;; This function uses a non-reentrant model
;;
psect	text2213
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	73
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 12
; Regs used in _Delay_ms: [wreg+status,2+status,0]
	line	75
	
l14789:	
;DK_PIC16_App.c: 74: u16 i;
;DK_PIC16_App.c: 75: while(time--)
	goto	l14801
	line	77
	
l14791:	
;DK_PIC16_App.c: 76: {
;DK_PIC16_App.c: 77: for(i = 0; i<333; i++)
	movlb 0	; select bank0
	clrf	(Delay_ms@i)
	clrf	(Delay_ms@i+1)
	
l14797:	
;DK_PIC16_App.c: 78: {
;DK_PIC16_App.c: 79: ;
	incf	(Delay_ms@i),f
	skipnz
	incf	(Delay_ms@i+1),f
	
l14799:	
	movlw	high(014Dh)
	subwf	(Delay_ms@i+1),w
	movlw	low(014Dh)
	skipnz
	subwf	(Delay_ms@i),w
	skipc
	goto	u8631
	goto	u8630
u8631:
	goto	l14797
u8630:
	line	75
	
l14801:	
	movlw	01h
	movwf	((??_Delay_ms+0)+0)
	movlw	0
	movwf	((??_Delay_ms+0)+0+1)
	movlw	0
	movwf	((??_Delay_ms+0)+0+2)
	movlw	0
	movwf	((??_Delay_ms+0)+0+3)
	movf	0+(??_Delay_ms+0)+0,w
	subwf	(Delay_ms@time),f
	movf	1+(??_Delay_ms+0)+0,w
	subwfb	(Delay_ms@time+1),f
	movf	2+(??_Delay_ms+0)+0,w
	subwfb	(Delay_ms@time+2),f
	movf	3+(??_Delay_ms+0)+0,w
	subwfb	(Delay_ms@time+3),f
	incf	((Delay_ms@time)),w
	skipnz
	incf	((Delay_ms@time+1)),w
	skipnz
	incf	((Delay_ms@time+2)),w
	skipnz
	incf	((Delay_ms@time+3)),w

	skipz
	goto	u8641
	goto	u8640
u8641:
	goto	l14791
u8640:
	line	82
	
l3797:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	_LCD_DisplayAll
psect	text2214,local,class=CODE,delta=2
global __ptext2214
__ptext2214:

;; *************** function _LCD_DisplayAll *****************
;; Defined at:
;;		line 526 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PowerOnMusic
;; This function uses a non-reentrant model
;;
psect	text2214
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	526
	global	__size_of_LCD_DisplayAll
	__size_of_LCD_DisplayAll	equ	__end_of_LCD_DisplayAll-_LCD_DisplayAll
	
_LCD_DisplayAll:	
	opt	stack 12
; Regs used in _LCD_DisplayAll: [wreg+fsr1l-status,0]
	line	528
	
l14777:	
;DK_LCD.c: 527: u8 i;
;DK_LCD.c: 528: for(i=0;i<32;i++)
	clrf	(LCD_DisplayAll@i)
	line	529
	
l14783:	
;DK_LCD.c: 529: DispBuf[i]=0xff;
	movf	(LCD_DisplayAll@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(0FFh)
	movwf	indf1
	line	528
	
l14785:	
	incf	(LCD_DisplayAll@i),f
	
l14787:	
	movlw	(020h)
	subwf	(LCD_DisplayAll@i),w
	skipc
	goto	u8621
	goto	u8620
u8621:
	goto	l14783
u8620:
	line	530
	
l2539:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayAll
	__end_of_LCD_DisplayAll:
;; =============== function _LCD_DisplayAll ends ============

	signat	_LCD_DisplayAll,88
	global	_FlashDisplay
psect	text2215,local,class=CODE,delta=2
global __ptext2215
__ptext2215:

;; *************** function _FlashDisplay *****************
;; Defined at:
;;		line 383 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Display
;; This function uses a non-reentrant model
;;
psect	text2215
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	383
	global	__size_of_FlashDisplay
	__size_of_FlashDisplay	equ	__end_of_FlashDisplay-_FlashDisplay
	
_FlashDisplay:	
	opt	stack 11
; Regs used in _FlashDisplay: [wreg-status,0+pclath]
	line	386
	
l14555:	
;DK_LCD.c: 384: u8 i;
;DK_LCD.c: 386: if(gb_DispFlashFlagBackup!=gb_DispFlashFlag)
	movlb 0	; select bank0
	movf	(_gb_DispFlashFlagBackup),w
	xorwf	(_gb_DispFlashFlag),w
	skipnz
	goto	u8291
	goto	u8290
u8291:
	goto	l14767
u8290:
	line	388
	
l14557:	
;DK_LCD.c: 387: {
;DK_LCD.c: 388: for(i=0;i<32;i++){DispBufCache[i]=DispBuf[i];}
	clrf	(FlashDisplay@i)
	
l14563:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14565:	
	incf	(FlashDisplay@i),f
	
l14567:	
	movlw	(020h)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8301
	goto	u8300
u8301:
	goto	l14563
u8300:
	goto	l14767
	line	392
;DK_LCD.c: 391: {
;DK_LCD.c: 392: case 0:
	
l2456:	
	line	393
;DK_LCD.c: 393: break;
	goto	l14769
	line	395
	
l14569:	
;DK_LCD.c: 395: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8310
	goto	l2459
u8310:
	line	397
	
l14571:	
;DK_LCD.c: 396: {
;DK_LCD.c: 397: if(_DispSeg.u32Bits.Bit5){DispBufCache[25]=DispBuf[25]&0x7F;}
	btfss	(__DispSeg),5
	goto	u8321
	goto	u8320
u8321:
	goto	l2460
u8320:
	
l14573:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+019h,w
	movwf	0+(_DispBufCache)^080h+019h
	
l14575:	
	bcf	0+(_DispBufCache)^080h+019h+(7/8),(7)&7
	goto	l14769
	line	398
	
l2460:	
;DK_LCD.c: 398: else if(_DispSeg.u32Bits.Bit6){DispBufCache[24]=DispBuf[24]&0x7F;}
	btfss	(__DispSeg),6
	goto	u8331
	goto	u8330
u8331:
	goto	l2462
u8330:
	
l14577:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+018h,w
	movwf	0+(_DispBufCache)^080h+018h
	
l14579:	
	bcf	0+(_DispBufCache)^080h+018h+(7/8),(7)&7
	goto	l14769
	line	399
	
l2462:	
;DK_LCD.c: 399: else if(_DispSeg.u32Bits.Bit7){DispBufCache[20]=DispBuf[20]&0x7F;}
	btfss	(__DispSeg),7
	goto	u8341
	goto	u8340
u8341:
	goto	l2464
u8340:
	
l14581:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+014h,w
	movwf	0+(_DispBufCache)^080h+014h
	
l14583:	
	bcf	0+(_DispBufCache)^080h+014h+(7/8),(7)&7
	goto	l14769
	line	400
	
l2464:	
;DK_LCD.c: 400: else if(_DispSeg.u32Bits.Bit8){DispBufCache[19]=DispBuf[19]&0x7F;}
	btfss	0+(__DispSeg)+01h,0
	goto	u8351
	goto	u8350
u8351:
	goto	l2456
u8350:
	
l14585:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+013h,w
	movwf	0+(_DispBufCache)^080h+013h
	
l14587:	
	bcf	0+(_DispBufCache)^080h+013h+(7/8),(7)&7
	goto	l14769
	line	402
	
l2459:	
	line	404
;DK_LCD.c: 402: else
;DK_LCD.c: 403: {
;DK_LCD.c: 404: if(_DispSeg.u32Bits.Bit5){DispBufCache[25]=DispBuf[25];}
	btfss	(__DispSeg),5
	goto	u8361
	goto	u8360
u8361:
	goto	l2468
u8360:
	
l14589:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+019h,w
	movwf	0+(_DispBufCache)^080h+019h
	goto	l14769
	line	405
	
l2468:	
;DK_LCD.c: 405: else if(_DispSeg.u32Bits.Bit6){DispBufCache[24]=DispBuf[24];}
	btfss	(__DispSeg),6
	goto	u8371
	goto	u8370
u8371:
	goto	l2470
u8370:
	
l14591:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+018h,w
	movwf	0+(_DispBufCache)^080h+018h
	goto	l14769
	line	406
	
l2470:	
;DK_LCD.c: 406: else if(_DispSeg.u32Bits.Bit7){DispBufCache[20]=DispBuf[20];}
	btfss	(__DispSeg),7
	goto	u8381
	goto	u8380
u8381:
	goto	l2472
u8380:
	
l14593:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+014h,w
	movwf	0+(_DispBufCache)^080h+014h
	goto	l14769
	line	407
	
l2472:	
;DK_LCD.c: 407: else if(_DispSeg.u32Bits.Bit8){DispBufCache[19]=DispBuf[19];}
	btfss	0+(__DispSeg)+01h,0
	goto	u8391
	goto	u8390
u8391:
	goto	l2456
u8390:
	
l14595:	
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+013h,w
	movwf	0+(_DispBufCache)^080h+013h
	goto	l14769
	line	411
	
l14597:	
;DK_LCD.c: 411: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8400
	goto	l14609
u8400:
	line	413
	
l14599:	
;DK_LCD.c: 412: {
;DK_LCD.c: 413: for(i=25;i>25-6;i--){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(019h)
	movwf	(FlashDisplay@i)
	
l14603:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14605:	
	decf	(FlashDisplay@i),f
	
l14607:	
	movlw	(014h)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8411
	goto	u8410
u8411:
	goto	l14603
u8410:
	goto	l14769
	line	417
	
l14609:	
;DK_LCD.c: 415: else
;DK_LCD.c: 416: {
;DK_LCD.c: 417: for(i=25;i>25-6;i--){DispBufCache[i]=DispBuf[i];}
	movlw	(019h)
	movwf	(FlashDisplay@i)
	
l14613:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14615:	
	decf	(FlashDisplay@i),f
	
l14617:	
	movlw	(014h)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8421
	goto	u8420
u8421:
	goto	l14613
u8420:
	goto	l14769
	line	421
	
l14619:	
;DK_LCD.c: 421: if(gb_DispFlashEnableFlag!=0)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8430
	goto	l14631
u8430:
	line	423
	
l14621:	
;DK_LCD.c: 422: {
;DK_LCD.c: 423: for(i=29;i>29-4;i--){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(01Dh)
	movwf	(FlashDisplay@i)
	
l14625:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14627:	
	decf	(FlashDisplay@i),f
	
l14629:	
	movlw	(01Ah)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8441
	goto	u8440
u8441:
	goto	l14625
u8440:
	goto	l14769
	line	427
	
l14631:	
;DK_LCD.c: 425: else
;DK_LCD.c: 426: {
;DK_LCD.c: 427: for(i=29;i>29-4;i--){DispBufCache[i]=DispBuf[i];}
	movlw	(01Dh)
	movwf	(FlashDisplay@i)
	
l14635:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14637:	
	decf	(FlashDisplay@i),f
	
l14639:	
	movlw	(01Ah)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8451
	goto	u8450
u8451:
	goto	l14635
u8450:
	goto	l14769
	line	431
	
l14641:	
;DK_LCD.c: 431: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8460
	goto	l14655
u8460:
	line	433
	
l14643:	
;DK_LCD.c: 432: {
;DK_LCD.c: 433: for(i=0;i<0+4;i++){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	clrf	(FlashDisplay@i)
	
l14649:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14651:	
	incf	(FlashDisplay@i),f
	
l14653:	
	movlw	(04h)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8471
	goto	u8470
u8471:
	goto	l14649
u8470:
	goto	l14769
	line	437
	
l14655:	
;DK_LCD.c: 435: else
;DK_LCD.c: 436: {
;DK_LCD.c: 437: for(i=0;i<0+4;i++){DispBufCache[i]=DispBuf[i];}
	clrf	(FlashDisplay@i)
	
l14661:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14663:	
	incf	(FlashDisplay@i),f
	
l14665:	
	movlw	(04h)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8481
	goto	u8480
u8481:
	goto	l14661
u8480:
	goto	l14769
	line	441
	
l14667:	
;DK_LCD.c: 441: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8490
	goto	l14679
u8490:
	line	443
	
l14669:	
;DK_LCD.c: 442: {
;DK_LCD.c: 443: for(i=18;i>18-4;i--){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(012h)
	movwf	(FlashDisplay@i)
	
l14673:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14675:	
	decf	(FlashDisplay@i),f
	
l14677:	
	movlw	(0Fh)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8501
	goto	u8500
u8501:
	goto	l14673
u8500:
	goto	l14769
	line	447
	
l14679:	
;DK_LCD.c: 445: else
;DK_LCD.c: 446: {
;DK_LCD.c: 447: for(i=18;i>18-4;i--){DispBufCache[i]=DispBuf[i];}
	movlw	(012h)
	movwf	(FlashDisplay@i)
	
l14683:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14685:	
	decf	(FlashDisplay@i),f
	
l14687:	
	movlw	(0Fh)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8511
	goto	u8510
u8511:
	goto	l14683
u8510:
	goto	l14769
	line	451
	
l14689:	
;DK_LCD.c: 451: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8520
	goto	l14701
u8520:
	line	453
	
l14691:	
;DK_LCD.c: 452: {
;DK_LCD.c: 453: for(i=14;i>14-2;i--){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(0Eh)
	movwf	(FlashDisplay@i)
	
l14695:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14697:	
	decf	(FlashDisplay@i),f
	
l14699:	
	movlw	(0Dh)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8531
	goto	u8530
u8531:
	goto	l14695
u8530:
	goto	l14769
	line	457
	
l14701:	
;DK_LCD.c: 455: else
;DK_LCD.c: 456: {
;DK_LCD.c: 457: for(i=14;i>14-2;i--){DispBufCache[i]=DispBuf[i];}
	movlw	(0Eh)
	movwf	(FlashDisplay@i)
	
l14705:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14707:	
	decf	(FlashDisplay@i),f
	
l14709:	
	movlw	(0Dh)
	subwf	(FlashDisplay@i),w
	skipnc
	goto	u8541
	goto	u8540
u8541:
	goto	l14705
u8540:
	goto	l14769
	line	461
	
l14711:	
;DK_LCD.c: 461: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8550
	goto	l14719
u8550:
	line	463
	
l14713:	
;DK_LCD.c: 462: {
;DK_LCD.c: 463: DispBufCache[12]=(DispBuf[12]&0x80)|LCDDigTable[36];
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+0Ch,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	0+(_DispBufCache)^080h+0Ch
	line	464
	
l14715:	
;DK_LCD.c: 464: DispBufCache[12-1]=(DispBuf[12-1]&0x00)|LCDDigTable[36];
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	0+(_DispBufCache)^080h+0Bh
	line	465
	
l14717:	
;DK_LCD.c: 465: DispBufCache[4]=(DispBuf[4]&0x80)|LCDDigTable[36];
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	0+(_DispBuf)^080h+04h,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	0+(_DispBufCache)^080h+04h
	line	466
;DK_LCD.c: 466: }
	goto	l14769
	line	469
	
l14719:	
;DK_LCD.c: 467: else
;DK_LCD.c: 468: {
;DK_LCD.c: 469: DispBufCache[12]=DispBuf[12];
	movlb 1	; select bank1
	movf	0+(_DispBuf)^080h+0Ch,w
	movwf	0+(_DispBufCache)^080h+0Ch
	line	470
;DK_LCD.c: 470: DispBufCache[12-1]=DispBuf[12-1];
	movf	0+(_DispBuf)^080h+0Bh,w
	movwf	0+(_DispBufCache)^080h+0Bh
	line	471
;DK_LCD.c: 471: DispBufCache[4]=DispBuf[4];
	movf	0+(_DispBuf)^080h+04h,w
	movwf	0+(_DispBufCache)^080h+04h
	goto	l14769
	line	475
	
l14721:	
;DK_LCD.c: 475: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8560
	goto	l14733
u8560:
	line	477
	
l14723:	
;DK_LCD.c: 476: {
;DK_LCD.c: 477: for(i=5;i<5+3;i++){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(05h)
	movwf	(FlashDisplay@i)
	
l14727:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14729:	
	incf	(FlashDisplay@i),f
	
l14731:	
	movlw	(08h)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8571
	goto	u8570
u8571:
	goto	l14727
u8570:
	
l2516:	
	line	478
;DK_LCD.c: 478: DispBufCache[6]=DispBufCache[6]&0x7F;
	movlb 1	; select bank1
	bcf	0+(_DispBufCache)^080h+06h+(7/8),(7)&7
	line	479
;DK_LCD.c: 479: }
	goto	l14769
	line	482
	
l14733:	
;DK_LCD.c: 480: else
;DK_LCD.c: 481: {
;DK_LCD.c: 482: for(i=5;i<5+3;i++){DispBufCache[i]=DispBuf[i];}
	movlw	(05h)
	movwf	(FlashDisplay@i)
	
l14737:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14739:	
	incf	(FlashDisplay@i),f
	
l14741:	
	movlw	(08h)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8581
	goto	u8580
u8581:
	goto	l14737
u8580:
	goto	l14769
	line	486
	
l14743:	
;DK_LCD.c: 486: if(gb_DispFlashEnableFlag)
	movf	(_gb_DispFlashEnableFlag),w
	skipz
	goto	u8590
	goto	l14755
u8590:
	line	488
	
l14745:	
;DK_LCD.c: 487: {
;DK_LCD.c: 488: for(i=8;i<8+3;i++){DispBufCache[i]=(DispBuf[i]&0x80)|LCDDigTable[36];}
	movlw	(08h)
	movwf	(FlashDisplay@i)
	
l14749:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_FlashDisplay+0)+0
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	andlw	080h
	iorwf	(??_FlashDisplay+0)+0,w
	movwf	indf1
	
l14751:	
	incf	(FlashDisplay@i),f
	
l14753:	
	movlw	(0Bh)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8601
	goto	u8600
u8601:
	goto	l14749
u8600:
	
l2523:	
	line	489
;DK_LCD.c: 489: DispBufCache[9]=DispBufCache[9]&0x7F;
	movlb 1	; select bank1
	bcf	0+(_DispBufCache)^080h+09h+(7/8),(7)&7
	line	490
;DK_LCD.c: 490: }
	goto	l14769
	line	493
	
l14755:	
;DK_LCD.c: 491: else
;DK_LCD.c: 492: {
;DK_LCD.c: 493: for(i=8;i<8+3;i++){DispBufCache[i]=DispBuf[i];}
	movlw	(08h)
	movwf	(FlashDisplay@i)
	
l14759:	
	movf	(FlashDisplay@i),w
	addlw	_DispBufCache&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(FlashDisplay@i),w
	addlw	_DispBuf&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l14761:	
	incf	(FlashDisplay@i),f
	
l14763:	
	movlw	(0Bh)
	subwf	(FlashDisplay@i),w
	skipc
	goto	u8611
	goto	u8610
u8611:
	goto	l14759
u8610:
	goto	l14769
	line	390
	
l14767:	
	movlb 0	; select bank0
	movf	(_gb_DispFlashFlag),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 9
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           26     6 (fixed)
; simple_byte           31    16 (average)
; jumptable            260     6 (fixed)
; rangetable            14     4 (fixed)
; spacedrange           25     6 (fixed)
; locatedrange          10     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr0l
	movlw	10
	subwf	fsr0l,w
skipnc
goto l14769
movlp high(S17147)
	lslf fsr0l,w
	addlw low(S17147)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S17147:
	ljmp	l14769
	ljmp	l14569
	ljmp	l14597
	ljmp	l14619
	ljmp	l14641
	ljmp	l14667
	ljmp	l14689
	ljmp	l14711
	ljmp	l14721
	ljmp	l14743
psect	text2215

	line	497
	
l14769:	
;DK_LCD.c: 497: gb_DispFlashFlagBackup=gb_DispFlashFlag;
	movlb 0	; select bank0
	movf	(_gb_DispFlashFlag),w
	movwf	(_gb_DispFlashFlagBackup)
	line	498
	
l2527:	
	return
	opt stack 0
GLOBAL	__end_of_FlashDisplay
	__end_of_FlashDisplay:
;; =============== function _FlashDisplay ends ============

	signat	_FlashDisplay,88
	global	_SendSegDataToDispBuf
psect	text2216,local,class=CODE,delta=2
global __ptext2216
__ptext2216:

;; *************** function _SendSegDataToDispBuf *****************
;; Defined at:
;;		line 346 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Display
;; This function uses a non-reentrant model
;;
psect	text2216
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	346
	global	__size_of_SendSegDataToDispBuf
	__size_of_SendSegDataToDispBuf	equ	__end_of_SendSegDataToDispBuf-_SendSegDataToDispBuf
	
_SendSegDataToDispBuf:	
	opt	stack 11
; Regs used in _SendSegDataToDispBuf: []
	line	347
	
l14499:	
;DK_LCD.c: 347: if(_DispSeg.u32Bits.Bit0){DispBuf[0]|=0x80;}
	btfss	(__DispSeg),0
	goto	u8021
	goto	u8020
u8021:
	goto	l2419
u8020:
	
l14501:	
	movlb 1	; select bank1
	bsf	(_DispBuf)^080h+(7/8),(7)&7
	
l2419:	
	line	348
;DK_LCD.c: 348: if(_DispSeg.u32Bits.Bit1){DispBuf[29]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),1
	goto	u8031
	goto	u8030
u8031:
	goto	l2420
u8030:
	
l14503:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+01Dh+(7/8),(7)&7
	
l2420:	
	line	349
;DK_LCD.c: 349: if(_DispSeg.u32Bits.Bit2){DispBuf[28]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),2
	goto	u8041
	goto	u8040
u8041:
	goto	l2421
u8040:
	
l14505:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+01Ch+(7/8),(7)&7
	
l2421:	
	line	350
;DK_LCD.c: 350: if(_DispSeg.u32Bits.Bit3){DispBuf[27]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),3
	goto	u8051
	goto	u8050
u8051:
	goto	l2422
u8050:
	
l14507:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+01Bh+(7/8),(7)&7
	
l2422:	
	line	351
;DK_LCD.c: 351: if(_DispSeg.u32Bits.Bit4){DispBuf[26]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),4
	goto	u8061
	goto	u8060
u8061:
	goto	l2423
u8060:
	
l14509:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+01Ah+(7/8),(7)&7
	
l2423:	
	line	352
;DK_LCD.c: 352: if(_DispSeg.u32Bits.Bit5){DispBuf[25]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),5
	goto	u8071
	goto	u8070
u8071:
	goto	l2424
u8070:
	
l14511:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+019h+(7/8),(7)&7
	
l2424:	
	line	353
;DK_LCD.c: 353: if(_DispSeg.u32Bits.Bit6){DispBuf[24]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),6
	goto	u8081
	goto	u8080
u8081:
	goto	l2425
u8080:
	
l14513:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+018h+(7/8),(7)&7
	
l2425:	
	line	354
;DK_LCD.c: 354: if(_DispSeg.u32Bits.Bit7){DispBuf[20]|=0x80;}
	movlb 0	; select bank0
	btfss	(__DispSeg),7
	goto	u8091
	goto	u8090
u8091:
	goto	l2426
u8090:
	
l14515:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+014h+(7/8),(7)&7
	
l2426:	
	line	355
;DK_LCD.c: 355: if(_DispSeg.u32Bits.Bit8){DispBuf[19]|=0x80;} else{DispBuf[19]&=0x7F;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,0
	goto	u8101
	goto	u8100
u8101:
	goto	l2427
u8100:
	
l14517:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+013h+(7/8),(7)&7
	goto	l2428
	
l2427:	
	movlb 1	; select bank1
	bcf	0+(_DispBuf)^080h+013h+(7/8),(7)&7
	
l2428:	
	line	356
;DK_LCD.c: 356: if(_DispSeg.u32Bits.Bit9){DispBuf[19]|=0x01;} else{DispBuf[19]&=0xFE;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,1
	goto	u8111
	goto	u8110
u8111:
	goto	l2429
u8110:
	
l14519:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+013h+(0/8),(0)&7
	goto	l2430
	
l2429:	
	movlb 1	; select bank1
	bcf	0+(_DispBuf)^080h+013h+(0/8),(0)&7
	
l2430:	
	line	357
;DK_LCD.c: 357: if(_DispSeg.u32Bits.Bit10){DispBuf[16]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,2
	goto	u8121
	goto	u8120
u8121:
	goto	l2431
u8120:
	
l14521:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+010h+(7/8),(7)&7
	
l2431:	
	line	358
;DK_LCD.c: 358: if(_DispSeg.u32Bits.Bit11){DispBuf[23]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,3
	goto	u8131
	goto	u8130
u8131:
	goto	l2432
u8130:
	
l14523:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+017h+(7/8),(7)&7
	
l2432:	
	line	359
;DK_LCD.c: 359: if(_DispSeg.u32Bits.Bit12){DispBuf[22]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,4
	goto	u8141
	goto	u8140
u8141:
	goto	l2433
u8140:
	
l14525:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+016h+(7/8),(7)&7
	
l2433:	
	line	360
;DK_LCD.c: 360: if(_DispSeg.u32Bits.Bit13){DispBuf[21]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,5
	goto	u8151
	goto	u8150
u8151:
	goto	l2434
u8150:
	
l14527:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+015h+(7/8),(7)&7
	
l2434:	
	line	361
;DK_LCD.c: 361: if(_DispSeg.u32Bits.Bit14){DispBuf[19]|=0x02;} else{DispBuf[19]&=0xFD;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,6
	goto	u8161
	goto	u8160
u8161:
	goto	l2435
u8160:
	
l14529:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+013h+(1/8),(1)&7
	goto	l2436
	
l2435:	
	movlb 1	; select bank1
	bcf	0+(_DispBuf)^080h+013h+(1/8),(1)&7
	
l2436:	
	line	362
;DK_LCD.c: 362: if(_DispSeg.u32Bits.Bit15){DispBuf[13]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+01h,7
	goto	u8171
	goto	u8170
u8171:
	goto	l2437
u8170:
	
l14531:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+0Dh+(7/8),(7)&7
	
l2437:	
	line	363
;DK_LCD.c: 363: if(_DispSeg.u32Bits.Bit16){DispBuf[4]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,0
	goto	u8181
	goto	u8180
u8181:
	goto	l2438
u8180:
	
l14533:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+04h+(7/8),(7)&7
	
l2438:	
	line	364
;DK_LCD.c: 364: if(_DispSeg.u32Bits.Bit17){DispBuf[7]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,1
	goto	u8191
	goto	u8190
u8191:
	goto	l2439
u8190:
	
l14535:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+07h+(7/8),(7)&7
	
l2439:	
	line	365
;DK_LCD.c: 365: if(_DispSeg.u32Bits.Bit18){DispBuf[10]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,2
	goto	u8201
	goto	u8200
u8201:
	goto	l2440
u8200:
	
l14537:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+0Ah+(7/8),(7)&7
	
l2440:	
	line	366
;DK_LCD.c: 366: if(_DispSeg.u32Bits.Bit19){DispBuf[12]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,3
	goto	u8211
	goto	u8210
u8211:
	goto	l2441
u8210:
	
l14539:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+0Ch+(7/8),(7)&7
	
l2441:	
	line	367
;DK_LCD.c: 367: if(_DispSeg.u32Bits.Bit20){DispBuf[1]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,4
	goto	u8221
	goto	u8220
u8221:
	goto	l2442
u8220:
	
l14541:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+01h+(7/8),(7)&7
	
l2442:	
	line	368
;DK_LCD.c: 368: if(_DispSeg.u32Bits.Bit21){DispBuf[18]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,5
	goto	u8231
	goto	u8230
u8231:
	goto	l2443
u8230:
	
l14543:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+012h+(7/8),(7)&7
	
l2443:	
	line	369
;DK_LCD.c: 369: if(_DispSeg.u32Bits.Bit22){DispBuf[2]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,6
	goto	u8241
	goto	u8240
u8241:
	goto	l2444
u8240:
	
l14545:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+02h+(7/8),(7)&7
	
l2444:	
	line	370
;DK_LCD.c: 370: if(_DispSeg.u32Bits.Bit23){DispBuf[11]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+02h,7
	goto	u8251
	goto	u8250
u8251:
	goto	l2445
u8250:
	
l14547:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+0Bh+(7/8),(7)&7
	
l2445:	
	line	371
;DK_LCD.c: 371: if(_DispSeg.u32Bits.Bit24){DispBuf[6]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+03h,0
	goto	u8261
	goto	u8260
u8261:
	goto	l2446
u8260:
	
l14549:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+06h+(7/8),(7)&7
	
l2446:	
	line	372
;DK_LCD.c: 372: if(_DispSeg.u32Bits.Bit25){DispBuf[9]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+03h,1
	goto	u8271
	goto	u8270
u8271:
	goto	l2447
u8270:
	
l14551:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+09h+(7/8),(7)&7
	
l2447:	
	line	373
;DK_LCD.c: 373: if(_DispSeg.u32Bits.Bit26){DispBuf[15]|=0x80;}
	movlb 0	; select bank0
	btfss	0+(__DispSeg)+03h,2
	goto	u8281
	goto	u8280
u8281:
	goto	l2449
u8280:
	
l14553:	
	movlb 1	; select bank1
	bsf	0+(_DispBuf)^080h+0Fh+(7/8),(7)&7
	line	374
	
l2449:	
	return
	opt stack 0
GLOBAL	__end_of_SendSegDataToDispBuf
	__end_of_SendSegDataToDispBuf:
;; =============== function _SendSegDataToDispBuf ends ============

	signat	_SendSegDataToDispBuf,88
	global	_AsciiToDisplay
psect	text2217,local,class=CODE,delta=2
global __ptext2217
__ptext2217:

;; *************** function _AsciiToDisplay *****************
;; Defined at:
;;		line 182 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;  Letter          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Letter          1    3[COMMON] unsigned char 
;;  DispData        1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, pclath
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1C/0
;;		Unchanged: FFFE3/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendStringToDispBuf
;;		_SendNumberToDispBuf
;; This function uses a non-reentrant model
;;
psect	text2217
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	182
	global	__size_of_AsciiToDisplay
	__size_of_AsciiToDisplay	equ	__end_of_AsciiToDisplay-_AsciiToDisplay
	
_AsciiToDisplay:	
	opt	stack 10
; Regs used in _AsciiToDisplay: [wreg-fsr0h+pclath]
;AsciiToDisplay@Letter stored from wreg
	line	184
	movwf	(AsciiToDisplay@Letter)
	
l14469:	
;DK_LCD.c: 183: u8 DispData;
;DK_LCD.c: 184: if(Letter>=0x30 && Letter<=0x39){DispData=LCDDigTable[Letter-0x30];}
	movlw	(030h)
	subwf	(AsciiToDisplay@Letter),w
	skipc
	goto	u7941
	goto	u7940
u7941:
	goto	l14475
u7940:
	
l14471:	
	movlw	(03Ah)
	subwf	(AsciiToDisplay@Letter),w
	skipnc
	goto	u7951
	goto	u7950
u7951:
	goto	l14475
u7950:
	
l14473:	
	movf	(AsciiToDisplay@Letter),w
	addlw	low(_LCDDigTable|8000h+0FFD0h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+0FFD0h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(AsciiToDisplay@DispData)
	line	185
	
l14475:	
;DK_LCD.c: 185: if(Letter>=0x41 && Letter<=0x5A){DispData=LCDDigTable[Letter-0x41+10];}
	movlw	(041h)
	subwf	(AsciiToDisplay@Letter),w
	skipc
	goto	u7961
	goto	u7960
u7961:
	goto	l14481
u7960:
	
l14477:	
	movlw	(05Bh)
	subwf	(AsciiToDisplay@Letter),w
	skipnc
	goto	u7971
	goto	u7970
u7971:
	goto	l14481
u7970:
	
l14479:	
	movf	(AsciiToDisplay@Letter),w
	addlw	low(_LCDDigTable|8000h+0FFC9h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+0FFC9h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(AsciiToDisplay@DispData)
	line	186
	
l14481:	
;DK_LCD.c: 186: if(Letter>=0x61 && Letter<=0x7A){DispData=LCDDigTable[Letter-0x61+10];}
	movlw	(061h)
	subwf	(AsciiToDisplay@Letter),w
	skipc
	goto	u7981
	goto	u7980
u7981:
	goto	l14487
u7980:
	
l14483:	
	movlw	(07Bh)
	subwf	(AsciiToDisplay@Letter),w
	skipnc
	goto	u7991
	goto	u7990
u7991:
	goto	l14487
u7990:
	
l14485:	
	movf	(AsciiToDisplay@Letter),w
	addlw	low(_LCDDigTable|8000h+0FFA9h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+0FFA9h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(AsciiToDisplay@DispData)
	line	187
	
l14487:	
;DK_LCD.c: 187: if(Letter==0x20){DispData=LCDDigTable[36];}
	movf	(AsciiToDisplay@Letter),w
	xorlw	020h&0ffh
	skipz
	goto	u8001
	goto	u8000
u8001:
	goto	l14491
u8000:
	
l14489:	
	movlw	low(_LCDDigTable|8000h+024h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+024h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(AsciiToDisplay@DispData)
	line	188
	
l14491:	
;DK_LCD.c: 188: if(Letter==0x2D){DispData=LCDDigTable[37];}
	movf	(AsciiToDisplay@Letter),w
	xorlw	02Dh&0ffh
	skipz
	goto	u8011
	goto	u8010
u8011:
	goto	l14495
u8010:
	
l14493:	
	movlw	low(_LCDDigTable|8000h+025h)
	movwf	fsr0l
	movlw	high(_LCDDigTable|8000h+025h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(AsciiToDisplay@DispData)
	line	190
	
l14495:	
;DK_LCD.c: 190: return DispData;
	movf	(AsciiToDisplay@DispData),w
	line	191
	
l2358:	
	return
	opt stack 0
GLOBAL	__end_of_AsciiToDisplay
	__end_of_AsciiToDisplay:
;; =============== function _AsciiToDisplay ends ============

	signat	_AsciiToDisplay,4217
	global	_CK1622_WriteCmd
psect	text2218,local,class=CODE,delta=2
global __ptext2218
__ptext2218:

;; *************** function _CK1622_WriteCmd *****************
;; Defined at:
;;		line 114 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;;  temp            2    3[COMMON] unsigned int 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text2218
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	114
	global	__size_of_CK1622_WriteCmd
	__size_of_CK1622_WriteCmd	equ	__end_of_CK1622_WriteCmd-_CK1622_WriteCmd
	
_CK1622_WriteCmd:	
	opt	stack 12
; Regs used in _CK1622_WriteCmd: [wreg+status,2+status,0]
;CK1622_WriteCmd@cmd stored from wreg
	line	116
	movwf	(CK1622_WriteCmd@cmd)
	
l14449:	
;DK_LCD.c: 115: u8 i;
;DK_LCD.c: 116: u16 temp=cmd;
	movf	(CK1622_WriteCmd@cmd),w
	movwf	(CK1622_WriteCmd@temp)
	clrf	(CK1622_WriteCmd@temp+1)
	line	117
	
l14451:	
;DK_LCD.c: 117: TRISE2=0,RE2=0;
	bcf	(1154/8)^080h,(1154)&7
	
l14453:	
	movlb 0	; select bank0
	bcf	(130/8),(130)&7
	line	118
	
l14455:	
;DK_LCD.c: 118: TRISE1=1;
	movlb 1	; select bank1
	bsf	(1153/8)^080h,(1153)&7
	line	119
	
l14457:	
;DK_LCD.c: 119: temp|=0x400;
	bsf	(CK1622_WriteCmd@temp)+(10/8),(10)&7
	line	120
	
l14459:	
;DK_LCD.c: 120: temp<<=1;
	lslf	(CK1622_WriteCmd@temp),f
	rlf	(CK1622_WriteCmd@temp+1),f
	line	122
	
l14461:	
;DK_LCD.c: 122: for(i=12; i!=0; i--)
	movlw	(0Ch)
	movwf	(CK1622_WriteCmd@i)
	line	123
	
l2338:	
	line	124
;DK_LCD.c: 123: {
;DK_LCD.c: 124: TRISE0=0,RE0=0;
	bcf	(1152/8)^080h,(1152)&7
	movlb 0	; select bank0
	bcf	(128/8),(128)&7
	line	125
;DK_LCD.c: 125: if(temp&0x800)
	btfss	(CK1622_WriteCmd@temp+1),(11)&7
	goto	u7921
	goto	u7920
u7921:
	goto	l2340
u7920:
	line	126
	
l14465:	
;DK_LCD.c: 126: TRISA5=1;
	movlb 1	; select bank1
	bsf	(1125/8)^080h,(1125)&7
	goto	l2341
	line	127
	
l2340:	
	line	128
;DK_LCD.c: 127: else
;DK_LCD.c: 128: TRISA5=0,RA5=0;
	movlb 1	; select bank1
	bcf	(1125/8)^080h,(1125)&7
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	
l2341:	
	line	129
;DK_LCD.c: 129: TRISE0=1;
	movlb 1	; select bank1
	bsf	(1152/8)^080h,(1152)&7
	line	130
	
l14467:	
;DK_LCD.c: 130: temp <<= 1;
	lslf	(CK1622_WriteCmd@temp),f
	rlf	(CK1622_WriteCmd@temp+1),f
	line	122
	decf	(CK1622_WriteCmd@i),f
	movf	(CK1622_WriteCmd@i),f
	skipz
	goto	u7931
	goto	u7930
u7931:
	goto	l2338
u7930:
	
l2339:	
	line	132
;DK_LCD.c: 131: }
;DK_LCD.c: 132: TRISE0=0,RE0=0;
	bcf	(1152/8)^080h,(1152)&7
	movlb 0	; select bank0
	bcf	(128/8),(128)&7
	line	133
;DK_LCD.c: 133: TRISA5=1;
	movlb 1	; select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	134
;DK_LCD.c: 134: TRISE2=1;
	bsf	(1154/8)^080h,(1154)&7
	line	135
	
l2342:	
	return
	opt stack 0
GLOBAL	__end_of_CK1622_WriteCmd
	__end_of_CK1622_WriteCmd:
;; =============== function _CK1622_WriteCmd ends ============

	signat	_CK1622_WriteCmd,4216
	global	_CK1622_WriteByte
psect	text2219,local,class=CODE,delta=2
global __ptext2219
__ptext2219:

;; *************** function _CK1622_WriteByte *****************
;; Defined at:
;;		line 30 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  dat             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[COMMON] unsigned char 
;;  temp            2    4[COMMON] unsigned int 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Clr_LCD
;;		_LCD_Display
;; This function uses a non-reentrant model
;;
psect	text2219
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_LCD.c"
	line	30
	global	__size_of_CK1622_WriteByte
	__size_of_CK1622_WriteByte	equ	__end_of_CK1622_WriteByte-_CK1622_WriteByte
	
_CK1622_WriteByte:	
	opt	stack 11
; Regs used in _CK1622_WriteByte: [wreg+status,2+status,0]
;CK1622_WriteByte@addr stored from wreg
	line	32
	movwf	(CK1622_WriteByte@addr)
	
l14423:	
;DK_LCD.c: 31: u8 i;
;DK_LCD.c: 32: u16 temp=addr;
	movf	(CK1622_WriteByte@addr),w
	movwf	(CK1622_WriteByte@temp)
	clrf	(CK1622_WriteByte@temp+1)
	line	33
	
l14425:	
;DK_LCD.c: 33: TRISE2=0,RE2=0;
	movlb 1	; select bank1
	bcf	(1154/8)^080h,(1154)&7
	
l14427:	
	movlb 0	; select bank0
	bcf	(130/8),(130)&7
	line	34
	
l14429:	
;DK_LCD.c: 34: TRISE1=1;
	movlb 1	; select bank1
	bsf	(1153/8)^080h,(1153)&7
	line	35
;DK_LCD.c: 35: temp|=0x140;
	movlw	low(0140h)
	iorwf	(CK1622_WriteByte@temp),f
	movlw	high(0140h)
	iorwf	(CK1622_WriteByte@temp+1),f
	line	37
;DK_LCD.c: 37: for(i=9; i!=0; i--)
	movlw	(09h)
	movwf	(CK1622_WriteByte@i)
	line	38
	
l2313:	
	line	39
;DK_LCD.c: 38: {
;DK_LCD.c: 39: TRISE0=0,RE0=0;
	bcf	(1152/8)^080h,(1152)&7
	movlb 0	; select bank0
	bcf	(128/8),(128)&7
	line	40
;DK_LCD.c: 40: if(temp&0x100)
	btfss	(CK1622_WriteByte@temp+1),(8)&7
	goto	u7881
	goto	u7880
u7881:
	goto	l2315
u7880:
	line	41
	
l14435:	
;DK_LCD.c: 41: TRISA5=1;
	movlb 1	; select bank1
	bsf	(1125/8)^080h,(1125)&7
	goto	l2316
	line	42
	
l2315:	
	line	43
;DK_LCD.c: 42: else
;DK_LCD.c: 43: TRISA5=0,RA5=0;
	movlb 1	; select bank1
	bcf	(1125/8)^080h,(1125)&7
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	
l2316:	
	line	44
;DK_LCD.c: 44: TRISE0=1;
	movlb 1	; select bank1
	bsf	(1152/8)^080h,(1152)&7
	line	45
	
l14437:	
;DK_LCD.c: 45: temp <<= 1;
	lslf	(CK1622_WriteByte@temp),f
	rlf	(CK1622_WriteByte@temp+1),f
	line	37
	decf	(CK1622_WriteByte@i),f
	movf	(CK1622_WriteByte@i),f
	skipz
	goto	u7891
	goto	u7890
u7891:
	goto	l2313
u7890:
	line	47
	
l14439:	
;DK_LCD.c: 46: }
;DK_LCD.c: 47: for(i=8; i!=0; i--)
	movlw	(08h)
	movwf	(CK1622_WriteByte@i)
	line	48
	
l2317:	
	line	49
;DK_LCD.c: 48: {
;DK_LCD.c: 49: TRISE0=0,RE0=0;
	bcf	(1152/8)^080h,(1152)&7
	movlb 0	; select bank0
	bcf	(128/8),(128)&7
	line	50
;DK_LCD.c: 50: if(dat&0x01)
	btfss	(CK1622_WriteByte@dat),(0)&7
	goto	u7901
	goto	u7900
u7901:
	goto	l2319
u7900:
	line	51
	
l14445:	
;DK_LCD.c: 51: TRISA5=1;
	movlb 1	; select bank1
	bsf	(1125/8)^080h,(1125)&7
	goto	l2320
	line	52
	
l2319:	
	line	53
;DK_LCD.c: 52: else
;DK_LCD.c: 53: TRISA5=0,RA5=0;
	movlb 1	; select bank1
	bcf	(1125/8)^080h,(1125)&7
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	
l2320:	
	line	54
;DK_LCD.c: 54: TRISE0=1;
	movlb 1	; select bank1
	bsf	(1152/8)^080h,(1152)&7
	line	55
;DK_LCD.c: 55: dat >>= 1;
	lsrf	(CK1622_WriteByte@dat),f
	line	47
	
l14447:	
	decf	(CK1622_WriteByte@i),f
	movf	(CK1622_WriteByte@i),f
	skipz
	goto	u7911
	goto	u7910
u7911:
	goto	l2317
u7910:
	
l2318:	
	line	57
;DK_LCD.c: 56: }
;DK_LCD.c: 57: TRISE0=0,RE0=0;
	bcf	(1152/8)^080h,(1152)&7
	movlb 0	; select bank0
	bcf	(128/8),(128)&7
	line	58
;DK_LCD.c: 58: TRISA5=1;
	movlb 1	; select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	59
;DK_LCD.c: 59: TRISE2=1;
	bsf	(1154/8)^080h,(1154)&7
	line	60
	
l2321:	
	return
	opt stack 0
GLOBAL	__end_of_CK1622_WriteByte
	__end_of_CK1622_WriteByte:
;; =============== function _CK1622_WriteByte ends ============

	signat	_CK1622_WriteByte,8312
	global	_FlashUnlock
psect	text2220,local,class=CODE,delta=2
global __ptext2220
__ptext2220:

;; *************** function _FlashUnlock *****************
;; Defined at:
;;		line 47 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/3
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FlashErase
;;		_FlashWrite
;; This function uses a non-reentrant model
;;
psect	text2220
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
	line	47
	global	__size_of_FlashUnlock
	__size_of_FlashUnlock	equ	__end_of_FlashUnlock-_FlashUnlock
	
_FlashUnlock:	
	opt	stack 9
; Regs used in _FlashUnlock: [wreg]
	line	48
	
l14415:	
;DK_Flash.c: 48: PMCON2 = 0x55;
	movlw	(055h)
	movwf	(406)^0180h	;volatile
	line	49
;DK_Flash.c: 49: PMCON2 = 0xAA;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	50
	
l14417:	
;DK_Flash.c: 50: WR = 1;
	bsf	(3241/8)^0180h,(3241)&7
	line	51
	
l14419:	
# 51 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
psect	text2220
	line	52
	
l14421:	
# 52 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
psect	text2220
	line	53
	
l1148:	
	return
	opt stack 0
GLOBAL	__end_of_FlashUnlock
	__end_of_FlashUnlock:
;; =============== function _FlashUnlock ends ============

	signat	_FlashUnlock,88
	global	_FlashRead
psect	text2221,local,class=CODE,delta=2
global __ptext2221
__ptext2221:

;; *************** function _FlashRead *****************
;; Defined at:
;;		line 23 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
;; Parameters:    Size  Location     Type
;;  FlashAdr        4    2[COMMON] unsigned long 
;;  array           1    6[COMMON] PTR unsigned char 
;;		 -> gb_RxData(32), 
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/3
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ModuleSelectModeEntryCheck
;; This function uses a non-reentrant model
;;
psect	text2221
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
	line	23
	global	__size_of_FlashRead
	__size_of_FlashRead	equ	__end_of_FlashRead-_FlashRead
	
_FlashRead:	
	opt	stack 12
; Regs used in _FlashRead: [wreg+fsr1l-status,0]
	line	26
	
l14397:	
;DK_Flash.c: 24: u8 i;
;DK_Flash.c: 26: CFGS = 0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7
	line	27
	
l14399:	
;DK_Flash.c: 27: PMADR = FlashAdr;
	movf	(FlashRead@FlashAdr+1),w
	movwf	(401+1)^0180h	;volatile
	movf	(FlashRead@FlashAdr),w
	movwf	(401)^0180h	;volatile
	line	29
	
l14401:	
;DK_Flash.c: 29: for(i=0; i<32; i++)
	clrf	(FlashRead@i)
	line	30
	
l1143:	
	line	31
;DK_Flash.c: 30: {
;DK_Flash.c: 31: RD = 1;
	bsf	(3240/8)^0180h,(3240)&7
	line	32
# 32 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
	line	33
# 33 "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_Flash.c"
NOP ;#
psect	text2221
	line	34
	
l14407:	
;DK_Flash.c: 34: array[i] = (u8)(PMDAT&0x00FF);
	movf	(FlashRead@i),w
	addwf	(FlashRead@array),w
	movwf	(??_FlashRead+0)+0
	movf	0+(??_FlashRead+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movwf	indf1
	line	35
	
l14409:	
;DK_Flash.c: 35: PMADR++;
	incf	(401)^0180h,f	;volatile
	skipnz
	incf	(401+1)^0180h,f	;volatile
	line	29
	
l14411:	
	incf	(FlashRead@i),f
	
l14413:	
	movlw	(020h)
	subwf	(FlashRead@i),w
	skipc
	goto	u7871
	goto	u7870
u7871:
	goto	l1143
u7870:
	
l1144:	
	line	37
;DK_Flash.c: 36: }
;DK_Flash.c: 37: RD = 0;
	bcf	(3240/8)^0180h,(3240)&7
	line	38
	
l1145:	
	return
	opt stack 0
GLOBAL	__end_of_FlashRead
	__end_of_FlashRead:
;; =============== function _FlashRead ends ============

	signat	_FlashRead,8312
	global	_ISR_timer
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR_timer *****************
;; Defined at:
;;		line 210 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_BeepOff
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\main.c"
	line	210
	global	__size_of_ISR_timer
	__size_of_ISR_timer	equ	__end_of_ISR_timer-_ISR_timer
	
_ISR_timer:	
	opt	stack 9
; Regs used in _ISR_timer: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	212
	
i1l12207:	
;main.c: 212: if(TMR2IF)
	movlb 0	; select bank0
	btfss	(137/8),(137)&7
	goto	u505_21
	goto	u505_20
u505_21:
	goto	i1l7930
u505_20:
	line	215
	
i1l12209:	
;main.c: 213: {
;main.c: 215: if(gw_KeyDebounceTimer){gw_KeyDebounceTimer--;}
	movf	(_gw_KeyDebounceTimer+1),w
	iorwf	(_gw_KeyDebounceTimer),w
	skipnz
	goto	u506_21
	goto	u506_20
u506_21:
	goto	i1l7931
u506_20:
	
i1l12211:	
	movlw	low(01h)
	subwf	(_gw_KeyDebounceTimer),f
	movlw	high(01h)
	subwfb	(_gw_KeyDebounceTimer+1),f
	
i1l7931:	
	line	216
;main.c: 216: if(gw_TxLedTimer){gw_TxLedTimer--;}
	movf	(_gw_TxLedTimer+1),w
	iorwf	(_gw_TxLedTimer),w
	skipnz
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l12215
u507_20:
	
i1l12213:	
	movlw	low(01h)
	subwf	(_gw_TxLedTimer),f
	movlw	high(01h)
	subwfb	(_gw_TxLedTimer+1),f
	line	218
	
i1l12215:	
;main.c: 218: gw_LCDFlashTimer++;
	movlb 1	; select bank1
	incf	(_gw_LCDFlashTimer)^080h,f
	skipnz
	incf	(_gw_LCDFlashTimer+1)^080h,f
	line	219
	
i1l12217:	
;main.c: 219: if(gw_LCDFlashTimer>=300)
	movlw	high(012Ch)
	subwf	(_gw_LCDFlashTimer+1)^080h,w
	movlw	low(012Ch)
	skipnz
	subwf	(_gw_LCDFlashTimer)^080h,w
	skipc
	goto	u508_21
	goto	u508_20
u508_21:
	goto	i1l12223
u508_20:
	line	221
	
i1l12219:	
;main.c: 220: {
;main.c: 221: gw_LCDFlashTimer=0;
	clrf	(_gw_LCDFlashTimer)^080h
	clrf	(_gw_LCDFlashTimer+1)^080h
	line	222
	
i1l12221:	
;main.c: 222: gb_DispFlashEnableFlag^=1;
	movlw	(01h)
	movlb 0	; select bank0
	xorwf	(_gb_DispFlashEnableFlag),f
	line	225
	
i1l12223:	
;main.c: 223: }
;main.c: 225: if(gw_TxTimer){gw_TxTimer--;}
	movlb 0	; select bank0
	movf	(_gw_TxTimer+1),w
	iorwf	(_gw_TxTimer),w
	skipnz
	goto	u509_21
	goto	u509_20
u509_21:
	goto	i1l12227
u509_20:
	
i1l12225:	
	movlw	low(01h)
	subwf	(_gw_TxTimer),f
	movlw	high(01h)
	subwfb	(_gw_TxTimer+1),f
	line	227
	
i1l12227:	
;main.c: 227: gw_TimerCount++;
	movlb 1	; select bank1
	incf	(_gw_TimerCount)^080h,f
	skipnz
	incf	(_gw_TimerCount+1)^080h,f
	line	228
	
i1l12229:	
;main.c: 228: if(gw_TimerCount>=1000)
	movlw	high(03E8h)
	subwf	(_gw_TimerCount+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_gw_TimerCount)^080h,w
	skipc
	goto	u510_21
	goto	u510_20
u510_21:
	goto	i1l12237
u510_20:
	line	230
	
i1l12231:	
;main.c: 229: {
;main.c: 230: gw_TimerCount=0;
	clrf	(_gw_TimerCount)^080h
	clrf	(_gw_TimerCount+1)^080h
	line	232
	
i1l12233:	
;main.c: 232: if(gb_SysTimer_1S){gb_SysTimer_1S--;}
	movlb 0	; select bank0
	movf	(_gb_SysTimer_1S),w
	skipz
	goto	u511_20
	goto	i1l12237
u511_20:
	
i1l12235:	
	decf	(_gb_SysTimer_1S),f
	line	237
	
i1l12237:	
;main.c: 233: }
;main.c: 237: if(gw_BeepTimer){gw_BeepTimer--;}
	movlb 0	; select bank0
	movf	(_gw_BeepTimer+1),w
	iorwf	(_gw_BeepTimer),w
	skipnz
	goto	u512_21
	goto	u512_20
u512_21:
	goto	i1l7937
u512_20:
	
i1l12239:	
	movlw	low(01h)
	subwf	(_gw_BeepTimer),f
	movlw	high(01h)
	subwfb	(_gw_BeepTimer+1),f
	
i1l7937:	
	line	238
;main.c: 238: if((gb_BeepOnFlag==1)&&(gw_BeepTimer==0))
	decf	(_gb_BeepOnFlag),w
	skipz
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l12251
u513_20:
	
i1l12241:	
	movf	((_gw_BeepTimer+1)),w
	iorwf	((_gw_BeepTimer)),w
	skipz
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l12251
u514_20:
	line	240
	
i1l12243:	
;main.c: 239: {
;main.c: 240: if(gw_ToneBuf[gb_BeepOnCount+1]!=0)
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	moviw	fsr1++
	iorwf	indf1,w
	skipnz
	goto	u515_21
	goto	u515_20
u515_21:
	goto	i1l12249
u515_20:
	line	242
	
i1l12245:	
;main.c: 241: {
;main.c: 242: gb_BeepTimerH = (gw_ToneBuf[gb_BeepOnCount]>>8) & 0xff;
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_ISR_timer+0)+0
	moviw	[1]fsr1
	movwf	(??_ISR_timer+0)+0+1
	movf	1+(??_ISR_timer+0)+0,w
	movwf	(_gb_BeepTimerH)
	line	243
;main.c: 243: gb_BeepTimerL = gw_ToneBuf[gb_BeepOnCount] & 0xff;
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(_gb_BeepTimerL)
	line	244
;main.c: 244: gw_BeepTimer=gw_ToneBuf[gb_BeepOnCount+1];
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(_gw_BeepTimer)
	moviw	[1]fsr1
	movwf	(_gw_BeepTimer+1)
	line	245
;main.c: 245: gw_ToneBuf[gb_BeepOnCount]=0;
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	246
;main.c: 246: gw_ToneBuf[gb_BeepOnCount+1]=0;
	lslf	(_gb_BeepOnCount),w
	addlw	_gw_ToneBuf+02h&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	247
	
i1l12247:	
;main.c: 247: gb_BeepOnCount+=2;
	incf	(_gb_BeepOnCount),f
	incf	(_gb_BeepOnCount),f
	line	248
;main.c: 248: }
	goto	i1l12251
	line	251
	
i1l12249:	
;main.c: 249: else
;main.c: 250: {
;main.c: 251: BeepOff();
	fcall	i1_BeepOff
	line	254
	
i1l12251:	
;main.c: 252: }
;main.c: 253: }
;main.c: 254: if(gb_BeepOnFlag==0)
	movf	(_gb_BeepOnFlag),f
	skipz
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l7941
u516_20:
	line	256
	
i1l12253:	
;main.c: 255: {
;main.c: 256: TMR1ON = 0;
	bcf	(192/8),(192)&7
	line	257
;main.c: 257: RC2=0;
	bcf	(114/8),(114)&7
	line	258
	
i1l7941:	
	line	259
;main.c: 258: }
;main.c: 259: TMR2IF = 0;
	bcf	(137/8),(137)&7
	line	260
	
i1l7930:	
	line	263
;main.c: 260: }
;main.c: 263: if(TMR1IF)
	btfss	(136/8),(136)&7
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l7943
u517_20:
	line	265
	
i1l12255:	
;main.c: 264: {
;main.c: 265: RC2^=1;
	movlw	1<<((114)&7)
	xorwf	((114)/8),f
	line	266
;main.c: 266: TMR1H = gb_BeepTimerH;
	movf	(_gb_BeepTimerH),w
	movwf	(23)	;volatile
	line	267
;main.c: 267: TMR1L = gb_BeepTimerL;
	movf	(_gb_BeepTimerL),w
	movwf	(22)	;volatile
	line	268
	
i1l12257:	
;main.c: 268: TMR1IF =0 ;
	bcf	(136/8),(136)&7
	line	270
	
i1l7943:	
	retfie
	opt stack 0
GLOBAL	__end_of_ISR_timer
	__end_of_ISR_timer:
;; =============== function _ISR_timer ends ============

	signat	_ISR_timer,88
	global	i1_BeepOff
psect	text2223,local,class=CODE,delta=2
global __ptext2223
__ptext2223:

;; *************** function i1_BeepOff *****************
;; Defined at:
;;		line 964 in file "E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR_timer
;; This function uses a non-reentrant model
;;
psect	text2223
	file	"E:\NewDemo\RFDK_PIC16_LCD_V2.0-V2.1\Code\RFDK_PIC16_LCD_DEMO_V2.1\substantive\RFDK_RFM98_V2.1\Source\DK_PIC16_App.c"
	line	964
	global	__size_ofi1_BeepOff
	__size_ofi1_BeepOff	equ	__end_ofi1_BeepOff-i1_BeepOff
	
i1_BeepOff:	
	opt	stack 9
; Regs used in i1_BeepOff: [status,2]
	line	965
	
i1l12337:	
;DK_PIC16_App.c: 965: TMR1ON = 0;
	bcf	(192/8),(192)&7
	line	966
	
i1l12339:	
;DK_PIC16_App.c: 966: gb_BeepOnFlag = 0;
	clrf	(_gb_BeepOnFlag)
	line	967
;DK_PIC16_App.c: 967: gb_BeepOnCount=0;
	clrf	(_gb_BeepOnCount)
	line	968
;DK_PIC16_App.c: 968: gw_BeepTimer=0;
	clrf	(_gw_BeepTimer)
	clrf	(_gw_BeepTimer+1)
	line	969
	
i1l12341:	
;DK_PIC16_App.c: 969: RC2=0;
	bcf	(114/8),(114)&7
	line	970
	
i1l4090:	
	return
	opt stack 0
GLOBAL	__end_ofi1_BeepOff
	__end_ofi1_BeepOff:
;; =============== function i1_BeepOff ends ============

	signat	i1_BeepOff,88
psect	text2224,local,class=CODE,delta=2
global __ptext2224
__ptext2224:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

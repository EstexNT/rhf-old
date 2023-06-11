.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80115C60
func_80115C60:
/* 80115C60 00111580  3C 60 80 37 */	lis r3, lbl_8036A310@ha
/* 80115C64 00111584  38 00 00 00 */	li r0, 0
/* 80115C68 00111588  38 83 A3 10 */	addi r4, r3, lbl_8036A310@l
/* 80115C6C 0011158C  90 03 A3 10 */	stw r0, lbl_8036A310@l(r3)
/* 80115C70 00111590  38 60 00 00 */	li r3, 0
/* 80115C74 00111594  90 04 08 8C */	stw r0, 0x88c(r4)
/* 80115C78 00111598  90 04 11 18 */	stw r0, 0x1118(r4)
/* 80115C7C 0011159C  4E 80 00 20 */	blr 

.global func_80115C80
func_80115C80:
/* 80115C80 001115A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115C84 001115A4  7C 08 02 A6 */	mflr r0
/* 80115C88 001115A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115C8C 001115AC  38 00 00 00 */	li r0, 0
/* 80115C90 001115B0  BF 41 00 08 */	stmw r26, 8(r1)
/* 80115C94 001115B4  7C 7A 1B 78 */	mr r26, r3
/* 80115C98 001115B8  7C 9B 23 78 */	mr r27, r4
/* 80115C9C 001115BC  3B C0 03 00 */	li r30, 0x300
/* 80115CA0 001115C0  3B A0 00 00 */	li r29, 0
/* 80115CA4 001115C4  3B E0 00 01 */	li r31, 1
/* 80115CA8 001115C8  90 04 00 00 */	stw r0, 0(r4)
/* 80115CAC 001115CC  48 00 00 3C */	b lbl_80115CE8
lbl_80115CB0:
/* 80115CB0 001115D0  7F A3 EB 78 */	mr r3, r29
/* 80115CB4 001115D4  48 00 00 69 */	bl func_80115D1C
/* 80115CB8 001115D8  80 03 00 00 */	lwz r0, 0(r3)
/* 80115CBC 001115DC  7C 7C 1B 78 */	mr r28, r3
/* 80115CC0 001115E0  2C 00 00 00 */	cmpwi r0, 0
/* 80115CC4 001115E4  40 82 00 20 */	bne lbl_80115CE4
/* 80115CC8 001115E8  38 80 00 01 */	li r4, 1
/* 80115CCC 001115EC  48 00 00 9D */	bl func_80115D68
/* 80115CD0 001115F0  93 FC 00 00 */	stw r31, 0(r28)
/* 80115CD4 001115F4  3B C0 00 00 */	li r30, 0
/* 80115CD8 001115F8  93 9B 00 00 */	stw r28, 0(r27)
/* 80115CDC 001115FC  93 BA 00 00 */	stw r29, 0(r26)
/* 80115CE0 00111600  3B A0 00 03 */	li r29, 3
lbl_80115CE4:
/* 80115CE4 00111604  3B BD 00 01 */	addi r29, r29, 1
lbl_80115CE8:
/* 80115CE8 00111608  2C 1D 00 03 */	cmpwi r29, 3
/* 80115CEC 0011160C  41 80 FF C4 */	blt lbl_80115CB0
/* 80115CF0 00111610  2C 1E 03 00 */	cmpwi r30, 0x300
/* 80115CF4 00111614  40 82 00 10 */	bne lbl_80115D04
/* 80115CF8 00111618  3C 60 80 30 */	lis r3, lbl_80306520@ha
/* 80115CFC 0011161C  38 63 65 20 */	addi r3, r3, lbl_80306520@l
/* 80115D00 00111620  4B FC 67 61 */	bl func_800DC460
lbl_80115D04:
/* 80115D04 00111624  7F C3 F3 78 */	mr r3, r30
/* 80115D08 00111628  BB 41 00 08 */	lmw r26, 8(r1)
/* 80115D0C 0011162C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115D10 00111630  7C 08 03 A6 */	mtlr r0
/* 80115D14 00111634  38 21 00 20 */	addi r1, r1, 0x20
/* 80115D18 00111638  4E 80 00 20 */	blr 

.global func_80115D1C
func_80115D1C:
/* 80115D1C 0011163C  28 03 00 02 */	cmplwi r3, 2
/* 80115D20 00111640  38 00 00 00 */	li r0, 0
/* 80115D24 00111644  41 81 00 14 */	bgt lbl_80115D38
/* 80115D28 00111648  1C 03 08 8C */	mulli r0, r3, 0x88c
/* 80115D2C 0011164C  3C 60 80 37 */	lis r3, lbl_8036A310@ha
/* 80115D30 00111650  38 63 A3 10 */	addi r3, r3, lbl_8036A310@l
/* 80115D34 00111654  7C 03 02 14 */	add r0, r3, r0
lbl_80115D38:
/* 80115D38 00111658  7C 03 03 78 */	mr r3, r0
/* 80115D3C 0011165C  4E 80 00 20 */	blr 

.global func_80115D40
func_80115D40:
/* 80115D40 00111660  2C 03 FF FF */	cmpwi r3, -1
/* 80115D44 00111664  4D 82 00 20 */	beqlr 
/* 80115D48 00111668  28 03 00 02 */	cmplwi r3, 2
/* 80115D4C 0011166C  4D 81 00 20 */	bgtlr 
/* 80115D50 00111670  1C 03 08 8C */	mulli r0, r3, 0x88c
/* 80115D54 00111674  3C 60 80 37 */	lis r3, lbl_8036A310@ha
/* 80115D58 00111678  38 80 00 00 */	li r4, 0
/* 80115D5C 0011167C  38 63 A3 10 */	addi r3, r3, lbl_8036A310@l
/* 80115D60 00111680  7C 83 01 2E */	stwx r4, r3, r0
/* 80115D64 00111684  4E 80 00 20 */	blr 

.global func_80115D68
func_80115D68:
/* 80115D68 00111688  2C 04 00 00 */	cmpwi r4, 0
/* 80115D6C 0011168C  38 00 00 00 */	li r0, 0
/* 80115D70 00111690  90 03 00 04 */	stw r0, 4(r3)
/* 80115D74 00111694  90 03 00 08 */	stw r0, 8(r3)
/* 80115D78 00111698  4C 82 00 20 */	bnelr 
/* 80115D7C 0011169C  38 80 00 00 */	li r4, 0
/* 80115D80 001116A0  38 A0 08 80 */	li r5, 0x880
/* 80115D84 001116A4  38 63 00 0C */	addi r3, r3, 0xc
/* 80115D88 001116A8  4B FF E7 0C */	b func_80114494
/* 80115D8C 001116AC  4E 80 00 20 */	blr 

.global func_80115D90
func_80115D90:
/* 80115D90 001116B0  28 04 08 80 */	cmplwi r4, 0x880
/* 80115D94 001116B4  38 A0 00 00 */	li r5, 0
/* 80115D98 001116B8  40 81 00 0C */	ble lbl_80115DA4
/* 80115D9C 001116BC  38 A0 03 01 */	li r5, 0x301
/* 80115DA0 001116C0  48 00 00 18 */	b lbl_80115DB8
lbl_80115DA4:
/* 80115DA4 001116C4  80 03 00 04 */	lwz r0, 4(r3)
/* 80115DA8 001116C8  90 83 00 08 */	stw r4, 8(r3)
/* 80115DAC 001116CC  7C 04 00 40 */	cmplw r4, r0
/* 80115DB0 001116D0  40 81 00 08 */	ble lbl_80115DB8
/* 80115DB4 001116D4  90 83 00 04 */	stw r4, 4(r3)
lbl_80115DB8:
/* 80115DB8 001116D8  7C A3 2B 78 */	mr r3, r5
/* 80115DBC 001116DC  4E 80 00 20 */	blr 

.global func_80115DC0
func_80115DC0:
/* 80115DC0 001116E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115DC4 001116E4  7C 08 02 A6 */	mflr r0
/* 80115DC8 001116E8  2C 05 00 00 */	cmpwi r5, 0
/* 80115DCC 001116EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115DD0 001116F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115DD4 001116F4  3B E0 00 00 */	li r31, 0
/* 80115DD8 001116F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115DDC 001116FC  7C BE 2B 78 */	mr r30, r5
/* 80115DE0 00111700  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80115DE4 00111704  7C 7D 1B 78 */	mr r29, r3
/* 80115DE8 00111708  40 82 00 0C */	bne lbl_80115DF4
/* 80115DEC 0011170C  38 60 00 00 */	li r3, 0
/* 80115DF0 00111710  48 00 00 58 */	b lbl_80115E48
lbl_80115DF4:
/* 80115DF4 00111714  80 03 00 08 */	lwz r0, 8(r3)
/* 80115DF8 00111718  20 C0 08 80 */	subfic r6, r0, 0x880
/* 80115DFC 0011171C  7C 06 28 40 */	cmplw r6, r5
/* 80115E00 00111720  40 80 00 0C */	bge lbl_80115E0C
/* 80115E04 00111724  3B E0 03 01 */	li r31, 0x301
/* 80115E08 00111728  7C DE 33 78 */	mr r30, r6
lbl_80115E0C:
/* 80115E0C 0011172C  28 1E 00 01 */	cmplwi r30, 1
/* 80115E10 00111730  40 82 00 14 */	bne lbl_80115E24
/* 80115E14 00111734  7C 63 02 14 */	add r3, r3, r0
/* 80115E18 00111738  88 04 00 00 */	lbz r0, 0(r4)
/* 80115E1C 0011173C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80115E20 00111740  48 00 00 14 */	b lbl_80115E34
lbl_80115E24:
/* 80115E24 00111744  7C 63 02 14 */	add r3, r3, r0
/* 80115E28 00111748  7F C5 F3 78 */	mr r5, r30
/* 80115E2C 0011174C  38 63 00 0C */	addi r3, r3, 0xc
/* 80115E30 00111750  4B FF E5 29 */	bl func_80114358
lbl_80115E34:
/* 80115E34 00111754  80 1D 00 08 */	lwz r0, 8(r29)
/* 80115E38 00111758  7F E3 FB 78 */	mr r3, r31
/* 80115E3C 0011175C  7C 00 F2 14 */	add r0, r0, r30
/* 80115E40 00111760  90 1D 00 08 */	stw r0, 8(r29)
/* 80115E44 00111764  90 1D 00 04 */	stw r0, 4(r29)
lbl_80115E48:
/* 80115E48 00111768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115E4C 0011176C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80115E50 00111770  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80115E54 00111774  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80115E58 00111778  7C 08 03 A6 */	mtlr r0
/* 80115E5C 0011177C  38 21 00 20 */	addi r1, r1, 0x20
/* 80115E60 00111780  4E 80 00 20 */	blr 

.global func_80115E64
func_80115E64:
/* 80115E64 00111784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115E68 00111788  7C 08 02 A6 */	mflr r0
/* 80115E6C 0011178C  2C 05 00 00 */	cmpwi r5, 0
/* 80115E70 00111790  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115E74 00111794  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115E78 00111798  3B E0 00 00 */	li r31, 0
/* 80115E7C 0011179C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115E80 001117A0  7C BE 2B 78 */	mr r30, r5
/* 80115E84 001117A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80115E88 001117A8  7C 7D 1B 78 */	mr r29, r3
/* 80115E8C 001117AC  40 82 00 0C */	bne lbl_80115E98
/* 80115E90 001117B0  38 60 00 00 */	li r3, 0
/* 80115E94 001117B4  48 00 00 44 */	b lbl_80115ED8
lbl_80115E98:
/* 80115E98 001117B8  80 C3 00 08 */	lwz r6, 8(r3)
/* 80115E9C 001117BC  80 03 00 04 */	lwz r0, 4(r3)
/* 80115EA0 001117C0  7C 06 00 50 */	subf r0, r6, r0
/* 80115EA4 001117C4  7C 05 00 40 */	cmplw r5, r0
/* 80115EA8 001117C8  40 81 00 0C */	ble lbl_80115EB4
/* 80115EAC 001117CC  3B E0 03 02 */	li r31, 0x302
/* 80115EB0 001117D0  7C 1E 03 78 */	mr r30, r0
lbl_80115EB4:
/* 80115EB4 001117D4  7C DD 32 14 */	add r6, r29, r6
/* 80115EB8 001117D8  7C 83 23 78 */	mr r3, r4
/* 80115EBC 001117DC  7F C5 F3 78 */	mr r5, r30
/* 80115EC0 001117E0  38 86 00 0C */	addi r4, r6, 0xc
/* 80115EC4 001117E4  4B FF E4 95 */	bl func_80114358
/* 80115EC8 001117E8  80 1D 00 08 */	lwz r0, 8(r29)
/* 80115ECC 001117EC  7F E3 FB 78 */	mr r3, r31
/* 80115ED0 001117F0  7C 00 F2 14 */	add r0, r0, r30
/* 80115ED4 001117F4  90 1D 00 08 */	stw r0, 8(r29)
lbl_80115ED8:
/* 80115ED8 001117F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115EDC 001117FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80115EE0 00111800  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80115EE4 00111804  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80115EE8 00111808  7C 08 03 A6 */	mtlr r0
/* 80115EEC 0011180C  38 21 00 20 */	addi r1, r1, 0x20
/* 80115EF0 00111810  4E 80 00 20 */	blr 

.global func_80115EF4
func_80115EF4:
/* 80115EF4 00111814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115EF8 00111818  7C 08 02 A6 */	mflr r0
/* 80115EFC 0011181C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115F00 00111820  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115F04 00111824  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115F08 00111828  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80115F0C 0011182C  7C 7D 1B 78 */	mr r29, r3
/* 80115F10 00111830  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 80115F14 00111834  90 81 00 08 */	stw r4, 8(r1)
/* 80115F18 00111838  2C 00 00 00 */	cmpwi r0, 0
/* 80115F1C 0011183C  41 82 00 0C */	beq lbl_80115F28
/* 80115F20 00111840  38 81 00 08 */	addi r4, r1, 8
/* 80115F24 00111844  48 00 00 28 */	b lbl_80115F4C
lbl_80115F28:
/* 80115F28 00111848  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 80115F2C 0011184C  38 81 00 0C */	addi r4, r1, 0xc
/* 80115F30 00111850  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 80115F34 00111854  88 A1 00 09 */	lbz r5, 9(r1)
/* 80115F38 00111858  88 01 00 08 */	lbz r0, 8(r1)
/* 80115F3C 0011185C  98 E1 00 0C */	stb r7, 0xc(r1)
/* 80115F40 00111860  98 C1 00 0D */	stb r6, 0xd(r1)
/* 80115F44 00111864  98 A1 00 0E */	stb r5, 0xe(r1)
/* 80115F48 00111868  98 01 00 0F */	stb r0, 0xf(r1)
lbl_80115F4C:
/* 80115F4C 0011186C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80115F50 00111870  3B E0 00 04 */	li r31, 4
/* 80115F54 00111874  3B C0 00 00 */	li r30, 0
/* 80115F58 00111878  20 05 08 80 */	subfic r0, r5, 0x880
/* 80115F5C 0011187C  28 00 00 04 */	cmplwi r0, 4
/* 80115F60 00111880  40 80 00 0C */	bge lbl_80115F6C
/* 80115F64 00111884  3B C0 03 01 */	li r30, 0x301
/* 80115F68 00111888  7C 1F 03 78 */	mr r31, r0
lbl_80115F6C:
/* 80115F6C 0011188C  28 1F 00 01 */	cmplwi r31, 1
/* 80115F70 00111890  40 82 00 14 */	bne lbl_80115F84
/* 80115F74 00111894  7C 63 2A 14 */	add r3, r3, r5
/* 80115F78 00111898  88 04 00 00 */	lbz r0, 0(r4)
/* 80115F7C 0011189C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80115F80 001118A0  48 00 00 14 */	b lbl_80115F94
lbl_80115F84:
/* 80115F84 001118A4  7C 63 2A 14 */	add r3, r3, r5
/* 80115F88 001118A8  7F E5 FB 78 */	mr r5, r31
/* 80115F8C 001118AC  38 63 00 0C */	addi r3, r3, 0xc
/* 80115F90 001118B0  4B FF E3 C9 */	bl func_80114358
lbl_80115F94:
/* 80115F94 001118B4  80 1D 00 08 */	lwz r0, 8(r29)
/* 80115F98 001118B8  7F C3 F3 78 */	mr r3, r30
/* 80115F9C 001118BC  7C 00 FA 14 */	add r0, r0, r31
/* 80115FA0 001118C0  90 1D 00 08 */	stw r0, 8(r29)
/* 80115FA4 001118C4  90 1D 00 04 */	stw r0, 4(r29)
/* 80115FA8 001118C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80115FAC 001118CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80115FB0 001118D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80115FB4 001118D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115FB8 001118D8  7C 08 03 A6 */	mtlr r0
/* 80115FBC 001118DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80115FC0 001118E0  4E 80 00 20 */	blr 

.global func_80115FC4
func_80115FC4:
/* 80115FC4 001118E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80115FC8 001118E8  7C 08 02 A6 */	mflr r0
/* 80115FCC 001118EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80115FD0 001118F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80115FD4 001118F4  7C 7F 1B 78 */	mr r31, r3
/* 80115FD8 001118F8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80115FDC 001118FC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80115FE0 00111900  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 80115FE4 00111904  90 A1 00 08 */	stw r5, 8(r1)
/* 80115FE8 00111908  2C 00 00 00 */	cmpwi r0, 0
/* 80115FEC 0011190C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80115FF0 00111910  41 82 00 0C */	beq lbl_80115FFC
/* 80115FF4 00111914  38 81 00 08 */	addi r4, r1, 8
/* 80115FF8 00111918  48 00 00 48 */	b lbl_80116040
lbl_80115FFC:
/* 80115FFC 0011191C  89 61 00 0F */	lbz r11, 0xf(r1)
/* 80116000 00111920  38 81 00 10 */	addi r4, r1, 0x10
/* 80116004 00111924  89 41 00 0E */	lbz r10, 0xe(r1)
/* 80116008 00111928  89 21 00 0D */	lbz r9, 0xd(r1)
/* 8011600C 0011192C  89 01 00 0C */	lbz r8, 0xc(r1)
/* 80116010 00111930  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 80116014 00111934  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 80116018 00111938  88 A1 00 09 */	lbz r5, 9(r1)
/* 8011601C 0011193C  88 01 00 08 */	lbz r0, 8(r1)
/* 80116020 00111940  99 61 00 10 */	stb r11, 0x10(r1)
/* 80116024 00111944  99 41 00 11 */	stb r10, 0x11(r1)
/* 80116028 00111948  99 21 00 12 */	stb r9, 0x12(r1)
/* 8011602C 0011194C  99 01 00 13 */	stb r8, 0x13(r1)
/* 80116030 00111950  98 E1 00 14 */	stb r7, 0x14(r1)
/* 80116034 00111954  98 C1 00 15 */	stb r6, 0x15(r1)
/* 80116038 00111958  98 A1 00 16 */	stb r5, 0x16(r1)
/* 8011603C 0011195C  98 01 00 17 */	stb r0, 0x17(r1)
lbl_80116040:
/* 80116040 00111960  80 A3 00 08 */	lwz r5, 8(r3)
/* 80116044 00111964  3B C0 00 08 */	li r30, 8
/* 80116048 00111968  3B A0 00 00 */	li r29, 0
/* 8011604C 0011196C  20 05 08 80 */	subfic r0, r5, 0x880
/* 80116050 00111970  28 00 00 08 */	cmplwi r0, 8
/* 80116054 00111974  40 80 00 0C */	bge lbl_80116060
/* 80116058 00111978  3B A0 03 01 */	li r29, 0x301
/* 8011605C 0011197C  7C 1E 03 78 */	mr r30, r0
lbl_80116060:
/* 80116060 00111980  28 1E 00 01 */	cmplwi r30, 1
/* 80116064 00111984  40 82 00 14 */	bne lbl_80116078
/* 80116068 00111988  7C 63 2A 14 */	add r3, r3, r5
/* 8011606C 0011198C  88 04 00 00 */	lbz r0, 0(r4)
/* 80116070 00111990  98 03 00 0C */	stb r0, 0xc(r3)
/* 80116074 00111994  48 00 00 14 */	b lbl_80116088
lbl_80116078:
/* 80116078 00111998  7C 63 2A 14 */	add r3, r3, r5
/* 8011607C 0011199C  7F C5 F3 78 */	mr r5, r30
/* 80116080 001119A0  38 63 00 0C */	addi r3, r3, 0xc
/* 80116084 001119A4  4B FF E2 D5 */	bl func_80114358
lbl_80116088:
/* 80116088 001119A8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8011608C 001119AC  7F A3 EB 78 */	mr r3, r29
/* 80116090 001119B0  7C 00 F2 14 */	add r0, r0, r30
/* 80116094 001119B4  90 1F 00 08 */	stw r0, 8(r31)
/* 80116098 001119B8  90 1F 00 04 */	stw r0, 4(r31)
/* 8011609C 001119BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801160A0 001119C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801160A4 001119C4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801160A8 001119C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801160AC 001119CC  7C 08 03 A6 */	mtlr r0
/* 801160B0 001119D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801160B4 001119D4  4E 80 00 20 */	blr 

.global func_801160B8
func_801160B8:
/* 801160B8 001119D8  39 20 00 00 */	li r9, 0
/* 801160BC 001119DC  38 E0 00 00 */	li r7, 0
/* 801160C0 001119E0  48 00 00 44 */	b lbl_80116104
lbl_801160C4:
/* 801160C4 001119E4  80 E3 00 08 */	lwz r7, 8(r3)
/* 801160C8 001119E8  89 04 00 00 */	lbz r8, 0(r4)
/* 801160CC 001119EC  28 07 08 80 */	cmplwi r7, 0x880
/* 801160D0 001119F0  41 80 00 0C */	blt lbl_801160DC
/* 801160D4 001119F4  38 E0 03 01 */	li r7, 0x301
/* 801160D8 001119F8  48 00 00 24 */	b lbl_801160FC
lbl_801160DC:
/* 801160DC 001119FC  7C C3 3A 14 */	add r6, r3, r7
/* 801160E0 00111A00  38 07 00 01 */	addi r0, r7, 1
/* 801160E4 00111A04  99 06 00 0C */	stb r8, 0xc(r6)
/* 801160E8 00111A08  38 E0 00 00 */	li r7, 0
/* 801160EC 00111A0C  80 C3 00 04 */	lwz r6, 4(r3)
/* 801160F0 00111A10  90 03 00 08 */	stw r0, 8(r3)
/* 801160F4 00111A14  38 06 00 01 */	addi r0, r6, 1
/* 801160F8 00111A18  90 03 00 04 */	stw r0, 4(r3)
lbl_801160FC:
/* 801160FC 00111A1C  39 29 00 01 */	addi r9, r9, 1
/* 80116100 00111A20  38 84 00 01 */	addi r4, r4, 1
lbl_80116104:
/* 80116104 00111A24  2C 07 00 00 */	cmpwi r7, 0
/* 80116108 00111A28  40 82 00 0C */	bne lbl_80116114
/* 8011610C 00111A2C  7C 09 28 00 */	cmpw r9, r5
/* 80116110 00111A30  41 80 FF B4 */	blt lbl_801160C4
lbl_80116114:
/* 80116114 00111A34  7C E3 3B 78 */	mr r3, r7
/* 80116118 00111A38  4E 80 00 20 */	blr 

.global func_8011611C
func_8011611C:
/* 8011611C 00111A3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80116120 00111A40  7C 08 02 A6 */	mflr r0
/* 80116124 00111A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80116128 00111A48  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8011612C 00111A4C  7C 7D 1B 78 */	mr r29, r3
/* 80116130 00111A50  7C 9B 23 78 */	mr r27, r4
/* 80116134 00111A54  7C BE 2B 78 */	mr r30, r5
/* 80116138 00111A58  3B E0 00 00 */	li r31, 0
/* 8011613C 00111A5C  3B 40 00 00 */	li r26, 0
/* 80116140 00111A60  48 00 00 A4 */	b lbl_801161E4
lbl_80116144:
/* 80116144 00111A64  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 80116148 00111A68  80 7B 00 00 */	lwz r3, 0(r27)
/* 8011614C 00111A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80116150 00111A70  90 61 00 0C */	stw r3, 0xc(r1)
/* 80116154 00111A74  41 82 00 0C */	beq lbl_80116160
/* 80116158 00111A78  38 81 00 0C */	addi r4, r1, 0xc
/* 8011615C 00111A7C  48 00 00 28 */	b lbl_80116184
lbl_80116160:
/* 80116160 00111A80  88 C1 00 0F */	lbz r6, 0xf(r1)
/* 80116164 00111A84  38 81 00 08 */	addi r4, r1, 8
/* 80116168 00111A88  88 A1 00 0E */	lbz r5, 0xe(r1)
/* 8011616C 00111A8C  88 61 00 0D */	lbz r3, 0xd(r1)
/* 80116170 00111A90  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80116174 00111A94  98 C1 00 08 */	stb r6, 8(r1)
/* 80116178 00111A98  98 A1 00 09 */	stb r5, 9(r1)
/* 8011617C 00111A9C  98 61 00 0A */	stb r3, 0xa(r1)
/* 80116180 00111AA0  98 01 00 0B */	stb r0, 0xb(r1)
lbl_80116184:
/* 80116184 00111AA4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80116188 00111AA8  3B 80 00 04 */	li r28, 4
/* 8011618C 00111AAC  3B 40 00 00 */	li r26, 0
/* 80116190 00111AB0  20 03 08 80 */	subfic r0, r3, 0x880
/* 80116194 00111AB4  28 00 00 04 */	cmplwi r0, 4
/* 80116198 00111AB8  40 80 00 0C */	bge lbl_801161A4
/* 8011619C 00111ABC  3B 40 03 01 */	li r26, 0x301
/* 801161A0 00111AC0  7C 1C 03 78 */	mr r28, r0
lbl_801161A4:
/* 801161A4 00111AC4  28 1C 00 01 */	cmplwi r28, 1
/* 801161A8 00111AC8  40 82 00 14 */	bne lbl_801161BC
/* 801161AC 00111ACC  7C 7D 1A 14 */	add r3, r29, r3
/* 801161B0 00111AD0  88 04 00 00 */	lbz r0, 0(r4)
/* 801161B4 00111AD4  98 03 00 0C */	stb r0, 0xc(r3)
/* 801161B8 00111AD8  48 00 00 14 */	b lbl_801161CC
lbl_801161BC:
/* 801161BC 00111ADC  7C 7D 1A 14 */	add r3, r29, r3
/* 801161C0 00111AE0  7F 85 E3 78 */	mr r5, r28
/* 801161C4 00111AE4  38 63 00 0C */	addi r3, r3, 0xc
/* 801161C8 00111AE8  4B FF E1 91 */	bl func_80114358
lbl_801161CC:
/* 801161CC 00111AEC  80 1D 00 08 */	lwz r0, 8(r29)
/* 801161D0 00111AF0  3B 7B 00 04 */	addi r27, r27, 4
/* 801161D4 00111AF4  3B FF 00 01 */	addi r31, r31, 1
/* 801161D8 00111AF8  7C 00 E2 14 */	add r0, r0, r28
/* 801161DC 00111AFC  90 1D 00 08 */	stw r0, 8(r29)
/* 801161E0 00111B00  90 1D 00 04 */	stw r0, 4(r29)
lbl_801161E4:
/* 801161E4 00111B04  2C 1A 00 00 */	cmpwi r26, 0
/* 801161E8 00111B08  40 82 00 0C */	bne lbl_801161F4
/* 801161EC 00111B0C  7C 1F F0 00 */	cmpw r31, r30
/* 801161F0 00111B10  41 80 FF 54 */	blt lbl_80116144
lbl_801161F4:
/* 801161F4 00111B14  7F 43 D3 78 */	mr r3, r26
/* 801161F8 00111B18  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801161FC 00111B1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80116200 00111B20  7C 08 03 A6 */	mtlr r0
/* 80116204 00111B24  38 21 00 30 */	addi r1, r1, 0x30
/* 80116208 00111B28  4E 80 00 20 */	blr 

.global func_8011620C
func_8011620C:
/* 8011620C 00111B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80116210 00111B30  7C 08 02 A6 */	mflr r0
/* 80116214 00111B34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80116218 00111B38  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8011621C 00111B3C  7C 7B 1B 78 */	mr r27, r3
/* 80116220 00111B40  7C 9D 23 78 */	mr r29, r4
/* 80116224 00111B44  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 80116228 00111B48  2C 00 00 00 */	cmpwi r0, 0
/* 8011622C 00111B4C  41 82 00 0C */	beq lbl_80116238
/* 80116230 00111B50  7F BE EB 78 */	mr r30, r29
/* 80116234 00111B54  48 00 00 08 */	b lbl_8011623C
lbl_80116238:
/* 80116238 00111B58  3B C1 00 08 */	addi r30, r1, 8
lbl_8011623C:
/* 8011623C 00111B5C  80 83 00 08 */	lwz r4, 8(r3)
/* 80116240 00111B60  3B 80 00 08 */	li r28, 8
/* 80116244 00111B64  80 03 00 04 */	lwz r0, 4(r3)
/* 80116248 00111B68  3B E0 00 00 */	li r31, 0
/* 8011624C 00111B6C  7C 04 00 50 */	subf r0, r4, r0
/* 80116250 00111B70  28 00 00 08 */	cmplwi r0, 8
/* 80116254 00111B74  40 80 00 0C */	bge lbl_80116260
/* 80116258 00111B78  3B E0 03 02 */	li r31, 0x302
/* 8011625C 00111B7C  7C 1C 03 78 */	mr r28, r0
lbl_80116260:
/* 80116260 00111B80  7C 9B 22 14 */	add r4, r27, r4
/* 80116264 00111B84  7F C3 F3 78 */	mr r3, r30
/* 80116268 00111B88  7F 85 E3 78 */	mr r5, r28
/* 8011626C 00111B8C  38 84 00 0C */	addi r4, r4, 0xc
/* 80116270 00111B90  4B FF E0 E9 */	bl func_80114358
/* 80116274 00111B94  80 1B 00 08 */	lwz r0, 8(r27)
/* 80116278 00111B98  7C 00 E2 14 */	add r0, r0, r28
/* 8011627C 00111B9C  90 1B 00 08 */	stw r0, 8(r27)
/* 80116280 00111BA0  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 80116284 00111BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80116288 00111BA8  40 82 00 4C */	bne lbl_801162D4
/* 8011628C 00111BAC  2C 1F 00 00 */	cmpwi r31, 0
/* 80116290 00111BB0  40 82 00 44 */	bne lbl_801162D4
/* 80116294 00111BB4  88 1E 00 07 */	lbz r0, 7(r30)
/* 80116298 00111BB8  98 1D 00 00 */	stb r0, 0(r29)
/* 8011629C 00111BBC  88 1E 00 06 */	lbz r0, 6(r30)
/* 801162A0 00111BC0  98 1D 00 01 */	stb r0, 1(r29)
/* 801162A4 00111BC4  88 1E 00 05 */	lbz r0, 5(r30)
/* 801162A8 00111BC8  98 1D 00 02 */	stb r0, 2(r29)
/* 801162AC 00111BCC  88 1E 00 04 */	lbz r0, 4(r30)
/* 801162B0 00111BD0  98 1D 00 03 */	stb r0, 3(r29)
/* 801162B4 00111BD4  88 1E 00 03 */	lbz r0, 3(r30)
/* 801162B8 00111BD8  98 1D 00 04 */	stb r0, 4(r29)
/* 801162BC 00111BDC  88 1E 00 02 */	lbz r0, 2(r30)
/* 801162C0 00111BE0  98 1D 00 05 */	stb r0, 5(r29)
/* 801162C4 00111BE4  88 1E 00 01 */	lbz r0, 1(r30)
/* 801162C8 00111BE8  98 1D 00 06 */	stb r0, 6(r29)
/* 801162CC 00111BEC  88 1E 00 00 */	lbz r0, 0(r30)
/* 801162D0 00111BF0  98 1D 00 07 */	stb r0, 7(r29)
lbl_801162D4:
/* 801162D4 00111BF4  7F E3 FB 78 */	mr r3, r31
/* 801162D8 00111BF8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801162DC 00111BFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801162E0 00111C00  7C 08 03 A6 */	mtlr r0
/* 801162E4 00111C04  38 21 00 30 */	addi r1, r1, 0x30
/* 801162E8 00111C08  4E 80 00 20 */	blr 

.global func_801162EC
func_801162EC:
/* 801162EC 00111C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801162F0 00111C10  7C 08 02 A6 */	mflr r0
/* 801162F4 00111C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 801162F8 00111C18  BF 41 00 08 */	stmw r26, 8(r1)
/* 801162FC 00111C1C  7C 7A 1B 78 */	mr r26, r3
/* 80116300 00111C20  7C 9B 23 78 */	mr r27, r4
/* 80116304 00111C24  7C BC 2B 78 */	mr r28, r5
/* 80116308 00111C28  3B A0 00 00 */	li r29, 0
/* 8011630C 00111C2C  3B C0 00 00 */	li r30, 0
/* 80116310 00111C30  48 00 00 4C */	b lbl_8011635C
lbl_80116314:
/* 80116314 00111C34  80 7A 00 08 */	lwz r3, 8(r26)
/* 80116318 00111C38  3B E0 00 01 */	li r31, 1
/* 8011631C 00111C3C  80 1A 00 04 */	lwz r0, 4(r26)
/* 80116320 00111C40  3B C0 00 00 */	li r30, 0
/* 80116324 00111C44  7C 03 00 50 */	subf r0, r3, r0
/* 80116328 00111C48  28 00 00 01 */	cmplwi r0, 1
/* 8011632C 00111C4C  40 80 00 0C */	bge lbl_80116338
/* 80116330 00111C50  3B C0 03 02 */	li r30, 0x302
/* 80116334 00111C54  7C 1F 03 78 */	mr r31, r0
lbl_80116338:
/* 80116338 00111C58  7C 9A 1A 14 */	add r4, r26, r3
/* 8011633C 00111C5C  7F E5 FB 78 */	mr r5, r31
/* 80116340 00111C60  7C 7B EA 14 */	add r3, r27, r29
/* 80116344 00111C64  38 84 00 0C */	addi r4, r4, 0xc
/* 80116348 00111C68  4B FF E0 11 */	bl func_80114358
/* 8011634C 00111C6C  80 1A 00 08 */	lwz r0, 8(r26)
/* 80116350 00111C70  3B BD 00 01 */	addi r29, r29, 1
/* 80116354 00111C74  7C 00 FA 14 */	add r0, r0, r31
/* 80116358 00111C78  90 1A 00 08 */	stw r0, 8(r26)
lbl_8011635C:
/* 8011635C 00111C7C  2C 1E 00 00 */	cmpwi r30, 0
/* 80116360 00111C80  40 82 00 0C */	bne lbl_8011636C
/* 80116364 00111C84  7C 1D E0 00 */	cmpw r29, r28
/* 80116368 00111C88  41 80 FF AC */	blt lbl_80116314
lbl_8011636C:
/* 8011636C 00111C8C  7F C3 F3 78 */	mr r3, r30
/* 80116370 00111C90  BB 41 00 08 */	lmw r26, 8(r1)
/* 80116374 00111C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80116378 00111C98  7C 08 03 A6 */	mtlr r0
/* 8011637C 00111C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80116380 00111CA0  4E 80 00 20 */	blr 

.global func_80116384
func_80116384:
/* 80116384 00111CA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80116388 00111CA8  7C 08 02 A6 */	mflr r0
/* 8011638C 00111CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80116390 00111CB0  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80116394 00111CB4  7C 7B 1B 78 */	mr r27, r3
/* 80116398 00111CB8  7C 9F 23 78 */	mr r31, r4
/* 8011639C 00111CBC  7C BC 2B 78 */	mr r28, r5
/* 801163A0 00111CC0  3B A0 00 00 */	li r29, 0
/* 801163A4 00111CC4  3B C0 00 00 */	li r30, 0
/* 801163A8 00111CC8  48 00 00 9C */	b lbl_80116444
lbl_801163AC:
/* 801163AC 00111CCC  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 801163B0 00111CD0  2C 00 00 00 */	cmpwi r0, 0
/* 801163B4 00111CD4  41 82 00 0C */	beq lbl_801163C0
/* 801163B8 00111CD8  7F FA FB 78 */	mr r26, r31
/* 801163BC 00111CDC  48 00 00 08 */	b lbl_801163C4
lbl_801163C0:
/* 801163C0 00111CE0  3B 41 00 08 */	addi r26, r1, 8
lbl_801163C4:
/* 801163C4 00111CE4  80 7B 00 08 */	lwz r3, 8(r27)
/* 801163C8 00111CE8  3B 20 00 04 */	li r25, 4
/* 801163CC 00111CEC  80 1B 00 04 */	lwz r0, 4(r27)
/* 801163D0 00111CF0  3B C0 00 00 */	li r30, 0
/* 801163D4 00111CF4  7C 03 00 50 */	subf r0, r3, r0
/* 801163D8 00111CF8  28 00 00 04 */	cmplwi r0, 4
/* 801163DC 00111CFC  40 80 00 0C */	bge lbl_801163E8
/* 801163E0 00111D00  3B C0 03 02 */	li r30, 0x302
/* 801163E4 00111D04  7C 19 03 78 */	mr r25, r0
lbl_801163E8:
/* 801163E8 00111D08  7C 9B 1A 14 */	add r4, r27, r3
/* 801163EC 00111D0C  7F 43 D3 78 */	mr r3, r26
/* 801163F0 00111D10  7F 25 CB 78 */	mr r5, r25
/* 801163F4 00111D14  38 84 00 0C */	addi r4, r4, 0xc
/* 801163F8 00111D18  4B FF DF 61 */	bl func_80114358
/* 801163FC 00111D1C  80 1B 00 08 */	lwz r0, 8(r27)
/* 80116400 00111D20  7C 00 CA 14 */	add r0, r0, r25
/* 80116404 00111D24  90 1B 00 08 */	stw r0, 8(r27)
/* 80116408 00111D28  80 0D 9D 10 */	lwz r0, lbl_80320BD0-_SDA_BASE_(r13)
/* 8011640C 00111D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80116410 00111D30  40 82 00 2C */	bne lbl_8011643C
/* 80116414 00111D34  2C 1E 00 00 */	cmpwi r30, 0
/* 80116418 00111D38  40 82 00 24 */	bne lbl_8011643C
/* 8011641C 00111D3C  88 1A 00 03 */	lbz r0, 3(r26)
/* 80116420 00111D40  98 1F 00 00 */	stb r0, 0(r31)
/* 80116424 00111D44  88 1A 00 02 */	lbz r0, 2(r26)
/* 80116428 00111D48  98 1F 00 01 */	stb r0, 1(r31)
/* 8011642C 00111D4C  88 1A 00 01 */	lbz r0, 1(r26)
/* 80116430 00111D50  98 1F 00 02 */	stb r0, 2(r31)
/* 80116434 00111D54  88 1A 00 00 */	lbz r0, 0(r26)
/* 80116438 00111D58  98 1F 00 03 */	stb r0, 3(r31)
lbl_8011643C:
/* 8011643C 00111D5C  3B FF 00 04 */	addi r31, r31, 4
/* 80116440 00111D60  3B BD 00 01 */	addi r29, r29, 1
lbl_80116444:
/* 80116444 00111D64  2C 1E 00 00 */	cmpwi r30, 0
/* 80116448 00111D68  40 82 00 0C */	bne lbl_80116454
/* 8011644C 00111D6C  7C 1D E0 00 */	cmpw r29, r28
/* 80116450 00111D70  41 80 FF 5C */	blt lbl_801163AC
lbl_80116454:
/* 80116454 00111D74  7F C3 F3 78 */	mr r3, r30
/* 80116458 00111D78  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8011645C 00111D7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80116460 00111D80  7C 08 03 A6 */	mtlr r0
/* 80116464 00111D84  38 21 00 30 */	addi r1, r1, 0x30
/* 80116468 00111D88  4E 80 00 20 */	blr 



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80306520

lbl_80306520:

	# ROM: 0x302620
	.asciz "MetroTRK - ERROR : No buffer available\n"



.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_8036A310
lbl_8036A310:
	.skip 0x19A8

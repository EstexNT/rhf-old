.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E1370
func_800E1370:
/* 800E1370 000DCC90  80 AD 97 F0 */	lwz r5, lbl_803206B0-_SDA_BASE_(r13)
/* 800E1374 000DCC94  48 00 00 08 */	b lbl_800E137C
lbl_800E1378:
/* 800E1378 000DCC98  80 A5 00 08 */	lwz r5, 8(r5)
lbl_800E137C:
/* 800E137C 000DCC9C  2C 05 00 00 */	cmpwi r5, 0
/* 800E1380 000DCCA0  41 82 00 14 */	beq lbl_800E1394
/* 800E1384 000DCCA4  80 85 00 04 */	lwz r4, 4(r5)
/* 800E1388 000DCCA8  80 03 00 04 */	lwz r0, 4(r3)
/* 800E138C 000DCCAC  7C 04 00 40 */	cmplw r4, r0
/* 800E1390 000DCCB0  40 81 FF E8 */	ble lbl_800E1378
lbl_800E1394:
/* 800E1394 000DCCB4  2C 05 00 00 */	cmpwi r5, 0
/* 800E1398 000DCCB8  40 82 00 38 */	bne lbl_800E13D0
/* 800E139C 000DCCBC  38 8D 97 F0 */	addi r4, r13, lbl_803206B0-_SDA_BASE_
/* 800E13A0 000DCCC0  80 84 00 04 */	lwz r4, 4(r4)
/* 800E13A4 000DCCC4  2C 04 00 00 */	cmpwi r4, 0
/* 800E13A8 000DCCC8  40 82 00 0C */	bne lbl_800E13B4
/* 800E13AC 000DCCCC  90 6D 97 F0 */	stw r3, lbl_803206B0-_SDA_BASE_(r13)
/* 800E13B0 000DCCD0  48 00 00 08 */	b lbl_800E13B8
lbl_800E13B4:
/* 800E13B4 000DCCD4  90 64 00 08 */	stw r3, 8(r4)
lbl_800E13B8:
/* 800E13B8 000DCCD8  38 00 00 00 */	li r0, 0
/* 800E13BC 000DCCDC  90 83 00 0C */	stw r4, 0xc(r3)
/* 800E13C0 000DCCE0  38 8D 97 F0 */	addi r4, r13, lbl_803206B0-_SDA_BASE_
/* 800E13C4 000DCCE4  90 03 00 08 */	stw r0, 8(r3)
/* 800E13C8 000DCCE8  90 64 00 04 */	stw r3, 4(r4)
/* 800E13CC 000DCCEC  4E 80 00 20 */	blr 
lbl_800E13D0:
/* 800E13D0 000DCCF0  90 A3 00 08 */	stw r5, 8(r3)
/* 800E13D4 000DCCF4  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800E13D8 000DCCF8  90 65 00 0C */	stw r3, 0xc(r5)
/* 800E13DC 000DCCFC  2C 04 00 00 */	cmpwi r4, 0
/* 800E13E0 000DCD00  90 83 00 0C */	stw r4, 0xc(r3)
/* 800E13E4 000DCD04  40 82 00 0C */	bne lbl_800E13F0
/* 800E13E8 000DCD08  90 6D 97 F0 */	stw r3, lbl_803206B0-_SDA_BASE_(r13)
/* 800E13EC 000DCD0C  4E 80 00 20 */	blr 
lbl_800E13F0:
/* 800E13F0 000DCD10  90 64 00 08 */	stw r3, 8(r4)
/* 800E13F4 000DCD14  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1400
func_800E1400:
/* 800E1400 000DCD20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E1404 000DCD24  7C 08 02 A6 */	mflr r0
/* 800E1408 000DCD28  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E140C 000DCD2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E1410 000DCD30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E1414 000DCD34  3B C0 00 00 */	li r30, 0
/* 800E1418 000DCD38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E141C 000DCD3C  7C 9D 23 78 */	mr r29, r4
/* 800E1420 000DCD40  93 81 00 10 */	stw r28, 0x10(r1)
/* 800E1424 000DCD44  7C 7C 1B 78 */	mr r28, r3
/* 800E1428 000DCD48  38 60 00 00 */	li r3, 0
/* 800E142C 000DCD4C  83 ED 97 F0 */	lwz r31, lbl_803206B0-_SDA_BASE_(r13)
/* 800E1430 000DCD50  48 00 00 40 */	b lbl_800E1470
lbl_800E1434:
/* 800E1434 000DCD54  2C 1E 00 00 */	cmpwi r30, 0
/* 800E1438 000DCD58  41 82 00 10 */	beq lbl_800E1448
/* 800E143C 000DCD5C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800E1440 000DCD60  7C 03 00 40 */	cmplw r3, r0
/* 800E1444 000DCD64  40 82 00 34 */	bne lbl_800E1478
lbl_800E1448:
/* 800E1448 000DCD68  81 9F 00 00 */	lwz r12, 0(r31)
/* 800E144C 000DCD6C  7F 83 E3 78 */	mr r3, r28
/* 800E1450 000DCD70  7F A4 EB 78 */	mr r4, r29
/* 800E1454 000DCD74  7D 89 03 A6 */	mtctr r12
/* 800E1458 000DCD78  4E 80 04 21 */	bctrl 
/* 800E145C 000DCD7C  7C 60 00 34 */	cntlzw r0, r3
/* 800E1460 000DCD80  80 7F 00 04 */	lwz r3, 4(r31)
/* 800E1464 000DCD84  54 00 D9 7E */	srwi r0, r0, 5
/* 800E1468 000DCD88  83 FF 00 08 */	lwz r31, 8(r31)
/* 800E146C 000DCD8C  7F DE 03 78 */	or r30, r30, r0
lbl_800E1470:
/* 800E1470 000DCD90  2C 1F 00 00 */	cmpwi r31, 0
/* 800E1474 000DCD94  40 82 FF C0 */	bne lbl_800E1434
lbl_800E1478:
/* 800E1478 000DCD98  48 00 0E 49 */	bl func_800E22C0
/* 800E147C 000DCD9C  7C 60 00 34 */	cntlzw r0, r3
/* 800E1480 000DCDA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E1484 000DCDA4  54 00 D9 7E */	srwi r0, r0, 5
/* 800E1488 000DCDA8  7F DE 03 78 */	or r30, r30, r0
/* 800E148C 000DCDAC  7F C0 00 34 */	cntlzw r0, r30
/* 800E1490 000DCDB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E1494 000DCDB4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E1498 000DCDB8  54 03 D9 7E */	srwi r3, r0, 5
/* 800E149C 000DCDBC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800E14A0 000DCDC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E14A4 000DCDC4  7C 08 03 A6 */	mtlr r0
/* 800E14A8 000DCDC8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E14AC 000DCDCC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E14B0
func_800E14B0:
/* 800E14B0 000DCDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E14B4 000DCDD4  7C 08 02 A6 */	mflr r0
/* 800E14B8 000DCDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E14BC 000DCDDC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E14C0 000DCDE0  48 02 2C AD */	bl func_8010416C
/* 800E14C4 000DCDE4  38 03 FF FB */	addi r0, r3, -5
/* 800E14C8 000DCDE8  7C 7F 1B 78 */	mr r31, r3
/* 800E14CC 000DCDEC  28 00 00 01 */	cmplwi r0, 1
/* 800E14D0 000DCDF0  40 81 00 0C */	ble lbl_800E14DC
/* 800E14D4 000DCDF4  2C 03 00 00 */	cmpwi r3, 0
/* 800E14D8 000DCDF8  40 82 00 0C */	bne lbl_800E14E4
lbl_800E14DC:
/* 800E14DC 000DCDFC  3B 60 00 00 */	li r27, 0
/* 800E14E0 000DCE00  48 00 00 08 */	b lbl_800E14E8
lbl_800E14E4:
/* 800E14E4 000DCE04  3B 60 00 01 */	li r27, 1
lbl_800E14E8:
/* 800E14E8 000DCE08  4B FF A0 C9 */	bl func_800DB5B0
/* 800E14EC 000DCE0C  2C 1B 00 00 */	cmpwi r27, 0
/* 800E14F0 000DCE10  40 82 00 10 */	bne lbl_800E1500
/* 800E14F4 000DCE14  38 60 00 01 */	li r3, 1
/* 800E14F8 000DCE18  48 01 4E 99 */	bl func_800F6390
/* 800E14FC 000DCE1C  7C 7C 1B 78 */	mr r28, r3
lbl_800E1500:
/* 800E1500 000DCE20  83 AD 97 F0 */	lwz r29, lbl_803206B0-_SDA_BASE_(r13)
/* 800E1504 000DCE24  38 60 00 00 */	li r3, 0
/* 800E1508 000DCE28  3B C0 00 00 */	li r30, 0
/* 800E150C 000DCE2C  48 00 00 40 */	b lbl_800E154C
lbl_800E1510:
/* 800E1510 000DCE30  2C 1E 00 00 */	cmpwi r30, 0
/* 800E1514 000DCE34  41 82 00 10 */	beq lbl_800E1524
/* 800E1518 000DCE38  80 1D 00 04 */	lwz r0, 4(r29)
/* 800E151C 000DCE3C  7C 03 00 40 */	cmplw r3, r0
/* 800E1520 000DCE40  40 82 00 34 */	bne lbl_800E1554
lbl_800E1524:
/* 800E1524 000DCE44  81 9D 00 00 */	lwz r12, 0(r29)
/* 800E1528 000DCE48  7F E4 FB 78 */	mr r4, r31
/* 800E152C 000DCE4C  38 60 00 00 */	li r3, 0
/* 800E1530 000DCE50  7D 89 03 A6 */	mtctr r12
/* 800E1534 000DCE54  4E 80 04 21 */	bctrl 
/* 800E1538 000DCE58  7C 60 00 34 */	cntlzw r0, r3
/* 800E153C 000DCE5C  80 7D 00 04 */	lwz r3, 4(r29)
/* 800E1540 000DCE60  54 00 D9 7E */	srwi r0, r0, 5
/* 800E1544 000DCE64  83 BD 00 08 */	lwz r29, 8(r29)
/* 800E1548 000DCE68  7F DE 03 78 */	or r30, r30, r0
lbl_800E154C:
/* 800E154C 000DCE6C  2C 1D 00 00 */	cmpwi r29, 0
/* 800E1550 000DCE70  40 82 FF C0 */	bne lbl_800E1510
lbl_800E1554:
/* 800E1554 000DCE74  48 00 0D 6D */	bl func_800E22C0
/* 800E1558 000DCE78  7C 60 00 34 */	cntlzw r0, r3
/* 800E155C 000DCE7C  54 00 D9 7E */	srwi r0, r0, 5
/* 800E1560 000DCE80  7F DE 03 79 */	or. r30, r30, r0
/* 800E1564 000DCE84  40 82 FF 9C */	bne lbl_800E1500
lbl_800E1568:
/* 800E1568 000DCE88  48 00 0D 59 */	bl func_800E22C0
/* 800E156C 000DCE8C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1570 000DCE90  41 82 FF F8 */	beq lbl_800E1568
/* 800E1574 000DCE94  4B FF E8 AD */	bl func_800DFE20
/* 800E1578 000DCE98  83 CD 97 F0 */	lwz r30, lbl_803206B0-_SDA_BASE_(r13)
/* 800E157C 000DCE9C  38 60 00 00 */	li r3, 0
/* 800E1580 000DCEA0  3B A0 00 00 */	li r29, 0
/* 800E1584 000DCEA4  48 00 00 40 */	b lbl_800E15C4
lbl_800E1588:
/* 800E1588 000DCEA8  2C 1D 00 00 */	cmpwi r29, 0
/* 800E158C 000DCEAC  41 82 00 10 */	beq lbl_800E159C
/* 800E1590 000DCEB0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800E1594 000DCEB4  7C 03 00 40 */	cmplw r3, r0
/* 800E1598 000DCEB8  40 82 00 34 */	bne lbl_800E15CC
lbl_800E159C:
/* 800E159C 000DCEBC  81 9E 00 00 */	lwz r12, 0(r30)
/* 800E15A0 000DCEC0  7F E4 FB 78 */	mr r4, r31
/* 800E15A4 000DCEC4  38 60 00 01 */	li r3, 1
/* 800E15A8 000DCEC8  7D 89 03 A6 */	mtctr r12
/* 800E15AC 000DCECC  4E 80 04 21 */	bctrl 
/* 800E15B0 000DCED0  7C 60 00 34 */	cntlzw r0, r3
/* 800E15B4 000DCED4  80 7E 00 04 */	lwz r3, 4(r30)
/* 800E15B8 000DCED8  54 00 D9 7E */	srwi r0, r0, 5
/* 800E15BC 000DCEDC  83 DE 00 08 */	lwz r30, 8(r30)
/* 800E15C0 000DCEE0  7F BD 03 78 */	or r29, r29, r0
lbl_800E15C4:
/* 800E15C4 000DCEE4  2C 1E 00 00 */	cmpwi r30, 0
/* 800E15C8 000DCEE8  40 82 FF C0 */	bne lbl_800E1588
lbl_800E15CC:
/* 800E15CC 000DCEEC  48 00 0C F5 */	bl func_800E22C0
/* 800E15D0 000DCEF0  4B FF A3 41 */	bl func_800DB910
/* 800E15D4 000DCEF4  2C 1B 00 00 */	cmpwi r27, 0
/* 800E15D8 000DCEF8  40 82 00 0C */	bne lbl_800E15E4
/* 800E15DC 000DCEFC  7F 83 E3 78 */	mr r3, r28
/* 800E15E0 000DCF00  48 01 4D B1 */	bl func_800F6390
lbl_800E15E4:
/* 800E15E4 000DCF04  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 800E15E8 000DCF08  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 800E15EC 000DCF0C  48 00 00 24 */	b lbl_800E1610
lbl_800E15F0:
/* 800E15F0 000DCF10  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 800E15F4 000DCF14  83 A3 02 FC */	lwz r29, 0x2fc(r3)
/* 800E15F8 000DCF18  2C 00 00 01 */	cmpwi r0, 1
/* 800E15FC 000DCF1C  41 82 00 0C */	beq lbl_800E1608
/* 800E1600 000DCF20  2C 00 00 04 */	cmpwi r0, 4
/* 800E1604 000DCF24  40 82 00 08 */	bne lbl_800E160C
lbl_800E1608:
/* 800E1608 000DCF28  48 00 1D D9 */	bl func_800E33E0
lbl_800E160C:
/* 800E160C 000DCF2C  7F A3 EB 78 */	mr r3, r29
lbl_800E1610:
/* 800E1610 000DCF30  2C 03 00 00 */	cmpwi r3, 0
/* 800E1614 000DCF34  40 82 FF DC */	bne lbl_800E15F0
/* 800E1618 000DCF38  39 61 00 20 */	addi r11, r1, 0x20
/* 800E161C 000DCF3C  48 02 2B 9D */	bl func_801041B8
/* 800E1620 000DCF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E1624 000DCF44  7C 08 03 A6 */	mtlr r0
/* 800E1628 000DCF48  38 21 00 20 */	addi r1, r1, 0x20
/* 800E162C 000DCF4C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1630
func_800E1630:
/* 800E1630 000DCF50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E1634 000DCF54  7C 08 02 A6 */	mflr r0
/* 800E1638 000DCF58  38 80 00 00 */	li r4, 0
/* 800E163C 000DCF5C  38 A0 00 02 */	li r5, 2
/* 800E1640 000DCF60  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E1644 000DCF64  38 61 00 08 */	addi r3, r1, 8
/* 800E1648 000DCF68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E164C 000DCF6C  4B F2 30 C9 */	bl func_80004714
/* 800E1650 000DCF70  48 04 15 71 */	bl func_80122BC0
lbl_800E1654:
/* 800E1654 000DCF74  48 04 16 0D */	bl func_80122C60
/* 800E1658 000DCF78  28 03 00 01 */	cmplwi r3, 1
/* 800E165C 000DCF7C  41 82 FF F8 */	beq lbl_800E1654
/* 800E1660 000DCF80  38 61 00 08 */	addi r3, r1, 8
/* 800E1664 000DCF84  48 04 30 2D */	bl func_80124690
/* 800E1668 000DCF88  48 00 3A F9 */	bl func_800E5160
/* 800E166C 000DCF8C  48 00 33 B5 */	bl func_800E4A20
/* 800E1670 000DCF90  48 00 B1 11 */	bl func_800EC780
/* 800E1674 000DCF94  38 61 00 18 */	addi r3, r1, 0x18
/* 800E1678 000DCF98  48 00 3D C9 */	bl func_800E5440
/* 800E167C 000DCF9C  8B E1 00 1E */	lbz r31, 0x1e(r1)
/* 800E1680 000DCFA0  48 00 AF 01 */	bl func_800EC580
/* 800E1684 000DCFA4  28 03 00 02 */	cmplwi r3, 2
/* 800E1688 000DCFA8  41 82 00 0C */	beq lbl_800E1694
/* 800E168C 000DCFAC  38 60 00 03 */	li r3, 3
/* 800E1690 000DCFB0  48 00 00 34 */	b lbl_800E16C4
lbl_800E1694:
/* 800E1694 000DCFB4  28 1F 00 01 */	cmplwi r31, 1
/* 800E1698 000DCFB8  40 82 00 28 */	bne lbl_800E16C0
/* 800E169C 000DCFBC  38 61 00 0C */	addi r3, r1, 0xc
/* 800E16A0 000DCFC0  48 00 0E 81 */	bl func_800E2520
/* 800E16A4 000DCFC4  2C 03 00 00 */	cmpwi r3, 0
/* 800E16A8 000DCFC8  41 82 00 18 */	beq lbl_800E16C0
/* 800E16AC 000DCFCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E16B0 000DCFD0  2C 00 00 00 */	cmpwi r0, 0
/* 800E16B4 000DCFD4  40 82 00 0C */	bne lbl_800E16C0
/* 800E16B8 000DCFD8  38 60 00 01 */	li r3, 1
/* 800E16BC 000DCFDC  48 00 00 08 */	b lbl_800E16C4
lbl_800E16C0:
/* 800E16C0 000DCFE0  38 60 00 02 */	li r3, 2
lbl_800E16C4:
/* 800E16C4 000DCFE4  88 01 00 08 */	lbz r0, 8(r1)
/* 800E16C8 000DCFE8  98 61 00 1E */	stb r3, 0x1e(r1)
/* 800E16CC 000DCFEC  28 00 00 01 */	cmplwi r0, 1
/* 800E16D0 000DCFF0  40 82 00 10 */	bne lbl_800E16E0
/* 800E16D4 000DCFF4  38 00 00 05 */	li r0, 5
/* 800E16D8 000DCFF8  98 01 00 1D */	stb r0, 0x1d(r1)
/* 800E16DC 000DCFFC  48 00 00 0C */	b lbl_800E16E8
lbl_800E16E0:
/* 800E16E0 000DD000  38 00 00 01 */	li r0, 1
/* 800E16E4 000DD004  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_800E16E8:
/* 800E16E8 000DD008  48 00 0F 59 */	bl func_800E2640
/* 800E16EC 000DD00C  38 61 00 18 */	addi r3, r1, 0x18
/* 800E16F0 000DD010  48 00 3C 61 */	bl func_800E5350
/* 800E16F4 000DD014  38 61 00 10 */	addi r3, r1, 0x10
/* 800E16F8 000DD018  4B FF 7A 29 */	bl func_800D9120
/* 800E16FC 000DD01C  88 01 00 08 */	lbz r0, 8(r1)
/* 800E1700 000DD020  28 00 00 01 */	cmplwi r0, 1
/* 800E1704 000DD024  40 82 00 24 */	bne lbl_800E1728
/* 800E1708 000DD028  38 00 00 01 */	li r0, 1
/* 800E170C 000DD02C  90 0D 97 EC */	stw r0, lbl_803206AC-_SDA_BASE_(r13)
/* 800E1710 000DD030  48 00 13 B1 */	bl func_800E2AC0
/* 800E1714 000DD034  38 60 00 05 */	li r3, 5
/* 800E1718 000DD038  4B FF FD 99 */	bl func_800E14B0
/* 800E171C 000DD03C  48 00 13 E5 */	bl func_800E2B00
/* 800E1720 000DD040  4B FF C1 D1 */	bl func_800DD8F0
/* 800E1724 000DD044  48 00 00 14 */	b lbl_800E1738
lbl_800E1728:
/* 800E1728 000DD048  48 00 13 99 */	bl func_800E2AC0
/* 800E172C 000DD04C  38 60 00 02 */	li r3, 2
/* 800E1730 000DD050  4B FF FD 81 */	bl func_800E14B0
/* 800E1734 000DD054  48 00 30 ED */	bl func_800E4820
lbl_800E1738:
/* 800E1738 000DD058  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E173C 000DD05C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E1740 000DD060  7C 08 03 A6 */	mtlr r0
/* 800E1744 000DD064  38 21 00 40 */	addi r1, r1, 0x40
/* 800E1748 000DD068  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1750
func_800E1750:
/* 800E1750 000DD070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1754 000DD074  7C 08 02 A6 */	mflr r0
/* 800E1758 000DD078  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E175C 000DD07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1760 000DD080  93 C1 00 08 */	stw r30, 8(r1)
/* 800E1764 000DD084  7C 7E 1B 78 */	mr r30, r3
/* 800E1768 000DD088  4B FF 8D 49 */	bl func_800DA4B0
/* 800E176C 000DD08C  7C 7F 1B 78 */	mr r31, r3
/* 800E1770 000DD090  48 00 39 F1 */	bl func_800E5160
/* 800E1774 000DD094  48 00 32 AD */	bl func_800E4A20
/* 800E1778 000DD098  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800E177C 000DD09C  28 00 00 81 */	cmplwi r0, 0x81
/* 800E1780 000DD0A0  40 82 00 20 */	bne lbl_800E17A0
/* 800E1784 000DD0A4  48 00 13 3D */	bl func_800E2AC0
/* 800E1788 000DD0A8  38 60 00 04 */	li r3, 4
/* 800E178C 000DD0AC  4B FF FD 25 */	bl func_800E14B0
/* 800E1790 000DD0B0  48 00 13 71 */	bl func_800E2B00
/* 800E1794 000DD0B4  7F C3 F3 78 */	mr r3, r30
/* 800E1798 000DD0B8  48 00 4E A9 */	bl func_800E6640
/* 800E179C 000DD0BC  48 00 00 28 */	b lbl_800E17C4
lbl_800E17A0:
/* 800E17A0 000DD0C0  28 00 00 80 */	cmplwi r0, 0x80
/* 800E17A4 000DD0C4  40 82 00 20 */	bne lbl_800E17C4
/* 800E17A8 000DD0C8  48 00 13 19 */	bl func_800E2AC0
/* 800E17AC 000DD0CC  38 60 00 04 */	li r3, 4
/* 800E17B0 000DD0D0  4B FF FD 01 */	bl func_800E14B0
/* 800E17B4 000DD0D4  48 00 13 4D */	bl func_800E2B00
/* 800E17B8 000DD0D8  80 8D 97 E8 */	lwz r4, lbl_803206A8-_SDA_BASE_(r13)
/* 800E17BC 000DD0DC  7F C3 F3 78 */	mr r3, r30
/* 800E17C0 000DD0E0  4B FF FB 21 */	bl func_800E12E0
lbl_800E17C4:
/* 800E17C4 000DD0E4  48 00 12 FD */	bl func_800E2AC0
/* 800E17C8 000DD0E8  38 60 00 01 */	li r3, 1
/* 800E17CC 000DD0EC  4B FF FC E5 */	bl func_800E14B0
/* 800E17D0 000DD0F0  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E17D4 000DD0F4  2C 00 00 00 */	cmpwi r0, 0
/* 800E17D8 000DD0F8  40 82 00 10 */	bne lbl_800E17E8
/* 800E17DC 000DD0FC  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E17E0 000DD100  2C 00 00 00 */	cmpwi r0, 0
/* 800E17E4 000DD104  41 82 00 08 */	beq lbl_800E17EC
lbl_800E17E8:
/* 800E17E8 000DD108  48 00 2F 19 */	bl func_800E4700
lbl_800E17EC:
/* 800E17EC 000DD10C  48 00 30 B5 */	bl func_800E48A0
/* 800E17F0 000DD110  3C 60 80 2F */	lis r3, lbl_802F2D30@ha
/* 800E17F4 000DD114  3C A0 80 2F */	lis r5, lbl_802F2D3C@ha
/* 800E17F8 000DD118  38 63 2D 30 */	addi r3, r3, lbl_802F2D30@l
/* 800E17FC 000DD11C  38 80 04 0A */	li r4, 0x40a
/* 800E1800 000DD120  38 A5 2D 3C */	addi r5, r5, lbl_802F2D3C@l
/* 800E1804 000DD124  4C C6 31 82 */	crclr 6
/* 800E1808 000DD128  4B FF AC E9 */	bl func_800DC4F0
/* 800E180C 000DD12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1810 000DD130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1814 000DD134  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E1818 000DD138  7C 08 03 A6 */	mtlr r0
/* 800E181C 000DD13C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1820 000DD140  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1830
func_800E1830:
/* 800E1830 000DD150  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800E1834 000DD154  7C 08 02 A6 */	mflr r0
/* 800E1838 000DD158  90 01 00 94 */	stw r0, 0x94(r1)
/* 800E183C 000DD15C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800E1840 000DD160  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800E1844 000DD164  3F C0 80 2F */	lis r30, lbl_802F2D30@ha
/* 800E1848 000DD168  3B DE 2D 30 */	addi r30, r30, lbl_802F2D30@l
/* 800E184C 000DD16C  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800E1850 000DD170  7C 7D 1B 78 */	mr r29, r3
/* 800E1854 000DD174  48 00 39 0D */	bl func_800E5160
/* 800E1858 000DD178  48 00 31 C9 */	bl func_800E4A20
/* 800E185C 000DD17C  48 00 AF 25 */	bl func_800EC780
/* 800E1860 000DD180  38 61 00 58 */	addi r3, r1, 0x58
/* 800E1864 000DD184  48 00 3B DD */	bl func_800E5440
/* 800E1868 000DD188  8B E1 00 5E */	lbz r31, 0x5e(r1)
/* 800E186C 000DD18C  48 00 AD 15 */	bl func_800EC580
/* 800E1870 000DD190  28 03 00 02 */	cmplwi r3, 2
/* 800E1874 000DD194  41 82 00 0C */	beq lbl_800E1880
/* 800E1878 000DD198  38 00 00 03 */	li r0, 3
/* 800E187C 000DD19C  48 00 00 34 */	b lbl_800E18B0
lbl_800E1880:
/* 800E1880 000DD1A0  28 1F 00 01 */	cmplwi r31, 1
/* 800E1884 000DD1A4  40 82 00 28 */	bne lbl_800E18AC
/* 800E1888 000DD1A8  38 61 00 08 */	addi r3, r1, 8
/* 800E188C 000DD1AC  48 00 0C 95 */	bl func_800E2520
/* 800E1890 000DD1B0  2C 03 00 00 */	cmpwi r3, 0
/* 800E1894 000DD1B4  41 82 00 18 */	beq lbl_800E18AC
/* 800E1898 000DD1B8  80 01 00 08 */	lwz r0, 8(r1)
/* 800E189C 000DD1BC  2C 00 00 00 */	cmpwi r0, 0
/* 800E18A0 000DD1C0  40 82 00 0C */	bne lbl_800E18AC
/* 800E18A4 000DD1C4  38 00 00 01 */	li r0, 1
/* 800E18A8 000DD1C8  48 00 00 08 */	b lbl_800E18B0
lbl_800E18AC:
/* 800E18AC 000DD1CC  38 00 00 02 */	li r0, 2
lbl_800E18B0:
/* 800E18B0 000DD1D0  3B E0 00 03 */	li r31, 3
/* 800E18B4 000DD1D4  98 01 00 5E */	stb r0, 0x5e(r1)
/* 800E18B8 000DD1D8  9B E1 00 5D */	stb r31, 0x5d(r1)
/* 800E18BC 000DD1DC  9B A1 00 5F */	stb r29, 0x5f(r1)
/* 800E18C0 000DD1E0  48 00 0D 81 */	bl func_800E2640
/* 800E18C4 000DD1E4  38 61 00 58 */	addi r3, r1, 0x58
/* 800E18C8 000DD1E8  48 00 3A 89 */	bl func_800E5350
/* 800E18CC 000DD1EC  3C 60 81 28 */	lis r3, 0x8128
/* 800E18D0 000DD1F0  4B FF 98 A1 */	bl func_800DB170
/* 800E18D4 000DD1F4  3C 60 81 2F */	lis r3, 0x812f
/* 800E18D8 000DD1F8  4B FF 98 69 */	bl func_800DB140
/* 800E18DC 000DD1FC  48 09 26 15 */	bl func_80173EF0
/* 800E18E0 000DD200  2C 03 00 00 */	cmpwi r3, 0
/* 800E18E4 000DD204  41 82 00 78 */	beq lbl_800E195C
/* 800E18E8 000DD208  38 61 00 38 */	addi r3, r1, 0x38
/* 800E18EC 000DD20C  48 00 3B 55 */	bl func_800E5440
/* 800E18F0 000DD210  38 00 00 02 */	li r0, 2
/* 800E18F4 000DD214  98 01 00 3E */	stb r0, 0x3e(r1)
/* 800E18F8 000DD218  9B E1 00 3D */	stb r31, 0x3d(r1)
/* 800E18FC 000DD21C  48 00 0D 45 */	bl func_800E2640
/* 800E1900 000DD220  38 61 00 38 */	addi r3, r1, 0x38
/* 800E1904 000DD224  48 00 3A 4D */	bl func_800E5350
/* 800E1908 000DD228  4B FF BF E9 */	bl func_800DD8F0
/* 800E190C 000DD22C  48 00 11 B5 */	bl func_800E2AC0
/* 800E1910 000DD230  48 01 2D 71 */	bl func_800F4680
/* 800E1914 000DD234  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E1918 000DD238  2C 00 00 00 */	cmpwi r0, 0
/* 800E191C 000DD23C  40 82 00 10 */	bne lbl_800E192C
/* 800E1920 000DD240  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E1924 000DD244  2C 00 00 00 */	cmpwi r0, 0
/* 800E1928 000DD248  41 82 00 08 */	beq lbl_800E1930
lbl_800E192C:
/* 800E192C 000DD24C  48 00 2D D5 */	bl func_800E4700
lbl_800E1930:
/* 800E1930 000DD250  48 00 2F 71 */	bl func_800E48A0
/* 800E1934 000DD254  38 7E 00 00 */	addi r3, r30, 0
/* 800E1938 000DD258  38 BE 00 0C */	addi r5, r30, 0xc
/* 800E193C 000DD25C  38 80 04 0A */	li r4, 0x40a
/* 800E1940 000DD260  4C C6 31 82 */	crclr 6
/* 800E1944 000DD264  4B FF AB AD */	bl func_800DC4F0
/* 800E1948 000DD268  38 7E 00 00 */	addi r3, r30, 0
/* 800E194C 000DD26C  38 BE 00 38 */	addi r5, r30, 0x38
/* 800E1950 000DD270  38 80 03 F2 */	li r4, 0x3f2
/* 800E1954 000DD274  4C C6 31 82 */	crclr 6
/* 800E1958 000DD278  4B FF AB 99 */	bl func_800DC4F0
lbl_800E195C:
/* 800E195C 000DD27C  38 60 00 E0 */	li r3, 0xe0
/* 800E1960 000DD280  38 80 00 20 */	li r4, 0x20
/* 800E1964 000DD284  4B FF 98 1D */	bl func_800DB180
/* 800E1968 000DD288  2C 03 00 00 */	cmpwi r3, 0
/* 800E196C 000DD28C  7C 7F 1B 78 */	mr r31, r3
/* 800E1970 000DD290  40 82 00 7C */	bne lbl_800E19EC
/* 800E1974 000DD294  38 61 00 18 */	addi r3, r1, 0x18
/* 800E1978 000DD298  48 00 3A C9 */	bl func_800E5440
/* 800E197C 000DD29C  38 60 00 02 */	li r3, 2
/* 800E1980 000DD2A0  38 00 00 03 */	li r0, 3
/* 800E1984 000DD2A4  98 61 00 1E */	stb r3, 0x1e(r1)
/* 800E1988 000DD2A8  98 01 00 1D */	stb r0, 0x1d(r1)
/* 800E198C 000DD2AC  48 00 0C B5 */	bl func_800E2640
/* 800E1990 000DD2B0  38 61 00 18 */	addi r3, r1, 0x18
/* 800E1994 000DD2B4  48 00 39 BD */	bl func_800E5350
/* 800E1998 000DD2B8  4B FF BF 59 */	bl func_800DD8F0
/* 800E199C 000DD2BC  48 00 11 25 */	bl func_800E2AC0
/* 800E19A0 000DD2C0  48 01 2C E1 */	bl func_800F4680
/* 800E19A4 000DD2C4  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E19A8 000DD2C8  2C 00 00 00 */	cmpwi r0, 0
/* 800E19AC 000DD2CC  40 82 00 10 */	bne lbl_800E19BC
/* 800E19B0 000DD2D0  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E19B4 000DD2D4  2C 00 00 00 */	cmpwi r0, 0
/* 800E19B8 000DD2D8  41 82 00 08 */	beq lbl_800E19C0
lbl_800E19BC:
/* 800E19BC 000DD2DC  48 00 2D 45 */	bl func_800E4700
lbl_800E19C0:
/* 800E19C0 000DD2E0  48 00 2E E1 */	bl func_800E48A0
/* 800E19C4 000DD2E4  38 7E 00 00 */	addi r3, r30, 0
/* 800E19C8 000DD2E8  38 BE 00 0C */	addi r5, r30, 0xc
/* 800E19CC 000DD2EC  38 80 04 0A */	li r4, 0x40a
/* 800E19D0 000DD2F0  4C C6 31 82 */	crclr 6
/* 800E19D4 000DD2F4  4B FF AB 1D */	bl func_800DC4F0
/* 800E19D8 000DD2F8  38 7E 00 00 */	addi r3, r30, 0
/* 800E19DC 000DD2FC  38 BE 00 38 */	addi r5, r30, 0x38
/* 800E19E0 000DD300  38 80 03 F2 */	li r4, 0x3f2
/* 800E19E4 000DD304  4C C6 31 82 */	crclr 6
/* 800E19E8 000DD308  4B FF AB 09 */	bl func_800DC4F0
lbl_800E19EC:
/* 800E19EC 000DD30C  7F E3 FB 78 */	mr r3, r31
/* 800E19F0 000DD310  38 80 00 00 */	li r4, 0
/* 800E19F4 000DD314  38 A0 00 E0 */	li r5, 0xe0
/* 800E19F8 000DD318  4B F2 2D 1D */	bl func_80004714
/* 800E19FC 000DD31C  7F E4 FB 78 */	mr r4, r31
/* 800E1A00 000DD320  38 60 00 00 */	li r3, 0
/* 800E1A04 000DD324  48 09 27 5D */	bl func_80174160
/* 800E1A08 000DD328  2C 03 00 00 */	cmpwi r3, 0
/* 800E1A0C 000DD32C  40 82 00 40 */	bne lbl_800E1A4C
/* 800E1A10 000DD330  48 00 43 11 */	bl func_800E5D20
/* 800E1A14 000DD334  2C 03 00 00 */	cmpwi r3, 0
/* 800E1A18 000DD338  41 82 00 34 */	beq lbl_800E1A4C
/* 800E1A1C 000DD33C  38 60 00 00 */	li r3, 0
/* 800E1A20 000DD340  38 00 FF FF */	li r0, -1
/* 800E1A24 000DD344  90 61 00 10 */	stw r3, 0x10(r1)
/* 800E1A28 000DD348  7F E3 FB 78 */	mr r3, r31
/* 800E1A2C 000DD34C  38 81 00 10 */	addi r4, r1, 0x10
/* 800E1A30 000DD350  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E1A34 000DD354  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E1A38 000DD358  48 00 47 99 */	bl func_800E61D0
/* 800E1A3C 000DD35C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E1A40 000DD360  2C 00 00 00 */	cmpwi r0, 0
/* 800E1A44 000DD364  40 82 00 08 */	bne lbl_800E1A4C
/* 800E1A48 000DD368  48 00 45 D9 */	bl func_800E6020
lbl_800E1A4C:
/* 800E1A4C 000DD36C  48 00 10 75 */	bl func_800E2AC0
/* 800E1A50 000DD370  38 60 00 05 */	li r3, 5
/* 800E1A54 000DD374  4B FF FA 5D */	bl func_800E14B0
/* 800E1A58 000DD378  48 00 10 A9 */	bl func_800E2B00
/* 800E1A5C 000DD37C  4B FF BE 95 */	bl func_800DD8F0
/* 800E1A60 000DD380  48 00 10 61 */	bl func_800E2AC0
/* 800E1A64 000DD384  48 01 2C 1D */	bl func_800F4680
/* 800E1A68 000DD388  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E1A6C 000DD38C  2C 00 00 00 */	cmpwi r0, 0
/* 800E1A70 000DD390  40 82 00 10 */	bne lbl_800E1A80
/* 800E1A74 000DD394  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E1A78 000DD398  2C 00 00 00 */	cmpwi r0, 0
/* 800E1A7C 000DD39C  41 82 00 08 */	beq lbl_800E1A84
lbl_800E1A80:
/* 800E1A80 000DD3A0  48 00 2C 81 */	bl func_800E4700
lbl_800E1A84:
/* 800E1A84 000DD3A4  48 00 2E 1D */	bl func_800E48A0
/* 800E1A88 000DD3A8  38 7E 00 00 */	addi r3, r30, 0
/* 800E1A8C 000DD3AC  38 BE 00 0C */	addi r5, r30, 0xc
/* 800E1A90 000DD3B0  38 80 04 0A */	li r4, 0x40a
/* 800E1A94 000DD3B4  4C C6 31 82 */	crclr 6
/* 800E1A98 000DD3B8  4B FF AA 59 */	bl func_800DC4F0
/* 800E1A9C 000DD3BC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800E1AA0 000DD3C0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800E1AA4 000DD3C4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800E1AA8 000DD3C8  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800E1AAC 000DD3CC  7C 08 03 A6 */	mtlr r0
/* 800E1AB0 000DD3D0  38 21 00 90 */	addi r1, r1, 0x90
/* 800E1AB4 000DD3D4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1AC0
func_800E1AC0:
/* 800E1AC0 000DD3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1AC4 000DD3E4  7C 08 02 A6 */	mflr r0
/* 800E1AC8 000DD3E8  38 60 00 00 */	li r3, 0
/* 800E1ACC 000DD3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1AD0 000DD3F0  4B FF FD 61 */	bl func_800E1830
/* 800E1AD4 000DD3F4  3C 60 80 2F */	lis r3, lbl_802F2D30@ha
/* 800E1AD8 000DD3F8  3C A0 80 2F */	lis r5, lbl_802F2D9C@ha
/* 800E1ADC 000DD3FC  38 63 2D 30 */	addi r3, r3, lbl_802F2D30@l
/* 800E1AE0 000DD400  38 80 03 7F */	li r4, 0x37f
/* 800E1AE4 000DD404  38 A5 2D 9C */	addi r5, r5, lbl_802F2D9C@l
/* 800E1AE8 000DD408  4C C6 31 82 */	crclr 6
/* 800E1AEC 000DD40C  4B FF AA 05 */	bl func_800DC4F0
/* 800E1AF0 000DD410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1AF4 000DD414  7C 08 03 A6 */	mtlr r0
/* 800E1AF8 000DD418  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1AFC 000DD41C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1B00
func_800E1B00:
/* 800E1B00 000DD420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1B04 000DD424  7C 08 02 A6 */	mflr r0
/* 800E1B08 000DD428  38 60 00 01 */	li r3, 1
/* 800E1B0C 000DD42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1B10 000DD430  4B FF FD 21 */	bl func_800E1830
/* 800E1B14 000DD434  3C 60 80 2F */	lis r3, lbl_802F2D30@ha
/* 800E1B18 000DD438  3C A0 80 2F */	lis r5, lbl_802F2DCC@ha
/* 800E1B1C 000DD43C  38 63 2D 30 */	addi r3, r3, lbl_802F2D30@l
/* 800E1B20 000DD440  38 80 03 91 */	li r4, 0x391
/* 800E1B24 000DD444  38 A5 2D CC */	addi r5, r5, lbl_802F2DCC@l
/* 800E1B28 000DD448  4C C6 31 82 */	crclr 6
/* 800E1B2C 000DD44C  4B FF A9 C5 */	bl func_800DC4F0
/* 800E1B30 000DD450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1B34 000DD454  7C 08 03 A6 */	mtlr r0
/* 800E1B38 000DD458  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1B3C 000DD45C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1B40
func_800E1B40:
/* 800E1B40 000DD460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E1B44 000DD464  7C 08 02 A6 */	mflr r0
/* 800E1B48 000DD468  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E1B4C 000DD46C  38 61 00 08 */	addi r3, r1, 8
/* 800E1B50 000DD470  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E1B54 000DD474  3F E0 80 2F */	lis r31, lbl_802F2D30@ha
/* 800E1B58 000DD478  3B FF 2D 30 */	addi r31, r31, lbl_802F2D30@l
/* 800E1B5C 000DD47C  48 00 38 E5 */	bl func_800E5440
/* 800E1B60 000DD480  38 60 00 02 */	li r3, 2
/* 800E1B64 000DD484  38 00 00 03 */	li r0, 3
/* 800E1B68 000DD488  98 61 00 0E */	stb r3, 0xe(r1)
/* 800E1B6C 000DD48C  98 01 00 0D */	stb r0, 0xd(r1)
/* 800E1B70 000DD490  48 00 0A D1 */	bl func_800E2640
/* 800E1B74 000DD494  38 61 00 08 */	addi r3, r1, 8
/* 800E1B78 000DD498  48 00 37 D9 */	bl func_800E5350
/* 800E1B7C 000DD49C  4B FF BD 75 */	bl func_800DD8F0
/* 800E1B80 000DD4A0  48 00 0F 41 */	bl func_800E2AC0
/* 800E1B84 000DD4A4  48 01 2A FD */	bl func_800F4680
/* 800E1B88 000DD4A8  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E1B8C 000DD4AC  2C 00 00 00 */	cmpwi r0, 0
/* 800E1B90 000DD4B0  40 82 00 10 */	bne lbl_800E1BA0
/* 800E1B94 000DD4B4  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E1B98 000DD4B8  2C 00 00 00 */	cmpwi r0, 0
/* 800E1B9C 000DD4BC  41 82 00 08 */	beq lbl_800E1BA4
lbl_800E1BA0:
/* 800E1BA0 000DD4C0  48 00 2B 61 */	bl func_800E4700
lbl_800E1BA4:
/* 800E1BA4 000DD4C4  48 00 2C FD */	bl func_800E48A0
/* 800E1BA8 000DD4C8  38 7F 00 00 */	addi r3, r31, 0
/* 800E1BAC 000DD4CC  38 BF 00 0C */	addi r5, r31, 0xc
/* 800E1BB0 000DD4D0  38 80 04 0A */	li r4, 0x40a
/* 800E1BB4 000DD4D4  4C C6 31 82 */	crclr 6
/* 800E1BB8 000DD4D8  4B FF A9 39 */	bl func_800DC4F0
/* 800E1BBC 000DD4DC  38 7F 00 00 */	addi r3, r31, 0
/* 800E1BC0 000DD4E0  38 BF 00 38 */	addi r5, r31, 0x38
/* 800E1BC4 000DD4E4  38 80 03 F2 */	li r4, 0x3f2
/* 800E1BC8 000DD4E8  4C C6 31 82 */	crclr 6
/* 800E1BCC 000DD4EC  4B FF A9 25 */	bl func_800DC4F0
/* 800E1BD0 000DD4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E1BD4 000DD4F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E1BD8 000DD4F8  7C 08 03 A6 */	mtlr r0
/* 800E1BDC 000DD4FC  38 21 00 30 */	addi r1, r1, 0x30
/* 800E1BE0 000DD500  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1BF0
func_800E1BF0:
/* 800E1BF0 000DD510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1BF4 000DD514  7C 08 02 A6 */	mflr r0
/* 800E1BF8 000DD518  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1BFC 000DD51C  80 0D 97 34 */	lwz r0, lbl_803205F4-_SDA_BASE_(r13)
/* 800E1C00 000DD520  2C 00 00 00 */	cmpwi r0, 0
/* 800E1C04 000DD524  40 82 00 10 */	bne lbl_800E1C14
/* 800E1C08 000DD528  80 0D 97 A4 */	lwz r0, lbl_80320664-_SDA_BASE_(r13)
/* 800E1C0C 000DD52C  2C 00 00 00 */	cmpwi r0, 0
/* 800E1C10 000DD530  41 82 00 08 */	beq lbl_800E1C18
lbl_800E1C14:
/* 800E1C14 000DD534  48 00 2A ED */	bl func_800E4700
lbl_800E1C18:
/* 800E1C18 000DD538  48 00 2C 89 */	bl func_800E48A0
/* 800E1C1C 000DD53C  3C 60 80 2F */	lis r3, lbl_802F2D30@ha
/* 800E1C20 000DD540  3C A0 80 2F */	lis r5, lbl_802F2D3C@ha
/* 800E1C24 000DD544  38 63 2D 30 */	addi r3, r3, lbl_802F2D30@l
/* 800E1C28 000DD548  38 80 04 0A */	li r4, 0x40a
/* 800E1C2C 000DD54C  38 A5 2D 3C */	addi r5, r5, lbl_802F2D3C@l
/* 800E1C30 000DD550  4C C6 31 82 */	crclr 6
/* 800E1C34 000DD554  4B FF A8 BD */	bl func_800DC4F0
/* 800E1C38 000DD558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1C3C 000DD55C  7C 08 03 A6 */	mtlr r0
/* 800E1C40 000DD560  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1C44 000DD564  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1C50
func_800E1C50:
/* 800E1C50 000DD570  3C 60 80 35 */	lis r3, lbl_8034C9C0@ha
/* 800E1C54 000DD574  80 03 C9 C0 */	lwz r0, lbl_8034C9C0@l(r3)
/* 800E1C58 000DD578  2C 00 00 00 */	cmpwi r0, 0
/* 800E1C5C 000DD57C  41 82 00 14 */	beq lbl_800E1C70
/* 800E1C60 000DD580  38 63 C9 C0 */	addi r3, r3, -13888
/* 800E1C64 000DD584  80 03 00 04 */	lwz r0, 4(r3)
/* 800E1C68 000DD588  64 03 80 00 */	oris r3, r0, 0x8000
/* 800E1C6C 000DD58C  4E 80 00 20 */	blr 
lbl_800E1C70:
/* 800E1C70 000DD590  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 800E1C74 000DD594  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 800E1C78 000DD598  54 03 E8 FE */	srwi r3, r0, 3
/* 800E1C7C 000DD59C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E1C80
func_800E1C80:
/* 800E1C80 000DD5A0  3C 60 80 2F */	lis r3, lbl_802F2D30@ha
/* 800E1C84 000DD5A4  3C A0 80 2F */	lis r5, lbl_802F2F1C@ha
/* 800E1C88 000DD5A8  38 63 2D 30 */	addi r3, r3, lbl_802F2D30@l
/* 800E1C8C 000DD5AC  38 80 04 A1 */	li r4, 0x4a1
/* 800E1C90 000DD5B0  38 A5 2F 1C */	addi r5, r5, lbl_802F2F1C@l
/* 800E1C94 000DD5B4  4C C6 31 82 */	crclr 6
/* 800E1C98 000DD5B8  4B FF A8 58 */	b func_800DC4F0


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802F2D30

lbl_802F2D30:

	# ROM: 0x2EEE30
	.asciz "OSReset.c"
	.balign 4


.global lbl_802F2D3C

lbl_802F2D3C:

	# ROM: 0x2EEE3C
	.asciz "__OSHotReset(): Falied to reset system.\n"
	.balign 4
	.asciz "__OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4


.global lbl_802F2D9C

lbl_802F2D9C:

	# ROM: 0x2EEE9C
	.asciz "OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4


.global lbl_802F2DCC

lbl_802F2DCC:

	# ROM: 0x2EEECC
	.asciz "OSReturnToDataManager(): Falied to boot system menu.\n"
	.balign 4
	.asciz "Calendar/Calendar_index.html"
	.balign 4
	.asciz "Display/Display_index.html"
	.balign 4
	.asciz "Sound/Sound_index.html"
	.balign 4
	.asciz "Parental_Control/Parental_Control_index.html"
	.balign 4
	.asciz "Internet/Internet_index.html"
	.balign 4
	.asciz "WiiConnect24/Wiiconnect24_index.html"
	.balign 4
	.asciz "Update/Update_index.html"
	.balign 4
	.asciz "OSReturnToSetting(): You can't specify %d.  \n"
	.balign 4


.global lbl_802F2F1C

lbl_802F2F1C:

	# ROM: 0x2EF01C
	.asciz "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
	.balign 4
	.asciz "OSSetBootDol() is obsoleted. It doesn't work any longer.\n"
	.balign 4
	.4byte 0


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_803206A8
lbl_803206A8:
	.skip 0x4
.global lbl_803206AC
lbl_803206AC:
	.skip 0x4
.global lbl_803206B0
lbl_803206B0:
	.skip 0x8
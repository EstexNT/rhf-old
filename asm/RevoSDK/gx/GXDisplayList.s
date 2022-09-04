.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_80102630
func_80102630:
/* 80102630 000FDF50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80102634 000FDF54  7C 08 02 A6 */	mflr r0
/* 80102638 000FDF58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010263C 000FDF5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80102640 000FDF60  48 00 1B 2D */	bl func_8010416C
/* 80102644 000FDF64  83 C2 F9 70 */	lwz r30, lbl_80328950-_SDA2_BASE_(r2)
/* 80102648 000FDF68  3F E0 80 37 */	lis r31, lbl_80368EE8@ha
/* 8010264C 000FDF6C  3B FF 8E E8 */	addi r31, r31, lbl_80368EE8@l
/* 80102650 000FDF70  7C 7B 1B 78 */	mr r27, r3
/* 80102654 000FDF74  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80102658 000FDF78  7C 9C 23 78 */	mr r28, r4
/* 8010265C 000FDF7C  3B BF 00 00 */	addi r29, r31, 0
/* 80102660 000FDF80  2C 00 00 00 */	cmpwi r0, 0
/* 80102664 000FDF84  41 82 00 08 */	beq lbl_8010266C
/* 80102668 000FDF88  4B FF C4 29 */	bl func_800FEA90
lbl_8010266C:
/* 8010266C 000FDF8C  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80102670 000FDF90  2C 00 00 00 */	cmpwi r0, 0
/* 80102674 000FDF94  41 82 00 14 */	beq lbl_80102688
/* 80102678 000FDF98  7F C4 F3 78 */	mr r4, r30
/* 8010267C 000FDF9C  38 7F 00 80 */	addi r3, r31, 0x80
/* 80102680 000FDFA0  38 A0 06 00 */	li r5, 0x600
/* 80102684 000FDFA4  4B F0 1D 41 */	bl func_800043C4
lbl_80102688:
/* 80102688 000FDFA8  7C 9B E2 14 */	add r4, r27, r28
/* 8010268C 000FDFAC  38 60 00 00 */	li r3, 0
/* 80102690 000FDFB0  38 84 FF FC */	addi r4, r4, -4
/* 80102694 000FDFB4  93 7D 00 00 */	stw r27, 0(r29)
/* 80102698 000FDFB8  38 00 00 01 */	li r0, 1
/* 8010269C 000FDFBC  90 9D 00 04 */	stw r4, 4(r29)
/* 801026A0 000FDFC0  93 9D 00 08 */	stw r28, 8(r29)
/* 801026A4 000FDFC4  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 801026A8 000FDFC8  93 7D 00 14 */	stw r27, 0x14(r29)
/* 801026AC 000FDFCC  93 7D 00 18 */	stw r27, 0x18(r29)
/* 801026B0 000FDFD0  98 1E 05 F8 */	stb r0, 0x5f8(r30)
/* 801026B4 000FDFD4  4B FF BB BD */	bl func_800FE270
/* 801026B8 000FDFD8  38 7F 06 80 */	addi r3, r31, 0x680
/* 801026BC 000FDFDC  4B FF AC C5 */	bl func_800FD380
/* 801026C0 000FDFE0  38 7F 00 00 */	addi r3, r31, 0
/* 801026C4 000FDFE4  4B FF A7 3D */	bl func_800FCE00
/* 801026C8 000FDFE8  4B FF BC 09 */	bl func_800FE2D0
/* 801026CC 000FDFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 801026D0 000FDFF0  48 00 1A E9 */	bl func_801041B8
/* 801026D4 000FDFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801026D8 000FDFF8  7C 08 03 A6 */	mtlr r0
/* 801026DC 000FDFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 801026E0 000FE000  4E 80 00 20 */	blr 

.balign 16, 0
.global func_801026F0
func_801026F0:
/* 801026F0 000FE010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801026F4 000FE014  7C 08 02 A6 */	mflr r0
/* 801026F8 000FE018  90 01 00 24 */	stw r0, 0x24(r1)
/* 801026FC 000FE01C  39 61 00 20 */	addi r11, r1, 0x20
/* 80102700 000FE020  48 00 1A 69 */	bl func_80104168
/* 80102704 000FE024  3F C0 80 37 */	lis r30, lbl_80368EE8@ha
/* 80102708 000FE028  3B DE 8E E8 */	addi r30, r30, lbl_80368EE8@l
/* 8010270C 000FE02C  4B FF BB 65 */	bl func_800FE270
/* 80102710 000FE030  38 7E 00 00 */	addi r3, r30, 0
/* 80102714 000FE034  4B FF AC 6D */	bl func_800FD380
/* 80102718 000FE038  38 7E 00 00 */	addi r3, r30, 0
/* 8010271C 000FE03C  4B FF AD 05 */	bl func_800FD420
/* 80102720 000FE040  7C 7F 1B 78 */	mr r31, r3
/* 80102724 000FE044  38 7E 06 80 */	addi r3, r30, 0x680
/* 80102728 000FE048  4B FF A6 D9 */	bl func_800FCE00
/* 8010272C 000FE04C  83 A2 F9 70 */	lwz r29, lbl_80328950-_SDA2_BASE_(r2)
/* 80102730 000FE050  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80102734 000FE054  2C 00 00 00 */	cmpwi r0, 0
/* 80102738 000FE058  41 82 00 30 */	beq lbl_80102768
/* 8010273C 000FE05C  4B FD D6 E5 */	bl func_800DFE20
/* 80102740 000FE060  83 82 F9 70 */	lwz r28, lbl_80328950-_SDA2_BASE_(r2)
/* 80102744 000FE064  7C 7B 1B 78 */	mr r27, r3
/* 80102748 000FE068  38 9E 00 80 */	addi r4, r30, 0x80
/* 8010274C 000FE06C  38 A0 06 00 */	li r5, 0x600
/* 80102750 000FE070  83 5C 00 08 */	lwz r26, 8(r28)
/* 80102754 000FE074  7F 83 E3 78 */	mr r3, r28
/* 80102758 000FE078  4B F0 1C 6D */	bl func_800043C4
/* 8010275C 000FE07C  93 5C 00 08 */	stw r26, 8(r28)
/* 80102760 000FE080  7F 63 DB 78 */	mr r3, r27
/* 80102764 000FE084  4B FD D6 FD */	bl func_800DFE60
lbl_80102768:
/* 80102768 000FE088  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8010276C 000FE08C  38 00 00 00 */	li r0, 0
/* 80102770 000FE090  98 1D 05 F8 */	stb r0, 0x5f8(r29)
/* 80102774 000FE094  40 82 00 10 */	bne lbl_80102784
/* 80102778 000FE098  38 7E 00 00 */	addi r3, r30, 0
/* 8010277C 000FE09C  4B FF AC 95 */	bl func_800FD410
/* 80102780 000FE0A0  48 00 00 08 */	b lbl_80102788
lbl_80102784:
/* 80102784 000FE0A4  38 60 00 00 */	li r3, 0
lbl_80102788:
/* 80102788 000FE0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8010278C 000FE0AC  48 00 1A 29 */	bl func_801041B4
/* 80102790 000FE0B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80102794 000FE0B4  7C 08 03 A6 */	mtlr r0
/* 80102798 000FE0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8010279C 000FE0BC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_801027A0
func_801027A0:
/* 801027A0 000FE0C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801027A4 000FE0C4  7C 08 02 A6 */	mflr r0
/* 801027A8 000FE0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801027AC 000FE0CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801027B0 000FE0D0  83 E2 F9 70 */	lwz r31, lbl_80328950-_SDA2_BASE_(r2)
/* 801027B4 000FE0D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801027B8 000FE0D8  7C 9E 23 78 */	mr r30, r4
/* 801027BC 000FE0DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801027C0 000FE0E0  7C 7D 1B 78 */	mr r29, r3
/* 801027C4 000FE0E4  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 801027C8 000FE0E8  2C 00 00 00 */	cmpwi r0, 0
/* 801027CC 000FE0EC  41 82 00 08 */	beq lbl_801027D4
/* 801027D0 000FE0F0  4B FF C2 C1 */	bl func_800FEA90
lbl_801027D4:
/* 801027D4 000FE0F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 801027D8 000FE0F8  2C 00 00 00 */	cmpwi r0, 0
/* 801027DC 000FE0FC  40 82 00 08 */	bne lbl_801027E4
/* 801027E0 000FE100  4B FF C6 81 */	bl func_800FEE60
lbl_801027E4:
/* 801027E4 000FE104  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801027E8 000FE108  38 00 00 40 */	li r0, 0x40
/* 801027EC 000FE10C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801027F0 000FE110  93 A3 80 00 */	stw r29, -0x8000(r3)
/* 801027F4 000FE114  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 801027F8 000FE118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801027FC 000FE11C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80102800 000FE120  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80102804 000FE124  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80102808 000FE128  7C 08 03 A6 */	mtlr r0
/* 8010280C 000FE12C  38 21 00 20 */	addi r1, r1, 0x20
/* 80102810 000FE130  4E 80 00 20 */	blr 


.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_80368EE8
lbl_80368EE8:
	.skip 0x80
.global lbl_80368F68
lbl_80368F68:
	.skip 0x600
.global lbl_80369568
lbl_80369568:
	.skip 0x80
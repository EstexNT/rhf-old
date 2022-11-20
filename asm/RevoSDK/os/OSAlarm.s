.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800DA4D0
func_800DA4D0:
/* 800DA4D0 000D5DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DA4D4 000D5DF4  7C 08 02 A6 */	mflr r0
/* 800DA4D8 000D5DF8  38 60 00 08 */	li r3, 8
/* 800DA4DC 000D5DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DA4E0 000D5E00  4B FF FD B1 */	bl func_800DA290
/* 800DA4E4 000D5E04  3C 80 80 0E */	lis r4, func_800DABE0@ha
/* 800DA4E8 000D5E08  38 84 AB E0 */	addi r4, r4, func_800DABE0@l
/* 800DA4EC 000D5E0C  7C 03 20 40 */	cmplw r3, r4
/* 800DA4F0 000D5E10  41 82 00 28 */	beq lbl_800DA518
/* 800DA4F4 000D5E14  38 6D 97 78 */	addi r3, r13, lbl_80320638-_SDA_BASE_
/* 800DA4F8 000D5E18  38 00 00 00 */	li r0, 0
/* 800DA4FC 000D5E1C  90 03 00 04 */	stw r0, 4(r3)
/* 800DA500 000D5E20  38 60 00 08 */	li r3, 8
/* 800DA504 000D5E24  90 0D 97 78 */	stw r0, lbl_80320638-_SDA_BASE_(r13)
/* 800DA508 000D5E28  4B FF FD 69 */	bl func_800DA270
/* 800DA50C 000D5E2C  3C 60 80 2F */	lis r3, lbl_802F17E0@ha
/* 800DA510 000D5E30  38 63 17 E0 */	addi r3, r3, lbl_802F17E0@l
/* 800DA514 000D5E34  48 00 6E 5D */	bl func_800E1370
lbl_800DA518:
/* 800DA518 000D5E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DA51C 000D5E3C  7C 08 03 A6 */	mtlr r0
/* 800DA520 000D5E40  38 21 00 10 */	addi r1, r1, 0x10
/* 800DA524 000D5E44  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA530
func_800DA530:
/* 800DA530 000D5E50  38 00 00 00 */	li r0, 0
/* 800DA534 000D5E54  90 03 00 00 */	stw r0, 0(r3)
/* 800DA538 000D5E58  90 03 00 04 */	stw r0, 4(r3)
/* 800DA53C 000D5E5C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA540
func_800DA540:
/* 800DA540 000D5E60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DA544 000D5E64  7C 08 02 A6 */	mflr r0
/* 800DA548 000D5E68  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DA54C 000D5E6C  39 61 00 30 */	addi r11, r1, 0x30
/* 800DA550 000D5E70  48 02 9C 15 */	bl func_80104164
/* 800DA554 000D5E74  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800DA558 000D5E78  3B A0 00 00 */	li r29, 0
/* 800DA55C 000D5E7C  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 800DA560 000D5E80  7C 7E 1B 78 */	mr r30, r3
/* 800DA564 000D5E84  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 800DA568 000D5E88  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 800DA56C 000D5E8C  7C 68 E8 10 */	subfc r3, r8, r29
/* 800DA570 000D5E90  7C FF 3B 78 */	mr r31, r7
/* 800DA574 000D5E94  7C 84 01 10 */	subfe r4, r4, r0
/* 800DA578 000D5E98  7C 80 01 10 */	subfe r4, r0, r0
/* 800DA57C 000D5E9C  7C 84 00 D1 */	neg. r4, r4
/* 800DA580 000D5EA0  41 82 00 7C */	beq lbl_800DA5FC
/* 800DA584 000D5EA4  48 00 99 0D */	bl func_800E3E90
/* 800DA588 000D5EA8  83 9E 00 20 */	lwz r28, 0x20(r30)
/* 800DA58C 000D5EAC  6C 67 80 00 */	xoris r7, r3, 0x8000
/* 800DA590 000D5EB0  83 7E 00 24 */	lwz r27, 0x24(r30)
/* 800DA594 000D5EB4  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 800DA598 000D5EB8  7F 85 E3 78 */	mr r5, r28
/* 800DA59C 000D5EBC  7C C4 D8 10 */	subfc r6, r4, r27
/* 800DA5A0 000D5EC0  7C E7 01 10 */	subfe r7, r7, r0
/* 800DA5A4 000D5EC4  7C E0 01 10 */	subfe r7, r0, r0
/* 800DA5A8 000D5EC8  7F 66 DB 78 */	mr r6, r27
/* 800DA5AC 000D5ECC  7C E7 00 D1 */	neg. r7, r7
/* 800DA5B0 000D5ED0  41 82 00 4C */	beq lbl_800DA5FC
/* 800DA5B4 000D5ED4  83 5E 00 18 */	lwz r26, 0x18(r30)
/* 800DA5B8 000D5ED8  7C 9B 20 10 */	subfc r4, r27, r4
/* 800DA5BC 000D5EDC  83 3E 00 1C */	lwz r25, 0x1c(r30)
/* 800DA5C0 000D5EE0  7C 7C 19 10 */	subfe r3, r28, r3
/* 800DA5C4 000D5EE4  7F 45 D3 78 */	mr r5, r26
/* 800DA5C8 000D5EE8  7F 26 CB 78 */	mr r6, r25
/* 800DA5CC 000D5EEC  48 02 9C F1 */	bl func_801042BC
/* 800DA5D0 000D5EF0  38 00 00 01 */	li r0, 1
/* 800DA5D4 000D5EF4  7C 84 00 14 */	addc r4, r4, r0
/* 800DA5D8 000D5EF8  7C 19 20 16 */	mulhwu r0, r25, r4
/* 800DA5DC 000D5EFC  7C A3 E9 14 */	adde r5, r3, r29
/* 800DA5E0 000D5F00  7C 7A 21 D6 */	mullw r3, r26, r4
/* 800DA5E4 000D5F04  7C 99 21 D6 */	mullw r4, r25, r4
/* 800DA5E8 000D5F08  7C 60 1A 14 */	add r3, r0, r3
/* 800DA5EC 000D5F0C  7C 19 29 D6 */	mullw r0, r25, r5
/* 800DA5F0 000D5F10  7C DB 20 14 */	addc r6, r27, r4
/* 800DA5F4 000D5F14  7C 03 02 14 */	add r0, r3, r0
/* 800DA5F8 000D5F18  7C BC 01 14 */	adde r5, r28, r0
lbl_800DA5FC:
/* 800DA5FC 000D5F1C  93 FE 00 00 */	stw r31, 0(r30)
/* 800DA600 000D5F20  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800DA604 000D5F24  90 DE 00 0C */	stw r6, 0xc(r30)
/* 800DA608 000D5F28  90 BE 00 08 */	stw r5, 8(r30)
/* 800DA60C 000D5F2C  80 ED 97 78 */	lwz r7, lbl_80320638-_SDA_BASE_(r13)
/* 800DA610 000D5F30  48 00 00 C4 */	b lbl_800DA6D4
lbl_800DA614:
/* 800DA614 000D5F34  80 67 00 08 */	lwz r3, 8(r7)
/* 800DA618 000D5F38  80 A7 00 0C */	lwz r5, 0xc(r7)
/* 800DA61C 000D5F3C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800DA620 000D5F40  7C 65 30 10 */	subfc r3, r5, r6
/* 800DA624 000D5F44  7C 84 01 10 */	subfe r4, r4, r0
/* 800DA628 000D5F48  7C 80 01 10 */	subfe r4, r0, r0
/* 800DA62C 000D5F4C  7C 84 00 D1 */	neg. r4, r4
/* 800DA630 000D5F50  41 82 00 A0 */	beq lbl_800DA6D0
/* 800DA634 000D5F54  80 07 00 10 */	lwz r0, 0x10(r7)
/* 800DA638 000D5F58  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800DA63C 000D5F5C  93 C7 00 10 */	stw r30, 0x10(r7)
/* 800DA640 000D5F60  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800DA644 000D5F64  90 FE 00 14 */	stw r7, 0x14(r30)
/* 800DA648 000D5F68  2C 03 00 00 */	cmpwi r3, 0
/* 800DA64C 000D5F6C  41 82 00 0C */	beq lbl_800DA658
/* 800DA650 000D5F70  93 C3 00 14 */	stw r30, 0x14(r3)
/* 800DA654 000D5F74  48 00 01 24 */	b lbl_800DA778
lbl_800DA658:
/* 800DA658 000D5F78  93 CD 97 78 */	stw r30, lbl_80320638-_SDA_BASE_(r13)
/* 800DA65C 000D5F7C  48 00 98 35 */	bl func_800E3E90
/* 800DA660 000D5F80  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800DA664 000D5F84  38 E0 00 00 */	li r7, 0
/* 800DA668 000D5F88  80 1E 00 08 */	lwz r0, 8(r30)
/* 800DA66C 000D5F8C  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800DA670 000D5F90  7D 04 28 10 */	subfc r8, r4, r5
/* 800DA674 000D5F94  7C 03 01 10 */	subfe r0, r3, r0
/* 800DA678 000D5F98  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800DA67C 000D5F9C  7C 07 40 10 */	subfc r0, r7, r8
/* 800DA680 000D5FA0  7C C6 29 10 */	subfe r6, r6, r5
/* 800DA684 000D5FA4  7C C5 29 10 */	subfe r6, r5, r5
/* 800DA688 000D5FA8  7C C6 00 D1 */	neg. r6, r6
/* 800DA68C 000D5FAC  41 82 00 10 */	beq lbl_800DA69C
/* 800DA690 000D5FB0  38 60 00 00 */	li r3, 0
/* 800DA694 000D5FB4  4B FF E7 9D */	bl func_800D8E30
/* 800DA698 000D5FB8  48 00 00 E0 */	b lbl_800DA778
lbl_800DA69C:
/* 800DA69C 000D5FBC  3C 80 80 00 */	lis r4, 0x8000
/* 800DA6A0 000D5FC0  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800DA6A4 000D5FC4  7C 04 40 10 */	subfc r0, r4, r8
/* 800DA6A8 000D5FC8  7C 63 29 10 */	subfe r3, r3, r5
/* 800DA6AC 000D5FCC  7C 65 29 10 */	subfe r3, r5, r5
/* 800DA6B0 000D5FD0  7C 63 00 D1 */	neg. r3, r3
/* 800DA6B4 000D5FD4  41 82 00 10 */	beq lbl_800DA6C4
/* 800DA6B8 000D5FD8  7D 03 43 78 */	mr r3, r8
/* 800DA6BC 000D5FDC  4B FF E7 75 */	bl func_800D8E30
/* 800DA6C0 000D5FE0  48 00 00 B8 */	b lbl_800DA778
lbl_800DA6C4:
/* 800DA6C4 000D5FE4  38 64 FF FF */	addi r3, r4, -1
/* 800DA6C8 000D5FE8  4B FF E7 69 */	bl func_800D8E30
/* 800DA6CC 000D5FEC  48 00 00 AC */	b lbl_800DA778
lbl_800DA6D0:
/* 800DA6D0 000D5FF0  80 E7 00 14 */	lwz r7, 0x14(r7)
lbl_800DA6D4:
/* 800DA6D4 000D5FF4  2C 07 00 00 */	cmpwi r7, 0
/* 800DA6D8 000D5FF8  40 82 FF 3C */	bne lbl_800DA614
/* 800DA6DC 000D5FFC  3B E0 00 00 */	li r31, 0
/* 800DA6E0 000D6000  93 FE 00 14 */	stw r31, 0x14(r30)
/* 800DA6E4 000D6004  38 6D 97 78 */	addi r3, r13, lbl_80320638-_SDA_BASE_
/* 800DA6E8 000D6008  80 83 00 04 */	lwz r4, 4(r3)
/* 800DA6EC 000D600C  93 C3 00 04 */	stw r30, 4(r3)
/* 800DA6F0 000D6010  2C 04 00 00 */	cmpwi r4, 0
/* 800DA6F4 000D6014  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800DA6F8 000D6018  41 82 00 0C */	beq lbl_800DA704
/* 800DA6FC 000D601C  93 C4 00 14 */	stw r30, 0x14(r4)
/* 800DA700 000D6020  48 00 00 78 */	b lbl_800DA778
lbl_800DA704:
/* 800DA704 000D6024  93 C3 00 04 */	stw r30, 4(r3)
/* 800DA708 000D6028  93 CD 97 78 */	stw r30, lbl_80320638-_SDA_BASE_(r13)
/* 800DA70C 000D602C  48 00 97 85 */	bl func_800E3E90
/* 800DA710 000D6030  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800DA714 000D6034  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 800DA718 000D6038  80 1E 00 08 */	lwz r0, 8(r30)
/* 800DA71C 000D603C  7C E4 28 10 */	subfc r7, r4, r5
/* 800DA720 000D6040  7C 03 01 10 */	subfe r0, r3, r0
/* 800DA724 000D6044  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800DA728 000D6048  7C 1F 38 10 */	subfc r0, r31, r7
/* 800DA72C 000D604C  7C C6 29 10 */	subfe r6, r6, r5
/* 800DA730 000D6050  7C C5 29 10 */	subfe r6, r5, r5
/* 800DA734 000D6054  7C C6 00 D1 */	neg. r6, r6
/* 800DA738 000D6058  41 82 00 10 */	beq lbl_800DA748
/* 800DA73C 000D605C  38 60 00 00 */	li r3, 0
/* 800DA740 000D6060  4B FF E6 F1 */	bl func_800D8E30
/* 800DA744 000D6064  48 00 00 34 */	b lbl_800DA778
lbl_800DA748:
/* 800DA748 000D6068  3C 80 80 00 */	lis r4, 0x8000
/* 800DA74C 000D606C  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 800DA750 000D6070  7C 04 38 10 */	subfc r0, r4, r7
/* 800DA754 000D6074  7C 63 29 10 */	subfe r3, r3, r5
/* 800DA758 000D6078  7C 65 29 10 */	subfe r3, r5, r5
/* 800DA75C 000D607C  7C 63 00 D1 */	neg. r3, r3
/* 800DA760 000D6080  41 82 00 10 */	beq lbl_800DA770
/* 800DA764 000D6084  7C E3 3B 78 */	mr r3, r7
/* 800DA768 000D6088  4B FF E6 C9 */	bl func_800D8E30
/* 800DA76C 000D608C  48 00 00 0C */	b lbl_800DA778
lbl_800DA770:
/* 800DA770 000D6090  38 64 FF FF */	addi r3, r4, -1
/* 800DA774 000D6094  4B FF E6 BD */	bl func_800D8E30
lbl_800DA778:
/* 800DA778 000D6098  39 61 00 30 */	addi r11, r1, 0x30
/* 800DA77C 000D609C  48 02 9A 35 */	bl func_801041B0
/* 800DA780 000D60A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DA784 000D60A4  7C 08 03 A6 */	mtlr r0
/* 800DA788 000D60A8  38 21 00 30 */	addi r1, r1, 0x30
/* 800DA78C 000D60AC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA790
func_800DA790:
/* 800DA790 000D60B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DA794 000D60B4  7C 08 02 A6 */	mflr r0
/* 800DA798 000D60B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DA79C 000D60BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800DA7A0 000D60C0  48 02 99 CD */	bl func_8010416C
/* 800DA7A4 000D60C4  7C 7B 1B 78 */	mr r27, r3
/* 800DA7A8 000D60C8  7C BD 2B 78 */	mr r29, r5
/* 800DA7AC 000D60CC  7C DC 33 78 */	mr r28, r6
/* 800DA7B0 000D60D0  7C FE 3B 78 */	mr r30, r7
/* 800DA7B4 000D60D4  48 00 56 6D */	bl func_800DFE20
/* 800DA7B8 000D60D8  38 00 00 00 */	li r0, 0
/* 800DA7BC 000D60DC  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 800DA7C0 000D60E0  7C 7F 1B 78 */	mr r31, r3
/* 800DA7C4 000D60E4  90 1B 00 18 */	stw r0, 0x18(r27)
/* 800DA7C8 000D60E8  48 00 96 C9 */	bl func_800E3E90
/* 800DA7CC 000D60EC  7C DC 20 14 */	addc r6, r28, r4
/* 800DA7D0 000D60F0  7F C7 F3 78 */	mr r7, r30
/* 800DA7D4 000D60F4  7C BD 19 14 */	adde r5, r29, r3
/* 800DA7D8 000D60F8  7F 63 DB 78 */	mr r3, r27
/* 800DA7DC 000D60FC  4B FF FD 65 */	bl func_800DA540
/* 800DA7E0 000D6100  7F E3 FB 78 */	mr r3, r31
/* 800DA7E4 000D6104  48 00 56 7D */	bl func_800DFE60
/* 800DA7E8 000D6108  39 61 00 20 */	addi r11, r1, 0x20
/* 800DA7EC 000D610C  48 02 99 CD */	bl func_801041B8
/* 800DA7F0 000D6110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DA7F4 000D6114  7C 08 03 A6 */	mtlr r0
/* 800DA7F8 000D6118  38 21 00 20 */	addi r1, r1, 0x20
/* 800DA7FC 000D611C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA800
func_800DA800:
/* 800DA800 000D6120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DA804 000D6124  7C 08 02 A6 */	mflr r0
/* 800DA808 000D6128  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DA80C 000D612C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DA810 000D6130  48 02 99 59 */	bl func_80104168
/* 800DA814 000D6134  7C 7A 1B 78 */	mr r26, r3
/* 800DA818 000D6138  7C BC 2B 78 */	mr r28, r5
/* 800DA81C 000D613C  7C DB 33 78 */	mr r27, r6
/* 800DA820 000D6140  7C FD 3B 78 */	mr r29, r7
/* 800DA824 000D6144  7D 1F 43 78 */	mr r31, r8
/* 800DA828 000D6148  7D 3E 4B 78 */	mr r30, r9
/* 800DA82C 000D614C  48 00 55 F5 */	bl func_800DFE20
/* 800DA830 000D6150  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 800DA834 000D6154  7C 7F 1B 78 */	mr r31, r3
/* 800DA838 000D6158  7F 64 DB 78 */	mr r4, r27
/* 800DA83C 000D615C  7F 83 E3 78 */	mr r3, r28
/* 800DA840 000D6160  93 BA 00 18 */	stw r29, 0x18(r26)
/* 800DA844 000D6164  48 00 96 BD */	bl func_800E3F00
/* 800DA848 000D6168  90 7A 00 20 */	stw r3, 0x20(r26)
/* 800DA84C 000D616C  7F 43 D3 78 */	mr r3, r26
/* 800DA850 000D6170  7F C7 F3 78 */	mr r7, r30
/* 800DA854 000D6174  38 C0 00 00 */	li r6, 0
/* 800DA858 000D6178  90 9A 00 24 */	stw r4, 0x24(r26)
/* 800DA85C 000D617C  38 A0 00 00 */	li r5, 0
/* 800DA860 000D6180  4B FF FC E1 */	bl func_800DA540
/* 800DA864 000D6184  7F E3 FB 78 */	mr r3, r31
/* 800DA868 000D6188  48 00 55 F9 */	bl func_800DFE60
/* 800DA86C 000D618C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DA870 000D6190  48 02 99 45 */	bl func_801041B4
/* 800DA874 000D6194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DA878 000D6198  7C 08 03 A6 */	mtlr r0
/* 800DA87C 000D619C  38 21 00 20 */	addi r1, r1, 0x20
/* 800DA880 000D61A0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA890
func_800DA890:
/* 800DA890 000D61B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DA894 000D61B4  7C 08 02 A6 */	mflr r0
/* 800DA898 000D61B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DA89C 000D61BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DA8A0 000D61C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DA8A4 000D61C4  7C 7E 1B 78 */	mr r30, r3
/* 800DA8A8 000D61C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DA8AC 000D61CC  48 00 55 75 */	bl func_800DFE20
/* 800DA8B0 000D61D0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800DA8B4 000D61D4  7C 7F 1B 78 */	mr r31, r3
/* 800DA8B8 000D61D8  2C 00 00 00 */	cmpwi r0, 0
/* 800DA8BC 000D61DC  40 82 00 0C */	bne lbl_800DA8C8
/* 800DA8C0 000D61E0  48 00 55 A1 */	bl func_800DFE60
/* 800DA8C4 000D61E4  48 00 00 C8 */	b lbl_800DA98C
lbl_800DA8C8:
/* 800DA8C8 000D61E8  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 800DA8CC 000D61EC  2C 1D 00 00 */	cmpwi r29, 0
/* 800DA8D0 000D61F0  40 82 00 14 */	bne lbl_800DA8E4
/* 800DA8D4 000D61F4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800DA8D8 000D61F8  38 6D 97 78 */	addi r3, r13, lbl_80320638-_SDA_BASE_
/* 800DA8DC 000D61FC  90 03 00 04 */	stw r0, 4(r3)
/* 800DA8E0 000D6200  48 00 00 0C */	b lbl_800DA8EC
lbl_800DA8E4:
/* 800DA8E4 000D6204  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800DA8E8 000D6208  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_800DA8EC:
/* 800DA8EC 000D620C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800DA8F0 000D6210  2C 03 00 00 */	cmpwi r3, 0
/* 800DA8F4 000D6214  41 82 00 0C */	beq lbl_800DA900
/* 800DA8F8 000D6218  93 A3 00 14 */	stw r29, 0x14(r3)
/* 800DA8FC 000D621C  48 00 00 80 */	b lbl_800DA97C
lbl_800DA900:
/* 800DA900 000D6220  2C 1D 00 00 */	cmpwi r29, 0
/* 800DA904 000D6224  93 AD 97 78 */	stw r29, lbl_80320638-_SDA_BASE_(r13)
/* 800DA908 000D6228  41 82 00 74 */	beq lbl_800DA97C
/* 800DA90C 000D622C  48 00 95 85 */	bl func_800E3E90
/* 800DA910 000D6230  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 800DA914 000D6234  38 E0 00 00 */	li r7, 0
/* 800DA918 000D6238  80 1D 00 08 */	lwz r0, 8(r29)
/* 800DA91C 000D623C  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800DA920 000D6240  7D 04 28 10 */	subfc r8, r4, r5
/* 800DA924 000D6244  7C 03 01 10 */	subfe r0, r3, r0
/* 800DA928 000D6248  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800DA92C 000D624C  7C 07 40 10 */	subfc r0, r7, r8
/* 800DA930 000D6250  7C C6 29 10 */	subfe r6, r6, r5
/* 800DA934 000D6254  7C C5 29 10 */	subfe r6, r5, r5
/* 800DA938 000D6258  7C C6 00 D1 */	neg. r6, r6
/* 800DA93C 000D625C  41 82 00 10 */	beq lbl_800DA94C
/* 800DA940 000D6260  38 60 00 00 */	li r3, 0
/* 800DA944 000D6264  4B FF E4 ED */	bl func_800D8E30
/* 800DA948 000D6268  48 00 00 34 */	b lbl_800DA97C
lbl_800DA94C:
/* 800DA94C 000D626C  3C 80 80 00 */	lis r4, 0x8000
/* 800DA950 000D6270  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800DA954 000D6274  7C 04 40 10 */	subfc r0, r4, r8
/* 800DA958 000D6278  7C 63 29 10 */	subfe r3, r3, r5
/* 800DA95C 000D627C  7C 65 29 10 */	subfe r3, r5, r5
/* 800DA960 000D6280  7C 63 00 D1 */	neg. r3, r3
/* 800DA964 000D6284  41 82 00 10 */	beq lbl_800DA974
/* 800DA968 000D6288  7D 03 43 78 */	mr r3, r8
/* 800DA96C 000D628C  4B FF E4 C5 */	bl func_800D8E30
/* 800DA970 000D6290  48 00 00 0C */	b lbl_800DA97C
lbl_800DA974:
/* 800DA974 000D6294  38 64 FF FF */	addi r3, r4, -1
/* 800DA978 000D6298  4B FF E4 B9 */	bl func_800D8E30
lbl_800DA97C:
/* 800DA97C 000D629C  38 00 00 00 */	li r0, 0
/* 800DA980 000D62A0  90 1E 00 00 */	stw r0, 0(r30)
/* 800DA984 000D62A4  7F E3 FB 78 */	mr r3, r31
/* 800DA988 000D62A8  48 00 54 D9 */	bl func_800DFE60
lbl_800DA98C:
/* 800DA98C 000D62AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DA990 000D62B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DA994 000D62B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DA998 000D62B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DA99C 000D62BC  7C 08 03 A6 */	mtlr r0
/* 800DA9A0 000D62C0  38 21 00 20 */	addi r1, r1, 0x20
/* 800DA9A4 000D62C4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DA9B0
func_800DA9B0:
/* 800DA9B0 000D62D0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800DA9B4 000D62D4  7C 08 02 A6 */	mflr r0
/* 800DA9B8 000D62D8  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800DA9BC 000D62DC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800DA9C0 000D62E0  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 800DA9C4 000D62E4  93 A1 02 D4 */	stw r29, 0x2d4(r1)
/* 800DA9C8 000D62E8  7C 9D 23 78 */	mr r29, r4
/* 800DA9CC 000D62EC  93 81 02 D0 */	stw r28, 0x2d0(r1)
/* 800DA9D0 000D62F0  48 00 94 C1 */	bl func_800E3E90
/* 800DA9D4 000D62F4  83 ED 97 78 */	lwz r31, lbl_80320638-_SDA_BASE_(r13)
/* 800DA9D8 000D62F8  7C 9C 23 78 */	mr r28, r4
/* 800DA9DC 000D62FC  7C 7E 1B 78 */	mr r30, r3
/* 800DA9E0 000D6300  2C 1F 00 00 */	cmpwi r31, 0
/* 800DA9E4 000D6304  40 82 00 0C */	bne lbl_800DA9F0
/* 800DA9E8 000D6308  7F A3 EB 78 */	mr r3, r29
/* 800DA9EC 000D630C  48 00 15 05 */	bl func_800DBEF0
lbl_800DA9F0:
/* 800DA9F0 000D6310  80 7F 00 08 */	lwz r3, 8(r31)
/* 800DA9F4 000D6314  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 800DA9F8 000D6318  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800DA9FC 000D631C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800DAA00 000D6320  7C 65 E0 10 */	subfc r3, r5, r28
/* 800DAA04 000D6324  7C 84 01 10 */	subfe r4, r4, r0
/* 800DAA08 000D6328  7C 80 01 10 */	subfe r4, r0, r0
/* 800DAA0C 000D632C  7C 84 00 D1 */	neg. r4, r4
/* 800DAA10 000D6330  41 82 00 7C */	beq lbl_800DAA8C
/* 800DAA14 000D6334  48 00 94 7D */	bl func_800E3E90
/* 800DAA18 000D6338  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800DAA1C 000D633C  38 E0 00 00 */	li r7, 0
/* 800DAA20 000D6340  80 1F 00 08 */	lwz r0, 8(r31)
/* 800DAA24 000D6344  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800DAA28 000D6348  7D 04 28 10 */	subfc r8, r4, r5
/* 800DAA2C 000D634C  7C 03 01 10 */	subfe r0, r3, r0
/* 800DAA30 000D6350  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800DAA34 000D6354  7C 07 40 10 */	subfc r0, r7, r8
/* 800DAA38 000D6358  7C C6 29 10 */	subfe r6, r6, r5
/* 800DAA3C 000D635C  7C C5 29 10 */	subfe r6, r5, r5
/* 800DAA40 000D6360  7C C6 00 D1 */	neg. r6, r6
/* 800DAA44 000D6364  41 82 00 10 */	beq lbl_800DAA54
/* 800DAA48 000D6368  38 60 00 00 */	li r3, 0
/* 800DAA4C 000D636C  4B FF E3 E5 */	bl func_800D8E30
/* 800DAA50 000D6370  48 00 00 34 */	b lbl_800DAA84
lbl_800DAA54:
/* 800DAA54 000D6374  3C 80 80 00 */	lis r4, 0x8000
/* 800DAA58 000D6378  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800DAA5C 000D637C  7C 04 40 10 */	subfc r0, r4, r8
/* 800DAA60 000D6380  7C 63 29 10 */	subfe r3, r3, r5
/* 800DAA64 000D6384  7C 65 29 10 */	subfe r3, r5, r5
/* 800DAA68 000D6388  7C 63 00 D1 */	neg. r3, r3
/* 800DAA6C 000D638C  41 82 00 10 */	beq lbl_800DAA7C
/* 800DAA70 000D6390  7D 03 43 78 */	mr r3, r8
/* 800DAA74 000D6394  4B FF E3 BD */	bl func_800D8E30
/* 800DAA78 000D6398  48 00 00 0C */	b lbl_800DAA84
lbl_800DAA7C:
/* 800DAA7C 000D639C  38 64 FF FF */	addi r3, r4, -1
/* 800DAA80 000D63A0  4B FF E3 B1 */	bl func_800D8E30
lbl_800DAA84:
/* 800DAA84 000D63A4  7F A3 EB 78 */	mr r3, r29
/* 800DAA88 000D63A8  48 00 14 69 */	bl func_800DBEF0
lbl_800DAA8C:
/* 800DAA8C 000D63AC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800DAA90 000D63B0  90 6D 97 78 */	stw r3, lbl_80320638-_SDA_BASE_(r13)
/* 800DAA94 000D63B4  2C 03 00 00 */	cmpwi r3, 0
/* 800DAA98 000D63B8  40 82 00 14 */	bne lbl_800DAAAC
/* 800DAA9C 000D63BC  38 6D 97 78 */	addi r3, r13, lbl_80320638-_SDA_BASE_
/* 800DAAA0 000D63C0  38 00 00 00 */	li r0, 0
/* 800DAAA4 000D63C4  90 03 00 04 */	stw r0, 4(r3)
/* 800DAAA8 000D63C8  48 00 00 0C */	b lbl_800DAAB4
lbl_800DAAAC:
/* 800DAAAC 000D63CC  38 00 00 00 */	li r0, 0
/* 800DAAB0 000D63D0  90 03 00 10 */	stw r0, 0x10(r3)
lbl_800DAAB4:
/* 800DAAB4 000D63D4  83 DF 00 00 */	lwz r30, 0(r31)
/* 800DAAB8 000D63D8  38 C0 00 00 */	li r6, 0
/* 800DAABC 000D63DC  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800DAAC0 000D63E0  90 DF 00 00 */	stw r6, 0(r31)
/* 800DAAC4 000D63E4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800DAAC8 000D63E8  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800DAACC 000D63EC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800DAAD0 000D63F0  7C 65 30 10 */	subfc r3, r5, r6
/* 800DAAD4 000D63F4  7C 84 01 10 */	subfe r4, r4, r0
/* 800DAAD8 000D63F8  7C 80 01 10 */	subfe r4, r0, r0
/* 800DAADC 000D63FC  7C 84 00 D1 */	neg. r4, r4
/* 800DAAE0 000D6400  41 82 00 18 */	beq lbl_800DAAF8
/* 800DAAE4 000D6404  7F E3 FB 78 */	mr r3, r31
/* 800DAAE8 000D6408  7F C7 F3 78 */	mr r7, r30
/* 800DAAEC 000D640C  38 C0 00 00 */	li r6, 0
/* 800DAAF0 000D6410  38 A0 00 00 */	li r5, 0
/* 800DAAF4 000D6414  4B FF FA 4D */	bl func_800DA540
lbl_800DAAF8:
/* 800DAAF8 000D6418  83 8D 97 78 */	lwz r28, lbl_80320638-_SDA_BASE_(r13)
/* 800DAAFC 000D641C  2C 1C 00 00 */	cmpwi r28, 0
/* 800DAB00 000D6420  41 82 00 74 */	beq lbl_800DAB74
/* 800DAB04 000D6424  48 00 93 8D */	bl func_800E3E90
/* 800DAB08 000D6428  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 800DAB0C 000D642C  38 E0 00 00 */	li r7, 0
/* 800DAB10 000D6430  80 1C 00 08 */	lwz r0, 8(r28)
/* 800DAB14 000D6434  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800DAB18 000D6438  7D 04 28 10 */	subfc r8, r4, r5
/* 800DAB1C 000D643C  7C 03 01 10 */	subfe r0, r3, r0
/* 800DAB20 000D6440  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800DAB24 000D6444  7C 07 40 10 */	subfc r0, r7, r8
/* 800DAB28 000D6448  7C C6 29 10 */	subfe r6, r6, r5
/* 800DAB2C 000D644C  7C C5 29 10 */	subfe r6, r5, r5
/* 800DAB30 000D6450  7C C6 00 D1 */	neg. r6, r6
/* 800DAB34 000D6454  41 82 00 10 */	beq lbl_800DAB44
/* 800DAB38 000D6458  38 60 00 00 */	li r3, 0
/* 800DAB3C 000D645C  4B FF E2 F5 */	bl func_800D8E30
/* 800DAB40 000D6460  48 00 00 34 */	b lbl_800DAB74
lbl_800DAB44:
/* 800DAB44 000D6464  3C 80 80 00 */	lis r4, 0x8000
/* 800DAB48 000D6468  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800DAB4C 000D646C  7C 04 40 10 */	subfc r0, r4, r8
/* 800DAB50 000D6470  7C 63 29 10 */	subfe r3, r3, r5
/* 800DAB54 000D6474  7C 65 29 10 */	subfe r3, r5, r5
/* 800DAB58 000D6478  7C 63 00 D1 */	neg. r3, r3
/* 800DAB5C 000D647C  41 82 00 10 */	beq lbl_800DAB6C
/* 800DAB60 000D6480  7D 03 43 78 */	mr r3, r8
/* 800DAB64 000D6484  4B FF E2 CD */	bl func_800D8E30
/* 800DAB68 000D6488  48 00 00 0C */	b lbl_800DAB74
lbl_800DAB6C:
/* 800DAB6C 000D648C  38 64 FF FF */	addi r3, r4, -1
/* 800DAB70 000D6490  4B FF E2 C1 */	bl func_800D8E30
lbl_800DAB74:
/* 800DAB74 000D6494  48 00 7F 4D */	bl func_800E2AC0
/* 800DAB78 000D6498  38 61 00 08 */	addi r3, r1, 8
/* 800DAB7C 000D649C  48 00 14 C5 */	bl func_800DC040
/* 800DAB80 000D64A0  38 61 00 08 */	addi r3, r1, 8
/* 800DAB84 000D64A4  48 00 12 7D */	bl func_800DBE00
/* 800DAB88 000D64A8  7F CC F3 78 */	mr r12, r30
/* 800DAB8C 000D64AC  7F E3 FB 78 */	mr r3, r31
/* 800DAB90 000D64B0  7F A4 EB 78 */	mr r4, r29
/* 800DAB94 000D64B4  7D 89 03 A6 */	mtctr r12
/* 800DAB98 000D64B8  4E 80 04 21 */	bctrl 
/* 800DAB9C 000D64BC  38 61 00 08 */	addi r3, r1, 8
/* 800DABA0 000D64C0  48 00 14 A1 */	bl func_800DC040
/* 800DABA4 000D64C4  7F A3 EB 78 */	mr r3, r29
/* 800DABA8 000D64C8  48 00 12 59 */	bl func_800DBE00
/* 800DABAC 000D64CC  48 00 7F 55 */	bl func_800E2B00
/* 800DABB0 000D64D0  48 00 84 71 */	bl func_800E3020
/* 800DABB4 000D64D4  7F A3 EB 78 */	mr r3, r29
/* 800DABB8 000D64D8  48 00 13 39 */	bl func_800DBEF0
/* 800DABBC 000D64DC  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800DABC0 000D64E0  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800DABC4 000D64E4  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 800DABC8 000D64E8  83 A1 02 D4 */	lwz r29, 0x2d4(r1)
/* 800DABCC 000D64EC  83 81 02 D0 */	lwz r28, 0x2d0(r1)
/* 800DABD0 000D64F0  7C 08 03 A6 */	mtlr r0
/* 800DABD4 000D64F4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800DABD8 000D64F8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DABE0
func_800DABE0:
/* 800DABE0 000D6500  90 04 00 00 */	stw r0, 0(r4)
/* 800DABE4 000D6504  90 24 00 04 */	stw r1, 4(r4)
/* 800DABE8 000D6508  90 44 00 08 */	stw r2, 8(r4)
/* 800DABEC 000D650C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 800DABF0 000D6510  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800DABF4 000D6514  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 800DABF8 000D6518  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800DABFC 000D651C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 800DAC00 000D6520  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800DAC04 000D6524  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 800DAC08 000D6528  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800DAC0C 000D652C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 800DAC10 000D6530  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800DAC14 000D6534  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 800DAC18 000D6538  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800DAC1C 000D653C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 800DAC20 000D6540  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800DAC24 000D6544  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 800DAC28 000D6548  94 21 FF F8 */	stwu r1, -8(r1)
/* 800DAC2C 000D654C  4B FF FD 84 */	b func_800DA9B0

.balign 16, 0
.global func_800DAC30
func_800DAC30:
/* 800DAC30 000D6550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAC34 000D6554  7C 08 02 A6 */	mflr r0
/* 800DAC38 000D6558  2C 03 00 00 */	cmpwi r3, 0
/* 800DAC3C 000D655C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAC40 000D6560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAC44 000D6564  93 C1 00 08 */	stw r30, 8(r1)
/* 800DAC48 000D6568  41 82 00 58 */	beq lbl_800DACA0
/* 800DAC4C 000D656C  83 ED 97 78 */	lwz r31, lbl_80320638-_SDA_BASE_(r13)
/* 800DAC50 000D6570  2C 1F 00 00 */	cmpwi r31, 0
/* 800DAC54 000D6574  41 82 00 0C */	beq lbl_800DAC60
/* 800DAC58 000D6578  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 800DAC5C 000D657C  48 00 00 3C */	b lbl_800DAC98
lbl_800DAC60:
/* 800DAC60 000D6580  3B C0 00 00 */	li r30, 0
/* 800DAC64 000D6584  48 00 00 34 */	b lbl_800DAC98
lbl_800DAC68:
/* 800DAC68 000D6588  7F E3 FB 78 */	mr r3, r31
/* 800DAC6C 000D658C  48 01 1C 55 */	bl func_800EC8C0
/* 800DAC70 000D6590  2C 03 00 00 */	cmpwi r3, 0
/* 800DAC74 000D6594  40 82 00 0C */	bne lbl_800DAC80
/* 800DAC78 000D6598  7F E3 FB 78 */	mr r3, r31
/* 800DAC7C 000D659C  4B FF FC 15 */	bl func_800DA890
lbl_800DAC80:
/* 800DAC80 000D65A0  2C 1E 00 00 */	cmpwi r30, 0
/* 800DAC84 000D65A4  7F DF F3 78 */	mr r31, r30
/* 800DAC88 000D65A8  41 82 00 0C */	beq lbl_800DAC94
/* 800DAC8C 000D65AC  83 DE 00 14 */	lwz r30, 0x14(r30)
/* 800DAC90 000D65B0  48 00 00 08 */	b lbl_800DAC98
lbl_800DAC94:
/* 800DAC94 000D65B4  3B C0 00 00 */	li r30, 0
lbl_800DAC98:
/* 800DAC98 000D65B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800DAC9C 000D65BC  40 82 FF CC */	bne lbl_800DAC68
lbl_800DACA0:
/* 800DACA0 000D65C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DACA4 000D65C4  38 60 00 01 */	li r3, 1
/* 800DACA8 000D65C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DACAC 000D65CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DACB0 000D65D0  7C 08 03 A6 */	mtlr r0
/* 800DACB4 000D65D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800DACB8 000D65D8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DACC0
func_800DACC0:
/* 800DACC0 000D65E0  90 83 00 28 */	stw r4, 0x28(r3)
/* 800DACC4 000D65E4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DACD0
func_800DACD0:
/* 800DACD0 000D65F0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800DACD4 000D65F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DACE0
func_800DACE0:
/* 800DACE0 000D6600  38 00 FF FF */	li r0, -1
/* 800DACE4 000D6604  90 83 00 28 */	stw r4, 0x28(r3)
/* 800DACE8 000D6608  90 03 00 04 */	stw r0, 4(r3)
/* 800DACEC 000D660C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DACF0
func_800DACF0:
/* 800DACF0 000D6610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DACF4 000D6614  7C 08 02 A6 */	mflr r0
/* 800DACF8 000D6618  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DACFC 000D661C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DAD00 000D6620  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DAD04 000D6624  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DAD08 000D6628  7C 7D 1B 78 */	mr r29, r3
/* 800DAD0C 000D662C  48 00 51 15 */	bl func_800DFE20
/* 800DAD10 000D6630  80 8D 97 78 */	lwz r4, lbl_80320638-_SDA_BASE_(r13)
/* 800DAD14 000D6634  7C 7F 1B 78 */	mr r31, r3
/* 800DAD18 000D6638  2C 04 00 00 */	cmpwi r4, 0
/* 800DAD1C 000D663C  41 82 00 0C */	beq lbl_800DAD28
/* 800DAD20 000D6640  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 800DAD24 000D6644  48 00 00 48 */	b lbl_800DAD6C
lbl_800DAD28:
/* 800DAD28 000D6648  3B C0 00 00 */	li r30, 0
/* 800DAD2C 000D664C  48 00 00 40 */	b lbl_800DAD6C
lbl_800DAD30:
/* 800DAD30 000D6650  80 64 00 04 */	lwz r3, 4(r4)
/* 800DAD34 000D6654  3C 03 00 01 */	addis r0, r3, 1
/* 800DAD38 000D6658  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DAD3C 000D665C  40 82 00 18 */	bne lbl_800DAD54
/* 800DAD40 000D6660  80 04 00 28 */	lwz r0, 0x28(r4)
/* 800DAD44 000D6664  7C 00 E8 40 */	cmplw r0, r29
/* 800DAD48 000D6668  40 82 00 0C */	bne lbl_800DAD54
/* 800DAD4C 000D666C  7C 83 23 78 */	mr r3, r4
/* 800DAD50 000D6670  4B FF FB 41 */	bl func_800DA890
lbl_800DAD54:
/* 800DAD54 000D6674  2C 1E 00 00 */	cmpwi r30, 0
/* 800DAD58 000D6678  7F C4 F3 78 */	mr r4, r30
/* 800DAD5C 000D667C  41 82 00 0C */	beq lbl_800DAD68
/* 800DAD60 000D6680  83 DE 00 14 */	lwz r30, 0x14(r30)
/* 800DAD64 000D6684  48 00 00 08 */	b lbl_800DAD6C
lbl_800DAD68:
/* 800DAD68 000D6688  3B C0 00 00 */	li r30, 0
lbl_800DAD6C:
/* 800DAD6C 000D668C  2C 04 00 00 */	cmpwi r4, 0
/* 800DAD70 000D6690  40 82 FF C0 */	bne lbl_800DAD30
/* 800DAD74 000D6694  7F E3 FB 78 */	mr r3, r31
/* 800DAD78 000D6698  48 00 50 E9 */	bl func_800DFE60
/* 800DAD7C 000D669C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DAD80 000D66A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DAD84 000D66A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DAD88 000D66A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DAD8C 000D66AC  7C 08 03 A6 */	mtlr r0
/* 800DAD90 000D66B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800DAD94 000D66B4  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802F17E0

lbl_802F17E0:

	# ROM: 0x2ED8E0
	.4byte func_800DAC30
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80
.global lbl_80320638
lbl_80320638:
	.skip 0x8
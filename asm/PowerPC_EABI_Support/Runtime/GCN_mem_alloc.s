.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80105CEC
func_80105CEC:
/* 80105CEC 0010160C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80105CF0 00101610  7C 08 02 A6 */	mflr r0
/* 80105CF4 00101614  90 01 00 24 */	stw r0, 0x24(r1)
/* 80105CF8 00101618  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80105CFC 0010161C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80105D00 00101620  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80105D04 00101624  7C 7D 1B 78 */	mr r29, r3
/* 80105D08 00101628  80 0D 8B D8 */	lwz r0, lbl_8031FA98-_SDA_BASE_(r13)
/* 80105D0C 0010162C  2C 00 FF FF */	cmpwi r0, -1
/* 80105D10 00101630  40 82 00 6C */	bne lbl_80105D7C
/* 80105D14 00101634  3F E0 80 2E */	lis r31, lbl_802DDEE8@ha
/* 80105D18 00101638  38 7F DE E8 */	addi r3, r31, lbl_802DDEE8@l
/* 80105D1C 0010163C  4C C6 31 82 */	crclr 6
/* 80105D20 00101640  4B FD 67 41 */	bl func_800DC460
/* 80105D24 00101644  38 7F DE E8 */	addi r3, r31, -8472
/* 80105D28 00101648  38 63 00 36 */	addi r3, r3, 0x36
/* 80105D2C 0010164C  4C C6 31 82 */	crclr 6
/* 80105D30 00101650  4B FD 67 31 */	bl func_800DC460
/* 80105D34 00101654  4B FD 53 DD */	bl func_800DB110
/* 80105D38 00101658  7C 7E 1B 78 */	mr r30, r3
/* 80105D3C 0010165C  4B FD 53 A5 */	bl func_800DB0E0
/* 80105D40 00101660  7C 7F 1B 78 */	mr r31, r3
/* 80105D44 00101664  7F C3 F3 78 */	mr r3, r30
/* 80105D48 00101668  7F E4 FB 78 */	mr r4, r31
/* 80105D4C 0010166C  38 A0 00 01 */	li r5, 1
/* 80105D50 00101670  4B FD 52 91 */	bl func_800DAFE0
/* 80105D54 00101674  7C 7E 1B 78 */	mr r30, r3
/* 80105D58 00101678  4B FD 54 19 */	bl func_800DB170
/* 80105D5C 0010167C  38 1E 00 1F */	addi r0, r30, 0x1f
/* 80105D60 00101680  57 FE 00 34 */	rlwinm r30, r31, 0, 0, 0x1a
/* 80105D64 00101684  7F C4 F3 78 */	mr r4, r30
/* 80105D68 00101688  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80105D6C 0010168C  4B FD 52 E5 */	bl func_800DB050
/* 80105D70 00101690  4B FD 52 61 */	bl func_800DAFD0
/* 80105D74 00101694  7F C3 F3 78 */	mr r3, r30
/* 80105D78 00101698  4B FD 53 F9 */	bl func_800DB170
lbl_80105D7C:
/* 80105D7C 0010169C  80 6D 8B D8 */	lwz r3, lbl_8031FA98-_SDA_BASE_(r13)
/* 80105D80 001016A0  7F A4 EB 78 */	mr r4, r29
/* 80105D84 001016A4  4B FD 51 CD */	bl func_800DAF50
/* 80105D88 001016A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80105D8C 001016AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80105D90 001016B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80105D94 001016B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80105D98 001016B8  7C 08 03 A6 */	mtlr r0
/* 80105D9C 001016BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80105DA0 001016C0  4E 80 00 20 */	blr 



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DDEE8

lbl_802DDEE8:

	# ROM: 0x2D9FE8
	.asciz "GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n"
	.asciz "Metrowerks CW runtime library initializing default heap\n"
	.balign 4

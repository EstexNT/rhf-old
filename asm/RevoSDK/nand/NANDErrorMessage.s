.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

lbl_801228C0:
/* 801228C0 0011E1E0  94 21 FC E0 */	stwu r1, -0x320(r1)
/* 801228C4 0011E1E4  7C 08 02 A6 */	mflr r0
/* 801228C8 0011E1E8  90 01 03 24 */	stw r0, 0x324(r1)
/* 801228CC 0011E1EC  93 E1 03 1C */	stw r31, 0x31c(r1)
/* 801228D0 0011E1F0  7C 7F 1B 78 */	mr r31, r3
/* 801228D4 0011E1F4  93 C1 03 18 */	stw r30, 0x318(r1)
/* 801228D8 0011E1F8  3B C0 00 00 */	li r30, 0
/* 801228DC 0011E1FC  93 A1 03 14 */	stw r29, 0x314(r1)
/* 801228E0 0011E200  83 A2 FE C8 */	lwz r29, lbl_80328EA8-_SDA2_BASE_(r2)
/* 801228E4 0011E204  48 00 1D BD */	bl func_801246A0
/* 801228E8 0011E208  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801228EC 0011E20C  40 82 00 10 */	bne lbl_801228FC
/* 801228F0 0011E210  38 60 00 01 */	li r3, 1
/* 801228F4 0011E214  4B FB C9 2D */	bl func_800DF220
/* 801228F8 0011E218  48 00 00 0C */	b lbl_80122904
lbl_801228FC:
/* 801228FC 0011E21C  38 60 00 00 */	li r3, 0
/* 80122900 0011E220  4B FB C9 21 */	bl func_800DF220
lbl_80122904:
/* 80122904 0011E224  48 00 23 5D */	bl func_80124C60
/* 80122908 0011E228  7C 63 07 74 */	extsb r3, r3
/* 8012290C 0011E22C  38 03 FF FC */	addi r0, r3, -4
/* 80122910 0011E230  28 00 00 01 */	cmplwi r0, 1
/* 80122914 0011E234  40 81 01 3C */	ble lbl_80122A50
/* 80122918 0011E238  2C 03 00 02 */	cmpwi r3, 2
/* 8012291C 0011E23C  41 82 00 9C */	beq lbl_801229B8
/* 80122920 0011E240  3C 60 80 2E */	lis r3, lbl_802DF1C0@ha
/* 80122924 0011E244  38 00 00 1F */	li r0, 0x1f
/* 80122928 0011E248  38 63 F1 C0 */	addi r3, r3, lbl_802DF1C0@l
/* 8012292C 0011E24C  38 A1 02 04 */	addi r5, r1, 0x204
/* 80122930 0011E250  38 83 FF FC */	addi r4, r3, -4
/* 80122934 0011E254  38 C0 00 00 */	li r6, 0
/* 80122938 0011E258  7C 09 03 A6 */	mtctr r0
/* 8012293C 0011E25C  60 00 00 00 */	nop 
lbl_80122940:
/* 80122940 0011E260  80 64 00 04 */	lwz r3, 4(r4)
/* 80122944 0011E264  84 04 00 08 */	lwzu r0, 8(r4)
/* 80122948 0011E268  90 65 00 04 */	stw r3, 4(r5)
/* 8012294C 0011E26C  94 05 00 08 */	stwu r0, 8(r5)
/* 80122950 0011E270  42 00 FF F0 */	bdnz lbl_80122940
/* 80122954 0011E274  80 04 00 04 */	lwz r0, 4(r4)
/* 80122958 0011E278  90 05 00 04 */	stw r0, 4(r5)
/* 8012295C 0011E27C  48 00 00 44 */	b lbl_801229A0
lbl_80122960:
/* 80122960 0011E280  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80122964 0011E284  38 61 02 08 */	addi r3, r1, 0x208
/* 80122968 0011E288  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8012296C 0011E28C  7C 63 22 14 */	add r3, r3, r4
/* 80122970 0011E290  80 03 00 04 */	lwz r0, 4(r3)
/* 80122974 0011E294  2C 00 00 00 */	cmpwi r0, 0
/* 80122978 0011E298  40 82 00 24 */	bne lbl_8012299C
/* 8012297C 0011E29C  80 03 00 00 */	lwz r0, 0(r3)
/* 80122980 0011E2A0  7C 1F 00 00 */	cmpw r31, r0
/* 80122984 0011E2A4  40 82 00 10 */	bne lbl_80122994
/* 80122988 0011E2A8  38 61 02 10 */	addi r3, r1, 0x210
/* 8012298C 0011E2AC  7F E3 20 2E */	lwzx r31, r3, r4
/* 80122990 0011E2B0  48 00 01 54 */	b lbl_80122AE4
lbl_80122994:
/* 80122994 0011E2B4  38 C6 00 01 */	addi r6, r6, 1
/* 80122998 0011E2B8  48 00 00 08 */	b lbl_801229A0
lbl_8012299C:
/* 8012299C 0011E2BC  38 C6 00 07 */	addi r6, r6, 7
lbl_801229A0:
/* 801229A0 0011E2C0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 801229A4 0011E2C4  28 00 00 15 */	cmplwi r0, 0x15
/* 801229A8 0011E2C8  41 80 FF B8 */	blt lbl_80122960
/* 801229AC 0011E2CC  3F E0 80 2E */	lis r31, lbl_802DF188@ha
/* 801229B0 0011E2D0  3B FF F1 88 */	addi r31, r31, lbl_802DF188@l
/* 801229B4 0011E2D4  48 00 01 30 */	b lbl_80122AE4
lbl_801229B8:
/* 801229B8 0011E2D8  3C 60 80 2E */	lis r3, lbl_802DF1C0@ha
/* 801229BC 0011E2DC  38 00 00 1F */	li r0, 0x1f
/* 801229C0 0011E2E0  38 63 F1 C0 */	addi r3, r3, lbl_802DF1C0@l
/* 801229C4 0011E2E4  38 A1 01 08 */	addi r5, r1, 0x108
/* 801229C8 0011E2E8  38 83 FF FC */	addi r4, r3, -4
/* 801229CC 0011E2EC  38 C0 00 00 */	li r6, 0
/* 801229D0 0011E2F0  7C 09 03 A6 */	mtctr r0
/* 801229D4 0011E2F4  60 00 00 00 */	nop 
lbl_801229D8:
/* 801229D8 0011E2F8  80 64 00 04 */	lwz r3, 4(r4)
/* 801229DC 0011E2FC  84 04 00 08 */	lwzu r0, 8(r4)
/* 801229E0 0011E300  90 65 00 04 */	stw r3, 4(r5)
/* 801229E4 0011E304  94 05 00 08 */	stwu r0, 8(r5)
/* 801229E8 0011E308  42 00 FF F0 */	bdnz lbl_801229D8
/* 801229EC 0011E30C  80 04 00 04 */	lwz r0, 4(r4)
/* 801229F0 0011E310  90 05 00 04 */	stw r0, 4(r5)
/* 801229F4 0011E314  48 00 00 44 */	b lbl_80122A38
lbl_801229F8:
/* 801229F8 0011E318  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 801229FC 0011E31C  38 61 01 0C */	addi r3, r1, 0x10c
/* 80122A00 0011E320  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80122A04 0011E324  7C 63 22 14 */	add r3, r3, r4
/* 80122A08 0011E328  80 03 00 04 */	lwz r0, 4(r3)
/* 80122A0C 0011E32C  2C 00 00 01 */	cmpwi r0, 1
/* 80122A10 0011E330  40 82 00 24 */	bne lbl_80122A34
/* 80122A14 0011E334  80 03 00 00 */	lwz r0, 0(r3)
/* 80122A18 0011E338  7C 1F 00 00 */	cmpw r31, r0
/* 80122A1C 0011E33C  40 82 00 10 */	bne lbl_80122A2C
/* 80122A20 0011E340  38 61 01 14 */	addi r3, r1, 0x114
/* 80122A24 0011E344  7F E3 20 2E */	lwzx r31, r3, r4
/* 80122A28 0011E348  48 00 00 BC */	b lbl_80122AE4
lbl_80122A2C:
/* 80122A2C 0011E34C  38 C6 00 01 */	addi r6, r6, 1
/* 80122A30 0011E350  48 00 00 08 */	b lbl_80122A38
lbl_80122A34:
/* 80122A34 0011E354  38 C6 00 07 */	addi r6, r6, 7
lbl_80122A38:
/* 80122A38 0011E358  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80122A3C 0011E35C  28 00 00 15 */	cmplwi r0, 0x15
/* 80122A40 0011E360  41 80 FF B8 */	blt lbl_801229F8
/* 80122A44 0011E364  3F E0 80 2E */	lis r31, lbl_802DF188@ha
/* 80122A48 0011E368  3B FF F1 88 */	addi r31, r31, lbl_802DF188@l
/* 80122A4C 0011E36C  48 00 00 98 */	b lbl_80122AE4
lbl_80122A50:
/* 80122A50 0011E370  3C 60 80 2E */	lis r3, lbl_802DF1C0@ha
/* 80122A54 0011E374  38 00 00 1F */	li r0, 0x1f
/* 80122A58 0011E378  38 63 F1 C0 */	addi r3, r3, lbl_802DF1C0@l
/* 80122A5C 0011E37C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80122A60 0011E380  38 83 FF FC */	addi r4, r3, -4
/* 80122A64 0011E384  38 C0 00 00 */	li r6, 0
/* 80122A68 0011E388  7C 09 03 A6 */	mtctr r0
/* 80122A6C 0011E38C  60 00 00 00 */	nop 
lbl_80122A70:
/* 80122A70 0011E390  80 64 00 04 */	lwz r3, 4(r4)
/* 80122A74 0011E394  84 04 00 08 */	lwzu r0, 8(r4)
/* 80122A78 0011E398  90 65 00 04 */	stw r3, 4(r5)
/* 80122A7C 0011E39C  94 05 00 08 */	stwu r0, 8(r5)
/* 80122A80 0011E3A0  42 00 FF F0 */	bdnz lbl_80122A70
/* 80122A84 0011E3A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80122A88 0011E3A8  90 05 00 04 */	stw r0, 4(r5)
/* 80122A8C 0011E3AC  48 00 00 44 */	b lbl_80122AD0
lbl_80122A90:
/* 80122A90 0011E3B0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80122A94 0011E3B4  38 61 00 10 */	addi r3, r1, 0x10
/* 80122A98 0011E3B8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80122A9C 0011E3BC  7C 63 22 14 */	add r3, r3, r4
/* 80122AA0 0011E3C0  80 03 00 04 */	lwz r0, 4(r3)
/* 80122AA4 0011E3C4  2C 00 00 02 */	cmpwi r0, 2
/* 80122AA8 0011E3C8  40 82 00 24 */	bne lbl_80122ACC
/* 80122AAC 0011E3CC  80 03 00 00 */	lwz r0, 0(r3)
/* 80122AB0 0011E3D0  7C 1F 00 00 */	cmpw r31, r0
/* 80122AB4 0011E3D4  40 82 00 10 */	bne lbl_80122AC4
/* 80122AB8 0011E3D8  38 61 00 18 */	addi r3, r1, 0x18
/* 80122ABC 0011E3DC  7F E3 20 2E */	lwzx r31, r3, r4
/* 80122AC0 0011E3E0  48 00 00 24 */	b lbl_80122AE4
lbl_80122AC4:
/* 80122AC4 0011E3E4  38 C6 00 01 */	addi r6, r6, 1
/* 80122AC8 0011E3E8  48 00 00 08 */	b lbl_80122AD0
lbl_80122ACC:
/* 80122ACC 0011E3EC  38 C6 00 07 */	addi r6, r6, 7
lbl_80122AD0:
/* 80122AD0 0011E3F0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80122AD4 0011E3F4  28 00 00 15 */	cmplwi r0, 0x15
/* 80122AD8 0011E3F8  41 80 FF B8 */	blt lbl_80122A90
/* 80122ADC 0011E3FC  3F E0 80 2E */	lis r31, lbl_802DF188@ha
/* 80122AE0 0011E400  3B FF F1 88 */	addi r31, r31, lbl_802DF188@l
lbl_80122AE4:
/* 80122AE4 0011E404  48 00 1B BD */	bl func_801246A0
/* 80122AE8 0011E408  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80122AEC 0011E40C  28 00 00 06 */	cmplwi r0, 6
/* 80122AF0 0011E410  40 81 00 0C */	ble lbl_80122AFC
/* 80122AF4 0011E414  80 BF 00 04 */	lwz r5, 4(r31)
/* 80122AF8 0011E418  48 00 00 10 */	b lbl_80122B08
lbl_80122AFC:
/* 80122AFC 0011E41C  48 00 1B A5 */	bl func_801246A0
/* 80122B00 0011E420  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80122B04 0011E424  7C BF 00 2E */	lwzx r5, r31, r0
lbl_80122B08:
/* 80122B08 0011E428  93 C1 00 08 */	stw r30, 8(r1)
/* 80122B0C 0011E42C  38 61 00 0C */	addi r3, r1, 0xc
/* 80122B10 0011E430  38 81 00 08 */	addi r4, r1, 8
/* 80122B14 0011E434  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80122B18 0011E438  4B FB BC 39 */	bl func_800DE750
/* 80122B1C 0011E43C  80 01 03 24 */	lwz r0, 0x324(r1)
/* 80122B20 0011E440  83 E1 03 1C */	lwz r31, 0x31c(r1)
/* 80122B24 0011E444  83 C1 03 18 */	lwz r30, 0x318(r1)
/* 80122B28 0011E448  83 A1 03 14 */	lwz r29, 0x314(r1)
/* 80122B2C 0011E44C  7C 08 03 A6 */	mtlr r0
/* 80122B30 0011E450  38 21 03 20 */	addi r1, r1, 0x320
/* 80122B34 0011E454  4E 80 00 20 */	blr 
/* 80122B38 0011E458  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80122B3C 0011E45C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80122B40
func_80122B40:
/* 80122B40 0011E460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80122B44 0011E464  7C 08 02 A6 */	mflr r0
/* 80122B48 0011E468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80122B4C 0011E46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80122B50 0011E470  7C 7F 1B 78 */	mr r31, r3
/* 80122B54 0011E474  4B FB D2 CD */	bl func_800DFE20
/* 80122B58 0011E478  80 AD 9D D0 */	lwz r5, lbl_80320C90-_SDA_BASE_(r13)
/* 80122B5C 0011E47C  2C 1F 00 00 */	cmpwi r31, 0
/* 80122B60 0011E480  38 80 00 00 */	li r4, 0
/* 80122B64 0011E484  7C 05 00 D0 */	neg r0, r5
/* 80122B68 0011E488  7C 00 2B 78 */	or r0, r0, r5
/* 80122B6C 0011E48C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 80122B70 0011E490  41 82 00 0C */	beq lbl_80122B7C
/* 80122B74 0011E494  3C 80 80 12 */	lis r4, lbl_801228C0@ha
/* 80122B78 0011E498  38 84 28 C0 */	addi r4, r4, lbl_801228C0@l
lbl_80122B7C:
/* 80122B7C 0011E49C  90 8D 9D D0 */	stw r4, lbl_80320C90-_SDA_BASE_(r13)
/* 80122B80 0011E4A0  4B FB D2 E1 */	bl func_800DFE60
/* 80122B84 0011E4A4  7F E3 FB 78 */	mr r3, r31
/* 80122B88 0011E4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80122B8C 0011E4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80122B90 0011E4B0  7C 08 03 A6 */	mtlr r0
/* 80122B94 0011E4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80122B98 0011E4B8  4E 80 00 20 */	blr 
/* 80122B9C 0011E4BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80122BA0
func_80122BA0:
/* 80122BA0 0011E4C0  81 8D 9D D0 */	lwz r12, lbl_80320C90-_SDA_BASE_(r13)
/* 80122BA4 0011E4C4  2C 0C 00 00 */	cmpwi r12, 0
/* 80122BA8 0011E4C8  4D 82 00 20 */	beqlr 
/* 80122BAC 0011E4CC  7D 89 03 A6 */	mtctr r12
/* 80122BB0 0011E4D0  4E 80 04 20 */	bctr 
/* 80122BB4 0011E4D4  4E 80 00 20 */	blr 
/* 80122BB8 0011E4D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80122BBC 0011E4DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DF0A8
lbl_802DF0A8:
	.4byte 0x80306888  ;# ptr
	.4byte 0x803068E4  ;# ptr
	.4byte 0x80306950  ;# ptr
	.4byte 0x803069CC  ;# ptr
	.4byte 0x80306A5C  ;# ptr
	.4byte 0x80306AEC  ;# ptr
	.4byte 0x80306B7C  ;# ptr
	.4byte 0x80306888  ;# ptr
	.4byte 0x80306BF4  ;# ptr
	.4byte 0x80306950  ;# ptr
	.4byte 0x80306C6C  ;# ptr
	.4byte 0x80306CF8  ;# ptr
	.4byte 0x80306AEC  ;# ptr
	.4byte 0x80306B7C  ;# ptr
	.4byte 0x80306E74  ;# ptr
	.4byte 0x803068E4  ;# ptr
	.4byte 0x80306950  ;# ptr
	.4byte 0x80306ED8  ;# ptr
	.4byte 0x80306F68  ;# ptr
	.4byte 0x80306FF8  ;# ptr
	.4byte 0x8030708C  ;# ptr
	.4byte 0x80306E74  ;# ptr
	.4byte 0x80306BF4  ;# ptr
	.4byte 0x80306950  ;# ptr
	.4byte 0x80306C6C  ;# ptr
	.4byte 0x80306CF8  ;# ptr
	.4byte 0x80306FF8  ;# ptr
	.4byte 0x8030708C  ;# ptr
	.4byte 0x803071FC  ;# ptr
	.4byte 0x80307250  ;# ptr
	.4byte 0x803072AC  ;# ptr
	.4byte 0x8030732C  ;# ptr
	.4byte 0x803073A8  ;# ptr
	.4byte 0x80307428  ;# ptr
	.4byte 0x803074A8  ;# ptr
	.4byte 0x803071FC  ;# ptr
	.4byte 0x80307514  ;# ptr
	.4byte 0x80307578  ;# ptr
	.4byte 0x803075F8  ;# ptr
	.4byte 0x8030766C  ;# ptr
	.4byte 0x80307428  ;# ptr
	.4byte 0x803074A8  ;# ptr
	.4byte 0x803077C4  ;# ptr
	.4byte 0x80307834  ;# ptr
	.4byte 0x8030788C  ;# ptr
	.4byte 0x80307920  ;# ptr
	.4byte 0x803079A0  ;# ptr
	.4byte 0x80307A30  ;# ptr
	.4byte 0x80307AB8  ;# ptr
	.4byte 0x803077C4  ;# ptr
	.4byte 0x80307B3C  ;# ptr
	.4byte 0x8030788C  ;# ptr
	.4byte 0x80307BA0  ;# ptr
	.4byte 0x80307C1C  ;# ptr
	.4byte 0x80307A30  ;# ptr
	.4byte 0x80307AB8  ;# ptr


.global lbl_802DF188

lbl_802DF188:

	# ROM: 0x2DB288
	.4byte 0x80307D94  ;# ptr
	.4byte 0x80307E08  ;# ptr
	.4byte 0x80307E70  ;# ptr
	.4byte 0x80307F0C  ;# ptr
	.4byte 0x80307FC0  ;# ptr
	.4byte 0x80308064  ;# ptr
	.4byte 0x80308128  ;# ptr
	.4byte 0x80307D94  ;# ptr
	.4byte 0x803081C4  ;# ptr
	.4byte 0x80307E70  ;# ptr
	.4byte 0x80308258  ;# ptr
	.4byte 0x80308308  ;# ptr
	.4byte 0x80308064  ;# ptr
	.4byte 0x80308128  ;# ptr


.global lbl_802DF1C0

lbl_802DF1C0:

	# ROM: 0x2DB2C0
	.4byte 0xFFFFFF94
	.4byte 0
	.4byte 0x802DF0A8  ;# ptr
	.4byte 0xFFFFFF95
	.4byte 0
	.4byte 0x802DF0E0  ;# ptr
	.4byte 0xFFFFFF99
	.4byte 0
	.4byte 0x802DF118  ;# ptr
	.4byte 0xFFFFFF8A
	.4byte 0
	.4byte 0x802DF150  ;# ptr
	.4byte 0xFFFFFFEA
	.4byte 0
	.4byte 0x802DF150  ;# ptr
	.4byte 0xFFFFFF8B
	.4byte 0
	.4byte 0x802DF188  ;# ptr
	.4byte 0xFFFFFFF7
	.4byte 0
	.4byte 0x802DF188  ;# ptr
	.4byte 0xFFFFFF94
	.4byte 0x00000001
	.4byte 0x802DF0C4  ;# ptr
	.4byte 0xFFFFFF95
	.4byte 0x00000001
	.4byte 0x802DF0FC  ;# ptr
	.4byte 0xFFFFFF99
	.4byte 0x00000001
	.4byte 0x802DF134  ;# ptr
	.4byte 0xFFFFFF8A
	.4byte 0x00000001
	.4byte 0x802DF16C  ;# ptr
	.4byte 0xFFFFFFEA
	.4byte 0x00000001
	.4byte 0x802DF16C  ;# ptr
	.4byte 0xFFFFFF8B
	.4byte 0x00000001
	.4byte 0x802DF1A4  ;# ptr
	.4byte 0xFFFFFFF7
	.4byte 0x00000001
	.4byte 0x802DF1A4  ;# ptr
	.4byte 0xFFFFFF94
	.4byte 0x00000002
	.4byte 0x80328E80  ;# ptr
	.4byte 0xFFFFFF95
	.4byte 0x00000002
	.4byte 0x80328E88  ;# ptr
	.4byte 0xFFFFFF99
	.4byte 0x00000002
	.4byte 0x80328E90  ;# ptr
	.4byte 0xFFFFFF8A
	.4byte 0x00000002
	.4byte 0x80328E98  ;# ptr
	.4byte 0xFFFFFFEA
	.4byte 0x00000002
	.4byte 0x80328E98  ;# ptr
	.4byte 0xFFFFFF8B
	.4byte 0x00000002
	.4byte 0x80328EA0  ;# ptr
	.4byte 0xFFFFFFF7
	.4byte 0x00000002
	.4byte 0x80328EA0  ;# ptr
	.4byte 0



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80306888
lbl_80306888:
	.4byte 0x0A0A0A57
	.4byte 0x6969967B
	.4byte 0x91CC95DB
	.4byte 0x91B68381
	.4byte 0x8382838A
	.4byte 0x82CC8BF3
	.4byte 0x82AB9765
	.4byte 0x97CA82AA
	.4byte 0x88D98FED
	.4byte 0x82C582B7
	.4byte 0x81420A82
	.4byte 0xAD82ED82
	.4byte 0xB582AD82
	.4byte 0xCD576969
	.4byte 0x967B91CC
	.4byte 0x82CC8EE6
	.4byte 0x88B590E0
	.4byte 0x96BE8F91
	.4byte 0x82F082A8
	.4byte 0x93C782DD
	.4byte 0x0A82AD82
	.4byte 0xBE82B382
	.4byte 0xA2814200
	.asciz "\n\n\nThere is no more available space in\nWii system memory. Refer to the Wii\nOperations Manual for details."
	.balign 4
	.asciz "\n\n\nDer Speicher der Wii-Konsole ist belegt.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.balign 4
	.4byte 0x0A0A0A49
	.4byte 0x6C206E27
	.4byte 0x79206120
	.4byte 0x70617320
	.4byte 0x61737365
	.4byte 0x7A206427
	.4byte 0x65737061
	.4byte 0x6365206C
	.4byte 0x69627265
	.4byte 0x0A64616E
	.4byte 0x73206C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E0A
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x204D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F690A64
	.4byte 0x65206C61
	.4byte 0x20576969
	.4byte 0x20706F75
	.4byte 0x7220706C
	.4byte 0x75732064
	.4byte 0x652064E9
	.asciz "tails."
	.balign 4
	.4byte 0x0A0A0A4E
	.4byte 0x6F207175
	.4byte 0x65646120
	.4byte 0x65737061
	.4byte 0x63696F20
	.4byte 0x6C696272
	.4byte 0x6520656E
	.4byte 0x206C6120
	.4byte 0x6D656D6F
	.4byte 0x7269610A
	.4byte 0x6465206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x692E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C0A6465
	.4byte 0x206F7065
	.4byte 0x72616369
	.4byte 0x6F6E6573
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692070
	.4byte 0x6172610A
	.4byte 0x6F627465
	.4byte 0x6E657220
	.4byte 0x6DE17320
	.4byte 0x696E666F
	.4byte 0x726D6163
	.4byte 0x69F36E2E
	.4byte 0
	.4byte 0x0A0A0A4E
	.4byte 0x6F6E2063
	.4byte 0x27E82070
	.4byte 0x69F92073
	.asciz "pazio libero nella memoria\ndella console Wii. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
	.balign 4
	.asciz "\n\n\nEr is geen vrije ruimte meer in het\ninterne geheugen van het Wii-systeem.\nLees de handleiding voor meer informatie."
	.balign 4
	.asciz "\n\n\nThere is no more available space in\nthe Wii System Memory. Please refer to\nthe Wii Operations Manual for details."
	.balign 4
	.4byte 0x0A0A0A49
	.4byte 0x6C206E27
	.4byte 0x79206120
	.4byte 0x70617320
	.4byte 0x61737365
	.4byte 0x7A206427
	.4byte 0x65737061
	.4byte 0x6365206C
	.4byte 0x69627265
	.4byte 0x2064616E
	.4byte 0x730A6C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x0A766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x206D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692057
	.4byte 0x69692070
	.4byte 0x6F75720A
	.4byte 0x706C7573
	.4byte 0x20646520
	.4byte 0x64E97461
	.asciz "ils."
	.balign 4
	.4byte 0x0A0A0A4E
	.4byte 0x6F207175
	.4byte 0x65646120
	.4byte 0x65737061
	.4byte 0x63696F20
	.4byte 0x6C696272
	.4byte 0x6520656E
	.4byte 0x206C6120
	.4byte 0x6D656D6F
	.4byte 0x72696120
	.4byte 0x64650A6C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x692E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A696E73
	.4byte 0x74727563
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688253
	.4byte 0x824F8254
	.4byte 0x81420A0A
	.4byte 0x57696996
	.4byte 0x7B91CC95
	.4byte 0xDB91B683
	.4byte 0x81838283
	.4byte 0x8A82CC8B
	.4byte 0xF382AB97
	.4byte 0x6597CA82
	.4byte 0xAA88D98F
	.4byte 0xED82C582
	.4byte 0xB781420A
	.4byte 0x82AD82ED
	.4byte 0x82B582AD
	.4byte 0x82CD5769
	.4byte 0x69967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182F082
	.4byte 0xA893C782
	.4byte 0xDD0A82AD
	.4byte 0x82BE82B3
	.4byte 0x82A28142
	.4byte 0
	.asciz "\n\nError #405,\n\nThere is no more available space in\nWii system memory. Refer to the Wii\nOperations Manual for details."
	.balign 4
	.4byte 0x0A0A0A57
	.4byte 0x6969967B
	.4byte 0x91CC95DB
	.4byte 0x91B68381
	.4byte 0x8382838A
	.4byte 0x82CC8BF3
	.4byte 0x82AB8374
	.4byte 0x83408343
	.4byte 0x838B9094
	.4byte 0x82AA88D9
	.4byte 0x8FED82C5
	.4byte 0x82B78142
	.4byte 0x0A82AD82
	.4byte 0xED82B582
	.4byte 0xAD82CD57
	.4byte 0x6969967B
	.4byte 0x91CC82CC
	.4byte 0x8EE688B5
	.4byte 0x90E096BE
	.4byte 0x8F9182F0
	.4byte 0x82A893C7
	.4byte 0x82DD0A82
	.4byte 0xAD82BE82
	.4byte 0xB382A281
	.4byte 0x42000000
	.4byte 0x0A0A0A49
	.4byte 0x6C206E27
	.4byte 0x79206120
	.4byte 0x70617320
	.4byte 0x61737365
	.4byte 0x7A206427
	.4byte 0x65737061
	.4byte 0x6365206C
	.4byte 0x69627265
	.4byte 0x2064616E
	.4byte 0x730A6C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x0A766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x204D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692064
	.4byte 0x65206C61
	.4byte 0x20576969
	.4byte 0x0A706F75
	.4byte 0x7220706C
	.4byte 0x75732064
	.4byte 0x652064E9
	.asciz "tails."
	.balign 4
	.4byte 0x0A0A0A4E
	.4byte 0x6F207175
	.4byte 0x65646120
	.4byte 0x65737061
	.4byte 0x63696F20
	.4byte 0x6C696272
	.4byte 0x6520656E
	.4byte 0x206C6120
	.4byte 0x6D656D6F
	.4byte 0x72696120
	.4byte 0x64650A6C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x692E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A6F7065
	.4byte 0x72616369
	.4byte 0x6F6E6573
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692070
	.4byte 0x6172610A
	.4byte 0x6F627465
	.4byte 0x6E657220
	.4byte 0x6DE17320
	.4byte 0x696E666F
	.4byte 0x726D6163
	.4byte 0x69F36E2E
	.4byte 0
	.asciz "\n\n\nImpossibile salvare altri dati nella\nmemoria della console Wii. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
	.balign 4
	.asciz "\n\n\nEr is geen ruimte meer beschikbaar\nin het interne geheugen van het\nWii-systeem. Lees de handleiding voor\nmeer informatie."
	.balign 4
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688253
	.4byte 0x824F8255
	.4byte 0x81420A0A
	.4byte 0x57696996
	.4byte 0x7B91CC95
	.4byte 0xDB91B683
	.4byte 0x81838283
	.4byte 0x8A82CC8B
	.4byte 0xF382AB83
	.4byte 0x74834083
	.4byte 0x43838B90
	.4byte 0x9482AA88
	.4byte 0xD98FED82
	.4byte 0xC582B781
	.4byte 0x420A82AD
	.4byte 0x82ED82B5
	.4byte 0x82AD82CD
	.4byte 0x57696996
	.4byte 0x7B91CC82
	.4byte 0xCC8EE688
	.4byte 0xB590E096
	.4byte 0xBE8F9182
	.4byte 0xF082A893
	.4byte 0xC782DD0A
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
	.asciz "\n\nError #406,\n\nThere is no more available space in\nWii system memory. Refer to the Wii\nOperations Manual for details."
	.balign 4
	.4byte 0x0A0A0A57
	.4byte 0x6969967B
	.4byte 0x91CC95DB
	.4byte 0x91B68381
	.4byte 0x8382838A
	.4byte 0x82AA89F3
	.4byte 0x82EA82DC
	.4byte 0x82B582BD
	.4byte 0x81420A82
	.4byte 0xAD82ED82
	.4byte 0xB582AD82
	.4byte 0xCD576969
	.4byte 0x967B91CC
	.4byte 0x82CC8EE6
	.4byte 0x88B590E0
	.4byte 0x96BE8F91
	.4byte 0x82F082A8
	.4byte 0x93C782DD
	.4byte 0x0A82AD82
	.4byte 0xBE82B382
	.4byte 0xA2814200
	.asciz "\n\n\nThe Wii system memory has been damaged.\nRefer to the Wii Operations Manual for\ndetails."
	.balign 4
	.4byte 0x0A0A0A44
	.4byte 0x65722053
	.4byte 0x70656963
	.4byte 0x68657220
	.4byte 0x64657220
	.4byte 0x5769692D
	.4byte 0x4B6F6E73
	.4byte 0x6F6C650A
	.4byte 0x69737420
	.4byte 0x62657363
	.4byte 0x68E46469
	.asciz "gt. Bitte lies die\nWii-Bedienungsanleitung, um weitere\nInformationen zu erhalten."
	.balign 4
	.4byte 0x0A0A0A4C
	.4byte 0x61206DE9
	.4byte 0x6D6F6972
	.4byte 0x65206465
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6520
	.4byte 0x57696920
	.4byte 0x6120E974
	.4byte 0xE9200A65
	.4byte 0x6E646F6D
	.4byte 0x6D6167E9
	.4byte 0x652E2056
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x2061750A
	.4byte 0x4D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x69206465
	.4byte 0x206C6120
	.4byte 0x57696920
	.4byte 0x706F7572
	.4byte 0x20706C75
	.4byte 0x73206465
	.4byte 0x0A64E974
	.asciz "ails."
	.balign 4
	.4byte 0x0A0A0A4C
	.4byte 0x61206D65
	.4byte 0x6D6F7269
	.4byte 0x61206465
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6120
	.4byte 0x5769690A
	.4byte 0x657374E1
	.4byte 0x206461F1
	.4byte 0x6164612E
	.4byte 0x20436F6E
	.4byte 0x73756C74
	.4byte 0x6120656C
	.4byte 0x206D616E
	.4byte 0x75616C20
	.4byte 0x64650A6F
	.4byte 0x70657261
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
	.asciz "\n\n\nLa memoria della console Wii e\ndanneggiata. Per maggiori informazioni,\nconsulta il manuale di istruzioni della\nconsole Wii."
	.balign 4
	.asciz "\n\n\nHet interne geheugen van het\nWii-systeem is beschadigd. Lees de\nWii-handleiding voor meer informatie."
	.balign 4
	.asciz "\n\n\nThe Wii System Memory has been damaged.\nPlease refer to the Wii Operations Manual\nfor details."
	.balign 4
	.asciz "\n\n\nDer Speicher der Wii-Konsole\nist beschadigt. Bitte lies die\nWii-Bedienungsanleitung, um weitere\nInformationen zu erhalten."
	.balign 4
	.4byte 0x0A0A0A4C
	.4byte 0x61206DE9
	.4byte 0x6D6F6972
	.4byte 0x65206465
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6520
	.4byte 0x57696920
	.4byte 0x6573740A
	.4byte 0x656E646F
	.4byte 0x6D6D6167
	.4byte 0xE9652E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x0A6D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692057
	.4byte 0x69692070
	.4byte 0x6F757220
	.4byte 0x706C7573
	.4byte 0x20646520
	.4byte 0x64E97461
	.asciz "ils.\n"
	.balign 4
	.4byte 0x0A0A0A4C
	.4byte 0x61206D65
	.4byte 0x6D6F7269
	.4byte 0x61206465
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6120
	.4byte 0x57696920
	.4byte 0x657374E1
	.4byte 0x206461F1
	.4byte 0x6164612E
	.4byte 0x0A436F6E
	.4byte 0x73756C74
	.4byte 0x6120656C
	.4byte 0x206D616E
	.4byte 0x75616C20
	.4byte 0x64652069
	.4byte 0x6E737472
	.4byte 0x75636369
	.4byte 0x6F6E6573
	.4byte 0x20646520
	.4byte 0x6C610A63
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692070
	.4byte 0x61726120
	.4byte 0x6F627465
	.4byte 0x6E657220
	.4byte 0x6DE17320
	.4byte 0x696E666F
	.4byte 0x726D6163
	.4byte 0x69F36E2E
	.4byte 0
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688253
	.4byte 0x824F8257
	.4byte 0x81420A0A
	.4byte 0x57696996
	.4byte 0x7B91CC95
	.4byte 0xDB91B683
	.4byte 0x81838283
	.4byte 0x8A82AA89
	.4byte 0xF382EA82
	.4byte 0xDC82B582
	.4byte 0xBD81420A
	.4byte 0x82AD82ED
	.4byte 0x82B582AD
	.4byte 0x82CD5769
	.4byte 0x69967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182F082
	.4byte 0xA893C782
	.4byte 0xDD0A82AD
	.4byte 0x82BE82B3
	.4byte 0x82A28142
	.4byte 0
	.asciz "\n\nError #408,\n\nThe Wii system memory has been damaged.\nRefer to the Wii Operations Manual for\ndetails."
	.balign 4
	.4byte 0x0A0A0A57
	.4byte 0x6969967B
	.4byte 0x91CC95DB
	.4byte 0x91B68381
	.4byte 0x8382838A
	.4byte 0x82CC8F91
	.4byte 0x82AB8D9E
	.4byte 0x82DD2F93
	.4byte 0xC782DD8F
	.4byte 0x6F82B582
	.4byte 0xAA0A82C5
	.4byte 0x82AB82DC
	.4byte 0x82B982F1
	.4byte 0x82C582B5
	.4byte 0x82BD8142
	.4byte 0x0A82AD82
	.4byte 0xED82B582
	.4byte 0xAD82CD57
	.4byte 0x6969967B
	.4byte 0x91CC82CC
	.4byte 0x8EE688B5
	.4byte 0x90E096BE
	.4byte 0x8F9182F0
	.4byte 0x82A893C7
	.4byte 0x82DD0A82
	.4byte 0xAD82BE82
	.4byte 0xB382A281
	.4byte 0x42000000
	.asciz "\n\n\nCould not access Wii system memory.\nRefer to the Wii Operations Manual for\ndetails."
	.balign 4
	.asciz "\n\n\nAuf den Speicher der Wii-Konsole konnte\nnicht zugegriffen werden. Bitte lies die\nWii-Bedienungsanleitung, um weitere\nInformationen zu erhalten."
	.balign 4
	.4byte 0x0A0A0A49
	.4byte 0x6D706F73
	.4byte 0x7369626C
	.4byte 0x65206427
	.4byte 0x616363E9
	.4byte 0x64657220
	.4byte 0xE0206C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x2064650A
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x720A6175
	.4byte 0x204D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692064
	.4byte 0x65206C61
	.4byte 0x20576969
	.4byte 0x20706F75
	.4byte 0x7220706C
	.4byte 0x75730A64
	.4byte 0x652064E9
	.asciz "tails."
	.balign 4
	.4byte 0x0A0A0A4E
	.4byte 0x6F207365
	.4byte 0x20686120
	.4byte 0x706F6469
	.4byte 0x646F2061
	.4byte 0x63636564
	.4byte 0x65722061
	.4byte 0x206C6120
	.4byte 0x6D656D6F
	.4byte 0x72696120
	.4byte 0x64650A6C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x692E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A6F7065
	.4byte 0x72616369
	.4byte 0x6F6E6573
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692070
	.4byte 0x6172610A
	.4byte 0x6F627465
	.4byte 0x6E657220
	.4byte 0x6DE17320
	.4byte 0x696E666F
	.4byte 0x726D6163
	.4byte 0x69F36E2E
	.4byte 0
	.asciz "\n\n\nImpossibile accedere alla memoria della\nconsole Wii. Per maggiori informazioni,\nconsulta il manuale di istruzioni della\nconsole Wii."
	.asciz "\n\n\nHet interne geheugen van het Wii-systeem\nkan niet worden gelezen of beschreven.\nLees de Wii-handleiding voor meer\ninformatie."
	.balign 4
	.asciz "\n\n\nCould not access the Wii System Memory.Please refer to the Wii Operations Manual\nfor details."
	.balign 4
	.4byte 0x0A0A0A49
	.4byte 0x6D706F73
	.4byte 0x7369626C
	.4byte 0x65206427
	.4byte 0x616363E9
	.4byte 0x64657220
	.4byte 0xE0206C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x20646520
	.4byte 0x6C610A63
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x0A6D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692057
	.4byte 0x69692070
	.4byte 0x6F757220
	.4byte 0x706C7573
	.4byte 0x20646520
	.4byte 0x64E97461
	.asciz "ils."
	.balign 4
	.4byte 0x0A0A0A4E
	.4byte 0x6F207365
	.4byte 0x20686120
	.4byte 0x706F6469
	.4byte 0x646F2061
	.4byte 0x63636564
	.4byte 0x65722061
	.4byte 0x206C6120
	.4byte 0x6D656D6F
	.4byte 0x72696120
	.4byte 0x64650A6C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x692E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A696E73
	.4byte 0x74727563
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688253
	.4byte 0x82508250
	.4byte 0x81420A0A
	.4byte 0x57696996
	.4byte 0x7B91CC95
	.4byte 0xDB91B683
	.4byte 0x81838283
	.4byte 0x8A82CC8F
	.4byte 0x9182AB8D
	.4byte 0x9E82DD2F
	.4byte 0x93C782DD
	.4byte 0x8F6F82B5
	.4byte 0x82AA0A82
	.4byte 0xC582AB82
	.4byte 0xDC82B982
	.4byte 0xF182C582
	.4byte 0xB582BD81
	.4byte 0x420A82AD
	.4byte 0x82ED82B5
	.4byte 0x82AD82CD
	.4byte 0x57696996
	.4byte 0x7B91CC82
	.4byte 0xCC8EE688
	.4byte 0xB590E096
	.4byte 0xBE8F9182
	.4byte 0xF082A893
	.4byte 0xC782DD0A
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
	.asciz "\n\nError #411,\n\nCould not access Wii system memory.\nRefer to the Wii Operations Manual for\ndetails."
	.balign 4
	.4byte 0x0A0A0A57
	.4byte 0x6969967B
	.4byte 0x91CC95DB
	.4byte 0x91B68381
	.4byte 0x8382838A
	.4byte 0x82CC8F91
	.4byte 0x82AB8D9E
	.4byte 0x82DD2F93
	.4byte 0xC782DD8F
	.4byte 0x6F82B592
	.4byte 0x8682C90A
	.4byte 0x83478389
	.4byte 0x815B82AA
	.4byte 0x94AD90B6
	.4byte 0x82B582DC
	.4byte 0x82B582BD
	.4byte 0x81420A82
	.4byte 0xAD82ED82
	.4byte 0xB582AD82
	.4byte 0xCD576969
	.4byte 0x967B91CC
	.4byte 0x82CC8EE6
	.4byte 0x88B590E0
	.4byte 0x96BE8F91
	.4byte 0x82F082A8
	.4byte 0x93C782DD
	.4byte 0x0A82AD82
	.4byte 0xBE82B382
	.4byte 0xA2814200
	.asciz "\n\n\nAn error occurred while accessing Wii\nsystem memory. Refer to the Wii\nOperations Manual for details."
	.asciz "\n\n\nBeim Zugriff auf den Speicher der\nWii-Konsole ist ein Fehler aufgetreten.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.balign 4
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652070
	.4byte 0x656E6461
	.4byte 0x6E74206C
	.4byte 0x650A7072
	.4byte 0x6F636573
	.4byte 0x73757320
	.4byte 0x6465206C
	.4byte 0x65637475
	.4byte 0x7265206F
	.4byte 0x75206427
	.4byte 0xE9637269
	.4byte 0x74757265
	.4byte 0x0A64616E
	.4byte 0x73206C61
	.4byte 0x206DE96D
	.4byte 0x6F697265
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C652057
	.4byte 0x69692E0A
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x732072E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x204D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F690A64
	.4byte 0x65206C61
	.4byte 0x20576969
	.4byte 0x20706F75
	.4byte 0x7220706C
	.4byte 0x75732064
	.4byte 0x652064E9
	.asciz "tails."
	.balign 4
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F7220
	.4byte 0x616C2069
	.4byte 0x6E74656E
	.4byte 0x7461720A
	.4byte 0x61636365
	.4byte 0x64657220
	.4byte 0x61206C61
	.4byte 0x206D656D
	.4byte 0x6F726961
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692E0A
	.4byte 0x436F6E73
	.4byte 0x756C7461
	.4byte 0x20656C20
	.4byte 0x6D616E75
	.4byte 0x616C2064
	.4byte 0x65206F70
	.4byte 0x65726163
	.4byte 0x696F6E65
	.4byte 0x730A6465
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6120
	.4byte 0x57696920
	.4byte 0x70617261
	.4byte 0x206F6274
	.4byte 0x656E6572
	.4byte 0x206DE173
	.4byte 0x0A696E66
	.4byte 0x6F726D61
	.4byte 0x6369F36E
	.4byte 0x2E000000
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore durante la\nlettura o la modifica dei dati\nall'interno della memoria della\nconsole Wii. Per maggiori informazioni,\nconsulta il manuale di istruzioni della\nconsole Wii."
	.asciz "\n\n\nEr is een fout opgetreden tijdens het\nlezen of beschrijven van het interne\ngeheugen van het Wii-systeem. Lees de\nWii-handleiding voor meer informatie."
	.balign 4
	.asciz "\n\n\nAn error occurred during the process of\nreading from or writing to the Wii System\nMemory. Please refer to the Wii Operations\nManual for details."
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652061
	.4byte 0x76656320
	.4byte 0x6C61206D
	.4byte 0xE96D6F69
	.4byte 0x72650A64
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C65
	.4byte 0x20576969
	.4byte 0x2070656E
	.4byte 0x64616E74
	.4byte 0x206C6520
	.4byte 0x70726F63
	.4byte 0x65737375
	.4byte 0x730A6465
	.4byte 0x206C6563
	.4byte 0x74757265
	.4byte 0x206F7520
	.4byte 0x6427E963
	.4byte 0x72697475
	.4byte 0x72652E20
	.4byte 0x56657569
	.4byte 0x6C6C657A
	.4byte 0x20766F75
	.4byte 0x730A72E9
	.4byte 0x66E97265
	.4byte 0x72206175
	.4byte 0x206D6F64
	.4byte 0x65206427
	.4byte 0x656D706C
	.4byte 0x6F692057
	.4byte 0x69692070
	.4byte 0x6F757220
	.4byte 0x706C7573
	.4byte 0x0A646520
	.4byte 0x64E87461
	.asciz "ils."
	.balign 4
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F7220
	.4byte 0x64757261
	.4byte 0x6E746520
	.4byte 0x6C610A6C
	.4byte 0x65637475
	.4byte 0x7261206F
	.4byte 0x20657363
	.4byte 0x72697475
	.4byte 0x72612064
	.4byte 0x65206C61
	.4byte 0x206D656D
	.4byte 0x6F726961
	.4byte 0x2064650A
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692E20
	.4byte 0x436F6E73
	.4byte 0x756C7461
	.4byte 0x20656C20
	.4byte 0x6D616E75
	.4byte 0x616C2064
	.4byte 0x650A696E
	.4byte 0x73747275
	.4byte 0x6363696F
	.4byte 0x6E657320
	.4byte 0x6465206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x69207061
	.4byte 0x72610A6F
	.4byte 0x6274656E
	.4byte 0x6572206D
	.4byte 0xE1732069
	.4byte 0x6E666F72
	.4byte 0x6D616369
	.4byte 0xF36E2E00
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688253
	.4byte 0x82508251
	.4byte 0x81420A0A
	.4byte 0x57696996
	.4byte 0x7B91CC95
	.4byte 0xDB91B683
	.4byte 0x81838283
	.4byte 0x8A82CC8F
	.4byte 0x9182AB8D
	.4byte 0x9E82DD2F
	.4byte 0x93C782DD
	.4byte 0x8F6F82B5
	.4byte 0x928682C9
	.4byte 0x0A834783
	.4byte 0x89815B82
	.4byte 0xAA94AD90
	.4byte 0xB682B582
	.4byte 0xDC82B582
	.4byte 0xBD81420A
	.4byte 0x82AD82ED
	.4byte 0x82B582AD
	.4byte 0x82CD5769
	.4byte 0x69967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182F082
	.4byte 0xA893C782
	.4byte 0xDD0A82AD
	.4byte 0x82BE82B3
	.4byte 0x82A28142
	.4byte 0
	.asciz "\n\nError #412,\n\nAn error occurred while accessing Wii\nsystem memory. Refer to the Wii\nOperations Manual for details."



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320C90
lbl_80320C90:
	.skip 0x8



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328E80
lbl_80328E80:
	.4byte 0x80306D88  ;# ptr
	.4byte 0x80306DFC  ;# ptr
	.4byte 0x8030710C  ;# ptr
	.4byte 0x80307184  ;# ptr
	.4byte 0x803076F0  ;# ptr
	.4byte 0x8030775C  ;# ptr
	.4byte 0x80307CAC  ;# ptr
	.4byte 0x80307D30  ;# ptr
	.4byte 0x803083B8  ;# ptr
	.4byte 0x80308444  ;# ptr


.global lbl_80328EA8

lbl_80328EA8:

	# ROM: 0x324108
	.4byte 0xFFFFFF00
	.4byte 0

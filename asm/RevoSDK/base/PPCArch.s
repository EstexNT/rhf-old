.include "macros.inc"

.section .text, "ax"  # 0x800D8DD0 - 0x800D8FA0

.balign 16, 0
.global func_800D8DD0
func_800D8DD0:
/* 800D8DD0 000D46F0  7C 60 00 A6 */	mfmsr r3
/* 800D8DD4 000D46F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8DE0
func_800D8DE0:
/* 800D8DE0 000D4700  7C 60 01 24 */	mtmsr r3
/* 800D8DE4 000D4704  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8DF0
func_800D8DF0:
/* 800D8DF0 000D4710  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 800D8DF4 000D4714  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E00
func_800D8E00:
/* 800D8E00 000D4720  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 800D8E04 000D4724  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E10
func_800D8E10:
/* 800D8E10 000D4730  7C 79 FA A6 */	mfspr r3, 0x3f9
/* 800D8E14 000D4734  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E20
func_800D8E20:
/* 800D8E20 000D4740  7C 79 FB A6 */	mtspr 0x3f9, r3
/* 800D8E24 000D4744  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E30
func_800D8E30:
/* 800D8E30 000D4750  7C 76 03 A6 */	mtspr 0x16, r3
/* 800D8E34 000D4754  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E40
func_800D8E40:
/* 800D8E40 000D4760  44 00 00 02 */	sc 
/* 800D8E44 000D4764  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E50
func_800D8E50:
/* 800D8E50 000D4770  7C 00 04 AC */	sync 0
lbl_800D8E54:
/* 800D8E54 000D4774  60 00 00 00 */	nop 
/* 800D8E58 000D4778  38 60 00 00 */	li r3, 0
/* 800D8E5C 000D477C  60 00 00 00 */	nop 
/* 800D8E60 000D4780  4B FF FF F4 */	b lbl_800D8E54

.balign 16, 0
.global func_800D8E70
func_800D8E70:
/* 800D8E70 000D4790  7C 78 EB A6 */	mtspr 0x3b8, r3
/* 800D8E74 000D4794  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E80
func_800D8E80:
/* 800D8E80 000D47A0  7C 7C EB A6 */	mtspr 0x3bc, r3
/* 800D8E84 000D47A4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8E90
func_800D8E90:
/* 800D8E90 000D47B0  7C 79 EB A6 */	mtspr 0x3b9, r3
/* 800D8E94 000D47B4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8EA0
func_800D8EA0:
/* 800D8EA0 000D47C0  7C 7A EB A6 */	mtspr 0x3ba, r3
/* 800D8EA4 000D47C4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8EB0
func_800D8EB0:
/* 800D8EB0 000D47D0  7C 7D EB A6 */	mtspr 0x3bd, r3
/* 800D8EB4 000D47D4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8EC0
func_800D8EC0:
/* 800D8EC0 000D47E0  7C 7E EB A6 */	mtspr 0x3be, r3
/* 800D8EC4 000D47E4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8ED0
func_800D8ED0:
/* 800D8ED0 000D47F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D8ED4 000D47F4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800D8ED8 000D47F8  FF E0 04 8E */	mffs f31
/* 800D8EDC 000D47FC  DB E1 00 08 */	stfd f31, 8(r1)
/* 800D8EE0 000D4800  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 800D8EE4 000D4804  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800D8EE8 000D4808  38 21 00 20 */	addi r1, r1, 0x20
/* 800D8EEC 000D480C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8EF0
func_800D8EF0:
/* 800D8EF0 000D4810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D8EF4 000D4814  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800D8EF8 000D4818  38 80 00 00 */	li r4, 0
/* 800D8EFC 000D481C  90 81 00 08 */	stw r4, 8(r1)
/* 800D8F00 000D4820  90 61 00 0C */	stw r3, 0xc(r1)
/* 800D8F04 000D4824  CB E1 00 08 */	lfd f31, 8(r1)
/* 800D8F08 000D4828  FD FE FD 8E */	mtfsf 0xff, f31
/* 800D8F0C 000D482C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 800D8F10 000D4830  38 21 00 20 */	addi r1, r1, 0x20
/* 800D8F14 000D4834  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F20
func_800D8F20:
/* 800D8F20 000D4840  7C 78 E2 A6 */	mfspr r3, 0x398
/* 800D8F24 000D4844  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F30
func_800D8F30:
/* 800D8F30 000D4850  7C 78 E3 A6 */	mtspr 0x398, r3
/* 800D8F34 000D4854  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F40
func_800D8F40:
/* 800D8F40 000D4860  7C 00 04 AC */	sync 0
/* 800D8F44 000D4864  7C 79 E2 A6 */	mfspr r3, 0x399
/* 800D8F48 000D4868  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F50
func_800D8F50:
/* 800D8F50 000D4870  7C 79 E3 A6 */	mtspr 0x399, r3
/* 800D8F54 000D4874  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F60
func_800D8F60:
/* 800D8F60 000D4880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D8F64 000D4884  7C 08 02 A6 */	mflr r0
/* 800D8F68 000D4888  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D8F6C 000D488C  4B FF FE 85 */	bl func_800D8DF0
/* 800D8F70 000D4890  60 63 02 00 */	ori r3, r3, 0x200
/* 800D8F74 000D4894  4B FF FE 8D */	bl func_800D8E00
/* 800D8F78 000D4898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D8F7C 000D489C  7C 08 03 A6 */	mtlr r0
/* 800D8F80 000D48A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D8F84 000D48A4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8F90
func_800D8F90:
/* 800D8F90 000D48B0  FF A0 00 4C */	mtfsb1 0x1d
/* 800D8F94 000D48B4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800D8FA0
func_800D8FA0:
/* 800D8FA0 000D48C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D8FA4 000D48C4  7C 08 02 A6 */	mflr r0
/* 800D8FA8 000D48C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D8FAC 000D48CC  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 800D8FB0 000D48D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D8FB4 000D48D4  7C 7F 1B 78 */	mr r31, r3
/* 800D8FB8 000D48D8  41 82 00 0C */	beq lbl_800D8FC4
/* 800D8FBC 000D48DC  7C 73 FB A6 */	mtspr 0x3f3, r3
/* 800D8FC0 000D48E0  48 00 00 1C */	b lbl_800D8FDC
lbl_800D8FC4:
/* 800D8FC4 000D48E4  3C 60 80 2F */	lis r3, lbl_802F1398@ha
/* 800D8FC8 000D48E8  38 63 13 98 */	addi r3, r3, lbl_802F1398@l
/* 800D8FCC 000D48EC  4C C6 31 82 */	crclr 6
/* 800D8FD0 000D48F0  48 00 34 91 */	bl func_800DC460
/* 800D8FD4 000D48F4  67 FF 80 00 */	oris r31, r31, 0x8000
/* 800D8FD8 000D48F8  7F F3 FB A6 */	mtspr 0x3f3, r31
lbl_800D8FDC:
/* 800D8FDC 000D48FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D8FE0 000D4900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D8FE4 000D4904  7C 08 03 A6 */	mtlr r0
/* 800D8FE8 000D4908  38 21 00 10 */	addi r1, r1, 0x10
/* 800D8FEC 000D490C  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F1398

.global lbl_802F1398

lbl_802F1398:

	# ROM: 0x2ED498
	.asciz "H4A should not be cleared because of Broadway errata.\n"
	.balign 4

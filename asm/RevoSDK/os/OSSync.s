.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E2750
func_800E2750:
/* 800E2750 000DE070  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 800E2754 000DE074  61 2A 00 08 */	ori r10, r9, 8
/* 800E2758 000DE078  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 800E275C 000DE07C  4C 00 01 2C */	isync 
/* 800E2760 000DE080  7C 00 04 AC */	sync 0
/* 800E2764 000DE084  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 800E2768 000DE088  4C 00 00 64 */	rfi 
lbl_800E276C:
/* 800E276C 000DE08C  60 00 00 00 */	nop 

.balign 16, 0
.global func_800E2770
func_800E2770:
/* 800E2770 000DE090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2774 000DE094  7C 08 02 A6 */	mflr r0
/* 800E2778 000DE098  3C 80 80 0E */	lis r4, func_800E2750@ha
/* 800E277C 000DE09C  3C A0 80 0E */	lis r5, lbl_800E276C@ha
/* 800E2780 000DE0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2784 000DE0A4  38 84 27 50 */	addi r4, r4, func_800E2750@l
/* 800E2788 000DE0A8  38 A5 27 6C */	addi r5, r5, lbl_800E276C@l
/* 800E278C 000DE0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E2790 000DE0B0  3F E0 80 00 */	lis r31, 0x80000C00@ha
/* 800E2794 000DE0B4  38 7F 0C 00 */	addi r3, r31, 0x80000C00@l
/* 800E2798 000DE0B8  7C A4 28 50 */	subf r5, r4, r5
/* 800E279C 000DE0BC  4B F2 1C 29 */	bl func_800043C4
/* 800E27A0 000DE0C0  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 800E27A4 000DE0C4  38 80 01 00 */	li r4, 0x100
/* 800E27A8 000DE0C8  4B FF 8F 89 */	bl func_800DB730
/* 800E27AC 000DE0CC  7C 00 04 AC */	sync 0
/* 800E27B0 000DE0D0  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 800E27B4 000DE0D4  38 80 01 00 */	li r4, 0x100
/* 800E27B8 000DE0D8  4B FF 8F D9 */	bl func_800DB790
/* 800E27BC 000DE0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E27C0 000DE0E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E27C4 000DE0E4  7C 08 03 A6 */	mtlr r0
/* 800E27C8 000DE0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E27CC 000DE0EC  4E 80 00 20 */	blr 

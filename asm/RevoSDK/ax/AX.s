.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800F69A0
func_800F69A0:
/* 800F69A0 000F22C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F69A4 000F22C4  7C 08 02 A6 */	mflr r0
/* 800F69A8 000F22C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F69AC 000F22CC  80 0D 9A C0 */	lwz r0, lbl_80320980-_SDA_BASE_(r13)
/* 800F69B0 000F22D0  2C 00 00 00 */	cmpwi r0, 0
/* 800F69B4 000F22D4  40 82 00 30 */	bne lbl_800F69E4
/* 800F69B8 000F22D8  80 6D 8C E8 */	lwz r3, lbl_8031FBA8-_SDA_BASE_(r13)
/* 800F69BC 000F22DC  4B FE 3A 55 */	bl func_800DA410
/* 800F69C0 000F22E0  48 00 01 21 */	bl func_800F6AE0
/* 800F69C4 000F22E4  48 00 2D ED */	bl func_800F97B0
/* 800F69C8 000F22E8  48 00 23 69 */	bl func_800F8D30
/* 800F69CC 000F22EC  48 00 05 35 */	bl func_800F6F00
/* 800F69D0 000F22F0  48 00 17 D1 */	bl func_800F81A0
/* 800F69D4 000F22F4  38 60 00 00 */	li r3, 0
/* 800F69D8 000F22F8  48 00 1D 39 */	bl func_800F8710
/* 800F69DC 000F22FC  38 00 00 01 */	li r0, 1
/* 800F69E0 000F2300  90 0D 9A C0 */	stw r0, lbl_80320980-_SDA_BASE_(r13)
lbl_800F69E4:
/* 800F69E4 000F2304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F69E8 000F2308  7C 08 03 A6 */	mtlr r0
/* 800F69EC 000F230C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F69F0 000F2310  4E 80 00 20 */	blr 
/* 800F69F4 000F2314  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800F69F8 000F2318  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800F69FC 000F231C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800F6A00
func_800F6A00:
/* 800F6A00 000F2320  80 6D 9A C0 */	lwz r3, lbl_80320980-_SDA_BASE_(r13)
/* 800F6A04 000F2324  4E 80 00 20 */	blr 
/* 800F6A08 000F2328  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800F6A0C 000F232C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80301B50
lbl_80301B50:
	.asciz "<< RVL_SDK - AX \trelease build: Jul  2 2010 02:03:41 (0x4302_145) >>"
	.balign 4


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FBA8

lbl_8031FBA8:

	# ROM: 0x31BCA8
	.4byte 0x80301B50  ;# ptr
	.4byte 0


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320980
lbl_80320980:
	.skip 0x8

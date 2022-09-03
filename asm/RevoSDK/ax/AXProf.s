.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_800F9CA0
func_800F9CA0:
/* 800F9CA0 000F55C0  80 0D 9B F0 */	lwz r0, lbl_80320AB0-_SDA_BASE_(r13)
/* 800F9CA4 000F55C4  2C 00 00 00 */	cmpwi r0, 0
/* 800F9CA8 000F55C8  41 82 00 30 */	beq lbl_800F9CD8
/* 800F9CAC 000F55CC  80 AD 9B F4 */	lwz r5, lbl_80320AB4-_SDA_BASE_(r13)
/* 800F9CB0 000F55D0  80 6D 9B F8 */	lwz r3, lbl_80320AB8-_SDA_BASE_(r13)
/* 800F9CB4 000F55D4  38 85 00 01 */	addi r4, r5, 1
/* 800F9CB8 000F55D8  80 CD 9B FC */	lwz r6, lbl_80320ABC-_SDA_BASE_(r13)
/* 800F9CBC 000F55DC  7C 04 1B 96 */	divwu r0, r4, r3
/* 800F9CC0 000F55E0  7C 00 19 D6 */	mullw r0, r0, r3
/* 800F9CC4 000F55E4  1C 65 00 38 */	mulli r3, r5, 0x38
/* 800F9CC8 000F55E8  7C 00 20 50 */	subf r0, r0, r4
/* 800F9CCC 000F55EC  90 0D 9B F4 */	stw r0, lbl_80320AB4-_SDA_BASE_(r13)
/* 800F9CD0 000F55F0  7C 66 1A 14 */	add r3, r6, r3
/* 800F9CD4 000F55F4  4E 80 00 20 */	blr 
lbl_800F9CD8:
/* 800F9CD8 000F55F8  38 60 00 00 */	li r3, 0
/* 800F9CDC 000F55FC  4E 80 00 20 */	blr 


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320AB0
lbl_80320AB0:
	.skip 0x4
.global lbl_80320AB4
lbl_80320AB4:
	.skip 0x4
.global lbl_80320AB8
lbl_80320AB8:
	.skip 0x4
.global lbl_80320ABC
lbl_80320ABC:
	.skip 0x4

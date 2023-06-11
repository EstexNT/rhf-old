.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800DB0C0
func_800DB0C0:
/* 800DB0C0 000D69E0  80 6D 97 90 */	lwz r3, lbl_80320650-_SDA_BASE_(r13)
/* 800DB0C4 000D69E4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB0D0
func_800DB0D0:
/* 800DB0D0 000D69F0  80 6D 97 94 */	lwz r3, lbl_80320654-_SDA_BASE_(r13)
/* 800DB0D4 000D69F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB0E0
func_800DB0E0:
/* 800DB0E0 000D6A00  80 6D 97 90 */	lwz r3, lbl_80320650-_SDA_BASE_(r13)
/* 800DB0E4 000D6A04  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB0F0
func_800DB0F0:
/* 800DB0F0 000D6A10  80 6D 8B E0 */	lwz r3, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB0F4 000D6A14  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB100
func_800DB100:
/* 800DB100 000D6A20  80 6D 8B E4 */	lwz r3, lbl_8031FAA4-_SDA_BASE_(r13)
/* 800DB104 000D6A24  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB110
func_800DB110:
/* 800DB110 000D6A30  80 6D 8B E0 */	lwz r3, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB114 000D6A34  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB120
func_800DB120:
/* 800DB120 000D6A40  90 6D 97 90 */	stw r3, lbl_80320650-_SDA_BASE_(r13)
/* 800DB124 000D6A44  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB130
func_800DB130:
/* 800DB130 000D6A50  90 6D 97 94 */	stw r3, lbl_80320654-_SDA_BASE_(r13)
/* 800DB134 000D6A54  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB140
func_800DB140:
/* 800DB140 000D6A60  90 6D 97 90 */	stw r3, lbl_80320650-_SDA_BASE_(r13)
/* 800DB144 000D6A64  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB150
func_800DB150:
/* 800DB150 000D6A70  90 6D 8B E0 */	stw r3, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB154 000D6A74  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB160
func_800DB160:
/* 800DB160 000D6A80  90 6D 8B E4 */	stw r3, lbl_8031FAA4-_SDA_BASE_(r13)
/* 800DB164 000D6A84  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB170
func_800DB170:
/* 800DB170 000D6A90  90 6D 8B E0 */	stw r3, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB174 000D6A94  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800DB180
func_800DB180:
/* 800DB180 000D6AA0  80 0D 8B E0 */	lwz r0, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB184 000D6AA4  38 A4 FF FF */	addi r5, r4, -1
/* 800DB188 000D6AA8  7C A6 28 F8 */	nor r6, r5, r5
/* 800DB18C 000D6AAC  7C A4 02 14 */	add r5, r4, r0
/* 800DB190 000D6AB0  38 05 FF FF */	addi r0, r5, -1
/* 800DB194 000D6AB4  7C C0 00 38 */	and r0, r6, r0
/* 800DB198 000D6AB8  7C 60 1A 14 */	add r3, r0, r3
/* 800DB19C 000D6ABC  7C 83 22 14 */	add r4, r3, r4
/* 800DB1A0 000D6AC0  7C 03 03 78 */	mr r3, r0
/* 800DB1A4 000D6AC4  38 04 FF FF */	addi r0, r4, -1
/* 800DB1A8 000D6AC8  7C C0 00 38 */	and r0, r6, r0
/* 800DB1AC 000D6ACC  90 0D 8B E0 */	stw r0, lbl_8031FAA0-_SDA_BASE_(r13)
/* 800DB1B0 000D6AD0  4E 80 00 20 */	blr 


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FAA0

lbl_8031FAA0:

	# ROM: 0x31BBA0
	.4byte 0xFFFFFFFF


.global lbl_8031FAA4

lbl_8031FAA4:

	# ROM: 0x31BBA4
	.4byte 0xFFFFFFFF


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320650
lbl_80320650:
	.skip 0x4
.global lbl_80320654
lbl_80320654:
	.skip 0x4
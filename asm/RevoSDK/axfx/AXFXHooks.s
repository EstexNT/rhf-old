.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800FADE0
func_800FADE0:
/* 800FADE0 000F6700  7C 64 1B 78 */	mr r4, r3
/* 800FADE4 000F6704  80 6D 8B D8 */	lwz r3, lbl_8031FA98-_SDA_BASE_(r13)
/* 800FADE8 000F6708  4B FE 00 68 */	b func_800DAE50

.balign 16, 0
.global func_800FADF0
func_800FADF0:
/* 800FADF0 000F6710  7C 64 1B 78 */	mr r4, r3
/* 800FADF4 000F6714  80 6D 8B D8 */	lwz r3, lbl_8031FA98-_SDA_BASE_(r13)
/* 800FADF8 000F6718  4B FE 01 58 */	b func_800DAF50

.balign 16, 0
.global func_800FAE00
func_800FAE00:
/* 800FAE00 000F6720  90 6D 8C F8 */	stw r3, lbl_8031FBB8-_SDA_BASE_(r13)
/* 800FAE04 000F6724  90 8D 8C FC */	stw r4, lbl_8031FBBC-_SDA_BASE_(r13)
/* 800FAE08 000F6728  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FAE10
func_800FAE10:
/* 800FAE10 000F6730  80 0D 8C F8 */	lwz r0, lbl_8031FBB8-_SDA_BASE_(r13)
/* 800FAE14 000F6734  90 03 00 00 */	stw r0, 0(r3)
/* 800FAE18 000F6738  80 0D 8C FC */	lwz r0, lbl_8031FBBC-_SDA_BASE_(r13)
/* 800FAE1C 000F673C  90 04 00 00 */	stw r0, 0(r4)
/* 800FAE20 000F6740  4E 80 00 20 */	blr 


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FBB8

lbl_8031FBB8:

	# ROM: 0x31BCB8
	.4byte func_800FADE0 


.global lbl_8031FBBC

lbl_8031FBBC:

	# ROM: 0x31BCBC
	.4byte func_800FADF0 

.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80118DA0
func_80118DA0:
/* 80118DA0 001146C0  98 6D 9D 38 */	stb r3, lbl_80320BF8-_SDA_BASE_(r13)
/* 80118DA4 001146C4  4E 80 00 20 */	blr 

.global func_80118DA8
func_80118DA8:
/* 80118DA8 001146C8  88 6D 9D 38 */	lbz r3, lbl_80320BF8-_SDA_BASE_(r13)
/* 80118DAC 001146CC  4E 80 00 20 */	blr 



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320BF8
lbl_80320BF8:
	.skip 0x8

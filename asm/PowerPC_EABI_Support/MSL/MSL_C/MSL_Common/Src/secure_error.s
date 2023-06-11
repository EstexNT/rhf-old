.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010D0A8
func_8010D0A8:
/* 8010D0A8 001089C8  81 8D 9C A8 */	lwz r12, lbl_80320B68-_SDA_BASE_(r13)
/* 8010D0AC 001089CC  2C 0C 00 00 */	cmpwi r12, 0
/* 8010D0B0 001089D0  4D 82 00 20 */	beqlr 
/* 8010D0B4 001089D4  7D 89 03 A6 */	mtctr r12
/* 8010D0B8 001089D8  4E 80 04 20 */	bctr 
/* 8010D0BC 001089DC  4E 80 00 20 */	blr 



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320B68
lbl_80320B68:
	.skip 0x8

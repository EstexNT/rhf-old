.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_800E05F0
func_800E05F0:
/* 800E05F0 000DBF10  3C 60 80 00 */	lis r3, 0x800030CC@ha
/* 800E05F4 000DBF14  38 00 00 00 */	li r0, 0
/* 800E05F8 000DBF18  90 03 30 CC */	stw r0, 0x800030CC@l(r3)
/* 800E05FC 000DBF1C  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 800E0600 000DBF20  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 800E0604 000DBF24  4E 80 00 20 */	blr 
/* 800E0608 000DBF28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E060C 000DBF2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

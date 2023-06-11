.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80107D50
func_80107D50:
/* 80107D50 00103670  3C 60 80 10 */	lis r3, func_801062B8@ha
/* 80107D54 00103674  38 63 62 B8 */	addi r3, r3, func_801062B8@l
/* 80107D58 00103678  90 6D 9C A4 */	stw r3, lbl_80320B64-_SDA_BASE_(r13)
/* 80107D5C 0010367C  4E 80 00 20 */	blr 

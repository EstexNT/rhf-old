.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_8011AC60
func_8011AC60:
/* 8011AC60 00116580  7C 65 1B 78 */	mr r5, r3
/* 8011AC64 00116584  80 63 00 04 */	lwz r3, 4(r3)
/* 8011AC68 00116588  80 A5 00 08 */	lwz r5, 8(r5)
/* 8011AC6C 0011658C  4B FF F7 E4 */	b func_8011A450

.balign 16, 0
.global func_8011AC70
func_8011AC70:
/* 8011AC70 00116590  80 63 00 04 */	lwz r3, 4(r3)
/* 8011AC74 00116594  4B FF F8 8C */	b func_8011A500

.balign 16, 0
.global func_8011AC80
func_8011AC80:
/* 8011AC80 001165A0  80 A3 00 00 */	lwz r5, 0(r3)
/* 8011AC84 001165A4  81 85 00 00 */	lwz r12, 0(r5)
/* 8011AC88 001165A8  7D 89 03 A6 */	mtctr r12
/* 8011AC8C 001165AC  4E 80 04 20 */	bctr 

.balign 16, 0
.global func_8011AC90
func_8011AC90:
/* 8011AC90 001165B0  80 A3 00 00 */	lwz r5, 0(r3)
/* 8011AC94 001165B4  81 85 00 04 */	lwz r12, 4(r5)
/* 8011AC98 001165B8  7D 89 03 A6 */	mtctr r12
/* 8011AC9C 001165BC  4E 80 04 20 */	bctr 

.balign 16, 0
.global func_8011ACA0
func_8011ACA0:
/* 8011ACA0 001165C0  38 C2 FE 98 */	addi r6, r2, lbl_80328E78-_SDA2_BASE_
/* 8011ACA4 001165C4  38 00 00 00 */	li r0, 0
/* 8011ACA8 001165C8  90 C3 00 00 */	stw r6, 0(r3)
/* 8011ACAC 001165CC  90 83 00 04 */	stw r4, 4(r3)
/* 8011ACB0 001165D0  90 A3 00 08 */	stw r5, 8(r3)
/* 8011ACB4 001165D4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8011ACB8 001165D8  4E 80 00 20 */	blr 



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328E78

lbl_80328E78:

	# ROM: 0x3240D8
	.4byte func_8011AC60
	.4byte func_8011AC70

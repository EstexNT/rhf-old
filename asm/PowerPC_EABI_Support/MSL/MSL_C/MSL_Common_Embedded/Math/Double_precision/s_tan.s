.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_801104C4
func_801104C4:
/* 801104C4 0010BDE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801104C8 0010BDE8  7C 08 02 A6 */	mflr r0
/* 801104CC 0010BDEC  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 801104D0 0010BDF0  C8 42 FE 78 */	lfd f2, lbl_80328E58-_SDA2_BASE_(r2)
/* 801104D4 0010BDF4  D8 21 00 08 */	stfd f1, 8(r1)
/* 801104D8 0010BDF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801104DC 0010BDFC  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 801104E0 0010BE00  80 61 00 08 */	lwz r3, 8(r1)
/* 801104E4 0010BE04  54 63 00 7E */	clrlwi r3, r3, 1
/* 801104E8 0010BE08  7C 03 00 00 */	cmpw r3, r0
/* 801104EC 0010BE0C  41 81 00 10 */	bgt lbl_801104FC
/* 801104F0 0010BE10  38 60 00 01 */	li r3, 1
/* 801104F4 0010BE14  4B FF F6 4D */	bl func_8010FB40
/* 801104F8 0010BE18  48 00 00 34 */	b lbl_8011052C
lbl_801104FC:
/* 801104FC 0010BE1C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80110500 0010BE20  7C 03 00 00 */	cmpw r3, r0
/* 80110504 0010BE24  41 80 00 0C */	blt lbl_80110510
/* 80110508 0010BE28  FC 21 08 28 */	fsub f1, f1, f1
/* 8011050C 0010BE2C  48 00 00 20 */	b lbl_8011052C
lbl_80110510:
/* 80110510 0010BE30  38 61 00 10 */	addi r3, r1, 0x10
/* 80110514 0010BE34  4B FF DA 21 */	bl func_8010DF34
/* 80110518 0010BE38  54 60 0F BC */	rlwinm r0, r3, 1, 0x1e, 0x1e
/* 8011051C 0010BE3C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80110520 0010BE40  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80110524 0010BE44  20 60 00 01 */	subfic r3, r0, 1
/* 80110528 0010BE48  4B FF F6 19 */	bl func_8010FB40
lbl_8011052C:
/* 8011052C 0010BE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80110530 0010BE50  7C 08 03 A6 */	mtlr r0
/* 80110534 0010BE54  38 21 00 20 */	addi r1, r1, 0x20
/* 80110538 0010BE58  4E 80 00 20 */	blr 



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328E58

lbl_80328E58:

	# ROM: 0x3240B8
	.4byte 0
	.4byte 0

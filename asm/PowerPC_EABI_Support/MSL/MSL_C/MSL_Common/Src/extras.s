.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80110794
func_80110794:
/* 80110794 0010C0B4  3C A0 80 30 */	lis r5, lbl_80305C70@ha
/* 80110798 0010C0B8  38 A5 5C 70 */	addi r5, r5, lbl_80305C70@l
/* 8011079C 0010C0BC  80 C5 00 38 */	lwz r6, 0x38(r5)
lbl_801107A0:
/* 801107A0 0010C0C0  88 03 00 00 */	lbz r0, 0(r3)
/* 801107A4 0010C0C4  38 A0 00 01 */	li r5, 1
/* 801107A8 0010C0C8  38 63 00 01 */	addi r3, r3, 1
/* 801107AC 0010C0CC  7C 07 07 74 */	extsb r7, r0
/* 801107B0 0010C0D0  28 07 00 FF */	cmplwi r7, 0xff
/* 801107B4 0010C0D4  41 81 00 08 */	bgt lbl_801107BC
/* 801107B8 0010C0D8  38 A0 00 00 */	li r5, 0
lbl_801107BC:
/* 801107BC 0010C0DC  2C 05 00 00 */	cmpwi r5, 0
/* 801107C0 0010C0E0  41 82 00 08 */	beq lbl_801107C8
/* 801107C4 0010C0E4  48 00 00 0C */	b lbl_801107D0
lbl_801107C8:
/* 801107C8 0010C0E8  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 801107CC 0010C0EC  7C E5 38 AE */	lbzx r7, r5, r7
lbl_801107D0:
/* 801107D0 0010C0F0  88 04 00 00 */	lbz r0, 0(r4)
/* 801107D4 0010C0F4  7C E7 07 74 */	extsb r7, r7
/* 801107D8 0010C0F8  38 A0 00 01 */	li r5, 1
/* 801107DC 0010C0FC  38 84 00 01 */	addi r4, r4, 1
/* 801107E0 0010C100  7C 00 07 74 */	extsb r0, r0
/* 801107E4 0010C104  28 00 00 FF */	cmplwi r0, 0xff
/* 801107E8 0010C108  41 81 00 08 */	bgt lbl_801107F0
/* 801107EC 0010C10C  38 A0 00 00 */	li r5, 0
lbl_801107F0:
/* 801107F0 0010C110  2C 05 00 00 */	cmpwi r5, 0
/* 801107F4 0010C114  41 82 00 08 */	beq lbl_801107FC
/* 801107F8 0010C118  48 00 00 0C */	b lbl_80110804
lbl_801107FC:
/* 801107FC 0010C11C  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 80110800 0010C120  7C 05 00 AE */	lbzx r0, r5, r0
lbl_80110804:
/* 80110804 0010C124  7C 00 07 74 */	extsb r0, r0
/* 80110808 0010C128  7C 07 00 00 */	cmpw r7, r0
/* 8011080C 0010C12C  40 80 00 0C */	bge lbl_80110818
/* 80110810 0010C130  38 60 FF FF */	li r3, -1
/* 80110814 0010C134  4E 80 00 20 */	blr 
lbl_80110818:
/* 80110818 0010C138  40 81 00 0C */	ble lbl_80110824
/* 8011081C 0010C13C  38 60 00 01 */	li r3, 1
/* 80110820 0010C140  4E 80 00 20 */	blr 
lbl_80110824:
/* 80110824 0010C144  2C 07 00 00 */	cmpwi r7, 0
/* 80110828 0010C148  40 82 FF 78 */	bne lbl_801107A0
/* 8011082C 0010C14C  38 60 00 00 */	li r3, 0
/* 80110830 0010C150  4E 80 00 20 */	blr 

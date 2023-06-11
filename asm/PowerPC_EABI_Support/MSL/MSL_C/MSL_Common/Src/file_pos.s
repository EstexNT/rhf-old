.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80107414
func_80107414:
/* 80107414 00102D34  80 03 00 04 */	lwz r0, 4(r3)
/* 80107418 00102D38  38 C0 00 00 */	li r6, 0
/* 8010741C 00102D3C  54 04 57 7E */	rlwinm r4, r0, 0xa, 0x1d, 0x1f
/* 80107420 00102D40  38 04 00 FF */	addi r0, r4, 0xff
/* 80107424 00102D44  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80107428 00102D48  28 00 00 01 */	cmplwi r0, 1
/* 8010742C 00102D4C  41 81 00 10 */	bgt lbl_8010743C
/* 80107430 00102D50  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80107434 00102D54  2C 00 00 00 */	cmpwi r0, 0
/* 80107438 00102D58  41 82 00 14 */	beq lbl_8010744C
lbl_8010743C:
/* 8010743C 00102D5C  38 00 00 28 */	li r0, 0x28
/* 80107440 00102D60  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 80107444 00102D64  38 60 FF FF */	li r3, -1
/* 80107448 00102D68  4E 80 00 20 */	blr 
lbl_8010744C:
/* 8010744C 00102D6C  80 03 00 08 */	lwz r0, 8(r3)
/* 80107450 00102D70  54 05 1F 7F */	rlwinm. r5, r0, 3, 0x1d, 0x1f
/* 80107454 00102D74  40 82 00 0C */	bne lbl_80107460
/* 80107458 00102D78  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8010745C 00102D7C  4E 80 00 20 */	blr 
lbl_80107460:
/* 80107460 00102D80  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 80107464 00102D84  28 05 00 03 */	cmplwi r5, 3
/* 80107468 00102D88  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8010746C 00102D8C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80107470 00102D90  7C 88 20 50 */	subf r4, r8, r4
/* 80107474 00102D94  7C E0 22 14 */	add r7, r0, r4
/* 80107478 00102D98  41 80 00 0C */	blt lbl_80107484
/* 8010747C 00102D9C  38 C5 FF FE */	addi r6, r5, -2
/* 80107480 00102DA0  7C E6 38 50 */	subf r7, r6, r7
lbl_80107484:
/* 80107484 00102DA4  80 03 00 04 */	lwz r0, 4(r3)
/* 80107488 00102DA8  54 00 6F FF */	rlwinm. r0, r0, 0xd, 0x1f, 0x1f
/* 8010748C 00102DAC  40 82 00 28 */	bne lbl_801074B4
/* 80107490 00102DB0  7C 06 20 51 */	subf. r0, r6, r4
/* 80107494 00102DB4  7C 09 03 A6 */	mtctr r0
/* 80107498 00102DB8  41 82 00 1C */	beq lbl_801074B4
lbl_8010749C:
/* 8010749C 00102DBC  88 08 00 00 */	lbz r0, 0(r8)
/* 801074A0 00102DC0  39 08 00 01 */	addi r8, r8, 1
/* 801074A4 00102DC4  28 00 00 0A */	cmplwi r0, 0xa
/* 801074A8 00102DC8  40 82 00 08 */	bne lbl_801074B0
/* 801074AC 00102DCC  38 E7 00 01 */	addi r7, r7, 1
lbl_801074B0:
/* 801074B0 00102DD0  42 00 FF EC */	bdnz lbl_8010749C
lbl_801074B4:
/* 801074B4 00102DD4  7C E3 3B 78 */	mr r3, r7
/* 801074B8 00102DD8  4E 80 00 20 */	blr 

.global func_801074BC
func_801074BC:
/* 801074BC 00102DDC  4B FF FF 58 */	b func_80107414

.global func_801074C0
func_801074C0:
/* 801074C0 00102DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801074C4 00102DE4  7C 08 02 A6 */	mflr r0
/* 801074C8 00102DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801074CC 00102DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801074D0 00102DF0  7C BF 2B 78 */	mr r31, r5
/* 801074D4 00102DF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801074D8 00102DF8  7C 7E 1B 78 */	mr r30, r3
/* 801074DC 00102DFC  90 81 00 08 */	stw r4, 8(r1)
/* 801074E0 00102E00  80 03 00 04 */	lwz r0, 4(r3)
/* 801074E4 00102E04  54 00 57 7E */	rlwinm r0, r0, 0xa, 0x1d, 0x1f
/* 801074E8 00102E08  28 00 00 01 */	cmplwi r0, 1
/* 801074EC 00102E0C  40 82 00 10 */	bne lbl_801074FC
/* 801074F0 00102E10  88 03 00 0A */	lbz r0, 0xa(r3)
/* 801074F4 00102E14  2C 00 00 00 */	cmpwi r0, 0
/* 801074F8 00102E18  41 82 00 14 */	beq lbl_8010750C
lbl_801074FC:
/* 801074FC 00102E1C  38 00 00 28 */	li r0, 0x28
/* 80107500 00102E20  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 80107504 00102E24  38 60 FF FF */	li r3, -1
/* 80107508 00102E28  48 00 01 64 */	b lbl_8010766C
lbl_8010750C:
/* 8010750C 00102E2C  80 03 00 08 */	lwz r0, 8(r3)
/* 80107510 00102E30  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80107514 00102E34  28 00 00 01 */	cmplwi r0, 1
/* 80107518 00102E38  40 82 00 34 */	bne lbl_8010754C
/* 8010751C 00102E3C  38 80 00 00 */	li r4, 0
/* 80107520 00102E40  4B FF F9 45 */	bl func_80106E64
/* 80107524 00102E44  2C 03 00 00 */	cmpwi r3, 0
/* 80107528 00102E48  41 82 00 24 */	beq lbl_8010754C
/* 8010752C 00102E4C  38 80 00 00 */	li r4, 0
/* 80107530 00102E50  90 9E 00 28 */	stw r4, 0x28(r30)
/* 80107534 00102E54  38 00 00 01 */	li r0, 1
/* 80107538 00102E58  38 60 FF FF */	li r3, -1
/* 8010753C 00102E5C  98 1E 00 0A */	stb r0, 0xa(r30)
/* 80107540 00102E60  38 00 00 28 */	li r0, 0x28
/* 80107544 00102E64  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 80107548 00102E68  48 00 01 24 */	b lbl_8010766C
lbl_8010754C:
/* 8010754C 00102E6C  2C 1F 00 01 */	cmpwi r31, 1
/* 80107550 00102E70  40 82 00 1C */	bne lbl_8010756C
/* 80107554 00102E74  7F C3 F3 78 */	mr r3, r30
/* 80107558 00102E78  3B E0 00 00 */	li r31, 0
/* 8010755C 00102E7C  4B FF FE B9 */	bl func_80107414
/* 80107560 00102E80  80 01 00 08 */	lwz r0, 8(r1)
/* 80107564 00102E84  7C 00 1A 14 */	add r0, r0, r3
/* 80107568 00102E88  90 01 00 08 */	stw r0, 8(r1)
lbl_8010756C:
/* 8010756C 00102E8C  2C 1F 00 02 */	cmpwi r31, 2
/* 80107570 00102E90  41 82 00 80 */	beq lbl_801075F0
/* 80107574 00102E94  80 1E 00 04 */	lwz r0, 4(r30)
/* 80107578 00102E98  54 00 2F 7E */	rlwinm r0, r0, 5, 0x1d, 0x1f
/* 8010757C 00102E9C  28 00 00 03 */	cmplwi r0, 3
/* 80107580 00102EA0  41 82 00 70 */	beq lbl_801075F0
/* 80107584 00102EA4  80 DE 00 08 */	lwz r6, 8(r30)
/* 80107588 00102EA8  54 C3 1F 7E */	srwi r3, r6, 0x1d
/* 8010758C 00102EAC  38 03 FF FE */	addi r0, r3, -2
/* 80107590 00102EB0  28 00 00 01 */	cmplwi r0, 1
/* 80107594 00102EB4  41 81 00 5C */	bgt lbl_801075F0
/* 80107598 00102EB8  80 01 00 08 */	lwz r0, 8(r1)
/* 8010759C 00102EBC  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 801075A0 00102EC0  7C 00 28 40 */	cmplw r0, r5
/* 801075A4 00102EC4  40 80 00 10 */	bge lbl_801075B4
/* 801075A8 00102EC8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801075AC 00102ECC  7C 00 18 40 */	cmplw r0, r3
/* 801075B0 00102ED0  40 80 00 14 */	bge lbl_801075C4
lbl_801075B4:
/* 801075B4 00102ED4  80 1E 00 08 */	lwz r0, 8(r30)
/* 801075B8 00102ED8  54 00 00 FE */	clrlwi r0, r0, 3
/* 801075BC 00102EDC  90 1E 00 08 */	stw r0, 8(r30)
/* 801075C0 00102EE0  48 00 00 3C */	b lbl_801075FC
lbl_801075C4:
/* 801075C4 00102EE4  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 801075C8 00102EE8  7C 63 00 50 */	subf r3, r3, r0
/* 801075CC 00102EEC  38 00 00 02 */	li r0, 2
/* 801075D0 00102EF0  7C 64 1A 14 */	add r3, r4, r3
/* 801075D4 00102EF4  90 7E 00 24 */	stw r3, 0x24(r30)
/* 801075D8 00102EF8  50 06 E8 04 */	rlwimi r6, r0, 0x1d, 0, 2
/* 801075DC 00102EFC  80 01 00 08 */	lwz r0, 8(r1)
/* 801075E0 00102F00  7C 00 28 50 */	subf r0, r0, r5
/* 801075E4 00102F04  90 1E 00 28 */	stw r0, 0x28(r30)
/* 801075E8 00102F08  90 DE 00 08 */	stw r6, 8(r30)
/* 801075EC 00102F0C  48 00 00 10 */	b lbl_801075FC
lbl_801075F0:
/* 801075F0 00102F10  80 1E 00 08 */	lwz r0, 8(r30)
/* 801075F4 00102F14  54 00 00 FE */	clrlwi r0, r0, 3
/* 801075F8 00102F18  90 1E 00 08 */	stw r0, 8(r30)
lbl_801075FC:
/* 801075FC 00102F1C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80107600 00102F20  54 00 1F 7F */	rlwinm. r0, r0, 3, 0x1d, 0x1f
/* 80107604 00102F24  40 82 00 64 */	bne lbl_80107668
/* 80107608 00102F28  81 9E 00 38 */	lwz r12, 0x38(r30)
/* 8010760C 00102F2C  2C 0C 00 00 */	cmpwi r12, 0
/* 80107610 00102F30  41 82 00 44 */	beq lbl_80107654
/* 80107614 00102F34  7F E5 FB 78 */	mr r5, r31
/* 80107618 00102F38  38 81 00 08 */	addi r4, r1, 8
/* 8010761C 00102F3C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80107620 00102F40  80 DE 00 48 */	lwz r6, 0x48(r30)
/* 80107624 00102F44  7D 89 03 A6 */	mtctr r12
/* 80107628 00102F48  4E 80 04 21 */	bctrl 
/* 8010762C 00102F4C  2C 03 00 00 */	cmpwi r3, 0
/* 80107630 00102F50  41 82 00 24 */	beq lbl_80107654
/* 80107634 00102F54  38 80 00 00 */	li r4, 0
/* 80107638 00102F58  90 9E 00 28 */	stw r4, 0x28(r30)
/* 8010763C 00102F5C  38 00 00 01 */	li r0, 1
/* 80107640 00102F60  38 60 FF FF */	li r3, -1
/* 80107644 00102F64  98 1E 00 0A */	stb r0, 0xa(r30)
/* 80107648 00102F68  38 00 00 28 */	li r0, 0x28
/* 8010764C 00102F6C  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 80107650 00102F70  48 00 00 1C */	b lbl_8010766C
lbl_80107654:
/* 80107654 00102F74  38 60 00 00 */	li r3, 0
/* 80107658 00102F78  98 7E 00 09 */	stb r3, 9(r30)
/* 8010765C 00102F7C  80 01 00 08 */	lwz r0, 8(r1)
/* 80107660 00102F80  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80107664 00102F84  90 7E 00 28 */	stw r3, 0x28(r30)
lbl_80107668:
/* 80107668 00102F88  38 60 00 00 */	li r3, 0
lbl_8010766C:
/* 8010766C 00102F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80107670 00102F90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80107674 00102F94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80107678 00102F98  7C 08 03 A6 */	mtlr r0
/* 8010767C 00102F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80107680 00102FA0  4E 80 00 20 */	blr 

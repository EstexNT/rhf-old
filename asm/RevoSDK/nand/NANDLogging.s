.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80122270
func_80122270:
/* 80122270 0011DB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80122274 0011DB94  7C 08 02 A6 */	mflr r0
/* 80122278 0011DB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012227C 0011DB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80122280 0011DBA0  4B FB DB A1 */	bl func_800DFE20
/* 80122284 0011DBA4  80 0D 8E 18 */	lwz r0, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122288 0011DBA8  2C 00 FF 01 */	cmpwi r0, -255
/* 8012228C 0011DBAC  40 82 00 14 */	bne lbl_801222A0
/* 80122290 0011DBB0  38 00 FF 02 */	li r0, -254
/* 80122294 0011DBB4  90 0D 8E 18 */	stw r0, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122298 0011DBB8  3B E0 00 00 */	li r31, 0
/* 8012229C 0011DBBC  48 00 00 08 */	b lbl_801222A4
lbl_801222A0:
/* 801222A0 0011DBC0  3B E0 00 01 */	li r31, 1
lbl_801222A4:
/* 801222A4 0011DBC4  4B FB DB BD */	bl func_800DFE60
/* 801222A8 0011DBC8  7F E0 00 34 */	cntlzw r0, r31
/* 801222AC 0011DBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801222B0 0011DBD0  54 03 D9 7E */	srwi r3, r0, 5
/* 801222B4 0011DBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801222B8 0011DBD8  7C 08 03 A6 */	mtlr r0
/* 801222BC 0011DBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 801222C0 0011DBE0  4E 80 00 20 */	blr 
/* 801222C4 0011DBE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 801222C8 0011DBE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 801222CC 0011DBEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_801222D0
func_801222D0:
/* 801222D0 0011DBF0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801222D4 0011DBF4  7C 08 02 A6 */	mflr r0
/* 801222D8 0011DBF8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801222DC 0011DBFC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801222E0 0011DC00  7C BF 2B 78 */	mr r31, r5
/* 801222E4 0011DC04  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801222E8 0011DC08  7C 9E 23 78 */	mr r30, r4
/* 801222EC 0011DC0C  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801222F0 0011DC10  7C 7D 1B 78 */	mr r29, r3
/* 801222F4 0011DC14  40 86 00 24 */	bne cr1, lbl_80122318
/* 801222F8 0011DC18  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801222FC 0011DC1C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80122300 0011DC20  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80122304 0011DC24  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80122308 0011DC28  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8012230C 0011DC2C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80122310 0011DC30  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80122314 0011DC34  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80122318:
/* 80122318 0011DC38  90 61 00 08 */	stw r3, 8(r1)
/* 8012231C 0011DC3C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80122320 0011DC40  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80122324 0011DC44  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80122328 0011DC48  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8012232C 0011DC4C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80122330 0011DC50  91 21 00 20 */	stw r9, 0x20(r1)
/* 80122334 0011DC54  91 41 00 24 */	stw r10, 0x24(r1)
/* 80122338 0011DC58  4B FF FF 39 */	bl func_80122270
/* 8012233C 0011DC5C  2C 03 00 00 */	cmpwi r3, 0
/* 80122340 0011DC60  40 82 00 0C */	bne lbl_8012234C
/* 80122344 0011DC64  38 60 00 00 */	li r3, 0
/* 80122348 0011DC68  48 00 00 84 */	b lbl_801223CC
lbl_8012234C:
/* 8012234C 0011DC6C  38 81 00 98 */	addi r4, r1, 0x98
/* 80122350 0011DC70  38 01 00 08 */	addi r0, r1, 8
/* 80122354 0011DC74  3C A0 03 00 */	lis r5, 0x300
/* 80122358 0011DC78  3C 60 80 37 */	lis r3, lbl_8036FF40@ha
/* 8012235C 0011DC7C  90 A1 00 68 */	stw r5, 0x68(r1)
/* 80122360 0011DC80  38 C1 00 68 */	addi r6, r1, 0x68
/* 80122364 0011DC84  7F E5 FB 78 */	mr r5, r31
/* 80122368 0011DC88  38 63 FF 40 */	addi r3, r3, lbl_8036FF40@l
/* 8012236C 0011DC8C  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80122370 0011DC90  38 80 01 00 */	li r4, 0x100
/* 80122374 0011DC94  90 01 00 70 */	stw r0, 0x70(r1)
/* 80122378 0011DC98  4B FE 7B 0D */	bl func_80109E84
/* 8012237C 0011DC9C  2C 1E FF 8B */	cmpwi r30, -117
/* 80122380 0011DCA0  38 00 00 01 */	li r0, 1
/* 80122384 0011DCA4  93 AD 9D C8 */	stw r29, lbl_80320C88-_SDA_BASE_(r13)
/* 80122388 0011DCA8  90 0D 9D CC */	stw r0, lbl_80320C8C-_SDA_BASE_(r13)
/* 8012238C 0011DCAC  41 82 00 0C */	beq lbl_80122398
/* 80122390 0011DCB0  2C 1E FF F7 */	cmpwi r30, -9
/* 80122394 0011DCB4  40 82 00 08 */	bne lbl_8012239C
lbl_80122398:
/* 80122398 0011DCB8  93 CD 8E 1C */	stw r30, lbl_8031FCDC-_SDA_BASE_(r13)
lbl_8012239C:
/* 8012239C 0011DCBC  3C 60 80 30 */	lis r3, lbl_80306840@ha
/* 801223A0 0011DCC0  3C A0 80 12 */	lis r5, lbl_801223F0@ha
/* 801223A4 0011DCC4  38 63 68 40 */	addi r3, r3, lbl_80306840@l
/* 801223A8 0011DCC8  38 80 00 03 */	li r4, 3
/* 801223AC 0011DCCC  38 A5 23 F0 */	addi r5, r5, lbl_801223F0@l
/* 801223B0 0011DCD0  38 C0 00 00 */	li r6, 0
/* 801223B4 0011DCD4  4B FF 9F 8D */	bl func_8011C340
/* 801223B8 0011DCD8  2C 03 00 00 */	cmpwi r3, 0
/* 801223BC 0011DCDC  40 82 00 0C */	bne lbl_801223C8
/* 801223C0 0011DCE0  38 60 00 01 */	li r3, 1
/* 801223C4 0011DCE4  48 00 00 08 */	b lbl_801223CC
lbl_801223C8:
/* 801223C8 0011DCE8  38 60 00 00 */	li r3, 0
lbl_801223CC:
/* 801223CC 0011DCEC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801223D0 0011DCF0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801223D4 0011DCF4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801223D8 0011DCF8  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801223DC 0011DCFC  7C 08 03 A6 */	mtlr r0
/* 801223E0 0011DD00  38 21 00 90 */	addi r1, r1, 0x90
/* 801223E4 0011DD04  4E 80 00 20 */	blr 
/* 801223E8 0011DD08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 801223EC 0011DD0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_801223F0:
/* 801223F0 0011DD10  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801223F4 0011DD14  7C 08 02 A6 */	mflr r0
/* 801223F8 0011DD18  90 01 00 94 */	stw r0, 0x94(r1)
/* 801223FC 0011DD1C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80122400 0011DD20  3F E0 80 37 */	lis r31, lbl_8036FF40@ha
/* 80122404 0011DD24  3B FF FF 40 */	addi r31, r31, lbl_8036FF40@l
/* 80122408 0011DD28  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8012240C 0011DD2C  7C 7E 1B 78 */	mr r30, r3
/* 80122410 0011DD30  80 8D 9D CC */	lwz r4, lbl_80320C8C-_SDA_BASE_(r13)
/* 80122414 0011DD34  38 04 00 01 */	addi r0, r4, 1
/* 80122418 0011DD38  90 0D 9D CC */	stw r0, lbl_80320C8C-_SDA_BASE_(r13)
/* 8012241C 0011DD3C  2C 00 00 02 */	cmpwi r0, 2
/* 80122420 0011DD40  40 82 00 70 */	bne lbl_80122490
/* 80122424 0011DD44  2C 03 00 00 */	cmpwi r3, 0
/* 80122428 0011DD48  41 80 00 48 */	blt lbl_80122470
/* 8012242C 0011DD4C  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 80122430 0011DD50  90 6D 8E 18 */	stw r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122434 0011DD54  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 80122438 0011DD58  38 80 00 00 */	li r4, 0
/* 8012243C 0011DD5C  38 A0 00 00 */	li r5, 0
/* 80122440 0011DD60  38 E0 00 00 */	li r7, 0
/* 80122444 0011DD64  4B FF A1 5D */	bl func_8011C5A0
/* 80122448 0011DD68  2C 03 00 00 */	cmpwi r3, 0
/* 8012244C 0011DD6C  41 82 04 50 */	beq lbl_8012289C
/* 80122450 0011DD70  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 80122454 0011DD74  2C 0C 00 00 */	cmpwi r12, 0
/* 80122458 0011DD78  41 82 04 44 */	beq lbl_8012289C
/* 8012245C 0011DD7C  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122460 0011DD80  38 60 00 00 */	li r3, 0
/* 80122464 0011DD84  7D 89 03 A6 */	mtctr r12
/* 80122468 0011DD88  4E 80 04 21 */	bctrl 
/* 8012246C 0011DD8C  48 00 04 30 */	b lbl_8012289C
lbl_80122470:
/* 80122470 0011DD90  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 80122474 0011DD94  2C 0C 00 00 */	cmpwi r12, 0
/* 80122478 0011DD98  41 82 04 24 */	beq lbl_8012289C
/* 8012247C 0011DD9C  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122480 0011DDA0  38 60 00 00 */	li r3, 0
/* 80122484 0011DDA4  7D 89 03 A6 */	mtctr r12
/* 80122488 0011DDA8  4E 80 04 21 */	bctrl 
/* 8012248C 0011DDAC  48 00 04 10 */	b lbl_8012289C
lbl_80122490:
/* 80122490 0011DDB0  2C 00 00 03 */	cmpwi r0, 3
/* 80122494 0011DDB4  40 82 00 70 */	bne lbl_80122504
/* 80122498 0011DDB8  2C 03 00 00 */	cmpwi r3, 0
/* 8012249C 0011DDBC  40 82 00 48 */	bne lbl_801224E4
/* 801224A0 0011DDC0  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 801224A4 0011DDC4  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 801224A8 0011DDC8  38 9F 01 00 */	addi r4, r31, 0x100
/* 801224AC 0011DDCC  38 A0 01 00 */	li r5, 0x100
/* 801224B0 0011DDD0  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 801224B4 0011DDD4  38 E0 00 00 */	li r7, 0
/* 801224B8 0011DDD8  4B FF A1 99 */	bl func_8011C650
/* 801224BC 0011DDDC  2C 03 00 00 */	cmpwi r3, 0
/* 801224C0 0011DDE0  41 82 03 DC */	beq lbl_8012289C
/* 801224C4 0011DDE4  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801224C8 0011DDE8  2C 0C 00 00 */	cmpwi r12, 0
/* 801224CC 0011DDEC  41 82 03 D0 */	beq lbl_8012289C
/* 801224D0 0011DDF0  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801224D4 0011DDF4  38 60 00 00 */	li r3, 0
/* 801224D8 0011DDF8  7D 89 03 A6 */	mtctr r12
/* 801224DC 0011DDFC  4E 80 04 21 */	bctrl 
/* 801224E0 0011DE00  48 00 03 BC */	b lbl_8012289C
lbl_801224E4:
/* 801224E4 0011DE04  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801224E8 0011DE08  2C 0C 00 00 */	cmpwi r12, 0
/* 801224EC 0011DE0C  41 82 03 B0 */	beq lbl_8012289C
/* 801224F0 0011DE10  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801224F4 0011DE14  38 60 00 00 */	li r3, 0
/* 801224F8 0011DE18  7D 89 03 A6 */	mtctr r12
/* 801224FC 0011DE1C  4E 80 04 21 */	bctrl 
/* 80122500 0011DE20  48 00 03 9C */	b lbl_8012289C
lbl_80122504:
/* 80122504 0011DE24  2C 00 00 04 */	cmpwi r0, 4
/* 80122508 0011DE28  40 82 00 70 */	bne lbl_80122578
/* 8012250C 0011DE2C  2C 03 01 00 */	cmpwi r3, 0x100
/* 80122510 0011DE30  40 82 00 48 */	bne lbl_80122558
/* 80122514 0011DE34  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 80122518 0011DE38  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 8012251C 0011DE3C  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 80122520 0011DE40  38 80 00 00 */	li r4, 0
/* 80122524 0011DE44  38 A0 00 00 */	li r5, 0
/* 80122528 0011DE48  38 E0 00 00 */	li r7, 0
/* 8012252C 0011DE4C  4B FF A0 75 */	bl func_8011C5A0
/* 80122530 0011DE50  2C 03 00 00 */	cmpwi r3, 0
/* 80122534 0011DE54  41 82 03 68 */	beq lbl_8012289C
/* 80122538 0011DE58  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 8012253C 0011DE5C  2C 0C 00 00 */	cmpwi r12, 0
/* 80122540 0011DE60  41 82 03 5C */	beq lbl_8012289C
/* 80122544 0011DE64  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122548 0011DE68  38 60 00 00 */	li r3, 0
/* 8012254C 0011DE6C  7D 89 03 A6 */	mtctr r12
/* 80122550 0011DE70  4E 80 04 21 */	bctrl 
/* 80122554 0011DE74  48 00 03 48 */	b lbl_8012289C
lbl_80122558:
/* 80122558 0011DE78  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 8012255C 0011DE7C  2C 0C 00 00 */	cmpwi r12, 0
/* 80122560 0011DE80  41 82 03 3C */	beq lbl_8012289C
/* 80122564 0011DE84  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122568 0011DE88  38 60 00 00 */	li r3, 0
/* 8012256C 0011DE8C  7D 89 03 A6 */	mtctr r12
/* 80122570 0011DE90  4E 80 04 21 */	bctrl 
/* 80122574 0011DE94  48 00 03 28 */	b lbl_8012289C
lbl_80122578:
/* 80122578 0011DE98  2C 00 00 05 */	cmpwi r0, 5
/* 8012257C 0011DE9C  40 82 01 60 */	bne lbl_801226DC
/* 80122580 0011DEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80122584 0011DEA4  40 82 01 38 */	bne lbl_801226BC
/* 80122588 0011DEA8  38 7F 01 00 */	addi r3, r31, 0x100
/* 8012258C 0011DEAC  38 00 00 00 */	li r0, 0
/* 80122590 0011DEB0  98 03 00 FF */	stb r0, 0xff(r3)
/* 80122594 0011DEB4  4B FE 84 7D */	bl func_8010AA10
/* 80122598 0011DEB8  7C 7E 1B 78 */	mr r30, r3
/* 8012259C 0011DEBC  38 7F 02 00 */	addi r3, r31, 0x200
/* 801225A0 0011DEC0  38 80 00 20 */	li r4, 0x20
/* 801225A4 0011DEC4  38 A0 00 FE */	li r5, 0xfe
/* 801225A8 0011DEC8  4B EE 21 6D */	bl func_80004714
/* 801225AC 0011DECC  4B FC 18 B5 */	bl func_800E3E60
/* 801225B0 0011DED0  38 A1 00 58 */	addi r5, r1, 0x58
/* 801225B4 0011DED4  4B FC 19 AD */	bl func_800E3F60
/* 801225B8 0011DED8  4B FF F9 F9 */	bl func_80121FB0
/* 801225BC 0011DEDC  7C 64 1B 78 */	mr r4, r3
/* 801225C0 0011DEE0  38 61 00 18 */	addi r3, r1, 0x18
/* 801225C4 0011DEE4  38 84 00 07 */	addi r4, r4, 7
/* 801225C8 0011DEE8  38 A0 00 11 */	li r5, 0x11
/* 801225CC 0011DEEC  4B FE 7D 7D */	bl func_8010A348
/* 801225D0 0011DEF0  3C 60 82 08 */	lis r3, 0x82082083@ha
/* 801225D4 0011DEF4  38 A0 00 2D */	li r5, 0x2d
/* 801225D8 0011DEF8  38 03 20 83 */	addi r0, r3, 0x82082083@l
/* 801225DC 0011DEFC  38 80 00 00 */	li r4, 0
/* 801225E0 0011DF00  7C 00 F0 96 */	mulhw r0, r0, r30
/* 801225E4 0011DF04  98 A1 00 20 */	stb r5, 0x20(r1)
/* 801225E8 0011DF08  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 801225EC 0011DF0C  3C A0 80 30 */	lis r5, lbl_8030685C@ha
/* 801225F0 0011DF10  98 81 00 29 */	stb r4, 0x29(r1)
/* 801225F4 0011DF14  38 81 00 18 */	addi r4, r1, 0x18
/* 801225F8 0011DF18  90 61 00 08 */	stw r3, 8(r1)
/* 801225FC 0011DF1C  7C 00 F2 14 */	add r0, r0, r30
/* 80122600 0011DF20  7C 00 2E 70 */	srawi r0, r0, 5
/* 80122604 0011DF24  38 DF 00 00 */	addi r6, r31, 0
/* 80122608 0011DF28  80 E1 00 58 */	lwz r7, 0x58(r1)
/* 8012260C 0011DF2C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80122610 0011DF30  7C 00 1A 14 */	add r0, r0, r3
/* 80122614 0011DF34  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80122618 0011DF38  1C 00 00 3F */	mulli r0, r0, 0x3f
/* 8012261C 0011DF3C  38 7F 02 00 */	addi r3, r31, 0x200
/* 80122620 0011DF40  90 81 00 10 */	stw r4, 0x10(r1)
/* 80122624 0011DF44  38 A5 68 5C */	addi r5, r5, lbl_8030685C@l
/* 80122628 0011DF48  38 80 01 00 */	li r4, 0x100
/* 8012262C 0011DF4C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80122630 0011DF50  7C C0 F0 50 */	subf r6, r0, r30
/* 80122634 0011DF54  81 01 00 68 */	lwz r8, 0x68(r1)
/* 80122638 0011DF58  38 C6 00 01 */	addi r6, r6, 1
/* 8012263C 0011DF5C  80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 80122640 0011DF60  81 21 00 64 */	lwz r9, 0x64(r1)
/* 80122644 0011DF64  39 08 00 01 */	addi r8, r8, 1
/* 80122648 0011DF68  81 41 00 60 */	lwz r10, 0x60(r1)
/* 8012264C 0011DF6C  4C C6 31 82 */	crclr 6
/* 80122650 0011DF70  4B FE 79 41 */	bl func_80109F90
/* 80122654 0011DF74  2C 03 01 00 */	cmpwi r3, 0x100
/* 80122658 0011DF78  40 80 00 10 */	bge lbl_80122668
/* 8012265C 0011DF7C  38 9F 02 00 */	addi r4, r31, 0x200
/* 80122660 0011DF80  38 00 00 20 */	li r0, 0x20
/* 80122664 0011DF84  7C 04 19 AE */	stbx r0, r4, r3
lbl_80122668:
/* 80122668 0011DF88  38 9F 02 00 */	addi r4, r31, 0x200
/* 8012266C 0011DF8C  38 60 00 0D */	li r3, 0xd
/* 80122670 0011DF90  38 00 00 0A */	li r0, 0xa
/* 80122674 0011DF94  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 80122678 0011DF98  98 64 00 FE */	stb r3, 0xfe(r4)
/* 8012267C 0011DF9C  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 80122680 0011DFA0  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122684 0011DFA4  38 A0 01 00 */	li r5, 0x100
/* 80122688 0011DFA8  98 04 00 FF */	stb r0, 0xff(r4)
/* 8012268C 0011DFAC  38 E0 00 00 */	li r7, 0
/* 80122690 0011DFB0  4B FF A0 91 */	bl func_8011C720
/* 80122694 0011DFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80122698 0011DFB8  41 82 02 04 */	beq lbl_8012289C
/* 8012269C 0011DFBC  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801226A0 0011DFC0  2C 0C 00 00 */	cmpwi r12, 0
/* 801226A4 0011DFC4  41 82 01 F8 */	beq lbl_8012289C
/* 801226A8 0011DFC8  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801226AC 0011DFCC  38 60 00 00 */	li r3, 0
/* 801226B0 0011DFD0  7D 89 03 A6 */	mtctr r12
/* 801226B4 0011DFD4  4E 80 04 21 */	bctrl 
/* 801226B8 0011DFD8  48 00 01 E4 */	b lbl_8012289C
lbl_801226BC:
/* 801226BC 0011DFDC  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801226C0 0011DFE0  2C 0C 00 00 */	cmpwi r12, 0
/* 801226C4 0011DFE4  41 82 01 D8 */	beq lbl_8012289C
/* 801226C8 0011DFE8  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801226CC 0011DFEC  38 60 00 00 */	li r3, 0
/* 801226D0 0011DFF0  7D 89 03 A6 */	mtctr r12
/* 801226D4 0011DFF4  4E 80 04 21 */	bctrl 
/* 801226D8 0011DFF8  48 00 01 C4 */	b lbl_8012289C
lbl_801226DC:
/* 801226DC 0011DFFC  2C 00 00 06 */	cmpwi r0, 6
/* 801226E0 0011E000  40 82 00 7C */	bne lbl_8012275C
/* 801226E4 0011E004  2C 03 01 00 */	cmpwi r3, 0x100
/* 801226E8 0011E008  40 82 00 54 */	bne lbl_8012273C
/* 801226EC 0011E00C  38 7F 01 00 */	addi r3, r31, 0x100
/* 801226F0 0011E010  4B FE 83 21 */	bl func_8010AA10
/* 801226F4 0011E014  7C 60 1B 78 */	mr r0, r3
/* 801226F8 0011E018  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 801226FC 0011E01C  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122700 0011E020  54 04 40 2E */	slwi r4, r0, 8
/* 80122704 0011E024  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 80122708 0011E028  38 A0 00 00 */	li r5, 0
/* 8012270C 0011E02C  38 E0 00 00 */	li r7, 0
/* 80122710 0011E030  4B FF 9E 91 */	bl func_8011C5A0
/* 80122714 0011E034  2C 03 00 00 */	cmpwi r3, 0
/* 80122718 0011E038  41 82 01 84 */	beq lbl_8012289C
/* 8012271C 0011E03C  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 80122720 0011E040  2C 0C 00 00 */	cmpwi r12, 0
/* 80122724 0011E044  41 82 01 78 */	beq lbl_8012289C
/* 80122728 0011E048  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 8012272C 0011E04C  38 60 00 00 */	li r3, 0
/* 80122730 0011E050  7D 89 03 A6 */	mtctr r12
/* 80122734 0011E054  4E 80 04 21 */	bctrl 
/* 80122738 0011E058  48 00 01 64 */	b lbl_8012289C
lbl_8012273C:
/* 8012273C 0011E05C  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 80122740 0011E060  2C 0C 00 00 */	cmpwi r12, 0
/* 80122744 0011E064  41 82 01 58 */	beq lbl_8012289C
/* 80122748 0011E068  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 8012274C 0011E06C  38 60 00 00 */	li r3, 0
/* 80122750 0011E070  7D 89 03 A6 */	mtctr r12
/* 80122754 0011E074  4E 80 04 21 */	bctrl 
/* 80122758 0011E078  48 00 01 44 */	b lbl_8012289C
lbl_8012275C:
/* 8012275C 0011E07C  2C 00 00 07 */	cmpwi r0, 7
/* 80122760 0011E080  40 82 00 7C */	bne lbl_801227DC
/* 80122764 0011E084  38 7F 01 00 */	addi r3, r31, 0x100
/* 80122768 0011E088  4B FE 82 A9 */	bl func_8010AA10
/* 8012276C 0011E08C  54 60 40 2E */	slwi r0, r3, 8
/* 80122770 0011E090  7C 1E 00 00 */	cmpw r30, r0
/* 80122774 0011E094  40 82 00 48 */	bne lbl_801227BC
/* 80122778 0011E098  3C C0 80 12 */	lis r6, lbl_801223F0@ha
/* 8012277C 0011E09C  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122780 0011E0A0  38 9F 02 00 */	addi r4, r31, 0x200
/* 80122784 0011E0A4  38 A0 01 00 */	li r5, 0x100
/* 80122788 0011E0A8  38 C6 23 F0 */	addi r6, r6, lbl_801223F0@l
/* 8012278C 0011E0AC  38 E0 00 00 */	li r7, 0
/* 80122790 0011E0B0  4B FF 9F 91 */	bl func_8011C720
/* 80122794 0011E0B4  2C 03 00 00 */	cmpwi r3, 0
/* 80122798 0011E0B8  41 82 01 04 */	beq lbl_8012289C
/* 8012279C 0011E0BC  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801227A0 0011E0C0  2C 0C 00 00 */	cmpwi r12, 0
/* 801227A4 0011E0C4  41 82 00 F8 */	beq lbl_8012289C
/* 801227A8 0011E0C8  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801227AC 0011E0CC  38 60 00 00 */	li r3, 0
/* 801227B0 0011E0D0  7D 89 03 A6 */	mtctr r12
/* 801227B4 0011E0D4  4E 80 04 21 */	bctrl 
/* 801227B8 0011E0D8  48 00 00 E4 */	b lbl_8012289C
lbl_801227BC:
/* 801227BC 0011E0DC  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 801227C0 0011E0E0  2C 0C 00 00 */	cmpwi r12, 0
/* 801227C4 0011E0E4  41 82 00 D8 */	beq lbl_8012289C
/* 801227C8 0011E0E8  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 801227CC 0011E0EC  38 60 00 00 */	li r3, 0
/* 801227D0 0011E0F0  7D 89 03 A6 */	mtctr r12
/* 801227D4 0011E0F4  4E 80 04 21 */	bctrl 
/* 801227D8 0011E0F8  48 00 00 C4 */	b lbl_8012289C
lbl_801227DC:
/* 801227DC 0011E0FC  2C 00 00 08 */	cmpwi r0, 8
/* 801227E0 0011E100  40 82 00 68 */	bne lbl_80122848
/* 801227E4 0011E104  2C 03 01 00 */	cmpwi r3, 0x100
/* 801227E8 0011E108  40 82 00 40 */	bne lbl_80122828
/* 801227EC 0011E10C  3C 80 80 12 */	lis r4, lbl_801223F0@ha
/* 801227F0 0011E110  80 6D 8E 18 */	lwz r3, lbl_8031FCD8-_SDA_BASE_(r13)
/* 801227F4 0011E114  38 84 23 F0 */	addi r4, r4, lbl_801223F0@l
/* 801227F8 0011E118  38 A0 00 00 */	li r5, 0
/* 801227FC 0011E11C  4B FF 9F E5 */	bl func_8011C7E0
/* 80122800 0011E120  2C 03 00 00 */	cmpwi r3, 0
/* 80122804 0011E124  41 82 00 98 */	beq lbl_8012289C
/* 80122808 0011E128  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 8012280C 0011E12C  2C 0C 00 00 */	cmpwi r12, 0
/* 80122810 0011E130  41 82 00 8C */	beq lbl_8012289C
/* 80122814 0011E134  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122818 0011E138  38 60 00 00 */	li r3, 0
/* 8012281C 0011E13C  7D 89 03 A6 */	mtctr r12
/* 80122820 0011E140  4E 80 04 21 */	bctrl 
/* 80122824 0011E144  48 00 00 78 */	b lbl_8012289C
lbl_80122828:
/* 80122828 0011E148  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 8012282C 0011E14C  2C 0C 00 00 */	cmpwi r12, 0
/* 80122830 0011E150  41 82 00 6C */	beq lbl_8012289C
/* 80122834 0011E154  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122838 0011E158  38 60 00 00 */	li r3, 0
/* 8012283C 0011E15C  7D 89 03 A6 */	mtctr r12
/* 80122840 0011E160  4E 80 04 21 */	bctrl 
/* 80122844 0011E164  48 00 00 58 */	b lbl_8012289C
lbl_80122848:
/* 80122848 0011E168  2C 00 00 09 */	cmpwi r0, 9
/* 8012284C 0011E16C  40 82 00 50 */	bne lbl_8012289C
/* 80122850 0011E170  2C 03 00 00 */	cmpwi r3, 0
/* 80122854 0011E174  40 82 00 2C */	bne lbl_80122880
/* 80122858 0011E178  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 8012285C 0011E17C  38 00 FF 01 */	li r0, -255
/* 80122860 0011E180  90 0D 8E 18 */	stw r0, lbl_8031FCD8-_SDA_BASE_(r13)
/* 80122864 0011E184  2C 0C 00 00 */	cmpwi r12, 0
/* 80122868 0011E188  41 82 00 34 */	beq lbl_8012289C
/* 8012286C 0011E18C  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122870 0011E190  38 60 00 01 */	li r3, 1
/* 80122874 0011E194  7D 89 03 A6 */	mtctr r12
/* 80122878 0011E198  4E 80 04 21 */	bctrl 
/* 8012287C 0011E19C  48 00 00 20 */	b lbl_8012289C
lbl_80122880:
/* 80122880 0011E1A0  81 8D 9D C8 */	lwz r12, lbl_80320C88-_SDA_BASE_(r13)
/* 80122884 0011E1A4  2C 0C 00 00 */	cmpwi r12, 0
/* 80122888 0011E1A8  41 82 00 14 */	beq lbl_8012289C
/* 8012288C 0011E1AC  80 8D 8E 1C */	lwz r4, lbl_8031FCDC-_SDA_BASE_(r13)
/* 80122890 0011E1B0  38 60 00 00 */	li r3, 0
/* 80122894 0011E1B4  7D 89 03 A6 */	mtctr r12
/* 80122898 0011E1B8  4E 80 04 21 */	bctrl 
lbl_8012289C:
/* 8012289C 0011E1BC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801228A0 0011E1C0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801228A4 0011E1C4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801228A8 0011E1C8  7C 08 03 A6 */	mtlr r0
/* 801228AC 0011E1CC  38 21 00 90 */	addi r1, r1, 0x90
/* 801228B0 0011E1D0  4E 80 00 20 */	blr 
/* 801228B4 0011E1D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 801228B8 0011E1D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 801228BC 0011E1DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80306840

lbl_80306840:

	# ROM: 0x302940
	.asciz "/shared2/test2/nanderr.log"
	.balign 4


.global lbl_8030685C

lbl_8030685C:

	# ROM: 0x30295C
	.asciz "%d %04d/%02d/%02d %02d:%02d:%02d %s %s"
	.balign 4
	.4byte 0



.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FCD8

lbl_8031FCD8:

	# ROM: 0x31BDD8
	.4byte 0xFFFFFF01


.global lbl_8031FCDC

lbl_8031FCDC:

	# ROM: 0x31BDDC
	.4byte 0xFFFFFF8B



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320C88
lbl_80320C88:
	.skip 0x4
.global lbl_80320C8C
lbl_80320C8C:
	.skip 0x4



.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_8036FF40
lbl_8036FF40:
	.skip 0xC4
.global lbl_80370004
lbl_80370004:
	.skip 0x23C

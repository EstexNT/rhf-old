.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80107224
func_80107224:
/* 80107224 00102B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80107228 00102B48  7C 08 02 A6 */	mflr r0
/* 8010722C 00102B4C  2C 03 00 00 */	cmpwi r3, 0
/* 80107230 00102B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80107234 00102B54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80107238 00102B58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010723C 00102B5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80107240 00102B60  7C 7D 1B 78 */	mr r29, r3
/* 80107244 00102B64  40 82 00 0C */	bne lbl_80107250
/* 80107248 00102B68  38 60 FF FF */	li r3, -1
/* 8010724C 00102B6C  48 00 00 78 */	b lbl_801072C4
lbl_80107250:
/* 80107250 00102B70  80 03 00 04 */	lwz r0, 4(r3)
/* 80107254 00102B74  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 80107258 00102B78  40 82 00 0C */	bne lbl_80107264
/* 8010725C 00102B7C  38 60 00 00 */	li r3, 0
/* 80107260 00102B80  48 00 00 64 */	b lbl_801072C4
lbl_80107264:
/* 80107264 00102B84  48 00 00 7D */	bl func_801072E0
/* 80107268 00102B88  81 9D 00 44 */	lwz r12, 0x44(r29)
/* 8010726C 00102B8C  7C 7E 1B 78 */	mr r30, r3
/* 80107270 00102B90  80 7D 00 00 */	lwz r3, 0(r29)
/* 80107274 00102B94  7D 89 03 A6 */	mtctr r12
/* 80107278 00102B98  4E 80 04 21 */	bctrl 
/* 8010727C 00102B9C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80107280 00102BA0  38 A0 00 00 */	li r5, 0
/* 80107284 00102BA4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80107288 00102BA8  7C 7F 1B 78 */	mr r31, r3
/* 8010728C 00102BAC  54 00 27 FF */	rlwinm. r0, r0, 4, 0x1f, 0x1f
/* 80107290 00102BB0  90 BD 00 00 */	stw r5, 0(r29)
/* 80107294 00102BB4  54 84 02 8C */	rlwinm r4, r4, 0, 0xa, 6
/* 80107298 00102BB8  90 9D 00 04 */	stw r4, 4(r29)
/* 8010729C 00102BBC  41 82 00 0C */	beq lbl_801072A8
/* 801072A0 00102BC0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801072A4 00102BC4  4B FF EE E5 */	bl func_80106188
lbl_801072A8:
/* 801072A8 00102BC8  2C 1E 00 00 */	cmpwi r30, 0
/* 801072AC 00102BCC  38 00 00 00 */	li r0, 0
/* 801072B0 00102BD0  40 82 00 0C */	bne lbl_801072BC
/* 801072B4 00102BD4  2C 1F 00 00 */	cmpwi r31, 0
/* 801072B8 00102BD8  41 82 00 08 */	beq lbl_801072C0
lbl_801072BC:
/* 801072BC 00102BDC  38 00 00 01 */	li r0, 1
lbl_801072C0:
/* 801072C0 00102BE0  7C 60 00 D0 */	neg r3, r0
lbl_801072C4:
/* 801072C4 00102BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801072C8 00102BE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801072CC 00102BEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801072D0 00102BF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801072D4 00102BF4  7C 08 03 A6 */	mtlr r0
/* 801072D8 00102BF8  38 21 00 20 */	addi r1, r1, 0x20
/* 801072DC 00102BFC  4E 80 00 20 */	blr 

.global func_801072E0
func_801072E0:
/* 801072E0 00102C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801072E4 00102C04  7C 08 02 A6 */	mflr r0
/* 801072E8 00102C08  2C 03 00 00 */	cmpwi r3, 0
/* 801072EC 00102C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801072F0 00102C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801072F4 00102C14  7C 7F 1B 78 */	mr r31, r3
/* 801072F8 00102C18  93 C1 00 08 */	stw r30, 8(r1)
/* 801072FC 00102C1C  40 82 00 0C */	bne lbl_80107308
/* 80107300 00102C20  4B FF F0 5D */	bl func_8010635C
/* 80107304 00102C24  48 00 00 F8 */	b lbl_801073FC
lbl_80107308:
/* 80107308 00102C28  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8010730C 00102C2C  2C 00 00 00 */	cmpwi r0, 0
/* 80107310 00102C30  40 82 00 10 */	bne lbl_80107320
/* 80107314 00102C34  80 83 00 04 */	lwz r4, 4(r3)
/* 80107318 00102C38  54 80 57 7F */	rlwinm. r0, r4, 0xa, 0x1d, 0x1f
/* 8010731C 00102C3C  40 82 00 0C */	bne lbl_80107328
lbl_80107320:
/* 80107320 00102C40  38 60 FF FF */	li r3, -1
/* 80107324 00102C44  48 00 00 D8 */	b lbl_801073FC
lbl_80107328:
/* 80107328 00102C48  54 80 2F 7E */	rlwinm r0, r4, 5, 0x1d, 0x1f
/* 8010732C 00102C4C  28 00 00 01 */	cmplwi r0, 1
/* 80107330 00102C50  40 82 00 0C */	bne lbl_8010733C
/* 80107334 00102C54  38 60 00 00 */	li r3, 0
/* 80107338 00102C58  48 00 00 C4 */	b lbl_801073FC
lbl_8010733C:
/* 8010733C 00102C5C  80 83 00 08 */	lwz r4, 8(r3)
/* 80107340 00102C60  54 80 1F 7E */	srwi r0, r4, 0x1d
/* 80107344 00102C64  28 00 00 03 */	cmplwi r0, 3
/* 80107348 00102C68  41 80 00 10 */	blt lbl_80107358
/* 8010734C 00102C6C  38 00 00 02 */	li r0, 2
/* 80107350 00102C70  50 04 E8 04 */	rlwimi r4, r0, 0x1d, 0, 2
/* 80107354 00102C74  90 83 00 08 */	stw r4, 8(r3)
lbl_80107358:
/* 80107358 00102C78  80 03 00 08 */	lwz r0, 8(r3)
/* 8010735C 00102C7C  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80107360 00102C80  28 00 00 02 */	cmplwi r0, 2
/* 80107364 00102C84  40 82 00 0C */	bne lbl_80107370
/* 80107368 00102C88  38 00 00 00 */	li r0, 0
/* 8010736C 00102C8C  90 03 00 28 */	stw r0, 0x28(r3)
lbl_80107370:
/* 80107370 00102C90  80 83 00 08 */	lwz r4, 8(r3)
/* 80107374 00102C94  54 80 1F 7E */	srwi r0, r4, 0x1d
/* 80107378 00102C98  28 00 00 01 */	cmplwi r0, 1
/* 8010737C 00102C9C  41 82 00 14 */	beq lbl_80107390
/* 80107380 00102CA0  54 80 00 FE */	clrlwi r0, r4, 3
/* 80107384 00102CA4  90 03 00 08 */	stw r0, 8(r3)
/* 80107388 00102CA8  38 60 00 00 */	li r3, 0
/* 8010738C 00102CAC  48 00 00 70 */	b lbl_801073FC
lbl_80107390:
/* 80107390 00102CB0  80 03 00 04 */	lwz r0, 4(r3)
/* 80107394 00102CB4  54 00 57 7E */	rlwinm r0, r0, 0xa, 0x1d, 0x1f
/* 80107398 00102CB8  28 00 00 01 */	cmplwi r0, 1
/* 8010739C 00102CBC  41 82 00 0C */	beq lbl_801073A8
/* 801073A0 00102CC0  3B C0 00 00 */	li r30, 0
/* 801073A4 00102CC4  48 00 00 10 */	b lbl_801073B4
lbl_801073A8:
/* 801073A8 00102CC8  7F E3 FB 78 */	mr r3, r31
/* 801073AC 00102CCC  48 00 01 11 */	bl func_801074BC
/* 801073B0 00102CD0  7C 7E 1B 78 */	mr r30, r3
lbl_801073B4:
/* 801073B4 00102CD4  7F E3 FB 78 */	mr r3, r31
/* 801073B8 00102CD8  38 80 00 00 */	li r4, 0
/* 801073BC 00102CDC  4B FF FA A9 */	bl func_80106E64
/* 801073C0 00102CE0  2C 03 00 00 */	cmpwi r3, 0
/* 801073C4 00102CE4  41 82 00 1C */	beq lbl_801073E0
/* 801073C8 00102CE8  38 60 00 01 */	li r3, 1
/* 801073CC 00102CEC  38 00 00 00 */	li r0, 0
/* 801073D0 00102CF0  98 7F 00 0A */	stb r3, 0xa(r31)
/* 801073D4 00102CF4  38 60 FF FF */	li r3, -1
/* 801073D8 00102CF8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801073DC 00102CFC  48 00 00 20 */	b lbl_801073FC
lbl_801073E0:
/* 801073E0 00102D00  80 1F 00 08 */	lwz r0, 8(r31)
/* 801073E4 00102D04  38 80 00 00 */	li r4, 0
/* 801073E8 00102D08  93 DF 00 18 */	stw r30, 0x18(r31)
/* 801073EC 00102D0C  38 60 00 00 */	li r3, 0
/* 801073F0 00102D10  54 00 00 FE */	clrlwi r0, r0, 3
/* 801073F4 00102D14  90 1F 00 08 */	stw r0, 8(r31)
/* 801073F8 00102D18  90 9F 00 28 */	stw r4, 0x28(r31)
lbl_801073FC:
/* 801073FC 00102D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80107400 00102D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80107404 00102D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80107408 00102D28  7C 08 03 A6 */	mtlr r0
/* 8010740C 00102D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80107410 00102D30  4E 80 00 20 */	blr 

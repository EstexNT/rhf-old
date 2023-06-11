.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_801062B8
func_801062B8:
/* 801062B8 00101BD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801062BC 00101BDC  7C 08 02 A6 */	mflr r0
/* 801062C0 00101BE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801062C4 00101BE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801062C8 00101BE8  3B E0 00 00 */	li r31, 0
/* 801062CC 00101BEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801062D0 00101BF0  3B C0 00 03 */	li r30, 3
/* 801062D4 00101BF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801062D8 00101BF8  3F A0 80 30 */	lis r29, lbl_80305858@ha
/* 801062DC 00101BFC  3B BD 58 58 */	addi r29, r29, lbl_80305858@l
/* 801062E0 00101C00  48 00 00 58 */	b lbl_80106338
lbl_801062E4:
/* 801062E4 00101C04  80 1D 00 04 */	lwz r0, 4(r29)
/* 801062E8 00101C08  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 801062EC 00101C0C  41 82 00 0C */	beq lbl_801062F8
/* 801062F0 00101C10  7F A3 EB 78 */	mr r3, r29
/* 801062F4 00101C14  48 00 0F 31 */	bl func_80107224
lbl_801062F8:
/* 801062F8 00101C18  7F A3 EB 78 */	mr r3, r29
/* 801062FC 00101C1C  83 BD 00 4C */	lwz r29, 0x4c(r29)
/* 80106300 00101C20  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80106304 00101C24  2C 00 00 00 */	cmpwi r0, 0
/* 80106308 00101C28  41 82 00 0C */	beq lbl_80106314
/* 8010630C 00101C2C  4B FF FE 7D */	bl func_80106188
/* 80106310 00101C30  48 00 00 28 */	b lbl_80106338
lbl_80106314:
/* 80106314 00101C34  80 03 00 04 */	lwz r0, 4(r3)
/* 80106318 00101C38  2C 1D 00 00 */	cmpwi r29, 0
/* 8010631C 00101C3C  53 C0 B1 D2 */	rlwimi r0, r30, 0x16, 7, 9
/* 80106320 00101C40  90 03 00 04 */	stw r0, 4(r3)
/* 80106324 00101C44  41 82 00 14 */	beq lbl_80106338
/* 80106328 00101C48  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 8010632C 00101C4C  2C 00 00 00 */	cmpwi r0, 0
/* 80106330 00101C50  41 82 00 08 */	beq lbl_80106338
/* 80106334 00101C54  93 E3 00 4C */	stw r31, 0x4c(r3)
lbl_80106338:
/* 80106338 00101C58  2C 1D 00 00 */	cmpwi r29, 0
/* 8010633C 00101C5C  40 82 FF A8 */	bne lbl_801062E4
/* 80106340 00101C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80106344 00101C64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80106348 00101C68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010634C 00101C6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80106350 00101C70  7C 08 03 A6 */	mtlr r0
/* 80106354 00101C74  38 21 00 20 */	addi r1, r1, 0x20
/* 80106358 00101C78  4E 80 00 20 */	blr 

.global func_8010635C
func_8010635C:
/* 8010635C 00101C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106360 00101C80  7C 08 02 A6 */	mflr r0
/* 80106364 00101C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106368 00101C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010636C 00101C8C  3B E0 00 00 */	li r31, 0
/* 80106370 00101C90  93 C1 00 08 */	stw r30, 8(r1)
/* 80106374 00101C94  3F C0 80 30 */	lis r30, lbl_80305858@ha
/* 80106378 00101C98  3B DE 58 58 */	addi r30, r30, lbl_80305858@l
/* 8010637C 00101C9C  48 00 00 28 */	b lbl_801063A4
lbl_80106380:
/* 80106380 00101CA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80106384 00101CA4  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 80106388 00101CA8  41 82 00 18 */	beq lbl_801063A0
/* 8010638C 00101CAC  7F C3 F3 78 */	mr r3, r30
/* 80106390 00101CB0  48 00 0F 51 */	bl func_801072E0
/* 80106394 00101CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80106398 00101CB8  41 82 00 08 */	beq lbl_801063A0
/* 8010639C 00101CBC  3B E0 FF FF */	li r31, -1
lbl_801063A0:
/* 801063A0 00101CC0  83 DE 00 4C */	lwz r30, 0x4c(r30)
lbl_801063A4:
/* 801063A4 00101CC4  2C 1E 00 00 */	cmpwi r30, 0
/* 801063A8 00101CC8  40 82 FF D8 */	bne lbl_80106380
/* 801063AC 00101CCC  7F E3 FB 78 */	mr r3, r31
/* 801063B0 00101CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801063B4 00101CD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801063B8 00101CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801063BC 00101CDC  7C 08 03 A6 */	mtlr r0
/* 801063C0 00101CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801063C4 00101CE4  4E 80 00 20 */	blr 



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80305858

lbl_80305858:

	# ROM: 0x301958
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_803699A0
	.4byte 0x00000100
	.4byte lbl_803699A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x801173F0  ;# ptr
	.4byte func_8010CF9C
	.4byte func_8010D06C
	.4byte 0
	.4byte lbl_803058A8

lbl_803058A8:
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_803698A0
	.4byte 0x00000100
	.4byte lbl_803698A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x801173F0  ;# ptr
	.4byte func_8010CF9C
	.4byte func_8010D06C
	.4byte 0
	.4byte lbl_803058F8

lbl_803058F8:
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_803697A0
	.4byte 0x00000100
	.4byte lbl_803697A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x801173F0  ;# ptr
	.4byte func_8010CF9C
	.4byte func_8010D06C
	.4byte 0
	.4byte lbl_80305948

lbl_80305948:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0



.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_803697A0
lbl_803697A0:
    .skip 0x100
.global lbl_803698A0
lbl_803698A0:
    .skip 0x100
.global lbl_803699A0
lbl_803699A0:
    .skip 0x100
.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_800E71E0
func_800E71E0:
/* 800E71E0 000E2B00  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 800E71E4 000E2B04  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 800E71E8 000E2B08  10 C2 20 2A */	ps_add f6, f2, f4
/* 800E71EC 000E2B0C  F0 C5 00 00 */	psq_st f6, 0(r5), 0, qr0
/* 800E71F0 000E2B10  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 800E71F4 000E2B14  E0 A4 80 08 */	psq_l f5, 8(r4), 1, qr0
/* 800E71F8 000E2B18  10 E3 28 2A */	ps_add f7, f3, f5
/* 800E71FC 000E2B1C  F0 E5 80 08 */	psq_st f7, 8(r5), 1, qr0
/* 800E7200 000E2B20  4E 80 00 20 */	blr 
/* 800E7204 000E2B24  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E7208 000E2B28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E720C 000E2B2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E7210
func_800E7210:
/* 800E7210 000E2B30  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 800E7214 000E2B34  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 800E7218 000E2B38  10 A2 00 B2 */	ps_mul f5, f2, f2
/* 800E721C 000E2B3C  C0 02 F8 E8 */	lfs f0, lbl_803288C8-_SDA2_BASE_(r2)
/* 800E7220 000E2B40  C0 22 F8 EC */	lfs f1, lbl_803288CC-_SDA2_BASE_(r2)
/* 800E7224 000E2B44  10 83 28 FA */	ps_madd f4, f3, f3, f5
/* 800E7228 000E2B48  10 84 28 D4 */	ps_sum0 f4, f4, f3, f5
/* 800E722C 000E2B4C  FC A0 20 34 */	frsqrte f5, f4
/* 800E7230 000E2B50  EC C5 01 72 */	fmuls f6, f5, f5
/* 800E7234 000E2B54  EC 05 00 32 */	fmuls f0, f5, f0
/* 800E7238 000E2B58  EC C6 09 3C */	fnmsubs f6, f6, f4, f1
/* 800E723C 000E2B5C  EC A6 00 32 */	fmuls f5, f6, f0
/* 800E7240 000E2B60  10 42 01 58 */	ps_muls0 f2, f2, f5
/* 800E7244 000E2B64  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 800E7248 000E2B68  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 800E724C 000E2B6C  F0 64 80 08 */	psq_st f3, 8(r4), 1, qr0
/* 800E7250 000E2B70  4E 80 00 20 */	blr 
/* 800E7254 000E2B74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E7258 000E2B78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E725C 000E2B7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E7260
func_800E7260:
/* 800E7260 000E2B80  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800E7264 000E2B84  C0 82 F8 E8 */	lfs f4, lbl_803288C8-_SDA2_BASE_(r2)
/* 800E7268 000E2B88  10 00 00 32 */	ps_mul f0, f0, f0
/* 800E726C 000E2B8C  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E7270 000E2B90  EC 44 20 28 */	fsubs f2, f4, f4
/* 800E7274 000E2B94  10 21 00 7A */	ps_madd f1, f1, f1, f0
/* 800E7278 000E2B98  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 800E727C 000E2B9C  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 800E7280 000E2BA0  4D 82 00 20 */	beqlr 
/* 800E7284 000E2BA4  FC 00 08 34 */	frsqrte f0, f1
/* 800E7288 000E2BA8  C0 62 F8 EC */	lfs f3, lbl_803288CC-_SDA2_BASE_(r2)
/* 800E728C 000E2BAC  EC 40 00 32 */	fmuls f2, f0, f0
/* 800E7290 000E2BB0  EC 00 01 32 */	fmuls f0, f0, f4
/* 800E7294 000E2BB4  EC 42 18 7C */	fnmsubs f2, f2, f1, f3
/* 800E7298 000E2BB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E729C 000E2BBC  EC 21 00 32 */	fmuls f1, f1, f0
/* 800E72A0 000E2BC0  4E 80 00 20 */	blr 
/* 800E72A4 000E2BC4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E72A8 000E2BC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E72AC 000E2BCC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E72B0
func_800E72B0:
/* 800E72B0 000E2BD0  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 800E72B4 000E2BD4  E0 64 00 04 */	psq_l f3, 4(r4), 0, qr0
/* 800E72B8 000E2BD8  10 42 00 F2 */	ps_mul f2, f2, f3
/* 800E72BC 000E2BDC  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 800E72C0 000E2BE0  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 800E72C4 000E2BE4  10 65 11 3A */	ps_madd f3, f5, f4, f2
/* 800E72C8 000E2BE8  10 23 10 94 */	ps_sum0 f1, f3, f2, f2
/* 800E72CC 000E2BEC  4E 80 00 20 */	blr 

.global func_800E72D0
func_800E72D0:
/* 800E72D0 000E2BF0  E0 24 00 00 */	psq_l f1, 0(r4), 0, qr0
/* 800E72D4 000E2BF4  C0 43 00 08 */	lfs f2, 8(r3)
/* 800E72D8 000E2BF8  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800E72DC 000E2BFC  10 C1 0C A0 */	ps_merge10 f6, f1, f1
/* 800E72E0 000E2C00  C0 64 00 08 */	lfs f3, 8(r4)
/* 800E72E4 000E2C04  10 81 00 B2 */	ps_mul f4, f1, f2
/* 800E72E8 000E2C08  10 E1 00 18 */	ps_muls0 f7, f1, f0
/* 800E72EC 000E2C0C  10 A0 20 F8 */	ps_msub f5, f0, f3, f4
/* 800E72F0 000E2C10  11 00 39 B8 */	ps_msub f8, f0, f6, f7
/* 800E72F4 000E2C14  11 25 2C E0 */	ps_merge11 f9, f5, f5
/* 800E72F8 000E2C18  11 45 44 60 */	ps_merge01 f10, f5, f8
/* 800E72FC 000E2C1C  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 800E7300 000E2C20  11 40 50 50 */	ps_neg f10, f10
/* 800E7304 000E2C24  F1 45 00 04 */	psq_st f10, 4(r5), 0, qr0
/* 800E7308 000E2C28  4E 80 00 20 */	blr 
/* 800E730C 000E2C2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E7310
func_800E7310:
/* 800E7310 000E2C30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E7314 000E2C34  7C 08 02 A6 */	mflr r0
/* 800E7318 000E2C38  C0 43 00 00 */	lfs f2, 0(r3)
/* 800E731C 000E2C3C  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E7320 000E2C40  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E7324 000E2C44  FC A0 10 50 */	fneg f5, f2
/* 800E7328 000E2C48  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E732C 000E2C4C  FC 80 08 50 */	fneg f4, f1
/* 800E7330 000E2C50  C0 44 00 00 */	lfs f2, 0(r4)
/* 800E7334 000E2C54  FC 60 00 50 */	fneg f3, f0
/* 800E7338 000E2C58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E733C 000E2C5C  C0 24 00 04 */	lfs f1, 4(r4)
/* 800E7340 000E2C60  FC 40 10 50 */	fneg f2, f2
/* 800E7344 000E2C64  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E7348 000E2C68  38 61 00 20 */	addi r3, r1, 0x20
/* 800E734C 000E2C6C  FC 20 08 50 */	fneg f1, f1
/* 800E7350 000E2C70  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 800E7354 000E2C74  FC 00 00 50 */	fneg f0, f0
/* 800E7358 000E2C78  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 800E735C 000E2C7C  7C BF 2B 78 */	mr r31, r5
/* 800E7360 000E2C80  7C 64 1B 78 */	mr r4, r3
/* 800E7364 000E2C84  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800E7368 000E2C88  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800E736C 000E2C8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E7370 000E2C90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E7374 000E2C94  4B FF FE 9D */	bl func_800E7210
/* 800E7378 000E2C98  38 61 00 14 */	addi r3, r1, 0x14
/* 800E737C 000E2C9C  7C 64 1B 78 */	mr r4, r3
/* 800E7380 000E2CA0  4B FF FE 91 */	bl func_800E7210
/* 800E7384 000E2CA4  38 61 00 20 */	addi r3, r1, 0x20
/* 800E7388 000E2CA8  38 81 00 14 */	addi r4, r1, 0x14
/* 800E738C 000E2CAC  38 A1 00 08 */	addi r5, r1, 8
/* 800E7390 000E2CB0  4B FF FE 51 */	bl func_800E71E0
/* 800E7394 000E2CB4  38 61 00 08 */	addi r3, r1, 8
/* 800E7398 000E2CB8  7C 64 1B 78 */	mr r4, r3
/* 800E739C 000E2CBC  4B FF FF 15 */	bl func_800E72B0
/* 800E73A0 000E2CC0  C0 02 F8 F0 */	lfs f0, lbl_803288D0-_SDA2_BASE_(r2)
/* 800E73A4 000E2CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E73A8 000E2CC8  40 81 00 14 */	ble lbl_800E73BC
/* 800E73AC 000E2CCC  7F E4 FB 78 */	mr r4, r31
/* 800E73B0 000E2CD0  38 61 00 08 */	addi r3, r1, 8
/* 800E73B4 000E2CD4  4B FF FE 5D */	bl func_800E7210
/* 800E73B8 000E2CD8  48 00 00 1C */	b lbl_800E73D4
lbl_800E73BC:
/* 800E73BC 000E2CDC  80 61 00 08 */	lwz r3, 8(r1)
/* 800E73C0 000E2CE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E73C4 000E2CE4  90 1F 00 04 */	stw r0, 4(r31)
/* 800E73C8 000E2CE8  90 7F 00 00 */	stw r3, 0(r31)
/* 800E73CC 000E2CEC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800E73D0 000E2CF0  90 1F 00 08 */	stw r0, 8(r31)
lbl_800E73D4:
/* 800E73D4 000E2CF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E73D8 000E2CF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E73DC 000E2CFC  7C 08 03 A6 */	mtlr r0
/* 800E73E0 000E2D00  38 21 00 40 */	addi r1, r1, 0x40
/* 800E73E4 000E2D04  4E 80 00 20 */	blr 
/* 800E73E8 000E2D08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E73EC 000E2D0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_803288C8

lbl_803288C8:

	# ROM: 0x323B28
	.4byte 0x3F000000


.global lbl_803288CC

lbl_803288CC:

	# ROM: 0x323B2C
	.4byte 0x40400000


.global lbl_803288D0

lbl_803288D0:

	# ROM: 0x323B30
	.4byte 0
	.4byte 0

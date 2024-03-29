.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010D358
func_8010D358:
/* 8010D358 00108C78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010D35C 00108C7C  3C 00 00 10 */	lis r0, 0x10
/* 8010D360 00108C80  38 E0 00 00 */	li r7, 0
/* 8010D364 00108C84  D8 21 00 08 */	stfd f1, 8(r1)
/* 8010D368 00108C88  81 01 00 08 */	lwz r8, 8(r1)
/* 8010D36C 00108C8C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8010D370 00108C90  7C 08 00 00 */	cmpw r8, r0
/* 8010D374 00108C94  40 80 00 54 */	bge lbl_8010D3C8
/* 8010D378 00108C98  55 00 00 7E */	clrlwi r0, r8, 1
/* 8010D37C 00108C9C  7C 00 1B 79 */	or. r0, r0, r3
/* 8010D380 00108CA0  40 82 00 14 */	bne lbl_8010D394
/* 8010D384 00108CA4  C8 22 FA F0 */	lfd f1, lbl_80328AD0-_SDA2_BASE_(r2)
/* 8010D388 00108CA8  C8 0D 9C B0 */	lfd f0, lbl_80320B70-_SDA_BASE_(r13)
/* 8010D38C 00108CAC  FC 21 00 24 */	fdiv f1, f1, f0
/* 8010D390 00108CB0  48 00 02 74 */	b lbl_8010D604
lbl_8010D394:
/* 8010D394 00108CB4  2C 08 00 00 */	cmpwi r8, 0
/* 8010D398 00108CB8  40 80 00 1C */	bge lbl_8010D3B4
/* 8010D39C 00108CBC  FC 21 08 28 */	fsub f1, f1, f1
/* 8010D3A0 00108CC0  C8 0D 9C B0 */	lfd f0, lbl_80320B70-_SDA_BASE_(r13)
/* 8010D3A4 00108CC4  38 00 00 21 */	li r0, 0x21
/* 8010D3A8 00108CC8  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 8010D3AC 00108CCC  FC 21 00 24 */	fdiv f1, f1, f0
/* 8010D3B0 00108CD0  48 00 02 54 */	b lbl_8010D604
lbl_8010D3B4:
/* 8010D3B4 00108CD4  C8 02 FA F8 */	lfd f0, lbl_80328AD8-_SDA2_BASE_(r2)
/* 8010D3B8 00108CD8  38 E0 FF CA */	li r7, -54
/* 8010D3BC 00108CDC  FC 21 00 32 */	fmul f1, f1, f0
/* 8010D3C0 00108CE0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8010D3C4 00108CE4  81 01 00 08 */	lwz r8, 8(r1)
lbl_8010D3C8:
/* 8010D3C8 00108CE8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8010D3CC 00108CEC  7C 08 00 00 */	cmpw r8, r0
/* 8010D3D0 00108CF0  41 80 00 0C */	blt lbl_8010D3DC
/* 8010D3D4 00108CF4  FC 21 08 2A */	fadd f1, f1, f1
/* 8010D3D8 00108CF8  48 00 02 2C */	b lbl_8010D604
lbl_8010D3DC:
/* 8010D3DC 00108CFC  7D 05 A6 70 */	srawi r5, r8, 0x14
/* 8010D3E0 00108D00  55 08 03 3E */	clrlwi r8, r8, 0xc
/* 8010D3E4 00108D04  3C 68 00 09 */	addis r3, r8, 9
/* 8010D3E8 00108D08  C8 02 FB 00 */	lfd f0, lbl_80328AE0-_SDA2_BASE_(r2)
/* 8010D3EC 00108D0C  38 83 5F 64 */	addi r4, r3, 0x5f64
/* 8010D3F0 00108D10  38 08 00 02 */	addi r0, r8, 2
/* 8010D3F4 00108D14  54 83 02 D6 */	rlwinm r3, r4, 0, 0xb, 0xb
/* 8010D3F8 00108D18  7C A7 2A 14 */	add r5, r7, r5
/* 8010D3FC 00108D1C  6C 63 3F F0 */	xoris r3, r3, 0x3ff0
/* 8010D400 00108D20  54 00 03 3E */	clrlwi r0, r0, 0xc
/* 8010D404 00108D24  7D 03 1B 78 */	or r3, r8, r3
/* 8010D408 00108D28  90 61 00 08 */	stw r3, 8(r1)
/* 8010D40C 00108D2C  2C 00 00 03 */	cmpwi r0, 3
/* 8010D410 00108D30  38 E5 FC 01 */	addi r7, r5, -1023
/* 8010D414 00108D34  C8 21 00 08 */	lfd f1, 8(r1)
/* 8010D418 00108D38  54 80 67 FE */	rlwinm r0, r4, 0xc, 0x1f, 0x1f
/* 8010D41C 00108D3C  7C E7 02 14 */	add r7, r7, r0
/* 8010D420 00108D40  FC 01 00 28 */	fsub f0, f1, f0
/* 8010D424 00108D44  40 80 00 B4 */	bge lbl_8010D4D8
/* 8010D428 00108D48  C8 2D 9C B0 */	lfd f1, lbl_80320B70-_SDA_BASE_(r13)
/* 8010D42C 00108D4C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8010D430 00108D50  40 82 00 44 */	bne lbl_8010D474
/* 8010D434 00108D54  2C 07 00 00 */	cmpwi r7, 0
/* 8010D438 00108D58  40 82 00 08 */	bne lbl_8010D440
/* 8010D43C 00108D5C  48 00 01 C8 */	b lbl_8010D604
lbl_8010D440:
/* 8010D440 00108D60  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8010D444 00108D64  3C 00 43 30 */	lis r0, 0x4330
/* 8010D448 00108D68  90 61 00 14 */	stw r3, 0x14(r1)
/* 8010D44C 00108D6C  C8 62 FB 68 */	lfd f3, lbl_80328B48-_SDA2_BASE_(r2)
/* 8010D450 00108D70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010D454 00108D74  C8 22 FB 08 */	lfd f1, lbl_80328AE8-_SDA2_BASE_(r2)
/* 8010D458 00108D78  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8010D45C 00108D7C  C8 02 FB 10 */	lfd f0, lbl_80328AF0-_SDA2_BASE_(r2)
/* 8010D460 00108D80  FC 42 18 28 */	fsub f2, f2, f3
/* 8010D464 00108D84  FC 21 00 B2 */	fmul f1, f1, f2
/* 8010D468 00108D88  FC 00 00 B2 */	fmul f0, f0, f2
/* 8010D46C 00108D8C  FC 21 00 2A */	fadd f1, f1, f0
/* 8010D470 00108D90  48 00 01 94 */	b lbl_8010D604
lbl_8010D474:
/* 8010D474 00108D94  C8 62 FB 20 */	lfd f3, lbl_80328B00-_SDA2_BASE_(r2)
/* 8010D478 00108D98  FC 20 00 32 */	fmul f1, f0, f0
/* 8010D47C 00108D9C  C8 42 FB 18 */	lfd f2, lbl_80328AF8-_SDA2_BASE_(r2)
/* 8010D480 00108DA0  2C 07 00 00 */	cmpwi r7, 0
/* 8010D484 00108DA4  FC 63 00 32 */	fmul f3, f3, f0
/* 8010D488 00108DA8  FC 42 18 28 */	fsub f2, f2, f3
/* 8010D48C 00108DAC  FC A2 00 72 */	fmul f5, f2, f1
/* 8010D490 00108DB0  40 82 00 0C */	bne lbl_8010D49C
/* 8010D494 00108DB4  FC 20 28 28 */	fsub f1, f0, f5
/* 8010D498 00108DB8  48 00 01 6C */	b lbl_8010D604
lbl_8010D49C:
/* 8010D49C 00108DBC  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8010D4A0 00108DC0  3C 00 43 30 */	lis r0, 0x4330
/* 8010D4A4 00108DC4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8010D4A8 00108DC8  C8 82 FB 68 */	lfd f4, lbl_80328B48-_SDA2_BASE_(r2)
/* 8010D4AC 00108DCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010D4B0 00108DD0  C8 22 FB 10 */	lfd f1, lbl_80328AF0-_SDA2_BASE_(r2)
/* 8010D4B4 00108DD4  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8010D4B8 00108DD8  C8 42 FB 08 */	lfd f2, lbl_80328AE8-_SDA2_BASE_(r2)
/* 8010D4BC 00108DDC  FC 63 20 28 */	fsub f3, f3, f4
/* 8010D4C0 00108DE0  FC 21 00 F2 */	fmul f1, f1, f3
/* 8010D4C4 00108DE4  FC 42 00 F2 */	fmul f2, f2, f3
/* 8010D4C8 00108DE8  FC 25 08 28 */	fsub f1, f5, f1
/* 8010D4CC 00108DEC  FC 01 00 28 */	fsub f0, f1, f0
/* 8010D4D0 00108DF0  FC 22 00 28 */	fsub f1, f2, f0
/* 8010D4D4 00108DF4  48 00 01 30 */	b lbl_8010D604
lbl_8010D4D8:
/* 8010D4D8 00108DF8  C8 22 FB 28 */	lfd f1, lbl_80328B08-_SDA2_BASE_(r2)
/* 8010D4DC 00108DFC  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8010D4E0 00108E00  3C 80 43 30 */	lis r4, 0x4330
/* 8010D4E4 00108E04  3C 60 00 07 */	lis r3, 0x0006B851@ha
/* 8010D4E8 00108E08  FC 21 00 2A */	fadd f1, f1, f0
/* 8010D4EC 00108E0C  3C C8 FF FA */	addis r6, r8, 0xfffa
/* 8010D4F0 00108E10  38 03 B8 51 */	addi r0, r3, 0x0006B851@l
/* 8010D4F4 00108E14  C8 A2 FB 60 */	lfd f5, lbl_80328B40-_SDA2_BASE_(r2)
/* 8010D4F8 00108E18  C8 82 FB 58 */	lfd f4, lbl_80328B38-_SDA2_BASE_(r2)
/* 8010D4FC 00108E1C  7C 08 00 50 */	subf r0, r8, r0
/* 8010D500 00108E20  FC 20 08 24 */	fdiv f1, f0, f1
/* 8010D504 00108E24  38 C6 EB 86 */	addi r6, r6, -5242
/* 8010D508 00108E28  C9 02 FB 40 */	lfd f8, lbl_80328B20-_SDA2_BASE_(r2)
/* 8010D50C 00108E2C  7C C6 03 79 */	or. r6, r6, r0
/* 8010D510 00108E30  C8 E2 FB 38 */	lfd f7, lbl_80328B18-_SDA2_BASE_(r2)
/* 8010D514 00108E34  C8 62 FB 50 */	lfd f3, lbl_80328B30-_SDA2_BASE_(r2)
/* 8010D518 00108E38  FD 61 00 72 */	fmul f11, f1, f1
/* 8010D51C 00108E3C  C8 C2 FB 30 */	lfd f6, lbl_80328B10-_SDA2_BASE_(r2)
/* 8010D520 00108E40  C8 42 FB 48 */	lfd f2, lbl_80328B28-_SDA2_BASE_(r2)
/* 8010D524 00108E44  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8010D528 00108E48  C9 42 FB 68 */	lfd f10, lbl_80328B48-_SDA2_BASE_(r2)
/* 8010D52C 00108E4C  FD 8B 02 F2 */	fmul f12, f11, f11
/* 8010D530 00108E50  90 81 00 10 */	stw r4, 0x10(r1)
/* 8010D534 00108E54  C9 21 00 10 */	lfd f9, 0x10(r1)
/* 8010D538 00108E58  FC A5 03 32 */	fmul f5, f5, f12
/* 8010D53C 00108E5C  FD 08 03 32 */	fmul f8, f8, f12
/* 8010D540 00108E60  FC 84 28 2A */	fadd f4, f4, f5
/* 8010D544 00108E64  FD 29 50 28 */	fsub f9, f9, f10
/* 8010D548 00108E68  FC A7 40 2A */	fadd f5, f7, f8
/* 8010D54C 00108E6C  FC 8C 01 32 */	fmul f4, f12, f4
/* 8010D550 00108E70  FC AC 01 72 */	fmul f5, f12, f5
/* 8010D554 00108E74  FC 63 20 2A */	fadd f3, f3, f4
/* 8010D558 00108E78  FC 86 28 2A */	fadd f4, f6, f5
/* 8010D55C 00108E7C  FC 6C 00 F2 */	fmul f3, f12, f3
/* 8010D560 00108E80  FC 8C 01 32 */	fmul f4, f12, f4
/* 8010D564 00108E84  FC 42 18 2A */	fadd f2, f2, f3
/* 8010D568 00108E88  FC 4B 00 B2 */	fmul f2, f11, f2
/* 8010D56C 00108E8C  FC 62 20 2A */	fadd f3, f2, f4
/* 8010D570 00108E90  40 81 00 58 */	ble lbl_8010D5C8
/* 8010D574 00108E94  C8 42 FB 18 */	lfd f2, lbl_80328AF8-_SDA2_BASE_(r2)
/* 8010D578 00108E98  2C 07 00 00 */	cmpwi r7, 0
/* 8010D57C 00108E9C  FC 42 00 32 */	fmul f2, f2, f0
/* 8010D580 00108EA0  FC A2 00 32 */	fmul f5, f2, f0
/* 8010D584 00108EA4  40 82 00 18 */	bne lbl_8010D59C
/* 8010D588 00108EA8  FC 45 18 2A */	fadd f2, f5, f3
/* 8010D58C 00108EAC  FC 21 00 B2 */	fmul f1, f1, f2
/* 8010D590 00108EB0  FC 25 08 28 */	fsub f1, f5, f1
/* 8010D594 00108EB4  FC 20 08 28 */	fsub f1, f0, f1
/* 8010D598 00108EB8  48 00 00 6C */	b lbl_8010D604
lbl_8010D59C:
/* 8010D59C 00108EBC  FC 65 18 2A */	fadd f3, f5, f3
/* 8010D5A0 00108EC0  C8 42 FB 10 */	lfd f2, lbl_80328AF0-_SDA2_BASE_(r2)
/* 8010D5A4 00108EC4  C8 82 FB 08 */	lfd f4, lbl_80328AE8-_SDA2_BASE_(r2)
/* 8010D5A8 00108EC8  FC 42 02 72 */	fmul f2, f2, f9
/* 8010D5AC 00108ECC  FC 21 00 F2 */	fmul f1, f1, f3
/* 8010D5B0 00108ED0  FC 64 02 72 */	fmul f3, f4, f9
/* 8010D5B4 00108ED4  FC 21 10 2A */	fadd f1, f1, f2
/* 8010D5B8 00108ED8  FC 25 08 28 */	fsub f1, f5, f1
/* 8010D5BC 00108EDC  FC 01 00 28 */	fsub f0, f1, f0
/* 8010D5C0 00108EE0  FC 23 00 28 */	fsub f1, f3, f0
/* 8010D5C4 00108EE4  48 00 00 40 */	b lbl_8010D604
lbl_8010D5C8:
/* 8010D5C8 00108EE8  2C 07 00 00 */	cmpwi r7, 0
/* 8010D5CC 00108EEC  40 82 00 14 */	bne lbl_8010D5E0
/* 8010D5D0 00108EF0  FC 40 18 28 */	fsub f2, f0, f3
/* 8010D5D4 00108EF4  FC 21 00 B2 */	fmul f1, f1, f2
/* 8010D5D8 00108EF8  FC 20 08 28 */	fsub f1, f0, f1
/* 8010D5DC 00108EFC  48 00 00 28 */	b lbl_8010D604
lbl_8010D5E0:
/* 8010D5E0 00108F00  FC 60 18 28 */	fsub f3, f0, f3
/* 8010D5E4 00108F04  C8 42 FB 10 */	lfd f2, lbl_80328AF0-_SDA2_BASE_(r2)
/* 8010D5E8 00108F08  C8 82 FB 08 */	lfd f4, lbl_80328AE8-_SDA2_BASE_(r2)
/* 8010D5EC 00108F0C  FC 42 02 72 */	fmul f2, f2, f9
/* 8010D5F0 00108F10  FC 21 00 F2 */	fmul f1, f1, f3
/* 8010D5F4 00108F14  FC 64 02 72 */	fmul f3, f4, f9
/* 8010D5F8 00108F18  FC 21 10 28 */	fsub f1, f1, f2
/* 8010D5FC 00108F1C  FC 01 00 28 */	fsub f0, f1, f0
/* 8010D600 00108F20  FC 23 00 28 */	fsub f1, f3, f0
lbl_8010D604:
/* 8010D604 00108F24  38 21 00 20 */	addi r1, r1, 0x20
/* 8010D608 00108F28  4E 80 00 20 */	blr 



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320B70
lbl_80320B70:
	.skip 0x8



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328AD0

lbl_80328AD0:

	# ROM: 0x323D30
	.4byte 0xC3500000
	.4byte 0


.global lbl_80328AD8

lbl_80328AD8:

	# ROM: 0x323D38
	.4byte 0x43500000
	.4byte 0


.global lbl_80328AE0

lbl_80328AE0:

	# ROM: 0x323D40
	.4byte 0x3FF00000
	.4byte 0


.global lbl_80328AE8

lbl_80328AE8:

	# ROM: 0x323D48
	.4byte 0x3FE62E42
	.4byte 0xFEE00000


.global lbl_80328AF0

lbl_80328AF0:

	# ROM: 0x323D50
	.4byte 0x3DEA39EF
	.4byte 0x35793C76


.global lbl_80328AF8

lbl_80328AF8:

	# ROM: 0x323D58
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80328B00

lbl_80328B00:

	# ROM: 0x323D60
	.4byte 0x3FD55555
	.4byte 0x55555555


.global lbl_80328B08

lbl_80328B08:

	# ROM: 0x323D68
	.4byte 0x40000000
	.4byte 0


.global lbl_80328B10

lbl_80328B10:

	# ROM: 0x323D70
	.4byte 0x3FD99999
	.4byte 0x9997FA04


.global lbl_80328B18

lbl_80328B18:

	# ROM: 0x323D78
	.4byte 0x3FCC71C5
	.4byte 0x1D8E78AF


.global lbl_80328B20

lbl_80328B20:

	# ROM: 0x323D80
	.4byte 0x3FC39A09
	.4byte 0xD078C69F


.global lbl_80328B28

lbl_80328B28:

	# ROM: 0x323D88
	.4byte 0x3FE55555
	.4byte 0x55555593


.global lbl_80328B30

lbl_80328B30:

	# ROM: 0x323D90
	.4byte 0x3FD24924
	.4byte 0x94229359


.global lbl_80328B38

lbl_80328B38:

	# ROM: 0x323D98
	.4byte 0x3FC74664
	.4byte 0x96CB03DE


.global lbl_80328B40

lbl_80328B40:

	# ROM: 0x323DA0
	.4byte 0x3FC2F112
	.4byte 0xDF3E5244


.global lbl_80328B48

lbl_80328B48:

	# ROM: 0x323DA8
	.4byte 0x43300000
	.4byte 0x80000000

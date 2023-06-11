.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_80119E20
func_80119E20:
/* 80119E20 00115740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80119E24 00115744  7C 08 02 A6 */	mflr r0
/* 80119E28 00115748  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119E2C 0011574C  39 61 00 20 */	addi r11, r1, 0x20
/* 80119E30 00115750  4B FE A3 39 */	bl func_80104168
/* 80119E34 00115754  81 04 00 08 */	lwz r8, 8(r4)
/* 80119E38 00115758  7F C6 2A 14 */	add r30, r6, r5
/* 80119E3C 0011575C  A0 C4 00 02 */	lhz r6, 2(r4)
/* 80119E40 00115760  3B A5 FF F0 */	addi r29, r5, -16
/* 80119E44 00115764  80 04 00 04 */	lwz r0, 4(r4)
/* 80119E48 00115768  2C 08 00 00 */	cmpwi r8, 0
/* 80119E4C 0011576C  54 C9 C6 7E */	rlwinm r9, r6, 0x18, 0x19, 0x1f
/* 80119E50 00115770  81 44 00 0C */	lwz r10, 0xc(r4)
/* 80119E54 00115774  7C C4 02 14 */	add r6, r4, r0
/* 80119E58 00115778  7C BB 2B 78 */	mr r27, r5
/* 80119E5C 0011577C  7C 7A 1B 78 */	mr r26, r3
/* 80119E60 00115780  7C FC 3B 78 */	mr r28, r7
/* 80119E64 00115784  7F BF EB 78 */	mr r31, r29
/* 80119E68 00115788  7C A9 20 50 */	subf r5, r9, r4
/* 80119E6C 0011578C  38 C6 00 10 */	addi r6, r6, 0x10
/* 80119E70 00115790  41 82 00 0C */	beq lbl_80119E7C
/* 80119E74 00115794  91 48 00 0C */	stw r10, 0xc(r8)
/* 80119E78 00115798  48 00 00 08 */	b lbl_80119E80
lbl_80119E7C:
/* 80119E7C 0011579C  91 43 00 00 */	stw r10, 0(r3)
lbl_80119E80:
/* 80119E80 001157A0  2C 0A 00 00 */	cmpwi r10, 0
/* 80119E84 001157A4  41 82 00 0C */	beq lbl_80119E90
/* 80119E88 001157A8  91 0A 00 08 */	stw r8, 8(r10)
/* 80119E8C 001157AC  48 00 00 08 */	b lbl_80119E94
lbl_80119E90:
/* 80119E90 001157B0  91 03 00 04 */	stw r8, 4(r3)
lbl_80119E94:
/* 80119E94 001157B4  7C 05 E8 50 */	subf r0, r5, r29
/* 80119E98 001157B8  28 00 00 14 */	cmplwi r0, 0x14
/* 80119E9C 001157BC  41 80 00 18 */	blt lbl_80119EB4
/* 80119EA0 001157C0  2C 07 00 00 */	cmpwi r7, 0
/* 80119EA4 001157C4  40 82 00 18 */	bne lbl_80119EBC
/* 80119EA8 001157C8  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 80119EAC 001157CC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80119EB0 001157D0  40 82 00 0C */	bne lbl_80119EBC
lbl_80119EB4:
/* 80119EB4 001157D4  7C BF 2B 78 */	mr r31, r5
/* 80119EB8 001157D8  48 00 00 60 */	b lbl_80119F18
lbl_80119EBC:
/* 80119EBC 001157DC  38 00 46 52 */	li r0, 0x4652
/* 80119EC0 001157E0  B0 05 00 00 */	sth r0, 0(r5)
/* 80119EC4 001157E4  38 80 00 00 */	li r4, 0
/* 80119EC8 001157E8  2C 08 00 00 */	cmpwi r8, 0
/* 80119ECC 001157EC  B0 85 00 02 */	sth r4, 2(r5)
/* 80119ED0 001157F0  38 05 00 10 */	addi r0, r5, 0x10
/* 80119ED4 001157F4  7C 00 E8 50 */	subf r0, r0, r29
/* 80119ED8 001157F8  90 05 00 04 */	stw r0, 4(r5)
/* 80119EDC 001157FC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80119EE0 00115800  91 05 00 08 */	stw r8, 8(r5)
/* 80119EE4 00115804  41 82 00 10 */	beq lbl_80119EF4
/* 80119EE8 00115808  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80119EEC 0011580C  90 A8 00 0C */	stw r5, 0xc(r8)
/* 80119EF0 00115810  48 00 00 0C */	b lbl_80119EFC
lbl_80119EF4:
/* 80119EF4 00115814  80 83 00 00 */	lwz r4, 0(r3)
/* 80119EF8 00115818  90 A3 00 00 */	stw r5, 0(r3)
lbl_80119EFC:
/* 80119EFC 0011581C  2C 04 00 00 */	cmpwi r4, 0
/* 80119F00 00115820  90 85 00 0C */	stw r4, 0xc(r5)
/* 80119F04 00115824  41 82 00 0C */	beq lbl_80119F10
/* 80119F08 00115828  90 A4 00 08 */	stw r5, 8(r4)
/* 80119F0C 0011582C  48 00 00 08 */	b lbl_80119F14
lbl_80119F10:
/* 80119F10 00115830  90 A3 00 04 */	stw r5, 4(r3)
lbl_80119F14:
/* 80119F14 00115834  7C A8 2B 78 */	mr r8, r5
lbl_80119F18:
/* 80119F18 00115838  7C 1E 30 50 */	subf r0, r30, r6
/* 80119F1C 0011583C  28 00 00 14 */	cmplwi r0, 0x14
/* 80119F20 00115840  41 80 00 18 */	blt lbl_80119F38
/* 80119F24 00115844  28 07 00 01 */	cmplwi r7, 1
/* 80119F28 00115848  40 82 00 18 */	bne lbl_80119F40
/* 80119F2C 0011584C  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 80119F30 00115850  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80119F34 00115854  40 82 00 0C */	bne lbl_80119F40
lbl_80119F38:
/* 80119F38 00115858  7C DE 33 78 */	mr r30, r6
/* 80119F3C 0011585C  48 00 00 5C */	b lbl_80119F98
lbl_80119F40:
/* 80119F40 00115860  38 00 46 52 */	li r0, 0x4652
/* 80119F44 00115864  B0 1E 00 00 */	sth r0, 0(r30)
/* 80119F48 00115868  38 80 00 00 */	li r4, 0
/* 80119F4C 0011586C  2C 08 00 00 */	cmpwi r8, 0
/* 80119F50 00115870  B0 9E 00 02 */	sth r4, 2(r30)
/* 80119F54 00115874  38 1E 00 10 */	addi r0, r30, 0x10
/* 80119F58 00115878  7C 00 30 50 */	subf r0, r0, r6
/* 80119F5C 0011587C  90 1E 00 04 */	stw r0, 4(r30)
/* 80119F60 00115880  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80119F64 00115884  91 1E 00 08 */	stw r8, 8(r30)
/* 80119F68 00115888  41 82 00 10 */	beq lbl_80119F78
/* 80119F6C 0011588C  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80119F70 00115890  93 C8 00 0C */	stw r30, 0xc(r8)
/* 80119F74 00115894  48 00 00 0C */	b lbl_80119F80
lbl_80119F78:
/* 80119F78 00115898  80 83 00 00 */	lwz r4, 0(r3)
/* 80119F7C 0011589C  93 C3 00 00 */	stw r30, 0(r3)
lbl_80119F80:
/* 80119F80 001158A0  2C 04 00 00 */	cmpwi r4, 0
/* 80119F84 001158A4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80119F88 001158A8  41 82 00 0C */	beq lbl_80119F94
/* 80119F8C 001158AC  93 C4 00 08 */	stw r30, 8(r4)
/* 80119F90 001158B0  48 00 00 08 */	b lbl_80119F98
lbl_80119F94:
/* 80119F94 001158B4  93 C3 00 04 */	stw r30, 4(r3)
lbl_80119F98:
/* 80119F98 001158B8  80 03 FF FC */	lwz r0, -4(r3)
/* 80119F9C 001158BC  7C BF F0 50 */	subf r5, r31, r30
/* 80119FA0 001158C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80119FA4 001158C4  41 82 00 10 */	beq lbl_80119FB4
/* 80119FA8 001158C8  7F E3 FB 78 */	mr r3, r31
/* 80119FAC 001158CC  38 80 00 00 */	li r4, 0
/* 80119FB0 001158D0  4B EE A7 65 */	bl func_80004714
lbl_80119FB4:
/* 80119FB4 001158D4  38 A0 00 00 */	li r5, 0
/* 80119FB8 001158D8  38 9D 00 10 */	addi r4, r29, 0x10
/* 80119FBC 001158DC  7C A3 2B 78 */	mr r3, r5
/* 80119FC0 001158E0  38 C0 55 44 */	li r6, 0x5544
/* 80119FC4 001158E4  7C 84 F0 50 */	subf r4, r4, r30
/* 80119FC8 001158E8  7C 1F E8 50 */	subf r0, r31, r29
/* 80119FCC 001158EC  53 83 7C 20 */	rlwimi r3, r28, 0xf, 0x10, 0x10
/* 80119FD0 001158F0  B0 DD 00 00 */	sth r6, 0(r29)
/* 80119FD4 001158F4  50 03 44 6E */	rlwimi r3, r0, 8, 0x11, 0x17
/* 80119FD8 001158F8  90 9D 00 04 */	stw r4, 4(r29)
/* 80119FDC 001158FC  90 BD 00 08 */	stw r5, 8(r29)
/* 80119FE0 00115900  90 BD 00 0C */	stw r5, 0xc(r29)
/* 80119FE4 00115904  B0 7D 00 02 */	sth r3, 2(r29)
/* 80119FE8 00115908  A0 1A 00 10 */	lhz r0, 0x10(r26)
/* 80119FEC 0011590C  50 03 06 3E */	rlwimi r3, r0, 0, 0x18, 0x1f
/* 80119FF0 00115910  B0 7D 00 02 */	sth r3, 2(r29)
/* 80119FF4 00115914  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 80119FF8 00115918  90 9D 00 08 */	stw r4, 8(r29)
/* 80119FFC 0011591C  2C 04 00 00 */	cmpwi r4, 0
/* 8011A000 00115920  41 82 00 10 */	beq lbl_8011A010
/* 8011A004 00115924  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8011A008 00115928  93 A4 00 0C */	stw r29, 0xc(r4)
/* 8011A00C 0011592C  48 00 00 0C */	b lbl_8011A018
lbl_8011A010:
/* 8011A010 00115930  80 7A 00 08 */	lwz r3, 8(r26)
/* 8011A014 00115934  93 BA 00 08 */	stw r29, 8(r26)
lbl_8011A018:
/* 8011A018 00115938  2C 03 00 00 */	cmpwi r3, 0
/* 8011A01C 0011593C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8011A020 00115940  41 82 00 0C */	beq lbl_8011A02C
/* 8011A024 00115944  93 A3 00 08 */	stw r29, 8(r3)
/* 8011A028 00115948  48 00 00 08 */	b lbl_8011A030
lbl_8011A02C:
/* 8011A02C 0011594C  93 BA 00 0C */	stw r29, 0xc(r26)
lbl_8011A030:
/* 8011A030 00115950  39 61 00 20 */	addi r11, r1, 0x20
/* 8011A034 00115954  7F 63 DB 78 */	mr r3, r27
/* 8011A038 00115958  4B FE A1 7D */	bl func_801041B4
/* 8011A03C 0011595C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A040 00115960  7C 08 03 A6 */	mtlr r0
/* 8011A044 00115964  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A048 00115968  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A050
func_8011A050:
/* 8011A050 00115970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A054 00115974  7C 08 02 A6 */	mflr r0
/* 8011A058 00115978  38 63 00 3C */	addi r3, r3, 0x3c
/* 8011A05C 0011597C  7C 86 23 78 */	mr r6, r4
/* 8011A060 00115980  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A064 00115984  38 05 FF FF */	addi r0, r5, -1
/* 8011A068 00115988  7C 09 00 F8 */	nor r9, r0, r0
/* 8011A06C 0011598C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A070 00115990  3B E0 00 00 */	li r31, 0
/* 8011A074 00115994  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A078 00115998  3B C0 FF FF */	li r30, -1
/* 8011A07C 0011599C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A080 001159A0  3B A0 00 00 */	li r29, 0
/* 8011A084 001159A4  A0 E3 00 12 */	lhz r7, 0x12(r3)
/* 8011A088 001159A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8011A08C 001159AC  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 8011A090 001159B0  7C 00 00 34 */	cntlzw r0, r0
/* 8011A094 001159B4  54 0B D9 7E */	srwi r11, r0, 5
/* 8011A098 001159B8  48 00 00 50 */	b lbl_8011A0E8
lbl_8011A09C:
/* 8011A09C 001159BC  39 0C 00 10 */	addi r8, r12, 0x10
/* 8011A0A0 001159C0  81 4C 00 04 */	lwz r10, 4(r12)
/* 8011A0A4 001159C4  7C E5 42 14 */	add r7, r5, r8
/* 8011A0A8 001159C8  38 07 FF FF */	addi r0, r7, -1
/* 8011A0AC 001159CC  7D 27 00 38 */	and r7, r9, r0
/* 8011A0B0 001159D0  7C 08 38 50 */	subf r0, r8, r7
/* 8011A0B4 001159D4  7C 04 02 14 */	add r0, r4, r0
/* 8011A0B8 001159D8  7C 0A 00 40 */	cmplw r10, r0
/* 8011A0BC 001159DC  41 80 00 28 */	blt lbl_8011A0E4
/* 8011A0C0 001159E0  7C 1E 50 40 */	cmplw r30, r10
/* 8011A0C4 001159E4  40 81 00 20 */	ble lbl_8011A0E4
/* 8011A0C8 001159E8  2C 0B 00 00 */	cmpwi r11, 0
/* 8011A0CC 001159EC  7D 9F 63 78 */	mr r31, r12
/* 8011A0D0 001159F0  7D 5E 53 78 */	mr r30, r10
/* 8011A0D4 001159F4  7C FD 3B 78 */	mr r29, r7
/* 8011A0D8 001159F8  40 82 00 18 */	bne lbl_8011A0F0
/* 8011A0DC 001159FC  7C 0A 20 40 */	cmplw r10, r4
/* 8011A0E0 00115A00  41 82 00 10 */	beq lbl_8011A0F0
lbl_8011A0E4:
/* 8011A0E4 00115A04  81 8C 00 0C */	lwz r12, 0xc(r12)
lbl_8011A0E8:
/* 8011A0E8 00115A08  2C 0C 00 00 */	cmpwi r12, 0
/* 8011A0EC 00115A0C  40 82 FF B0 */	bne lbl_8011A09C
lbl_8011A0F0:
/* 8011A0F0 00115A10  2C 1F 00 00 */	cmpwi r31, 0
/* 8011A0F4 00115A14  41 82 00 18 */	beq lbl_8011A10C
/* 8011A0F8 00115A18  7F E4 FB 78 */	mr r4, r31
/* 8011A0FC 00115A1C  7F A5 EB 78 */	mr r5, r29
/* 8011A100 00115A20  38 E0 00 00 */	li r7, 0
/* 8011A104 00115A24  4B FF FD 1D */	bl func_80119E20
/* 8011A108 00115A28  48 00 00 08 */	b lbl_8011A110
lbl_8011A10C:
/* 8011A10C 00115A2C  38 60 00 00 */	li r3, 0
lbl_8011A110:
/* 8011A110 00115A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A114 00115A34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A118 00115A38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A11C 00115A3C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A120 00115A40  7C 08 03 A6 */	mtlr r0
/* 8011A124 00115A44  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A128 00115A48  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A130
func_8011A130:
/* 8011A130 00115A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A134 00115A54  7C 08 02 A6 */	mflr r0
/* 8011A138 00115A58  38 63 00 3C */	addi r3, r3, 0x3c
/* 8011A13C 00115A5C  7C 86 23 78 */	mr r6, r4
/* 8011A140 00115A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A144 00115A64  38 05 FF FF */	addi r0, r5, -1
/* 8011A148 00115A68  7C 08 00 F8 */	nor r8, r0, r0
/* 8011A14C 00115A6C  39 80 00 00 */	li r12, 0
/* 8011A150 00115A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A154 00115A74  3B E0 FF FF */	li r31, -1
/* 8011A158 00115A78  93 C1 00 08 */	stw r30, 8(r1)
/* 8011A15C 00115A7C  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 8011A160 00115A80  81 63 00 04 */	lwz r11, 4(r3)
/* 8011A164 00115A84  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 8011A168 00115A88  38 A0 00 00 */	li r5, 0
/* 8011A16C 00115A8C  7C 00 00 34 */	cntlzw r0, r0
/* 8011A170 00115A90  54 0A D9 7E */	srwi r10, r0, 5
/* 8011A174 00115A94  48 00 00 48 */	b lbl_8011A1BC
lbl_8011A178:
/* 8011A178 00115A98  81 2B 00 04 */	lwz r9, 4(r11)
/* 8011A17C 00115A9C  38 EB 00 10 */	addi r7, r11, 0x10
/* 8011A180 00115AA0  7C 09 3A 14 */	add r0, r9, r7
/* 8011A184 00115AA4  7C 04 00 50 */	subf r0, r4, r0
/* 8011A188 00115AA8  7D 1E 00 38 */	and r30, r8, r0
/* 8011A18C 00115AAC  7C 07 F0 51 */	subf. r0, r7, r30
/* 8011A190 00115AB0  41 80 00 28 */	blt lbl_8011A1B8
/* 8011A194 00115AB4  7C 1F 48 40 */	cmplw r31, r9
/* 8011A198 00115AB8  40 81 00 20 */	ble lbl_8011A1B8
/* 8011A19C 00115ABC  2C 0A 00 00 */	cmpwi r10, 0
/* 8011A1A0 00115AC0  7D 6C 5B 78 */	mr r12, r11
/* 8011A1A4 00115AC4  7D 3F 4B 78 */	mr r31, r9
/* 8011A1A8 00115AC8  7F C5 F3 78 */	mr r5, r30
/* 8011A1AC 00115ACC  40 82 00 18 */	bne lbl_8011A1C4
/* 8011A1B0 00115AD0  7C 09 20 40 */	cmplw r9, r4
/* 8011A1B4 00115AD4  41 82 00 10 */	beq lbl_8011A1C4
lbl_8011A1B8:
/* 8011A1B8 00115AD8  81 6B 00 08 */	lwz r11, 8(r11)
lbl_8011A1BC:
/* 8011A1BC 00115ADC  2C 0B 00 00 */	cmpwi r11, 0
/* 8011A1C0 00115AE0  40 82 FF B8 */	bne lbl_8011A178
lbl_8011A1C4:
/* 8011A1C4 00115AE4  2C 0C 00 00 */	cmpwi r12, 0
/* 8011A1C8 00115AE8  41 82 00 14 */	beq lbl_8011A1DC
/* 8011A1CC 00115AEC  7D 84 63 78 */	mr r4, r12
/* 8011A1D0 00115AF0  38 E0 00 01 */	li r7, 1
/* 8011A1D4 00115AF4  4B FF FC 4D */	bl func_80119E20
/* 8011A1D8 00115AF8  48 00 00 08 */	b lbl_8011A1E0
lbl_8011A1DC:
/* 8011A1DC 00115AFC  38 60 00 00 */	li r3, 0
lbl_8011A1E0:
/* 8011A1E0 00115B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A1E4 00115B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A1E8 00115B08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011A1EC 00115B0C  7C 08 03 A6 */	mtlr r0
/* 8011A1F0 00115B10  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A1F4 00115B14  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A200
func_8011A200:
/* 8011A200 00115B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A204 00115B24  39 00 00 00 */	li r8, 0
/* 8011A208 00115B28  80 A4 00 00 */	lwz r5, 0(r4)
/* 8011A20C 00115B2C  80 04 00 04 */	lwz r0, 4(r4)
/* 8011A210 00115B30  90 A1 00 08 */	stw r5, 8(r1)
/* 8011A214 00115B34  80 C3 00 00 */	lwz r6, 0(r3)
/* 8011A218 00115B38  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011A21C 00115B3C  48 00 00 6C */	b lbl_8011A288
lbl_8011A220:
/* 8011A220 00115B40  80 04 00 00 */	lwz r0, 0(r4)
/* 8011A224 00115B44  7C 06 00 40 */	cmplw r6, r0
/* 8011A228 00115B48  40 80 00 0C */	bge lbl_8011A234
/* 8011A22C 00115B4C  7C C8 33 78 */	mr r8, r6
/* 8011A230 00115B50  48 00 00 54 */	b lbl_8011A284
lbl_8011A234:
/* 8011A234 00115B54  80 04 00 04 */	lwz r0, 4(r4)
/* 8011A238 00115B58  7C 06 00 40 */	cmplw r6, r0
/* 8011A23C 00115B5C  40 82 00 54 */	bne lbl_8011A290
/* 8011A240 00115B60  80 06 00 04 */	lwz r0, 4(r6)
/* 8011A244 00115B64  80 E6 00 08 */	lwz r7, 8(r6)
/* 8011A248 00115B68  7C A6 02 14 */	add r5, r6, r0
/* 8011A24C 00115B6C  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 8011A250 00115B70  38 05 00 10 */	addi r0, r5, 0x10
/* 8011A254 00115B74  2C 07 00 00 */	cmpwi r7, 0
/* 8011A258 00115B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011A25C 00115B7C  41 82 00 0C */	beq lbl_8011A268
/* 8011A260 00115B80  90 C7 00 0C */	stw r6, 0xc(r7)
/* 8011A264 00115B84  48 00 00 08 */	b lbl_8011A26C
lbl_8011A268:
/* 8011A268 00115B88  90 C3 00 00 */	stw r6, 0(r3)
lbl_8011A26C:
/* 8011A26C 00115B8C  2C 06 00 00 */	cmpwi r6, 0
/* 8011A270 00115B90  41 82 00 0C */	beq lbl_8011A27C
/* 8011A274 00115B94  90 E6 00 08 */	stw r7, 8(r6)
/* 8011A278 00115B98  48 00 00 18 */	b lbl_8011A290
lbl_8011A27C:
/* 8011A27C 00115B9C  90 E3 00 04 */	stw r7, 4(r3)
/* 8011A280 00115BA0  48 00 00 10 */	b lbl_8011A290
lbl_8011A284:
/* 8011A284 00115BA4  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_8011A288:
/* 8011A288 00115BA8  2C 06 00 00 */	cmpwi r6, 0
/* 8011A28C 00115BAC  40 82 FF 94 */	bne lbl_8011A220
lbl_8011A290:
/* 8011A290 00115BB0  2C 08 00 00 */	cmpwi r8, 0
/* 8011A294 00115BB4  41 82 00 54 */	beq lbl_8011A2E8
/* 8011A298 00115BB8  80 A8 00 04 */	lwz r5, 4(r8)
/* 8011A29C 00115BBC  80 04 00 00 */	lwz r0, 0(r4)
/* 8011A2A0 00115BC0  7C 88 2A 14 */	add r4, r8, r5
/* 8011A2A4 00115BC4  38 84 00 10 */	addi r4, r4, 0x10
/* 8011A2A8 00115BC8  7C 04 00 40 */	cmplw r4, r0
/* 8011A2AC 00115BCC  40 82 00 3C */	bne lbl_8011A2E8
/* 8011A2B0 00115BD0  80 A8 00 08 */	lwz r5, 8(r8)
/* 8011A2B4 00115BD4  91 01 00 08 */	stw r8, 8(r1)
/* 8011A2B8 00115BD8  2C 05 00 00 */	cmpwi r5, 0
/* 8011A2BC 00115BDC  80 88 00 0C */	lwz r4, 0xc(r8)
/* 8011A2C0 00115BE0  41 82 00 0C */	beq lbl_8011A2CC
/* 8011A2C4 00115BE4  90 85 00 0C */	stw r4, 0xc(r5)
/* 8011A2C8 00115BE8  48 00 00 08 */	b lbl_8011A2D0
lbl_8011A2CC:
/* 8011A2CC 00115BEC  90 83 00 00 */	stw r4, 0(r3)
lbl_8011A2D0:
/* 8011A2D0 00115BF0  2C 04 00 00 */	cmpwi r4, 0
/* 8011A2D4 00115BF4  41 82 00 0C */	beq lbl_8011A2E0
/* 8011A2D8 00115BF8  90 A4 00 08 */	stw r5, 8(r4)
/* 8011A2DC 00115BFC  48 00 00 08 */	b lbl_8011A2E4
lbl_8011A2E0:
/* 8011A2E0 00115C00  90 A3 00 04 */	stw r5, 4(r3)
lbl_8011A2E4:
/* 8011A2E4 00115C04  7C A8 2B 78 */	mr r8, r5
lbl_8011A2E8:
/* 8011A2E8 00115C08  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8011A2EC 00115C0C  80 A1 00 08 */	lwz r5, 8(r1)
/* 8011A2F0 00115C10  7C 05 30 50 */	subf r0, r5, r6
/* 8011A2F4 00115C14  28 00 00 10 */	cmplwi r0, 0x10
/* 8011A2F8 00115C18  40 80 00 0C */	bge lbl_8011A304
/* 8011A2FC 00115C1C  38 60 00 00 */	li r3, 0
/* 8011A300 00115C20  48 00 00 60 */	b lbl_8011A360
lbl_8011A304:
/* 8011A304 00115C24  38 00 46 52 */	li r0, 0x4652
/* 8011A308 00115C28  B0 05 00 00 */	sth r0, 0(r5)
/* 8011A30C 00115C2C  38 80 00 00 */	li r4, 0
/* 8011A310 00115C30  2C 08 00 00 */	cmpwi r8, 0
/* 8011A314 00115C34  B0 85 00 02 */	sth r4, 2(r5)
/* 8011A318 00115C38  38 05 00 10 */	addi r0, r5, 0x10
/* 8011A31C 00115C3C  7C 00 30 50 */	subf r0, r0, r6
/* 8011A320 00115C40  90 05 00 04 */	stw r0, 4(r5)
/* 8011A324 00115C44  90 85 00 0C */	stw r4, 0xc(r5)
/* 8011A328 00115C48  91 05 00 08 */	stw r8, 8(r5)
/* 8011A32C 00115C4C  41 82 00 10 */	beq lbl_8011A33C
/* 8011A330 00115C50  80 88 00 0C */	lwz r4, 0xc(r8)
/* 8011A334 00115C54  90 A8 00 0C */	stw r5, 0xc(r8)
/* 8011A338 00115C58  48 00 00 0C */	b lbl_8011A344
lbl_8011A33C:
/* 8011A33C 00115C5C  80 83 00 00 */	lwz r4, 0(r3)
/* 8011A340 00115C60  90 A3 00 00 */	stw r5, 0(r3)
lbl_8011A344:
/* 8011A344 00115C64  2C 04 00 00 */	cmpwi r4, 0
/* 8011A348 00115C68  90 85 00 0C */	stw r4, 0xc(r5)
/* 8011A34C 00115C6C  41 82 00 0C */	beq lbl_8011A358
/* 8011A350 00115C70  90 A4 00 08 */	stw r5, 8(r4)
/* 8011A354 00115C74  48 00 00 08 */	b lbl_8011A35C
lbl_8011A358:
/* 8011A358 00115C78  90 A3 00 04 */	stw r5, 4(r3)
lbl_8011A35C:
/* 8011A35C 00115C7C  38 60 00 01 */	li r3, 1
lbl_8011A360:
/* 8011A360 00115C80  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A364 00115C84  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A370
func_8011A370:
/* 8011A370 00115C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A374 00115C94  7C 08 02 A6 */	mflr r0
/* 8011A378 00115C98  7C 84 1A 14 */	add r4, r4, r3
/* 8011A37C 00115C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A380 00115CA0  38 03 00 03 */	addi r0, r3, 3
/* 8011A384 00115CA4  54 86 00 3A */	rlwinm r6, r4, 0, 0, 0x1d
/* 8011A388 00115CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A38C 00115CAC  54 1F 00 3A */	rlwinm r31, r0, 0, 0, 0x1d
/* 8011A390 00115CB0  7C 1F 30 40 */	cmplw r31, r6
/* 8011A394 00115CB4  41 81 00 10 */	bgt lbl_8011A3A4
/* 8011A398 00115CB8  7C 1F 30 50 */	subf r0, r31, r6
/* 8011A39C 00115CBC  28 00 00 64 */	cmplwi r0, 0x64
/* 8011A3A0 00115CC0  40 80 00 0C */	bge lbl_8011A3AC
lbl_8011A3A4:
/* 8011A3A4 00115CC4  38 60 00 00 */	li r3, 0
/* 8011A3A8 00115CC8  48 00 00 64 */	b lbl_8011A40C
lbl_8011A3AC:
/* 8011A3AC 00115CCC  3C 80 45 58 */	lis r4, 0x45585048@ha
/* 8011A3B0 00115CD0  7C A7 2B 78 */	mr r7, r5
/* 8011A3B4 00115CD4  7F E3 FB 78 */	mr r3, r31
/* 8011A3B8 00115CD8  38 BF 00 50 */	addi r5, r31, 0x50
/* 8011A3BC 00115CDC  38 84 50 48 */	addi r4, r4, 0x45585048@l
/* 8011A3C0 00115CE0  4B FF F5 F1 */	bl func_801199B0
/* 8011A3C4 00115CE4  38 A0 00 00 */	li r5, 0
/* 8011A3C8 00115CE8  B0 BF 00 4C */	sth r5, 0x4c(r31)
/* 8011A3CC 00115CEC  38 80 46 52 */	li r4, 0x4652
/* 8011A3D0 00115CF0  7F E3 FB 78 */	mr r3, r31
/* 8011A3D4 00115CF4  B0 BF 00 4E */	sth r5, 0x4e(r31)
/* 8011A3D8 00115CF8  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 8011A3DC 00115CFC  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8011A3E0 00115D00  38 06 00 10 */	addi r0, r6, 0x10
/* 8011A3E4 00115D04  B0 86 00 00 */	sth r4, 0(r6)
/* 8011A3E8 00115D08  7C 00 38 50 */	subf r0, r0, r7
/* 8011A3EC 00115D0C  B0 A6 00 02 */	sth r5, 2(r6)
/* 8011A3F0 00115D10  90 06 00 04 */	stw r0, 4(r6)
/* 8011A3F4 00115D14  90 A6 00 08 */	stw r5, 8(r6)
/* 8011A3F8 00115D18  90 A6 00 0C */	stw r5, 0xc(r6)
/* 8011A3FC 00115D1C  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 8011A400 00115D20  90 DF 00 40 */	stw r6, 0x40(r31)
/* 8011A404 00115D24  90 BF 00 44 */	stw r5, 0x44(r31)
/* 8011A408 00115D28  90 BF 00 48 */	stw r5, 0x48(r31)
lbl_8011A40C:
/* 8011A40C 00115D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A410 00115D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A414 00115D34  7C 08 03 A6 */	mtlr r0
/* 8011A418 00115D38  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A41C 00115D3C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A420
func_8011A420:
/* 8011A420 00115D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A424 00115D44  7C 08 02 A6 */	mflr r0
/* 8011A428 00115D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A42C 00115D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A430 00115D50  7C 7F 1B 78 */	mr r31, r3
/* 8011A434 00115D54  4B FF F7 3D */	bl func_80119B70
/* 8011A438 00115D58  7F E3 FB 78 */	mr r3, r31
/* 8011A43C 00115D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A440 00115D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A444 00115D64  7C 08 03 A6 */	mtlr r0
/* 8011A448 00115D68  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A44C 00115D6C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A450
func_8011A450:
/* 8011A450 00115D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A454 00115D74  7C 08 02 A6 */	mflr r0
/* 8011A458 00115D78  2C 04 00 00 */	cmpwi r4, 0
/* 8011A45C 00115D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A460 00115D80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A464 00115D84  7C BF 2B 78 */	mr r31, r5
/* 8011A468 00115D88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A46C 00115D8C  7C 9E 23 78 */	mr r30, r4
/* 8011A470 00115D90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A474 00115D94  7C 7D 1B 78 */	mr r29, r3
/* 8011A478 00115D98  40 82 00 08 */	bne lbl_8011A480
/* 8011A47C 00115D9C  3B C0 00 01 */	li r30, 1
lbl_8011A480:
/* 8011A480 00115DA0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8011A484 00115DA4  38 9E 00 03 */	addi r4, r30, 3
/* 8011A488 00115DA8  54 9E 00 3A */	rlwinm r30, r4, 0, 0, 0x1d
/* 8011A48C 00115DAC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A490 00115DB0  41 82 00 0C */	beq lbl_8011A49C
/* 8011A494 00115DB4  38 63 00 20 */	addi r3, r3, 0x20
/* 8011A498 00115DB8  4B FC 6B 69 */	bl func_800E1000
lbl_8011A49C:
/* 8011A49C 00115DBC  2C 1F 00 00 */	cmpwi r31, 0
/* 8011A4A0 00115DC0  41 80 00 18 */	blt lbl_8011A4B8
/* 8011A4A4 00115DC4  7F A3 EB 78 */	mr r3, r29
/* 8011A4A8 00115DC8  7F C4 F3 78 */	mr r4, r30
/* 8011A4AC 00115DCC  7F E5 FB 78 */	mr r5, r31
/* 8011A4B0 00115DD0  4B FF FB A1 */	bl func_8011A050
/* 8011A4B4 00115DD4  48 00 00 14 */	b lbl_8011A4C8
lbl_8011A4B8:
/* 8011A4B8 00115DD8  7F A3 EB 78 */	mr r3, r29
/* 8011A4BC 00115DDC  7F C4 F3 78 */	mr r4, r30
/* 8011A4C0 00115DE0  7C BF 00 D0 */	neg r5, r31
/* 8011A4C4 00115DE4  4B FF FC 6D */	bl func_8011A130
lbl_8011A4C8:
/* 8011A4C8 00115DE8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 8011A4CC 00115DEC  7C 7F 1B 78 */	mr r31, r3
/* 8011A4D0 00115DF0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A4D4 00115DF4  41 82 00 0C */	beq lbl_8011A4E0
/* 8011A4D8 00115DF8  38 7D 00 20 */	addi r3, r29, 0x20
/* 8011A4DC 00115DFC  4B FC 6C 05 */	bl func_800E10E0
lbl_8011A4E0:
/* 8011A4E0 00115E00  7F E3 FB 78 */	mr r3, r31
/* 8011A4E4 00115E04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A4E8 00115E08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A4EC 00115E0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A4F0 00115E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A4F4 00115E14  7C 08 03 A6 */	mtlr r0
/* 8011A4F8 00115E18  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A4FC 00115E1C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A500
func_8011A500:
/* 8011A500 00115E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A504 00115E24  7C 08 02 A6 */	mflr r0
/* 8011A508 00115E28  2C 04 00 00 */	cmpwi r4, 0
/* 8011A50C 00115E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A510 00115E30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A514 00115E34  7C 9F 23 78 */	mr r31, r4
/* 8011A518 00115E38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A51C 00115E3C  7C 7E 1B 78 */	mr r30, r3
/* 8011A520 00115E40  41 82 00 8C */	beq lbl_8011A5AC
/* 8011A524 00115E44  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8011A528 00115E48  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A52C 00115E4C  41 82 00 0C */	beq lbl_8011A538
/* 8011A530 00115E50  38 63 00 20 */	addi r3, r3, 0x20
/* 8011A534 00115E54  4B FC 6A CD */	bl func_800E1000
lbl_8011A538:
/* 8011A538 00115E58  A0 1F FF F2 */	lhz r0, -0xe(r31)
/* 8011A53C 00115E5C  38 DF FF F0 */	addi r6, r31, -16
/* 8011A540 00115E60  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8011A544 00115E64  54 00 C6 7E */	rlwinm r0, r0, 0x18, 0x19, 0x1f
/* 8011A548 00115E68  7C 00 30 50 */	subf r0, r0, r6
/* 8011A54C 00115E6C  90 01 00 08 */	stw r0, 8(r1)
/* 8011A550 00115E70  80 1F FF F4 */	lwz r0, -0xc(r31)
/* 8011A554 00115E74  7C 86 02 14 */	add r4, r6, r0
/* 8011A558 00115E78  38 04 00 10 */	addi r0, r4, 0x10
/* 8011A55C 00115E7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011A560 00115E80  80 BF FF F8 */	lwz r5, -8(r31)
/* 8011A564 00115E84  80 9F FF FC */	lwz r4, -4(r31)
/* 8011A568 00115E88  2C 05 00 00 */	cmpwi r5, 0
/* 8011A56C 00115E8C  41 82 00 0C */	beq lbl_8011A578
/* 8011A570 00115E90  90 85 00 0C */	stw r4, 0xc(r5)
/* 8011A574 00115E94  48 00 00 08 */	b lbl_8011A57C
lbl_8011A578:
/* 8011A578 00115E98  90 83 00 08 */	stw r4, 8(r3)
lbl_8011A57C:
/* 8011A57C 00115E9C  2C 04 00 00 */	cmpwi r4, 0
/* 8011A580 00115EA0  41 82 00 0C */	beq lbl_8011A58C
/* 8011A584 00115EA4  90 A4 00 08 */	stw r5, 8(r4)
/* 8011A588 00115EA8  48 00 00 08 */	b lbl_8011A590
lbl_8011A58C:
/* 8011A58C 00115EAC  90 A3 00 0C */	stw r5, 0xc(r3)
lbl_8011A590:
/* 8011A590 00115EB0  38 81 00 08 */	addi r4, r1, 8
/* 8011A594 00115EB4  4B FF FC 6D */	bl func_8011A200
/* 8011A598 00115EB8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8011A59C 00115EBC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A5A0 00115EC0  41 82 00 0C */	beq lbl_8011A5AC
/* 8011A5A4 00115EC4  38 7E 00 20 */	addi r3, r30, 0x20
/* 8011A5A8 00115EC8  4B FC 6B 39 */	bl func_800E10E0
lbl_8011A5AC:
/* 8011A5AC 00115ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A5B0 00115ED0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A5B4 00115ED4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A5B8 00115ED8  7C 08 03 A6 */	mtlr r0
/* 8011A5BC 00115EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A5C0 00115EE0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A5D0
func_8011A5D0:
/* 8011A5D0 00115EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A5D4 00115EF4  7C 08 02 A6 */	mflr r0
/* 8011A5D8 00115EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A5DC 00115EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A5E0 00115F00  3B E0 00 00 */	li r31, 0
/* 8011A5E4 00115F04  93 C1 00 08 */	stw r30, 8(r1)
/* 8011A5E8 00115F08  7C 7E 1B 78 */	mr r30, r3
/* 8011A5EC 00115F0C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8011A5F0 00115F10  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A5F4 00115F14  41 82 00 0C */	beq lbl_8011A600
/* 8011A5F8 00115F18  38 63 00 20 */	addi r3, r3, 0x20
/* 8011A5FC 00115F1C  4B FC 6A 05 */	bl func_800E1000
lbl_8011A600:
/* 8011A600 00115F20  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8011A604 00115F24  48 00 00 10 */	b lbl_8011A614
lbl_8011A608:
/* 8011A608 00115F28  80 03 00 04 */	lwz r0, 4(r3)
/* 8011A60C 00115F2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8011A610 00115F30  7F FF 02 14 */	add r31, r31, r0
lbl_8011A614:
/* 8011A614 00115F34  2C 03 00 00 */	cmpwi r3, 0
/* 8011A618 00115F38  40 82 FF F0 */	bne lbl_8011A608
/* 8011A61C 00115F3C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8011A620 00115F40  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A624 00115F44  41 82 00 0C */	beq lbl_8011A630
/* 8011A628 00115F48  38 7E 00 20 */	addi r3, r30, 0x20
/* 8011A62C 00115F4C  4B FC 6A B5 */	bl func_800E10E0
lbl_8011A630:
/* 8011A630 00115F50  7F E3 FB 78 */	mr r3, r31
/* 8011A634 00115F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A638 00115F58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011A63C 00115F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A640 00115F60  7C 08 03 A6 */	mtlr r0
/* 8011A644 00115F64  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A648 00115F68  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A650
func_8011A650:
/* 8011A650 00115F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A654 00115F74  7C 08 02 A6 */	mflr r0
/* 8011A658 00115F78  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 8011A65C 00115F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A660 00115F80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A664 00115F84  7C BF 22 78 */	xor r31, r5, r4
/* 8011A668 00115F88  7F E5 F8 50 */	subf r31, r5, r31
/* 8011A66C 00115F8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A670 00115F90  7C 7E 1B 78 */	mr r30, r3
/* 8011A674 00115F94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A678 00115F98  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8011A67C 00115F9C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A680 00115FA0  41 82 00 0C */	beq lbl_8011A68C
/* 8011A684 00115FA4  38 63 00 20 */	addi r3, r3, 0x20
/* 8011A688 00115FA8  4B FC 69 79 */	bl func_800E1000
lbl_8011A68C:
/* 8011A68C 00115FAC  38 1F FF FF */	addi r0, r31, -1
/* 8011A690 00115FB0  80 DE 00 3C */	lwz r6, 0x3c(r30)
/* 8011A694 00115FB4  7C 04 00 F8 */	nor r4, r0, r0
/* 8011A698 00115FB8  3B A0 00 00 */	li r29, 0
/* 8011A69C 00115FBC  38 E0 FF FF */	li r7, -1
/* 8011A6A0 00115FC0  48 00 00 4C */	b lbl_8011A6EC
lbl_8011A6A4:
/* 8011A6A4 00115FC4  38 A6 00 10 */	addi r5, r6, 0x10
/* 8011A6A8 00115FC8  80 06 00 04 */	lwz r0, 4(r6)
/* 8011A6AC 00115FCC  7C 7F 2A 14 */	add r3, r31, r5
/* 8011A6B0 00115FD0  38 63 FF FF */	addi r3, r3, -1
/* 8011A6B4 00115FD4  7C 00 2A 14 */	add r0, r0, r5
/* 8011A6B8 00115FD8  7C 83 18 38 */	and r3, r4, r3
/* 8011A6BC 00115FDC  7C 03 00 40 */	cmplw r3, r0
/* 8011A6C0 00115FE0  40 80 00 28 */	bge lbl_8011A6E8
/* 8011A6C4 00115FE4  7C 03 00 50 */	subf r0, r3, r0
/* 8011A6C8 00115FE8  7C 65 18 50 */	subf r3, r5, r3
/* 8011A6CC 00115FEC  7C 1D 00 40 */	cmplw r29, r0
/* 8011A6D0 00115FF0  41 80 00 10 */	blt lbl_8011A6E0
/* 8011A6D4 00115FF4  40 82 00 14 */	bne lbl_8011A6E8
/* 8011A6D8 00115FF8  7C 07 18 40 */	cmplw r7, r3
/* 8011A6DC 00115FFC  40 81 00 0C */	ble lbl_8011A6E8
lbl_8011A6E0:
/* 8011A6E0 00116000  7C 1D 03 78 */	mr r29, r0
/* 8011A6E4 00116004  7C 67 1B 78 */	mr r7, r3
lbl_8011A6E8:
/* 8011A6E8 00116008  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_8011A6EC:
/* 8011A6EC 0011600C  2C 06 00 00 */	cmpwi r6, 0
/* 8011A6F0 00116010  40 82 FF B4 */	bne lbl_8011A6A4
/* 8011A6F4 00116014  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8011A6F8 00116018  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A6FC 0011601C  41 82 00 0C */	beq lbl_8011A708
/* 8011A700 00116020  38 7E 00 20 */	addi r3, r30, 0x20
/* 8011A704 00116024  4B FC 69 DD */	bl func_800E10E0
lbl_8011A708:
/* 8011A708 00116028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A70C 0011602C  7F A3 EB 78 */	mr r3, r29
/* 8011A710 00116030  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A714 00116034  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A718 00116038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A71C 0011603C  7C 08 03 A6 */	mtlr r0
/* 8011A720 00116040  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A724 00116044  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A730
func_8011A730:
/* 8011A730 00116050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A734 00116054  7C 08 02 A6 */	mflr r0
/* 8011A738 00116058  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A73C 0011605C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A740 00116060  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A744 00116064  7C 9E 23 78 */	mr r30, r4
/* 8011A748 00116068  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A74C 0011606C  7C 7D 1B 78 */	mr r29, r3
/* 8011A750 00116070  4B FC 56 D1 */	bl func_800DFE20
/* 8011A754 00116074  A3 FD 00 4C */	lhz r31, 0x4c(r29)
/* 8011A758 00116078  B3 DD 00 4C */	sth r30, 0x4c(r29)
/* 8011A75C 0011607C  4B FC 57 05 */	bl func_800DFE60
/* 8011A760 00116080  7F E3 FB 78 */	mr r3, r31
/* 8011A764 00116084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A768 00116088  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A76C 0011608C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A770 00116090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A774 00116094  7C 08 03 A6 */	mtlr r0
/* 8011A778 00116098  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A77C 0011609C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A780
func_8011A780:
/* 8011A780 001160A0  A0 63 00 4C */	lhz r3, 0x4c(r3)
/* 8011A784 001160A4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A790
func_8011A790:
/* 8011A790 001160B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A794 001160B4  7C 08 02 A6 */	mflr r0
/* 8011A798 001160B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A79C 001160BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A7A0 001160C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A7A4 001160C4  7C BE 2B 78 */	mr r30, r5
/* 8011A7A8 001160C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A7AC 001160CC  7C 9D 23 78 */	mr r29, r4
/* 8011A7B0 001160D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8011A7B4 001160D4  7C 7C 1B 78 */	mr r28, r3
/* 8011A7B8 001160D8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8011A7BC 001160DC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A7C0 001160E0  41 82 00 0C */	beq lbl_8011A7CC
/* 8011A7C4 001160E4  38 63 00 20 */	addi r3, r3, 0x20
/* 8011A7C8 001160E8  4B FC 68 39 */	bl func_800E1000
lbl_8011A7CC:
/* 8011A7CC 001160EC  83 FC 00 44 */	lwz r31, 0x44(r28)
/* 8011A7D0 001160F0  48 00 00 20 */	b lbl_8011A7F0
lbl_8011A7D4:
/* 8011A7D4 001160F4  7F AC EB 78 */	mr r12, r29
/* 8011A7D8 001160F8  38 7F 00 10 */	addi r3, r31, 0x10
/* 8011A7DC 001160FC  7F 84 E3 78 */	mr r4, r28
/* 8011A7E0 00116100  7F C5 F3 78 */	mr r5, r30
/* 8011A7E4 00116104  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 8011A7E8 00116108  7D 89 03 A6 */	mtctr r12
/* 8011A7EC 0011610C  4E 80 04 21 */	bctrl 
lbl_8011A7F0:
/* 8011A7F0 00116110  2C 1F 00 00 */	cmpwi r31, 0
/* 8011A7F4 00116114  40 82 FF E0 */	bne lbl_8011A7D4
/* 8011A7F8 00116118  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 8011A7FC 0011611C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011A800 00116120  41 82 00 0C */	beq lbl_8011A80C
/* 8011A804 00116124  38 7C 00 20 */	addi r3, r28, 0x20
/* 8011A808 00116128  4B FC 68 D9 */	bl func_800E10E0
lbl_8011A80C:
/* 8011A80C 0011612C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A810 00116130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A814 00116134  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A818 00116138  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A81C 0011613C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8011A820 00116140  7C 08 03 A6 */	mtlr r0
/* 8011A824 00116144  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A828 00116148  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011A830
func_8011A830:
/* 8011A830 00116150  A0 03 FF F2 */	lhz r0, -0xe(r3)
/* 8011A834 00116154  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8011A838 00116158  4E 80 00 20 */	blr 

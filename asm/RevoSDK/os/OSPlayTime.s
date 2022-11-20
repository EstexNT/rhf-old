.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E5D20
func_800E5D20:
/* 800E5D20 000E1640  80 0D 98 78 */	lwz r0, lbl_80320738-_SDA_BASE_(r13)
/* 800E5D24 000E1644  80 6D 98 7C */	lwz r3, lbl_8032073C-_SDA_BASE_(r13)
/* 800E5D28 000E1648  7C 60 03 78 */	or r0, r3, r0
/* 800E5D2C 000E164C  30 60 FF FF */	addic r3, r0, -1
/* 800E5D30 000E1650  7C 63 01 10 */	subfe r3, r3, r0
/* 800E5D34 000E1654  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E5D40
func_800E5D40:
/* 800E5D40 000E1660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E5D44 000E1664  7C 08 02 A6 */	mflr r0
/* 800E5D48 000E1668  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E5D4C 000E166C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E5D50 000E1670  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E5D54 000E1674  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800E5D58 000E1678  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5D5C 000E167C  81 83 04 90 */	lwz r12, 0x490(r3)
/* 800E5D60 000E1680  2C 0C 00 00 */	cmpwi r12, 0
/* 800E5D64 000E1684  41 82 00 0C */	beq lbl_800E5D70
/* 800E5D68 000E1688  7D 89 03 A6 */	mtctr r12
/* 800E5D6C 000E168C  4E 80 04 21 */	bctrl 
lbl_800E5D70:
/* 800E5D70 000E1690  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5D74 000E1694  80 03 04 88 */	lwz r0, 0x488(r3)
/* 800E5D78 000E1698  2C 00 00 00 */	cmpwi r0, 0
/* 800E5D7C 000E169C  40 82 00 14 */	bne lbl_800E5D90
/* 800E5D80 000E16A0  48 01 07 71 */	bl func_800F64F0
/* 800E5D84 000E16A4  80 8D 98 68 */	lwz r4, lbl_80320728-_SDA_BASE_(r13)
/* 800E5D88 000E16A8  3C 03 80 00 */	addis r0, r3, 0x8000
/* 800E5D8C 000E16AC  90 04 04 84 */	stw r0, 0x484(r4)
lbl_800E5D90:
/* 800E5D90 000E16B0  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5D94 000E16B4  80 03 04 88 */	lwz r0, 0x488(r3)
/* 800E5D98 000E16B8  28 00 00 01 */	cmplwi r0, 1
/* 800E5D9C 000E16BC  40 82 00 38 */	bne lbl_800E5DD4
/* 800E5DA0 000E16C0  80 63 04 84 */	lwz r3, 0x484(r3)
/* 800E5DA4 000E16C4  38 80 00 04 */	li r4, 4
/* 800E5DA8 000E16C8  4B FF 58 F9 */	bl func_800DB6A0
/* 800E5DAC 000E16CC  80 8D 98 68 */	lwz r4, lbl_80320728-_SDA_BASE_(r13)
/* 800E5DB0 000E16D0  80 64 04 84 */	lwz r3, 0x484(r4)
/* 800E5DB4 000E16D4  A8 03 00 00 */	lha r0, 0(r3)
/* 800E5DB8 000E16D8  38 63 00 02 */	addi r3, r3, 2
/* 800E5DBC 000E16DC  B0 04 04 8C */	sth r0, 0x48c(r4)
/* 800E5DC0 000E16E0  90 64 04 84 */	stw r3, 0x484(r4)
/* 800E5DC4 000E16E4  80 8D 98 68 */	lwz r4, lbl_80320728-_SDA_BASE_(r13)
/* 800E5DC8 000E16E8  80 64 04 84 */	lwz r3, 0x484(r4)
/* 800E5DCC 000E16EC  A8 03 00 00 */	lha r0, 0(r3)
/* 800E5DD0 000E16F0  B0 04 04 8E */	sth r0, 0x48e(r4)
lbl_800E5DD4:
/* 800E5DD4 000E16F4  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5DD8 000E16F8  80 03 04 88 */	lwz r0, 0x488(r3)
/* 800E5DDC 000E16FC  28 00 00 01 */	cmplwi r0, 1
/* 800E5DE0 000E1700  41 80 00 F0 */	blt lbl_800E5ED0
/* 800E5DE4 000E1704  80 03 04 80 */	lwz r0, 0x480(r3)
/* 800E5DE8 000E1708  1C 00 02 40 */	mulli r0, r0, 0x240
/* 800E5DEC 000E170C  7F E3 02 14 */	add r31, r3, r0
/* 800E5DF0 000E1710  7F FE FB 78 */	mr r30, r31
/* 800E5DF4 000E1714  48 01 07 1D */	bl func_800F6510
/* 800E5DF8 000E1718  7C 7D 1B 78 */	mr r29, r3
/* 800E5DFC 000E171C  C0 42 F8 B8 */	lfs f2, lbl_80328898-_SDA2_BASE_(r2)
/* 800E5E00 000E1720  C8 22 F8 C0 */	lfd f1, lbl_803288A0-_SDA2_BASE_(r2)
/* 800E5E04 000E1724  7F A5 EB 78 */	mr r5, r29
/* 800E5E08 000E1728  3C 80 43 30 */	lis r4, 0x4330
/* 800E5E0C 000E172C  48 00 00 84 */	b lbl_800E5E90
lbl_800E5E10:
/* 800E5E10 000E1730  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5E14 000E1734  38 A5 FF FC */	addi r5, r5, -4
/* 800E5E18 000E1738  90 81 00 08 */	stw r4, 8(r1)
/* 800E5E1C 000E173C  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 800E5E20 000E1740  B0 1E 00 00 */	sth r0, 0(r30)
/* 800E5E24 000E1744  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5E28 000E1748  90 81 00 18 */	stw r4, 0x18(r1)
/* 800E5E2C 000E174C  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 800E5E30 000E1750  B0 1E 00 02 */	sth r0, 2(r30)
/* 800E5E34 000E1754  3B DE 00 04 */	addi r30, r30, 4
/* 800E5E38 000E1758  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5E3C 000E175C  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 800E5E40 000E1760  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E5E44 000E1764  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E5E48 000E1768  C8 01 00 08 */	lfd f0, 8(r1)
/* 800E5E4C 000E176C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E5E50 000E1770  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E5E54 000E1774  FC 00 00 1E */	fctiwz f0, f0
/* 800E5E58 000E1778  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800E5E5C 000E177C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E5E60 000E1780  B0 03 04 8C */	sth r0, 0x48c(r3)
/* 800E5E64 000E1784  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5E68 000E1788  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 800E5E6C 000E178C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E5E70 000E1790  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E5E74 000E1794  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800E5E78 000E1798  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E5E7C 000E179C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E5E80 000E17A0  FC 00 00 1E */	fctiwz f0, f0
/* 800E5E84 000E17A4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800E5E88 000E17A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5E8C 000E17AC  B0 03 04 8E */	sth r0, 0x48e(r3)
lbl_800E5E90:
/* 800E5E90 000E17B0  2C 05 00 00 */	cmpwi r5, 0
/* 800E5E94 000E17B4  40 82 FF 7C */	bne lbl_800E5E10
/* 800E5E98 000E17B8  7F E3 FB 78 */	mr r3, r31
/* 800E5E9C 000E17BC  7F A4 EB 78 */	mr r4, r29
/* 800E5EA0 000E17C0  4B FF 58 31 */	bl func_800DB6D0
/* 800E5EA4 000E17C4  7F E3 FB 78 */	mr r3, r31
/* 800E5EA8 000E17C8  7F A4 EB 78 */	mr r4, r29
/* 800E5EAC 000E17CC  48 01 05 95 */	bl func_800F6440
/* 800E5EB0 000E17D0  80 8D 98 68 */	lwz r4, lbl_80320728-_SDA_BASE_(r13)
/* 800E5EB4 000E17D4  80 64 04 80 */	lwz r3, 0x480(r4)
/* 800E5EB8 000E17D8  38 03 00 01 */	addi r0, r3, 1
/* 800E5EBC 000E17DC  90 04 04 80 */	stw r0, 0x480(r4)
/* 800E5EC0 000E17E0  80 6D 98 68 */	lwz r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E5EC4 000E17E4  80 03 04 80 */	lwz r0, 0x480(r3)
/* 800E5EC8 000E17E8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800E5ECC 000E17EC  90 03 04 80 */	stw r0, 0x480(r3)
lbl_800E5ED0:
/* 800E5ED0 000E17F0  80 8D 98 68 */	lwz r4, lbl_80320728-_SDA_BASE_(r13)
/* 800E5ED4 000E17F4  80 64 04 88 */	lwz r3, 0x488(r4)
/* 800E5ED8 000E17F8  38 03 00 01 */	addi r0, r3, 1
/* 800E5EDC 000E17FC  90 04 04 88 */	stw r0, 0x488(r4)
/* 800E5EE0 000E1800  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E5EE4 000E1804  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E5EE8 000E1808  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800E5EEC 000E180C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E5EF0 000E1810  7C 08 03 A6 */	mtlr r0
/* 800E5EF4 000E1814  38 21 00 40 */	addi r1, r1, 0x40
/* 800E5EF8 000E1818  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E5F00
func_800E5F00:
/* 800E5F00 000E1820  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 800E5F04 000E1824  7C 2C 0B 78 */	mr r12, r1
/* 800E5F08 000E1828  21 6B FF 00 */	subfic r11, r11, -256
/* 800E5F0C 000E182C  7C 21 59 6E */	stwux r1, r1, r11
/* 800E5F10 000E1830  7C 08 02 A6 */	mflr r0
/* 800E5F14 000E1834  3C 60 80 30 */	lis r3, lbl_802FF0F8@ha
/* 800E5F18 000E1838  38 A0 00 00 */	li r5, 0
/* 800E5F1C 000E183C  90 0C 00 04 */	stw r0, 4(r12)
/* 800E5F20 000E1840  38 63 F0 F8 */	addi r3, r3, lbl_802FF0F8@l
/* 800E5F24 000E1844  38 80 00 3F */	li r4, 0x3f
/* 800E5F28 000E1848  93 EC FF FC */	stw r31, -4(r12)
/* 800E5F2C 000E184C  93 CC FF F8 */	stw r30, -8(r12)
/* 800E5F30 000E1850  3B C0 00 00 */	li r30, 0
/* 800E5F34 000E1854  48 03 90 1D */	bl func_8011EF50
/* 800E5F38 000E1858  2C 03 00 00 */	cmpwi r3, 0
/* 800E5F3C 000E185C  7C 7F 1B 78 */	mr r31, r3
/* 800E5F40 000E1860  41 82 00 0C */	beq lbl_800E5F4C
/* 800E5F44 000E1864  2C 03 FF FA */	cmpwi r3, -6
/* 800E5F48 000E1868  40 82 00 8C */	bne lbl_800E5FD4
lbl_800E5F4C:
/* 800E5F4C 000E186C  3C 60 80 30 */	lis r3, lbl_802FF0F8@ha
/* 800E5F50 000E1870  38 81 00 40 */	addi r4, r1, 0x40
/* 800E5F54 000E1874  38 63 F0 F8 */	addi r3, r3, lbl_802FF0F8@l
/* 800E5F58 000E1878  38 A0 00 02 */	li r5, 2
/* 800E5F5C 000E187C  48 03 A5 05 */	bl func_80120460
/* 800E5F60 000E1880  2C 03 00 00 */	cmpwi r3, 0
/* 800E5F64 000E1884  7C 7F 1B 78 */	mr r31, r3
/* 800E5F68 000E1888  40 82 00 6C */	bne lbl_800E5FD4
/* 800E5F6C 000E188C  3B C0 00 01 */	li r30, 1
/* 800E5F70 000E1890  48 08 DF 81 */	bl func_80173EF0
/* 800E5F74 000E1894  2C 03 00 00 */	cmpwi r3, 0
/* 800E5F78 000E1898  7C 7F 1B 78 */	mr r31, r3
/* 800E5F7C 000E189C  40 82 00 58 */	bne lbl_800E5FD4
/* 800E5F80 000E18A0  38 61 00 20 */	addi r3, r1, 0x20
/* 800E5F84 000E18A4  38 80 00 00 */	li r4, 0
/* 800E5F88 000E18A8  38 A0 00 20 */	li r5, 0x20
/* 800E5F8C 000E18AC  4B F1 E7 89 */	bl func_80004714
/* 800E5F90 000E18B0  38 61 00 20 */	addi r3, r1, 0x20
/* 800E5F94 000E18B4  48 08 E4 0D */	bl func_801743A0
/* 800E5F98 000E18B8  2C 03 00 00 */	cmpwi r3, 0
/* 800E5F9C 000E18BC  7C 7F 1B 78 */	mr r31, r3
/* 800E5FA0 000E18C0  40 82 00 34 */	bne lbl_800E5FD4
/* 800E5FA4 000E18C4  38 61 00 40 */	addi r3, r1, 0x40
/* 800E5FA8 000E18C8  38 81 00 20 */	addi r4, r1, 0x20
/* 800E5FAC 000E18CC  38 A0 00 20 */	li r5, 0x20
/* 800E5FB0 000E18D0  48 03 93 A1 */	bl func_8011F350
/* 800E5FB4 000E18D4  2C 03 00 00 */	cmpwi r3, 0
/* 800E5FB8 000E18D8  7C 7F 1B 78 */	mr r31, r3
/* 800E5FBC 000E18DC  41 80 00 18 */	blt lbl_800E5FD4
/* 800E5FC0 000E18E0  2C 03 00 20 */	cmpwi r3, 0x20
/* 800E5FC4 000E18E4  41 82 00 0C */	beq lbl_800E5FD0
/* 800E5FC8 000E18E8  3B E0 FF F8 */	li r31, -8
/* 800E5FCC 000E18EC  48 00 00 08 */	b lbl_800E5FD4
lbl_800E5FD0:
/* 800E5FD0 000E18F0  3B E0 00 00 */	li r31, 0
lbl_800E5FD4:
/* 800E5FD4 000E18F4  2C 1E 00 00 */	cmpwi r30, 0
/* 800E5FD8 000E18F8  41 82 00 0C */	beq lbl_800E5FE4
/* 800E5FDC 000E18FC  38 61 00 40 */	addi r3, r1, 0x40
/* 800E5FE0 000E1900  48 03 A6 91 */	bl func_80120670
lbl_800E5FE4:
/* 800E5FE4 000E1904  2C 1F 00 00 */	cmpwi r31, 0
/* 800E5FE8 000E1908  40 82 00 0C */	bne lbl_800E5FF4
/* 800E5FEC 000E190C  38 60 00 01 */	li r3, 1
/* 800E5FF0 000E1910  48 00 00 08 */	b lbl_800E5FF8
lbl_800E5FF4:
/* 800E5FF4 000E1914  38 60 00 00 */	li r3, 0
lbl_800E5FF8:
/* 800E5FF8 000E1918  81 41 00 00 */	lwz r10, 0(r1)
/* 800E5FFC 000E191C  80 0A 00 04 */	lwz r0, 4(r10)
/* 800E6000 000E1920  83 EA FF FC */	lwz r31, -4(r10)
/* 800E6004 000E1924  83 CA FF F8 */	lwz r30, -8(r10)
/* 800E6008 000E1928  7C 08 03 A6 */	mtlr r0
/* 800E600C 000E192C  7D 41 53 78 */	mr r1, r10
/* 800E6010 000E1930  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6020
func_800E6020:
/* 800E6020 000E1940  80 0D 98 6C */	lwz r0, lbl_8032072C-_SDA_BASE_(r13)
/* 800E6024 000E1944  2C 00 00 00 */	cmpwi r0, 0
/* 800E6028 000E1948  41 82 00 08 */	beq lbl_800E6030
/* 800E602C 000E194C  4B FF FE D4 */	b func_800E5F00
lbl_800E6030:
/* 800E6030 000E1950  38 60 00 00 */	li r3, 0
/* 800E6034 000E1954  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6040
func_800E6040:
/* 800E6040 000E1960  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 800E6044 000E1964  7C 2C 0B 78 */	mr r12, r1
/* 800E6048 000E1968  21 6B FB 20 */	subfic r11, r11, -1248
/* 800E604C 000E196C  7C 21 59 6E */	stwux r1, r1, r11
/* 800E6050 000E1970  7C 08 02 A6 */	mflr r0
/* 800E6054 000E1974  38 80 00 00 */	li r4, 0
/* 800E6058 000E1978  38 A0 04 94 */	li r5, 0x494
/* 800E605C 000E197C  90 0C 00 04 */	stw r0, 4(r12)
/* 800E6060 000E1980  38 61 00 20 */	addi r3, r1, 0x20
/* 800E6064 000E1984  93 EC FF FC */	stw r31, -4(r12)
/* 800E6068 000E1988  93 CC FF F8 */	stw r30, -8(r12)
/* 800E606C 000E198C  93 AC FF F4 */	stw r29, -0xc(r12)
/* 800E6070 000E1990  90 6D 98 68 */	stw r3, lbl_80320728-_SDA_BASE_(r13)
/* 800E6074 000E1994  4B F1 E6 A1 */	bl func_80004714
/* 800E6078 000E1998  3C 60 80 0E */	lis r3, func_800E5D40@ha
/* 800E607C 000E199C  38 63 5D 40 */	addi r3, r3, func_800E5D40@l
/* 800E6080 000E19A0  48 01 03 71 */	bl func_800F63F0
/* 800E6084 000E19A4  80 AD 98 68 */	lwz r5, lbl_80320728-_SDA_BASE_(r13)
/* 800E6088 000E19A8  3C 80 CC CD */	lis r4, 0xCCCCCCCD@ha
/* 800E608C 000E19AC  3B E4 CC CD */	addi r31, r4, 0xCCCCCCCD@l
/* 800E6090 000E19B0  3B C0 00 00 */	li r30, 0
/* 800E6094 000E19B4  90 65 04 90 */	stw r3, 0x490(r5)
lbl_800E6098:
/* 800E6098 000E19B8  7C 1F F0 16 */	mulhwu r0, r31, r30
/* 800E609C 000E19BC  54 03 F0 BE */	srwi r3, r0, 2
/* 800E60A0 000E19C0  3B A3 00 01 */	addi r29, r3, 1
/* 800E60A4 000E19C4  28 1D 00 07 */	cmplwi r29, 7
/* 800E60A8 000E19C8  40 81 00 08 */	ble lbl_800E60B0
/* 800E60AC 000E19CC  3B A0 00 07 */	li r29, 7
lbl_800E60B0:
/* 800E60B0 000E19D0  48 00 B3 51 */	bl func_800F1400
/* 800E60B4 000E19D4  7F A4 EB 78 */	mr r4, r29
/* 800E60B8 000E19D8  7F A5 EB 78 */	mr r5, r29
/* 800E60BC 000E19DC  38 60 00 01 */	li r3, 1
/* 800E60C0 000E19E0  4B FF E8 61 */	bl func_800E4920
/* 800E60C4 000E19E4  3B DE 00 01 */	addi r30, r30, 1
/* 800E60C8 000E19E8  28 1E 00 14 */	cmplwi r30, 0x14
/* 800E60CC 000E19EC  41 80 FF CC */	blt lbl_800E6098
/* 800E60D0 000E19F0  38 60 00 00 */	li r3, 0
/* 800E60D4 000E19F4  48 01 03 1D */	bl func_800F63F0
/* 800E60D8 000E19F8  38 60 00 01 */	li r3, 1
/* 800E60DC 000E19FC  48 00 C4 75 */	bl func_800F2550
/* 800E60E0 000E1A00  48 00 C2 E1 */	bl func_800F23C0
/* 800E60E4 000E1A04  4B FF 9D 3D */	bl func_800DFE20
/* 800E60E8 000E1A08  80 0D 98 6C */	lwz r0, lbl_8032072C-_SDA_BASE_(r13)
/* 800E60EC 000E1A0C  7C 7F 1B 78 */	mr r31, r3
/* 800E60F0 000E1A10  2C 00 00 00 */	cmpwi r0, 0
/* 800E60F4 000E1A14  41 82 00 08 */	beq lbl_800E60FC
/* 800E60F8 000E1A18  4B FF FE 09 */	bl func_800E5F00
lbl_800E60FC:
/* 800E60FC 000E1A1C  7F E3 FB 78 */	mr r3, r31
/* 800E6100 000E1A20  4B FF 9D 61 */	bl func_800DFE60
/* 800E6104 000E1A24  4B FF B9 BD */	bl func_800E1AC0
/* 800E6108 000E1A28  38 60 00 00 */	li r3, 0
/* 800E610C 000E1A2C  81 41 00 00 */	lwz r10, 0(r1)
/* 800E6110 000E1A30  83 EA FF FC */	lwz r31, -4(r10)
/* 800E6114 000E1A34  83 CA FF F8 */	lwz r30, -8(r10)
/* 800E6118 000E1A38  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 800E611C 000E1A3C  80 0A 00 04 */	lwz r0, 4(r10)
/* 800E6120 000E1A40  7C 08 03 A6 */	mtlr r0
/* 800E6124 000E1A44  7D 41 53 78 */	mr r1, r10
/* 800E6128 000E1A48  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6130
func_800E6130:
/* 800E6130 000E1A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6134 000E1A54  7C 08 02 A6 */	mflr r0
/* 800E6138 000E1A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E613C 000E1A5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6140 000E1A60  81 8D 98 70 */	lwz r12, lbl_80320730-_SDA_BASE_(r13)
/* 800E6144 000E1A64  2C 0C 00 00 */	cmpwi r12, 0
/* 800E6148 000E1A68  41 82 00 10 */	beq lbl_800E6158
/* 800E614C 000E1A6C  7D 89 03 A6 */	mtctr r12
/* 800E6150 000E1A70  4E 80 04 21 */	bctrl 
/* 800E6154 000E1A74  48 00 00 68 */	b lbl_800E61BC
lbl_800E6158:
/* 800E6158 000E1A78  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 800E615C 000E1A7C  83 E3 00 DC */	lwz r31, 0x800000DC@l(r3)
/* 800E6160 000E1A80  48 00 00 10 */	b lbl_800E6170
lbl_800E6164:
/* 800E6164 000E1A84  7F E3 FB 78 */	mr r3, r31
/* 800E6168 000E1A88  4B FF D8 49 */	bl func_800E39B0
/* 800E616C 000E1A8C  83 FF 02 FC */	lwz r31, 0x2fc(r31)
lbl_800E6170:
/* 800E6170 000E1A90  2C 1F 00 00 */	cmpwi r31, 0
/* 800E6174 000E1A94  40 82 FF F0 */	bne lbl_800E6164
/* 800E6178 000E1A98  3C 60 80 00 */	lis r3, 0x80003128@ha
/* 800E617C 000E1A9C  3C 80 80 0E */	lis r4, func_800E6040@ha
/* 800E6180 000E1AA0  80 63 31 28 */	lwz r3, 0x80003128@l(r3)
/* 800E6184 000E1AA4  38 84 60 40 */	addi r4, r4, func_800E6040@l
/* 800E6188 000E1AA8  38 A0 00 00 */	li r5, 0
/* 800E618C 000E1AAC  38 E0 10 00 */	li r7, 0x1000
/* 800E6190 000E1AB0  3B E3 EC E0 */	addi r31, r3, -4896
/* 800E6194 000E1AB4  39 00 00 00 */	li r8, 0
/* 800E6198 000E1AB8  39 20 00 00 */	li r9, 0
/* 800E619C 000E1ABC  7F E3 FB 78 */	mr r3, r31
/* 800E61A0 000E1AC0  38 DF 13 20 */	addi r6, r31, 0x1320
/* 800E61A4 000E1AC4  4B FF CE DD */	bl func_800E3080
/* 800E61A8 000E1AC8  2C 03 00 00 */	cmpwi r3, 0
/* 800E61AC 000E1ACC  40 82 00 08 */	bne lbl_800E61B4
/* 800E61B0 000E1AD0  4B FF BA 41 */	bl func_800E1BF0
lbl_800E61B4:
/* 800E61B4 000E1AD4  7F E3 FB 78 */	mr r3, r31
/* 800E61B8 000E1AD8  4B FF D5 59 */	bl func_800E3710
lbl_800E61BC:
/* 800E61BC 000E1ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E61C0 000E1AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E61C4 000E1AE4  7C 08 03 A6 */	mtlr r0
/* 800E61C8 000E1AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E61CC 000E1AEC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E61D0
func_800E61D0:
/* 800E61D0 000E1AF0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 800E61D4 000E1AF4  7C 2C 0B 78 */	mr r12, r1
/* 800E61D8 000E1AF8  21 6B FE 80 */	subfic r11, r11, -384
/* 800E61DC 000E1AFC  7C 21 59 6E */	stwux r1, r1, r11
/* 800E61E0 000E1B00  7C 08 02 A6 */	mflr r0
/* 800E61E4 000E1B04  90 0C 00 04 */	stw r0, 4(r12)
/* 800E61E8 000E1B08  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 800E61EC 000E1B0C  38 00 00 00 */	li r0, 0
/* 800E61F0 000E1B10  93 EC FF FC */	stw r31, -4(r12)
/* 800E61F4 000E1B14  7C BF 2B 78 */	mr r31, r5
/* 800E61F8 000E1B18  93 CC FF F8 */	stw r30, -8(r12)
/* 800E61FC 000E1B1C  3B C0 00 00 */	li r30, 0
/* 800E6200 000E1B20  93 AC FF F4 */	stw r29, -0xc(r12)
/* 800E6204 000E1B24  7C 9D 23 78 */	mr r29, r4
/* 800E6208 000E1B28  93 8C FF F0 */	stw r28, -0x10(r12)
/* 800E620C 000E1B2C  7C 7C 1B 78 */	mr r28, r3
/* 800E6210 000E1B30  90 01 00 20 */	stw r0, 0x20(r1)
/* 800E6214 000E1B34  41 82 00 18 */	beq lbl_800E622C
/* 800E6218 000E1B38  7F 84 E3 78 */	mr r4, r28
/* 800E621C 000E1B3C  38 61 00 80 */	addi r3, r1, 0x80
/* 800E6220 000E1B40  38 A0 00 D8 */	li r5, 0xd8
/* 800E6224 000E1B44  4B F1 E1 A1 */	bl func_800043C4
/* 800E6228 000E1B48  3B 81 00 80 */	addi r28, r1, 0x80
lbl_800E622C:
/* 800E622C 000E1B4C  80 7C 00 04 */	lwz r3, 4(r28)
/* 800E6230 000E1B50  38 C1 00 20 */	addi r6, r1, 0x20
/* 800E6234 000E1B54  80 9C 00 08 */	lwz r4, 8(r28)
/* 800E6238 000E1B58  38 A0 00 00 */	li r5, 0
/* 800E623C 000E1B5C  48 08 E2 05 */	bl func_80174440
/* 800E6240 000E1B60  2C 03 00 00 */	cmpwi r3, 0
/* 800E6244 000E1B64  41 81 00 30 */	bgt lbl_800E6274
/* 800E6248 000E1B68  41 82 00 08 */	beq lbl_800E6250
/* 800E624C 000E1B6C  48 00 00 28 */	b lbl_800E6274
lbl_800E6250:
/* 800E6250 000E1B70  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800E6254 000E1B74  2C 00 00 00 */	cmpwi r0, 0
/* 800E6258 000E1B78  41 82 00 1C */	beq lbl_800E6274
/* 800E625C 000E1B7C  80 7C 00 04 */	lwz r3, 4(r28)
/* 800E6260 000E1B80  38 A1 00 40 */	addi r5, r1, 0x40
/* 800E6264 000E1B84  80 9C 00 08 */	lwz r4, 8(r28)
/* 800E6268 000E1B88  38 C1 00 20 */	addi r6, r1, 0x20
/* 800E626C 000E1B8C  48 08 E1 D5 */	bl func_80174440
/* 800E6270 000E1B90  2C 03 00 00 */	cmpwi r3, 0
lbl_800E6274:
/* 800E6274 000E1B94  2C 03 00 00 */	cmpwi r3, 0
/* 800E6278 000E1B98  40 82 01 00 */	bne lbl_800E6378
/* 800E627C 000E1B9C  38 00 00 08 */	li r0, 8
/* 800E6280 000E1BA0  38 A0 00 00 */	li r5, 0
/* 800E6284 000E1BA4  38 80 00 00 */	li r4, 0
/* 800E6288 000E1BA8  7C 09 03 A6 */	mtctr r0
/* 800E628C 000E1BAC  60 00 00 00 */	nop 
lbl_800E6290:
/* 800E6290 000E1BB0  7C DC 22 14 */	add r6, r28, r4
/* 800E6294 000E1BB4  80 06 00 98 */	lwz r0, 0x98(r6)
/* 800E6298 000E1BB8  28 00 00 01 */	cmplwi r0, 1
/* 800E629C 000E1BBC  40 82 00 54 */	bne lbl_800E62F0
/* 800E62A0 000E1BC0  38 00 00 01 */	li r0, 1
/* 800E62A4 000E1BC4  90 1D 00 00 */	stw r0, 0(r29)
/* 800E62A8 000E1BC8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800E62AC 000E1BCC  2C 00 00 00 */	cmpwi r0, 0
/* 800E62B0 000E1BD0  40 82 00 10 */	bne lbl_800E62C0
/* 800E62B4 000E1BD4  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 800E62B8 000E1BD8  90 1F 00 00 */	stw r0, 0(r31)
/* 800E62BC 000E1BDC  48 00 00 BC */	b lbl_800E6378
lbl_800E62C0:
/* 800E62C0 000E1BE0  38 A1 00 40 */	addi r5, r1, 0x40
/* 800E62C4 000E1BE4  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 800E62C8 000E1BE8  7C 85 22 14 */	add r4, r5, r4
/* 800E62CC 000E1BEC  80 84 00 04 */	lwz r4, 4(r4)
/* 800E62D0 000E1BF0  7C 04 00 40 */	cmplw r4, r0
/* 800E62D4 000E1BF4  41 80 00 10 */	blt lbl_800E62E4
/* 800E62D8 000E1BF8  38 00 00 00 */	li r0, 0
/* 800E62DC 000E1BFC  90 1F 00 00 */	stw r0, 0(r31)
/* 800E62E0 000E1C00  48 00 00 98 */	b lbl_800E6378
lbl_800E62E4:
/* 800E62E4 000E1C04  7C 04 00 50 */	subf r0, r4, r0
/* 800E62E8 000E1C08  90 1F 00 00 */	stw r0, 0(r31)
/* 800E62EC 000E1C0C  48 00 00 8C */	b lbl_800E6378
lbl_800E62F0:
/* 800E62F0 000E1C10  2C 00 00 00 */	cmpwi r0, 0
/* 800E62F4 000E1C14  41 82 00 08 */	beq lbl_800E62FC
/* 800E62F8 000E1C18  3B C5 00 01 */	addi r30, r5, 1
lbl_800E62FC:
/* 800E62FC 000E1C1C  38 A5 00 01 */	addi r5, r5, 1
/* 800E6300 000E1C20  38 84 00 08 */	addi r4, r4, 8
/* 800E6304 000E1C24  42 00 FF 8C */	bdnz lbl_800E6290
/* 800E6308 000E1C28  2C 1E 00 00 */	cmpwi r30, 0
/* 800E630C 000E1C2C  40 82 00 18 */	bne lbl_800E6324
/* 800E6310 000E1C30  38 00 00 00 */	li r0, 0
/* 800E6314 000E1C34  90 1D 00 00 */	stw r0, 0(r29)
/* 800E6318 000E1C38  38 00 FF FF */	li r0, -1
/* 800E631C 000E1C3C  90 1F 00 00 */	stw r0, 0(r31)
/* 800E6320 000E1C40  48 00 00 58 */	b lbl_800E6378
lbl_800E6324:
/* 800E6324 000E1C44  3B DE FF FF */	addi r30, r30, -1
/* 800E6328 000E1C48  57 C6 18 38 */	slwi r6, r30, 3
/* 800E632C 000E1C4C  7C 9C 32 14 */	add r4, r28, r6
/* 800E6330 000E1C50  80 04 00 98 */	lwz r0, 0x98(r4)
/* 800E6334 000E1C54  28 00 00 04 */	cmplwi r0, 4
/* 800E6338 000E1C58  40 82 00 38 */	bne lbl_800E6370
/* 800E633C 000E1C5C  38 00 00 04 */	li r0, 4
/* 800E6340 000E1C60  90 1D 00 00 */	stw r0, 0(r29)
/* 800E6344 000E1C64  80 A4 00 9C */	lwz r5, 0x9c(r4)
/* 800E6348 000E1C68  90 BF 00 00 */	stw r5, 0(r31)
/* 800E634C 000E1C6C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800E6350 000E1C70  2C 00 00 00 */	cmpwi r0, 0
/* 800E6354 000E1C74  41 82 00 24 */	beq lbl_800E6378
/* 800E6358 000E1C78  38 01 00 40 */	addi r0, r1, 0x40
/* 800E635C 000E1C7C  7C 80 32 14 */	add r4, r0, r6
/* 800E6360 000E1C80  80 04 00 04 */	lwz r0, 4(r4)
/* 800E6364 000E1C84  7C 00 28 50 */	subf r0, r0, r5
/* 800E6368 000E1C88  90 1F 00 00 */	stw r0, 0(r31)
/* 800E636C 000E1C8C  48 00 00 0C */	b lbl_800E6378
lbl_800E6370:
/* 800E6370 000E1C90  38 00 00 09 */	li r0, 9
/* 800E6374 000E1C94  90 1D 00 00 */	stw r0, 0(r29)
lbl_800E6378:
/* 800E6378 000E1C98  81 41 00 00 */	lwz r10, 0(r1)
/* 800E637C 000E1C9C  80 0A 00 04 */	lwz r0, 4(r10)
/* 800E6380 000E1CA0  83 EA FF FC */	lwz r31, -4(r10)
/* 800E6384 000E1CA4  83 CA FF F8 */	lwz r30, -8(r10)
/* 800E6388 000E1CA8  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 800E638C 000E1CAC  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 800E6390 000E1CB0  7C 08 03 A6 */	mtlr r0
/* 800E6394 000E1CB4  7D 41 53 78 */	mr r1, r10
/* 800E6398 000E1CB8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E63A0
func_800E63A0:
/* 800E63A0 000E1CC0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 800E63A4 000E1CC4  7C 2C 0B 78 */	mr r12, r1
/* 800E63A8 000E1CC8  21 6B FE C0 */	subfic r11, r11, -320
/* 800E63AC 000E1CCC  7C 21 59 6E */	stwux r1, r1, r11
/* 800E63B0 000E1CD0  7C 08 02 A6 */	mflr r0
/* 800E63B4 000E1CD4  38 60 00 00 */	li r3, 0
/* 800E63B8 000E1CD8  90 0C 00 04 */	stw r0, 4(r12)
/* 800E63BC 000E1CDC  38 00 00 01 */	li r0, 1
/* 800E63C0 000E1CE0  93 EC FF FC */	stw r31, -4(r12)
/* 800E63C4 000E1CE4  90 6D 98 7C */	stw r3, lbl_8032073C-_SDA_BASE_(r13)
/* 800E63C8 000E1CE8  90 6D 98 78 */	stw r3, lbl_80320738-_SDA_BASE_(r13)
/* 800E63CC 000E1CEC  90 6D 98 70 */	stw r3, lbl_80320730-_SDA_BASE_(r13)
/* 800E63D0 000E1CF0  90 0D 98 6C */	stw r0, lbl_8032072C-_SDA_BASE_(r13)
/* 800E63D4 000E1CF4  48 08 DB 1D */	bl func_80173EF0
/* 800E63D8 000E1CF8  2C 03 00 00 */	cmpwi r3, 0
/* 800E63DC 000E1CFC  41 82 00 08 */	beq lbl_800E63E4
/* 800E63E0 000E1D00  48 00 00 FC */	b lbl_800E64DC
lbl_800E63E4:
/* 800E63E4 000E1D04  38 81 00 40 */	addi r4, r1, 0x40
/* 800E63E8 000E1D08  38 60 00 00 */	li r3, 0
/* 800E63EC 000E1D0C  48 08 DD 75 */	bl func_80174160
/* 800E63F0 000E1D10  2C 03 FC 07 */	cmpwi r3, -1017
/* 800E63F4 000E1D14  41 82 00 20 */	beq lbl_800E6414
/* 800E63F8 000E1D18  2C 03 00 00 */	cmpwi r3, 0
/* 800E63FC 000E1D1C  41 82 00 08 */	beq lbl_800E6404
/* 800E6400 000E1D20  48 00 00 14 */	b lbl_800E6414
lbl_800E6404:
/* 800E6404 000E1D24  38 61 00 40 */	addi r3, r1, 0x40
/* 800E6408 000E1D28  38 81 00 20 */	addi r4, r1, 0x20
/* 800E640C 000E1D2C  38 A1 00 24 */	addi r5, r1, 0x24
/* 800E6410 000E1D30  4B FF FD C1 */	bl func_800E61D0
lbl_800E6414:
/* 800E6414 000E1D34  2C 03 00 00 */	cmpwi r3, 0
/* 800E6418 000E1D38  41 82 00 10 */	beq lbl_800E6428
/* 800E641C 000E1D3C  2C 03 FC 07 */	cmpwi r3, -1017
/* 800E6420 000E1D40  41 82 00 BC */	beq lbl_800E64DC
/* 800E6424 000E1D44  48 00 00 B8 */	b lbl_800E64DC
lbl_800E6428:
/* 800E6428 000E1D48  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800E642C 000E1D4C  2C 00 00 00 */	cmpwi r0, 0
/* 800E6430 000E1D50  41 82 00 AC */	beq lbl_800E64DC
/* 800E6434 000E1D54  2C 00 00 01 */	cmpwi r0, 1
/* 800E6438 000E1D58  40 82 00 A4 */	bne lbl_800E64DC
/* 800E643C 000E1D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6440 000E1D60  2C 00 00 00 */	cmpwi r0, 0
/* 800E6444 000E1D64  40 82 00 1C */	bne lbl_800E6460
/* 800E6448 000E1D68  3C 60 80 30 */	lis r3, lbl_802FF10C@ha
/* 800E644C 000E1D6C  38 80 02 E1 */	li r4, 0x2e1
/* 800E6450 000E1D70  38 63 F1 0C */	addi r3, r3, lbl_802FF10C@l
/* 800E6454 000E1D74  38 AD 8C 30 */	addi r5, r13, lbl_8031FAF0-_SDA_BASE_
/* 800E6458 000E1D78  4C C6 31 82 */	crclr 6
/* 800E645C 000E1D7C  4B FF 60 95 */	bl func_800DC4F0
lbl_800E6460:
/* 800E6460 000E1D80  3F E0 80 35 */	lis r31, lbl_8034DB80@ha
/* 800E6464 000E1D84  38 7F DB 80 */	addi r3, r31, lbl_8034DB80@l
/* 800E6468 000E1D88  4B FF 40 C9 */	bl func_800DA530
/* 800E646C 000E1D8C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800E6470 000E1D90  3C E0 80 0E */	lis r7, func_800E6130@ha
/* 800E6474 000E1D94  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 800E6478 000E1D98  38 80 00 14 */	li r4, 0x14
/* 800E647C 000E1D9C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 800E6480 000E1DA0  39 20 00 00 */	li r9, 0
/* 800E6484 000E1DA4  54 06 F0 BE */	srwi r6, r0, 2
/* 800E6488 000E1DA8  38 7F DB 80 */	addi r3, r31, -9344
/* 800E648C 000E1DAC  7D 05 20 14 */	addc r8, r5, r4
/* 800E6490 000E1DB0  38 E7 61 30 */	addi r7, r7, func_800E6130@l
/* 800E6494 000E1DB4  7C 09 49 14 */	adde r0, r9, r9
/* 800E6498 000E1DB8  7C A0 31 D6 */	mullw r5, r0, r6
/* 800E649C 000E1DBC  7C 88 30 16 */	mulhwu r4, r8, r6
/* 800E64A0 000E1DC0  7C 08 49 D6 */	mullw r0, r8, r9
/* 800E64A4 000E1DC4  7C 84 2A 14 */	add r4, r4, r5
/* 800E64A8 000E1DC8  7C C8 31 D6 */	mullw r6, r8, r6
/* 800E64AC 000E1DCC  7C A4 02 14 */	add r5, r4, r0
/* 800E64B0 000E1DD0  4B FF 42 E1 */	bl func_800DA790
/* 800E64B4 000E1DD4  38 9F DB 80 */	addi r4, r31, -9344
/* 800E64B8 000E1DD8  3C 60 80 30 */	lis r3, lbl_802FF11C@ha
/* 800E64BC 000E1DDC  80 04 00 08 */	lwz r0, 8(r4)
/* 800E64C0 000E1DE0  38 63 F1 1C */	addi r3, r3, lbl_802FF11C@l
/* 800E64C4 000E1DE4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800E64C8 000E1DE8  90 8D 98 7C */	stw r4, lbl_8032073C-_SDA_BASE_(r13)
/* 800E64CC 000E1DEC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 800E64D0 000E1DF0  90 0D 98 78 */	stw r0, lbl_80320738-_SDA_BASE_(r13)
/* 800E64D4 000E1DF4  4C C6 31 82 */	crclr 6
/* 800E64D8 000E1DF8  4B FF 5F 89 */	bl func_800DC460
lbl_800E64DC:
/* 800E64DC 000E1DFC  48 08 DA 75 */	bl func_80173F50
/* 800E64E0 000E1E00  81 41 00 00 */	lwz r10, 0(r1)
/* 800E64E4 000E1E04  80 0A 00 04 */	lwz r0, 4(r10)
/* 800E64E8 000E1E08  83 EA FF FC */	lwz r31, -4(r10)
/* 800E64EC 000E1E0C  7C 08 03 A6 */	mtlr r0
/* 800E64F0 000E1E10  7D 41 53 78 */	mr r1, r10
/* 800E64F4 000E1E14  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802FF0F8

lbl_802FF0F8:

	# ROM: 0x2FB1F8
	.asciz "/shared2/expired"
	.balign 4


.global lbl_802FF10C

lbl_802FF10C:

	# ROM: 0x2FB20C
	.asciz "OSPlayTime.c"
	.balign 4


.global lbl_802FF11C

lbl_802FF11C:

	# ROM: 0x2FB21C
	.asciz "PlayTime: %d seconds left\n"
	.balign 4


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FAF0

lbl_8031FAF0:

	# ROM: 0x31BBF0
	.asciz "Expired"
	.balign 4


.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328898

lbl_80328898:

	# ROM: 0x323AF8
	.4byte 0x3F7EB852
	.4byte 0


.global lbl_803288A0

lbl_803288A0:

	# ROM: 0x323B00
	.4byte 0x43300000
	.4byte 0x80000000


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320728
lbl_80320728:
	.skip 0x4
.global lbl_8032072C
lbl_8032072C:
	.skip 0x4
.global lbl_80320730
lbl_80320730:
	.skip 0x8
.global lbl_80320738
lbl_80320738:
	.skip 0x4
.global lbl_8032073C
lbl_8032073C:
	.skip 0x4


.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_8034DB80
lbl_8034DB80:
	.skip 0x40

.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_800E44E0
func_800E44E0:
/* 800E44E0 000DFE00  80 6D 98 08 */	lwz r3, lbl_803206C8-_SDA_BASE_(r13)
/* 800E44E4 000DFE04  4E 80 00 20 */	blr 
/* 800E44E8 000DFE08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E44EC 000DFE0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E44F0
func_800E44F0:
/* 800E44F0 000DFE10  80 6D 8C 18 */	lwz r3, lbl_8031FAD8-_SDA_BASE_(r13)
/* 800E44F4 000DFE14  4E 80 00 20 */	blr 
/* 800E44F8 000DFE18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E44FC 000DFE1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_800E4500
func_800E4500:
/* 800E4500 000DFE20  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 800E4504 000DFE24  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 800E4508 000DFE28  90 0D 8C 18 */	stw r0, lbl_8031FAD8-_SDA_BASE_(r13)
/* 800E450C 000DFE2C  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 800E4510 000DFE30  90 0D 98 08 */	stw r0, lbl_803206C8-_SDA_BASE_(r13)
/* 800E4514 000DFE34  4E 80 00 20 */	blr 
/* 800E4518 000DFE38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E451C 000DFE3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FAD8

lbl_8031FAD8:

	# ROM: 0x31BBD8
	.4byte 0xFFFFFFFF
	.4byte 0


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_803206C8
lbl_803206C8:
	.skip 0x8

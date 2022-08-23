.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_800E6FF0
func_800E6FF0:
/* 800E6FF0 000E2910  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 800E6FF4 000E2914  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 800E6FF8 000E2918  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 800E6FFC 000E291C  10 82 00 32 */	ps_mul f4, f2, f0
/* 800E7000 000E2920  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 800E7004 000E2924  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 800E7008 000E2928  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 800E700C 000E292C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 800E7010 000E2930  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 800E7014 000E2934  11 48 00 32 */	ps_mul f10, f8, f0
/* 800E7018 000E2938  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 800E701C 000E293C  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 800E7020 000E2940  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 800E7024 000E2944  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 800E7028 000E2948  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 800E702C 000E294C  10 82 00 32 */	ps_mul f4, f2, f0
/* 800E7030 000E2950  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 800E7034 000E2954  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 800E7038 000E2958  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 800E703C 000E295C  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 800E7040 000E2960  4E 80 00 20 */	blr 
/* 800E7044 000E2964  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E7048 000E2968  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800E704C 000E296C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

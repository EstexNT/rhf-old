.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010FFC0
func_8010FFC0:
/* 8010FFC0 0010B8E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010FFC4 0010B8E4  D8 21 00 08 */	stfd f1, 8(r1)
/* 8010FFC8 0010B8E8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8010FFCC 0010B8EC  80 61 00 08 */	lwz r3, 8(r1)
/* 8010FFD0 0010B8F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8010FFD4 0010B8F4  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 8010FFD8 0010B8F8  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 8010FFDC 0010B8FC  90 01 00 08 */	stw r0, 8(r1)
/* 8010FFE0 0010B900  C8 21 00 08 */	lfd f1, 8(r1)
/* 8010FFE4 0010B904  38 21 00 20 */	addi r1, r1, 0x20
/* 8010FFE8 0010B908  4E 80 00 20 */	blr 

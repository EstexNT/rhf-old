.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80125DB0
func_80125DB0:
/* 80125DB0 001216D0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80125DB4 001216D4  54 A4 42 1E */	rlwinm r4, r5, 8, 8, 0xf
/* 80125DB8 001216D8  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 80125DBC 001216DC  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 80125DC0 001216E0  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 80125DC4 001216E4  7C 80 03 78 */	or r0, r4, r0
/* 80125DC8 001216E8  54 00 C2 3F */	rlwinm. r0, r0, 0x18, 8, 0x1f
/* 80125DCC 001216EC  40 82 00 1C */	bne lbl_80125DE8
/* 80125DD0 001216F0  80 83 00 04 */	lwz r4, 4(r3)
/* 80125DD4 001216F4  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 80125DD8 001216F8  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 80125DDC 001216FC  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 80125DE0 00121700  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 80125DE4 00121704  7C 60 03 78 */	or r0, r3, r0
lbl_80125DE8:
/* 80125DE8 00121708  7C 03 03 78 */	mr r3, r0
/* 80125DEC 0012170C  4E 80 00 20 */	blr 

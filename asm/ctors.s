.include "macros.inc"

.section .ctors, "wa"  # 0x801F74E0 - 0x801F7580
.global lbl_801F74E0
lbl_801F74E0:
	.incbin "baserom.dol", 0x1F35E0, 0xA0

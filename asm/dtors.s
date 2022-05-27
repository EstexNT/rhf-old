.include "macros.inc"

.section .dtors, "wa"  # 0x801F7580 - 0x801F75A0
.global lbl_801F7580
lbl_801F7580:
	.incbin "baserom.dol", 0x1F3680, 0x20

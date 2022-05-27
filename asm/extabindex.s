.include "macros.inc"

.section extabindex_, "wa"  # 0x80006A60 - 0x80006F00
	.incbin "baserom.dol", 0x1F3140, 0x480
.global lbl_80006EE0
lbl_80006EE0:
	.incbin "baserom.dol", 0x1F35C0, 0x20

.include "macros.inc"

.section extab_, "wa"  # 0x80006720 - 0x80006A60
	.incbin "baserom.dol", 0x1F2E00, 0x340

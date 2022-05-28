.include "macros.inc"

.section .dtors, "wa"  # 0x801F7580 - 0x801F75A0

.global lbl_801F7580

lbl_801F7580:

	# ROM: 0x1F3680
	.4byte 0x801036FC  ;# ptr
	.4byte 0x8010479C  ;# ptr
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


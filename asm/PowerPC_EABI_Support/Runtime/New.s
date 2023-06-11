.include "macros.inc"
# is this the correct file?

.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8
.global lbl_8031FC28
lbl_8031FC28:
	.4byte lbl_802DDE68
	.4byte 0



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DDE68
lbl_802DDE68:
	.asciz "std::exception"
	.balign 4

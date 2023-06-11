.include "macros.inc"

.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DE450
lbl_802DE450:
	.asciz "%a %b %e %T %Y"
	.balign 4

.global lbl_802DE460
lbl_802DE460:
	.asciz "%I:%M:%S %p"
	.balign 4

.global lbl_802DE46C
lbl_802DE46C:
	.asciz "%m/%d/%y"
	.balign 4

.global lbl_802DE478
lbl_802DE478:
	.asciz "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.balign 4

.global lbl_802DE4D0
lbl_802DE4D0:
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.balign 4



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80305AC0

lbl_80305AC0:

	# ROM: 0x301BC0
	.4byte lbl_80328A50
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte lbl_80328A54
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00

.global lbl_80305AF8
lbl_80305AF8:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_802DE050
	.4byte lbl_802DE350
	.4byte lbl_802DE250
	.4byte lbl_802DE580
	.4byte lbl_802DE980
	.4byte lbl_802DE780
	.4byte func_8010769C
	.4byte func_801076E8

.global lbl_80305B20
lbl_80305B20:
	.4byte 0x00010002
	.4byte 0x00030004
	.4byte 0x00050006
	.4byte 0x00070008
	.4byte 0x0009000A
	.4byte 0x000B000C
	.4byte 0x000D000E
	.4byte 0x000F0010
	.4byte 0x00210022
	.4byte 0x00230024
	.4byte 0x00250026
	.4byte 0x00270028
	.4byte 0x0029002A
	.4byte 0x00110012
	.4byte 0x00130014
	.4byte 0x00150016
	.4byte 0x0017002B
	.4byte 0x002D002F
	.4byte 0x00310033
	.4byte 0x00350037
	.4byte 0x0039003B
	.4byte 0x003D003F
	.4byte 0x00410043
	.4byte 0x00450047
	.4byte 0x0049004B
	.4byte 0x004D004F
	.4byte 0x00510053
	.4byte 0x00550057
	.4byte 0x0059005B
	.4byte 0x005D0018
	.4byte 0x0019001A
	.4byte 0x001B001C
	.4byte 0x0000002C
	.4byte 0x002E0030
	.4byte 0x00320034
	.4byte 0x00360038
	.4byte 0x003A003C
	.4byte 0x003E0040
	.4byte 0x00420044
	.4byte 0x00460048
	.4byte 0x004A004C
	.4byte 0x004E0050
	.4byte 0x00520054
	.4byte 0x00560058
	.4byte 0x005A005C
	.4byte 0x005E001D
	.4byte 0x001E001F
	.4byte 0x00200000

.global lbl_80305BE0
lbl_80305BE0:
	.4byte 0x43000000
	.4byte 0
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0
	.4byte lbl_80305B20
	.4byte 0

.global lbl_80305BFC
lbl_80305BFC:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte lbl_80328A54
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00

.global lbl_80305C30
lbl_80305C30:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_80328A50
	.4byte lbl_80328A54
	.4byte lbl_80328A54
	.4byte 0

.global lbl_80305C48
lbl_80305C48:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_80328A58
	.4byte lbl_802DE450
	.4byte lbl_802DE460
	.4byte lbl_802DE46C
	.4byte lbl_80328A60
	.4byte lbl_802DE478
	.4byte lbl_802DE4D0
	.4byte lbl_80328A54


.global lbl_80305C70

lbl_80305C70:

	# ROM: 0x301D70
	.4byte 0
	.4byte 0x43000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80305BE0
	.4byte lbl_80305AF8
	.4byte lbl_80305BFC
	.4byte lbl_80305C30
	.4byte lbl_80305C48



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328A50
lbl_80328A50:
	.4byte 0x2E000000

.global lbl_80328A54
lbl_80328A54:
	.4byte 0

.global lbl_80328A58
lbl_80328A58:
	.asciz "AM|PM"
	.balign 4

.global lbl_80328A60
lbl_80328A60:
	.4byte 0x25540000
	.4byte 0


.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E0820
func_800E0820:
/* 800E0820 000DC140  3C 60 80 00 */	lis r3, 0x80003118@ha
/* 800E0824 000DC144  80 63 31 18 */	lwz r3, 0x80003118@l(r3)
/* 800E0828 000DC148  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0830
func_800E0830:
/* 800E0830 000DC150  3C 60 80 00 */	lis r3, 0x80003104@ha
/* 800E0834 000DC154  80 63 31 04 */	lwz r3, 0x80003104@l(r3)
/* 800E0838 000DC158  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0840
func_800E0840:
/* 800E0840 000DC160  3C 60 80 00 */	lis r3, 0x8000311C@ha
/* 800E0844 000DC164  80 63 31 1C */	lwz r3, 0x8000311C@l(r3)
/* 800E0848 000DC168  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0850
func_800E0850:
/* 800E0850 000DC170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0854 000DC174  7C 08 02 A6 */	mflr r0
/* 800E0858 000DC178  2C 03 00 00 */	cmpwi r3, 0
/* 800E085C 000DC17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0860 000DC180  41 82 00 18 */	beq lbl_800E0878
/* 800E0864 000DC184  3C 60 CC 00 */	lis r3, 0xCC004010@ha
/* 800E0868 000DC188  38 00 00 FF */	li r0, 0xff
/* 800E086C 000DC18C  B0 03 40 10 */	sth r0, 0xCC004010@l(r3)
/* 800E0870 000DC190  3C 60 F0 00 */	lis r3, 0xf000
/* 800E0874 000DC194  4B FF F9 7D */	bl func_800E01F0
lbl_800E0878:
/* 800E0878 000DC198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E087C 000DC19C  38 60 00 01 */	li r3, 1
/* 800E0880 000DC1A0  7C 08 03 A6 */	mtlr r0
/* 800E0884 000DC1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0888 000DC1A8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0890
func_800E0890:
/* 800E0890 000DC1B0  3D 00 CC 00 */	lis r8, 0xCC00401E@ha
/* 800E0894 000DC1B4  3C 60 80 35 */	lis r3, lbl_8034CA30@ha
/* 800E0898 000DC1B8  A0 A8 40 1E */	lhz r5, 0xCC00401E@l(r8)
/* 800E089C 000DC1BC  38 00 00 00 */	li r0, 0
/* 800E08A0 000DC1C0  A0 E8 40 24 */	lhz r7, 0x4024(r8)
/* 800E08A4 000DC1C4  38 63 CA 30 */	addi r3, r3, lbl_8034CA30@l
/* 800E08A8 000DC1C8  A0 C8 40 22 */	lhz r6, 0x4022(r8)
/* 800E08AC 000DC1CC  50 E6 81 9E */	rlwimi r6, r7, 0x10, 6, 0xf
/* 800E08B0 000DC1D0  B0 08 40 20 */	sth r0, 0x4020(r8)
/* 800E08B4 000DC1D4  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 800E08B8 000DC1D8  2C 0C 00 00 */	cmpwi r12, 0
/* 800E08BC 000DC1DC  41 82 00 14 */	beq lbl_800E08D0
/* 800E08C0 000DC1E0  38 60 00 0F */	li r3, 0xf
/* 800E08C4 000DC1E4  4C C6 31 82 */	crclr 6
/* 800E08C8 000DC1E8  7D 89 03 A6 */	mtctr r12
/* 800E08CC 000DC1EC  4E 80 04 20 */	bctr 
lbl_800E08D0:
/* 800E08D0 000DC1F0  38 60 00 0F */	li r3, 0xf
/* 800E08D4 000DC1F4  4B FF BF DC */	b func_800DC8B0

.balign 16, 0
.global func_800E08E0
func_800E08E0:
/* 800E08E0 000DC200  38 E0 00 00 */	li r7, 0
/* 800E08E4 000DC204  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 800E08E8 000DC208  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 800E08EC 000DC20C  3C 60 80 00 */	lis r3, 0x800001FF@ha
/* 800E08F0 000DC210  38 63 01 FF */	addi r3, r3, 0x800001FF@l
/* 800E08F4 000DC214  3C C0 01 00 */	lis r6, 0x01000002@ha
/* 800E08F8 000DC218  38 C6 00 02 */	addi r6, r6, 0x01000002@l
/* 800E08FC 000DC21C  3C A0 81 00 */	lis r5, 0x810000FF@ha
/* 800E0900 000DC220  38 A5 00 FF */	addi r5, r5, 0x810000FF@l
/* 800E0904 000DC224  4C 00 01 2C */	isync 
/* 800E0908 000DC228  7C F8 83 A6 */	mtdbatu 0, r7
/* 800E090C 000DC22C  7C 99 83 A6 */	mtdbatl 0, r4
/* 800E0910 000DC230  7C 78 83 A6 */	mtdbatu 0, r3
/* 800E0914 000DC234  4C 00 01 2C */	isync 
/* 800E0918 000DC238  7C F0 83 A6 */	mtibatu 0, r7
/* 800E091C 000DC23C  7C 91 83 A6 */	mtibatl 0, r4
/* 800E0920 000DC240  7C 70 83 A6 */	mtibatu 0, r3
/* 800E0924 000DC244  4C 00 01 2C */	isync 
/* 800E0928 000DC248  7C FC 83 A6 */	mtdbatu 2, r7
/* 800E092C 000DC24C  7C DD 83 A6 */	mtdbatl 2, r6
/* 800E0930 000DC250  7C BC 83 A6 */	mtdbatu 2, r5
/* 800E0934 000DC254  4C 00 01 2C */	isync 
/* 800E0938 000DC258  7C F4 83 A6 */	mtibatu 2, r7
/* 800E093C 000DC25C  7C D5 83 A6 */	mtibatl 2, r6
/* 800E0940 000DC260  7C B4 83 A6 */	mtibatu 2, r5
/* 800E0944 000DC264  4C 00 01 2C */	isync 
/* 800E0948 000DC268  7C 60 00 A6 */	mfmsr r3
/* 800E094C 000DC26C  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0950 000DC270  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0954 000DC274  7C 68 02 A6 */	mflr r3
/* 800E0958 000DC278  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E095C 000DC27C  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0960
func_800E0960:
/* 800E0960 000DC280  38 E0 00 00 */	li r7, 0
/* 800E0964 000DC284  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 800E0968 000DC288  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 800E096C 000DC28C  3C 60 90 00 */	lis r3, 0x900003FF@ha
/* 800E0970 000DC290  38 63 03 FF */	addi r3, r3, 0x900003FF@l
/* 800E0974 000DC294  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 800E0978 000DC298  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 800E097C 000DC29C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 800E0980 000DC2A0  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 800E0984 000DC2A4  4C 00 01 2C */	isync 
/* 800E0988 000DC2A8  7C F8 8B A6 */	mtspr 0x238, r7
/* 800E098C 000DC2AC  7C 99 8B A6 */	mtspr 0x239, r4
/* 800E0990 000DC2B0  7C 78 8B A6 */	mtspr 0x238, r3
/* 800E0994 000DC2B4  4C 00 01 2C */	isync 
/* 800E0998 000DC2B8  7C F0 8B A6 */	mtspr 0x230, r7
/* 800E099C 000DC2BC  7C F1 8B A6 */	mtspr 0x231, r7
/* 800E09A0 000DC2C0  4C 00 01 2C */	isync 
/* 800E09A4 000DC2C4  7C FA 8B A6 */	mtspr 0x23a, r7
/* 800E09A8 000DC2C8  7C DB 8B A6 */	mtspr 0x23b, r6
/* 800E09AC 000DC2CC  7C BA 8B A6 */	mtspr 0x23a, r5
/* 800E09B0 000DC2D0  4C 00 01 2C */	isync 
/* 800E09B4 000DC2D4  7C F2 8B A6 */	mtspr 0x232, r7
/* 800E09B8 000DC2D8  7C F3 8B A6 */	mtspr 0x233, r7
/* 800E09BC 000DC2DC  4C 00 01 2C */	isync 
/* 800E09C0 000DC2E0  3C 80 12 00 */	lis r4, 0x12000002@ha
/* 800E09C4 000DC2E4  38 84 00 02 */	addi r4, r4, 0x12000002@l
/* 800E09C8 000DC2E8  3C 60 92 00 */	lis r3, 0x920001FF@ha
/* 800E09CC 000DC2EC  38 63 01 FF */	addi r3, r3, 0x920001FF@l
/* 800E09D0 000DC2F0  3C C0 13 00 */	lis r6, 0x13000002@ha
/* 800E09D4 000DC2F4  38 C6 00 02 */	addi r6, r6, 0x13000002@l
/* 800E09D8 000DC2F8  3C A0 93 00 */	lis r5, 0x9300007F@ha
/* 800E09DC 000DC2FC  38 A5 00 7F */	addi r5, r5, 0x9300007F@l
/* 800E09E0 000DC300  4C 00 01 2C */	isync 
/* 800E09E4 000DC304  7C FC 8B A6 */	mtspr 0x23c, r7
/* 800E09E8 000DC308  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 800E09EC 000DC30C  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 800E09F0 000DC310  4C 00 01 2C */	isync 
/* 800E09F4 000DC314  7C F4 8B A6 */	mtspr 0x234, r7
/* 800E09F8 000DC318  7C F5 8B A6 */	mtspr 0x235, r7
/* 800E09FC 000DC31C  4C 00 01 2C */	isync 
/* 800E0A00 000DC320  7C FE 8B A6 */	mtspr 0x23e, r7
/* 800E0A04 000DC324  7C DF 8B A6 */	mtspr 0x23f, r6
/* 800E0A08 000DC328  7C BE 8B A6 */	mtspr 0x23e, r5
/* 800E0A0C 000DC32C  4C 00 01 2C */	isync 
/* 800E0A10 000DC330  7C F6 8B A6 */	mtspr 0x236, r7
/* 800E0A14 000DC334  7C F7 8B A6 */	mtspr 0x237, r7
/* 800E0A18 000DC338  4C 00 01 2C */	isync 
/* 800E0A1C 000DC33C  7C 60 00 A6 */	mfmsr r3
/* 800E0A20 000DC340  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0A24 000DC344  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0A28 000DC348  7C 68 02 A6 */	mflr r3
/* 800E0A2C 000DC34C  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0A30 000DC350  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0A40
func_800E0A40:
/* 800E0A40 000DC360  38 E0 00 00 */	li r7, 0
/* 800E0A44 000DC364  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 800E0A48 000DC368  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 800E0A4C 000DC36C  3C 60 90 00 */	lis r3, 0x900003FF@ha
/* 800E0A50 000DC370  38 63 03 FF */	addi r3, r3, 0x900003FF@l
/* 800E0A54 000DC374  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 800E0A58 000DC378  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 800E0A5C 000DC37C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 800E0A60 000DC380  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 800E0A64 000DC384  4C 00 01 2C */	isync 
/* 800E0A68 000DC388  7C F8 8B A6 */	mtspr 0x238, r7
/* 800E0A6C 000DC38C  7C 99 8B A6 */	mtspr 0x239, r4
/* 800E0A70 000DC390  7C 78 8B A6 */	mtspr 0x238, r3
/* 800E0A74 000DC394  4C 00 01 2C */	isync 
/* 800E0A78 000DC398  7C F0 8B A6 */	mtspr 0x230, r7
/* 800E0A7C 000DC39C  7C F1 8B A6 */	mtspr 0x231, r7
/* 800E0A80 000DC3A0  4C 00 01 2C */	isync 
/* 800E0A84 000DC3A4  7C FA 8B A6 */	mtspr 0x23a, r7
/* 800E0A88 000DC3A8  7C DB 8B A6 */	mtspr 0x23b, r6
/* 800E0A8C 000DC3AC  7C BA 8B A6 */	mtspr 0x23a, r5
/* 800E0A90 000DC3B0  4C 00 01 2C */	isync 
/* 800E0A94 000DC3B4  7C F2 8B A6 */	mtspr 0x232, r7
/* 800E0A98 000DC3B8  7C F3 8B A6 */	mtspr 0x233, r7
/* 800E0A9C 000DC3BC  4C 00 01 2C */	isync 
/* 800E0AA0 000DC3C0  3C 80 12 00 */	lis r4, 0x12000002@ha
/* 800E0AA4 000DC3C4  38 84 00 02 */	addi r4, r4, 0x12000002@l
/* 800E0AA8 000DC3C8  3C 60 92 00 */	lis r3, 0x920001FF@ha
/* 800E0AAC 000DC3CC  38 63 01 FF */	addi r3, r3, 0x920001FF@l
/* 800E0AB0 000DC3D0  3C C0 13 00 */	lis r6, 0x13000002@ha
/* 800E0AB4 000DC3D4  38 C6 00 02 */	addi r6, r6, 0x13000002@l
/* 800E0AB8 000DC3D8  3C A0 93 00 */	lis r5, 0x930000FF@ha
/* 800E0ABC 000DC3DC  38 A5 00 FF */	addi r5, r5, 0x930000FF@l
/* 800E0AC0 000DC3E0  4C 00 01 2C */	isync 
/* 800E0AC4 000DC3E4  7C FC 8B A6 */	mtspr 0x23c, r7
/* 800E0AC8 000DC3E8  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 800E0ACC 000DC3EC  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 800E0AD0 000DC3F0  4C 00 01 2C */	isync 
/* 800E0AD4 000DC3F4  7C F4 8B A6 */	mtspr 0x234, r7
/* 800E0AD8 000DC3F8  7C F5 8B A6 */	mtspr 0x235, r7
/* 800E0ADC 000DC3FC  4C 00 01 2C */	isync 
/* 800E0AE0 000DC400  7C FE 8B A6 */	mtspr 0x23e, r7
/* 800E0AE4 000DC404  7C DF 8B A6 */	mtspr 0x23f, r6
/* 800E0AE8 000DC408  7C BE 8B A6 */	mtspr 0x23e, r5
/* 800E0AEC 000DC40C  4C 00 01 2C */	isync 
/* 800E0AF0 000DC410  7C F6 8B A6 */	mtspr 0x236, r7
/* 800E0AF4 000DC414  7C F7 8B A6 */	mtspr 0x237, r7
/* 800E0AF8 000DC418  4C 00 01 2C */	isync 
/* 800E0AFC 000DC41C  7C 60 00 A6 */	mfmsr r3
/* 800E0B00 000DC420  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0B04 000DC424  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0B08 000DC428  7C 68 02 A6 */	mflr r3
/* 800E0B0C 000DC42C  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0B10 000DC430  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0B20
func_800E0B20:
/* 800E0B20 000DC440  38 E0 00 00 */	li r7, 0
/* 800E0B24 000DC444  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 800E0B28 000DC448  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 800E0B2C 000DC44C  3C 60 90 00 */	lis r3, 0x900007FF@ha
/* 800E0B30 000DC450  38 63 07 FF */	addi r3, r3, 0x900007FF@l
/* 800E0B34 000DC454  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 800E0B38 000DC458  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 800E0B3C 000DC45C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 800E0B40 000DC460  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 800E0B44 000DC464  4C 00 01 2C */	isync 
/* 800E0B48 000DC468  7C F8 8B A6 */	mtspr 0x238, r7
/* 800E0B4C 000DC46C  7C 99 8B A6 */	mtspr 0x239, r4
/* 800E0B50 000DC470  7C 78 8B A6 */	mtspr 0x238, r3
/* 800E0B54 000DC474  4C 00 01 2C */	isync 
/* 800E0B58 000DC478  7C F0 8B A6 */	mtspr 0x230, r7
/* 800E0B5C 000DC47C  7C F1 8B A6 */	mtspr 0x231, r7
/* 800E0B60 000DC480  4C 00 01 2C */	isync 
/* 800E0B64 000DC484  7C FA 8B A6 */	mtspr 0x23a, r7
/* 800E0B68 000DC488  7C DB 8B A6 */	mtspr 0x23b, r6
/* 800E0B6C 000DC48C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 800E0B70 000DC490  4C 00 01 2C */	isync 
/* 800E0B74 000DC494  7C F2 8B A6 */	mtspr 0x232, r7
/* 800E0B78 000DC498  7C F3 8B A6 */	mtspr 0x233, r7
/* 800E0B7C 000DC49C  4C 00 01 2C */	isync 
/* 800E0B80 000DC4A0  7C F4 8B A6 */	mtspr 0x234, r7
/* 800E0B84 000DC4A4  7C F5 8B A6 */	mtspr 0x235, r7
/* 800E0B88 000DC4A8  4C 00 01 2C */	isync 
/* 800E0B8C 000DC4AC  7C F6 8B A6 */	mtspr 0x236, r7
/* 800E0B90 000DC4B0  7C F7 8B A6 */	mtspr 0x237, r7
/* 800E0B94 000DC4B4  4C 00 01 2C */	isync 
/* 800E0B98 000DC4B8  7C FC 8B A6 */	mtspr 0x23c, r7
/* 800E0B9C 000DC4BC  7C FD 8B A6 */	mtspr 0x23d, r7
/* 800E0BA0 000DC4C0  4C 00 01 2C */	isync 
/* 800E0BA4 000DC4C4  7C FE 8B A6 */	mtspr 0x23e, r7
/* 800E0BA8 000DC4C8  7C FF 8B A6 */	mtspr 0x23f, r7
/* 800E0BAC 000DC4CC  4C 00 01 2C */	isync 
/* 800E0BB0 000DC4D0  7C 60 00 A6 */	mfmsr r3
/* 800E0BB4 000DC4D4  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0BB8 000DC4D8  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0BBC 000DC4DC  7C 68 02 A6 */	mflr r3
/* 800E0BC0 000DC4E0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0BC4 000DC4E4  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0BD0
func_800E0BD0:
/* 800E0BD0 000DC4F0  38 E0 00 00 */	li r7, 0
/* 800E0BD4 000DC4F4  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 800E0BD8 000DC4F8  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 800E0BDC 000DC4FC  3C 60 90 00 */	lis r3, 0x900007FF@ha
/* 800E0BE0 000DC500  38 63 07 FF */	addi r3, r3, 0x900007FF@l
/* 800E0BE4 000DC504  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 800E0BE8 000DC508  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 800E0BEC 000DC50C  3C A0 D0 00 */	lis r5, 0xD0000FFF@ha
/* 800E0BF0 000DC510  38 A5 0F FF */	addi r5, r5, 0xD0000FFF@l
/* 800E0BF4 000DC514  4C 00 01 2C */	isync 
/* 800E0BF8 000DC518  7C F8 8B A6 */	mtspr 0x238, r7
/* 800E0BFC 000DC51C  7C 99 8B A6 */	mtspr 0x239, r4
/* 800E0C00 000DC520  7C 78 8B A6 */	mtspr 0x238, r3
/* 800E0C04 000DC524  4C 00 01 2C */	isync 
/* 800E0C08 000DC528  7C F0 8B A6 */	mtspr 0x230, r7
/* 800E0C0C 000DC52C  7C F1 8B A6 */	mtspr 0x231, r7
/* 800E0C10 000DC530  4C 00 01 2C */	isync 
/* 800E0C14 000DC534  7C FA 8B A6 */	mtspr 0x23a, r7
/* 800E0C18 000DC538  7C DB 8B A6 */	mtspr 0x23b, r6
/* 800E0C1C 000DC53C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 800E0C20 000DC540  4C 00 01 2C */	isync 
/* 800E0C24 000DC544  7C F2 8B A6 */	mtspr 0x232, r7
/* 800E0C28 000DC548  7C F3 8B A6 */	mtspr 0x233, r7
/* 800E0C2C 000DC54C  4C 00 01 2C */	isync 
/* 800E0C30 000DC550  3C 80 14 00 */	lis r4, 0x14000002@ha
/* 800E0C34 000DC554  38 84 00 02 */	addi r4, r4, 0x14000002@l
/* 800E0C38 000DC558  3C 60 94 00 */	lis r3, 0x940003FF@ha
/* 800E0C3C 000DC55C  38 63 03 FF */	addi r3, r3, 0x940003FF@l
/* 800E0C40 000DC560  3C C0 16 00 */	lis r6, 0x16000002@ha
/* 800E0C44 000DC564  38 C6 00 02 */	addi r6, r6, 0x16000002@l
/* 800E0C48 000DC568  3C A0 96 00 */	lis r5, 0x960001FF@ha
/* 800E0C4C 000DC56C  38 A5 01 FF */	addi r5, r5, 0x960001FF@l
/* 800E0C50 000DC570  4C 00 01 2C */	isync 
/* 800E0C54 000DC574  7C FC 8B A6 */	mtspr 0x23c, r7
/* 800E0C58 000DC578  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 800E0C5C 000DC57C  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 800E0C60 000DC580  4C 00 01 2C */	isync 
/* 800E0C64 000DC584  7C F4 8B A6 */	mtspr 0x234, r7
/* 800E0C68 000DC588  7C F5 8B A6 */	mtspr 0x235, r7
/* 800E0C6C 000DC58C  4C 00 01 2C */	isync 
/* 800E0C70 000DC590  7C FE 8B A6 */	mtspr 0x23e, r7
/* 800E0C74 000DC594  7C DF 8B A6 */	mtspr 0x23f, r6
/* 800E0C78 000DC598  7C BE 8B A6 */	mtspr 0x23e, r5
/* 800E0C7C 000DC59C  4C 00 01 2C */	isync 
/* 800E0C80 000DC5A0  7C F6 8B A6 */	mtspr 0x236, r7
/* 800E0C84 000DC5A4  7C F7 8B A6 */	mtspr 0x237, r7
/* 800E0C88 000DC5A8  4C 00 01 2C */	isync 
/* 800E0C8C 000DC5AC  7C 60 00 A6 */	mfmsr r3
/* 800E0C90 000DC5B0  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0C94 000DC5B4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0C98 000DC5B8  7C 68 02 A6 */	mflr r3
/* 800E0C9C 000DC5BC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0CA0 000DC5C0  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0CB0
func_800E0CB0:
/* 800E0CB0 000DC5D0  38 E0 00 00 */	li r7, 0
/* 800E0CB4 000DC5D4  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 800E0CB8 000DC5D8  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 800E0CBC 000DC5DC  3C 60 90 00 */	lis r3, 0x90000FFF@ha
/* 800E0CC0 000DC5E0  38 63 0F FF */	addi r3, r3, 0x90000FFF@l
/* 800E0CC4 000DC5E4  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 800E0CC8 000DC5E8  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 800E0CCC 000DC5EC  3C A0 D0 00 */	lis r5, 0xD0000FFF@ha
/* 800E0CD0 000DC5F0  38 A5 0F FF */	addi r5, r5, 0xD0000FFF@l
/* 800E0CD4 000DC5F4  4C 00 01 2C */	isync 
/* 800E0CD8 000DC5F8  7C F8 8B A6 */	mtspr 0x238, r7
/* 800E0CDC 000DC5FC  7C 99 8B A6 */	mtspr 0x239, r4
/* 800E0CE0 000DC600  7C 78 8B A6 */	mtspr 0x238, r3
/* 800E0CE4 000DC604  4C 00 01 2C */	isync 
/* 800E0CE8 000DC608  7C F0 8B A6 */	mtspr 0x230, r7
/* 800E0CEC 000DC60C  7C F1 8B A6 */	mtspr 0x231, r7
/* 800E0CF0 000DC610  4C 00 01 2C */	isync 
/* 800E0CF4 000DC614  7C FA 8B A6 */	mtspr 0x23a, r7
/* 800E0CF8 000DC618  7C DB 8B A6 */	mtspr 0x23b, r6
/* 800E0CFC 000DC61C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 800E0D00 000DC620  4C 00 01 2C */	isync 
/* 800E0D04 000DC624  7C F2 8B A6 */	mtspr 0x232, r7
/* 800E0D08 000DC628  7C F3 8B A6 */	mtspr 0x233, r7
/* 800E0D0C 000DC62C  4C 00 01 2C */	isync 
/* 800E0D10 000DC630  7C F4 8B A6 */	mtspr 0x234, r7
/* 800E0D14 000DC634  7C F5 8B A6 */	mtspr 0x235, r7
/* 800E0D18 000DC638  4C 00 01 2C */	isync 
/* 800E0D1C 000DC63C  7C F6 8B A6 */	mtspr 0x236, r7
/* 800E0D20 000DC640  7C F7 8B A6 */	mtspr 0x237, r7
/* 800E0D24 000DC644  4C 00 01 2C */	isync 
/* 800E0D28 000DC648  7C FC 8B A6 */	mtspr 0x23c, r7
/* 800E0D2C 000DC64C  7C FD 8B A6 */	mtspr 0x23d, r7
/* 800E0D30 000DC650  4C 00 01 2C */	isync 
/* 800E0D34 000DC654  7C FE 8B A6 */	mtspr 0x23e, r7
/* 800E0D38 000DC658  7C FF 8B A6 */	mtspr 0x23f, r7
/* 800E0D3C 000DC65C  4C 00 01 2C */	isync 
/* 800E0D40 000DC660  7C 60 00 A6 */	mfmsr r3
/* 800E0D44 000DC664  60 63 00 30 */	ori r3, r3, 0x30
/* 800E0D48 000DC668  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0D4C 000DC66C  7C 68 02 A6 */	mflr r3
/* 800E0D50 000DC670  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0D54 000DC674  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0D60
func_800E0D60:
/* 800E0D60 000DC680  54 63 00 BE */	clrlwi r3, r3, 2
/* 800E0D64 000DC684  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800E0D68 000DC688  7C 60 00 A6 */	mfmsr r3
/* 800E0D6C 000DC68C  54 63 07 32 */	rlwinm r3, r3, 0, 0x1c, 0x19
/* 800E0D70 000DC690  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800E0D74 000DC694  4C 00 00 64 */	rfi 

.balign 16, 0
.global func_800E0D80
func_800E0D80:
/* 800E0D80 000DC6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0D84 000DC6A4  7C 08 02 A6 */	mflr r0
/* 800E0D88 000DC6A8  3C 80 80 00 */	lis r4, 0x80003104@ha
/* 800E0D8C 000DC6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0D90 000DC6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0D94 000DC6B4  93 C1 00 08 */	stw r30, 8(r1)
/* 800E0D98 000DC6B8  7C 7E 1B 78 */	mr r30, r3
/* 800E0D9C 000DC6BC  83 E4 31 04 */	lwz r31, 0x80003104@l(r4)
/* 800E0DA0 000DC6C0  80 04 31 00 */	lwz r0, 0x3100(r4)
/* 800E0DA4 000DC6C4  7C 1F 00 40 */	cmplw r31, r0
/* 800E0DA8 000DC6C8  40 80 00 28 */	bge lbl_800E0DD0
/* 800E0DAC 000DC6CC  3C 1F FE 80 */	addis r0, r31, 0xfe80
/* 800E0DB0 000DC6D0  28 00 00 00 */	cmplwi r0, 0
/* 800E0DB4 000DC6D4  40 82 00 1C */	bne lbl_800E0DD0
/* 800E0DB8 000DC6D8  3C 60 81 80 */	lis r3, 0x8180
/* 800E0DBC 000DC6DC  3C 80 01 80 */	lis r4, 0x180
/* 800E0DC0 000DC6E0  4B FF A8 E1 */	bl func_800DB6A0
/* 800E0DC4 000DC6E4  3C 60 CC 00 */	lis r3, 0xCC004028@ha
/* 800E0DC8 000DC6E8  38 00 00 02 */	li r0, 2
/* 800E0DCC 000DC6EC  B0 03 40 28 */	sth r0, 0xCC004028@l(r3)
lbl_800E0DD0:
/* 800E0DD0 000DC6F0  3C 00 01 80 */	lis r0, 0x180
/* 800E0DD4 000DC6F4  7C 1F 00 40 */	cmplw r31, r0
/* 800E0DD8 000DC6F8  41 81 00 10 */	bgt lbl_800E0DE8
/* 800E0DDC 000DC6FC  3C 60 80 0E */	lis r3, func_800E08E0@ha
/* 800E0DE0 000DC700  38 63 08 E0 */	addi r3, r3, func_800E08E0@l
/* 800E0DE4 000DC704  4B FF FF 7D */	bl func_800E0D60
lbl_800E0DE8:
/* 800E0DE8 000DC708  3C 60 80 00 */	lis r3, 0x8000311C@ha
/* 800E0DEC 000DC70C  3C 00 04 00 */	lis r0, 0x400
/* 800E0DF0 000DC710  80 83 31 1C */	lwz r4, 0x8000311C@l(r3)
/* 800E0DF4 000DC714  80 63 31 20 */	lwz r3, 0x3120(r3)
/* 800E0DF8 000DC718  7C 04 00 40 */	cmplw r4, r0
/* 800E0DFC 000DC71C  41 81 00 4C */	bgt lbl_800E0E48
/* 800E0E00 000DC720  3C 00 93 40 */	lis r0, 0x9340
/* 800E0E04 000DC724  7C 03 00 40 */	cmplw r3, r0
/* 800E0E08 000DC728  41 81 00 14 */	bgt lbl_800E0E1C
/* 800E0E0C 000DC72C  3C 60 80 0E */	lis r3, func_800E0960@ha
/* 800E0E10 000DC730  38 63 09 60 */	addi r3, r3, func_800E0960@l
/* 800E0E14 000DC734  4B FF FF 4D */	bl func_800E0D60
/* 800E0E18 000DC738  48 00 00 64 */	b lbl_800E0E7C
lbl_800E0E1C:
/* 800E0E1C 000DC73C  3C 00 93 80 */	lis r0, 0x9380
/* 800E0E20 000DC740  7C 03 00 40 */	cmplw r3, r0
/* 800E0E24 000DC744  41 81 00 14 */	bgt lbl_800E0E38
/* 800E0E28 000DC748  3C 60 80 0E */	lis r3, func_800E0A40@ha
/* 800E0E2C 000DC74C  38 63 0A 40 */	addi r3, r3, func_800E0A40@l
/* 800E0E30 000DC750  4B FF FF 31 */	bl func_800E0D60
/* 800E0E34 000DC754  48 00 00 48 */	b lbl_800E0E7C
lbl_800E0E38:
/* 800E0E38 000DC758  3C 60 80 0E */	lis r3, func_800E0B20@ha
/* 800E0E3C 000DC75C  38 63 0B 20 */	addi r3, r3, func_800E0B20@l
/* 800E0E40 000DC760  4B FF FF 21 */	bl func_800E0D60
/* 800E0E44 000DC764  48 00 00 38 */	b lbl_800E0E7C
lbl_800E0E48:
/* 800E0E48 000DC768  3C 00 08 00 */	lis r0, 0x800
/* 800E0E4C 000DC76C  7C 04 00 40 */	cmplw r4, r0
/* 800E0E50 000DC770  41 81 00 2C */	bgt lbl_800E0E7C
/* 800E0E54 000DC774  3C 00 97 00 */	lis r0, 0x9700
/* 800E0E58 000DC778  7C 03 00 40 */	cmplw r3, r0
/* 800E0E5C 000DC77C  41 81 00 14 */	bgt lbl_800E0E70
/* 800E0E60 000DC780  3C 60 80 0E */	lis r3, func_800E0BD0@ha
/* 800E0E64 000DC784  38 63 0B D0 */	addi r3, r3, func_800E0BD0@l
/* 800E0E68 000DC788  4B FF FE F9 */	bl func_800E0D60
/* 800E0E6C 000DC78C  48 00 00 10 */	b lbl_800E0E7C
lbl_800E0E70:
/* 800E0E70 000DC790  3C 60 80 0E */	lis r3, func_800E0CB0@ha
/* 800E0E74 000DC794  38 63 0C B0 */	addi r3, r3, func_800E0CB0@l
/* 800E0E78 000DC798  4B FF FE E9 */	bl func_800E0D60
lbl_800E0E7C:
/* 800E0E7C 000DC79C  3C 1E FF F5 */	addis r0, r30, 0xfff5
lbl_800E0E80:
/* 800E0E80 000DC7A0  28 00 A2 CF */	cmplwi r0, 0xa2cf
/* 800E0E84 000DC7A4  40 82 FF FC */	bne lbl_800E0E80
/* 800E0E88 000DC7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0E8C 000DC7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0E90 000DC7B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E0E94 000DC7B4  7C 08 03 A6 */	mtlr r0
/* 800E0E98 000DC7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0E9C 000DC7BC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0EA0
func_800E0EA0:
/* 800E0EA0 000DC7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0EA4 000DC7C4  7C 08 02 A6 */	mflr r0
/* 800E0EA8 000DC7C8  3C 80 80 0E */	lis r4, func_800E08E0@ha
/* 800E0EAC 000DC7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0EB0 000DC7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0EB4 000DC7D4  7C 7F 1B 78 */	mr r31, r3
/* 800E0EB8 000DC7D8  38 64 08 E0 */	addi r3, r4, func_800E08E0@l
/* 800E0EBC 000DC7DC  4B FF FE A5 */	bl func_800E0D60
/* 800E0EC0 000DC7E0  3C 1F FF F5 */	addis r0, r31, 0xfff5
/* 800E0EC4 000DC7E4  60 00 00 00 */	nop 
lbl_800E0EC8:
/* 800E0EC8 000DC7E8  28 00 A2 CF */	cmplwi r0, 0xa2cf
/* 800E0ECC 000DC7EC  40 82 FF FC */	bne lbl_800E0EC8
/* 800E0ED0 000DC7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0ED4 000DC7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0ED8 000DC7F8  7C 08 03 A6 */	mtlr r0
/* 800E0EDC 000DC7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0EE0 000DC800  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0EF0
func_800E0EF0:
/* 800E0EF0 000DC810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0EF4 000DC814  7C 08 02 A6 */	mflr r0
/* 800E0EF8 000DC818  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0EFC 000DC81C  80 0D 97 D8 */	lwz r0, lbl_80320698-_SDA_BASE_(r13)
/* 800E0F00 000DC820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0F04 000DC824  2C 00 00 00 */	cmpwi r0, 0
/* 800E0F08 000DC828  93 C1 00 08 */	stw r30, 8(r1)
/* 800E0F0C 000DC82C  40 82 00 98 */	bne lbl_800E0FA4
/* 800E0F10 000DC830  4B FF EF 11 */	bl func_800DFE20
/* 800E0F14 000DC834  3C 80 CC 00 */	lis r4, 0xCC004020@ha
/* 800E0F18 000DC838  38 00 00 00 */	li r0, 0
/* 800E0F1C 000DC83C  B0 04 40 20 */	sth r0, 0xCC004020@l(r4)
/* 800E0F20 000DC840  38 00 00 FF */	li r0, 0xff
/* 800E0F24 000DC844  7C 7E 1B 78 */	mr r30, r3
/* 800E0F28 000DC848  3C 60 F0 00 */	lis r3, 0xf000
/* 800E0F2C 000DC84C  B0 04 40 10 */	sth r0, 0x4010(r4)
/* 800E0F30 000DC850  4B FF F2 C1 */	bl func_800E01F0
/* 800E0F34 000DC854  3F E0 80 0E */	lis r31, func_800E0890@ha
/* 800E0F38 000DC858  38 60 00 00 */	li r3, 0
/* 800E0F3C 000DC85C  38 9F 08 90 */	addi r4, r31, func_800E0890@l
/* 800E0F40 000DC860  4B FF EF 51 */	bl func_800DFE90
/* 800E0F44 000DC864  38 9F 08 90 */	addi r4, r31, 0x890
/* 800E0F48 000DC868  38 60 00 01 */	li r3, 1
/* 800E0F4C 000DC86C  4B FF EF 45 */	bl func_800DFE90
/* 800E0F50 000DC870  38 9F 08 90 */	addi r4, r31, 0x890
/* 800E0F54 000DC874  38 60 00 02 */	li r3, 2
/* 800E0F58 000DC878  4B FF EF 39 */	bl func_800DFE90
/* 800E0F5C 000DC87C  38 9F 08 90 */	addi r4, r31, 0x890
/* 800E0F60 000DC880  38 60 00 03 */	li r3, 3
/* 800E0F64 000DC884  4B FF EF 2D */	bl func_800DFE90
/* 800E0F68 000DC888  38 9F 08 90 */	addi r4, r31, 0x890
/* 800E0F6C 000DC88C  38 60 00 04 */	li r3, 4
/* 800E0F70 000DC890  4B FF EF 21 */	bl func_800DFE90
/* 800E0F74 000DC894  3C 60 80 2F */	lis r3, lbl_802F2D20@ha
/* 800E0F78 000DC898  38 63 2D 20 */	addi r3, r3, lbl_802F2D20@l
/* 800E0F7C 000DC89C  48 00 03 F5 */	bl func_800E1370
/* 800E0F80 000DC8A0  3C 60 00 0C */	lis r3, 0x000BA2CF@ha
/* 800E0F84 000DC8A4  38 63 A2 CF */	addi r3, r3, 0x000BA2CF@l
/* 800E0F88 000DC8A8  4B FF FD F9 */	bl func_800E0D80
/* 800E0F8C 000DC8AC  3C 60 08 00 */	lis r3, 0x800
/* 800E0F90 000DC8B0  4B FF F2 E1 */	bl func_800E0270
/* 800E0F94 000DC8B4  38 00 00 01 */	li r0, 1
/* 800E0F98 000DC8B8  90 0D 97 D8 */	stw r0, lbl_80320698-_SDA_BASE_(r13)
/* 800E0F9C 000DC8BC  7F C3 F3 78 */	mr r3, r30
/* 800E0FA0 000DC8C0  4B FF EE C1 */	bl func_800DFE60
lbl_800E0FA4:
/* 800E0FA4 000DC8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0FA8 000DC8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0FAC 000DC8CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E0FB0 000DC8D0  7C 08 03 A6 */	mtlr r0
/* 800E0FB4 000DC8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0FB8 000DC8D8  4E 80 00 20 */	blr 
/* 800E0FBC 000DC8DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802F2D20

lbl_802F2D20:

	# ROM: 0x2EEE20
	.4byte func_800E0850
	.4byte 0x0000007F
	.4byte 0
	.4byte 0


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320698
lbl_80320698:
	.skip 0x8
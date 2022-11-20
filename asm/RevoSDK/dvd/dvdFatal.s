.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800ED690
func_800ED690:
/* 800ED690 000E8FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED694 000E8FB4  7C 08 02 A6 */	mflr r0
/* 800ED698 000E8FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED69C 000E8FBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800ED6A0 000E8FC0  3B E0 00 00 */	li r31, 0
/* 800ED6A4 000E8FC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800ED6A8 000E8FC8  83 C2 F8 F8 */	lwz r30, lbl_803288D8-_SDA2_BASE_(r2)
/* 800ED6AC 000E8FCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800ED6B0 000E8FD0  48 03 6F F1 */	bl func_801246A0
/* 800ED6B4 000E8FD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800ED6B8 000E8FD8  40 82 00 10 */	bne lbl_800ED6C8
/* 800ED6BC 000E8FDC  38 60 00 01 */	li r3, 1
/* 800ED6C0 000E8FE0  4B FF 1B 61 */	bl func_800DF220
/* 800ED6C4 000E8FE4  48 00 00 0C */	b lbl_800ED6D0
lbl_800ED6C8:
/* 800ED6C8 000E8FE8  38 60 00 00 */	li r3, 0
/* 800ED6CC 000E8FEC  4B FF 1B 55 */	bl func_800DF220
lbl_800ED6D0:
/* 800ED6D0 000E8FF0  48 03 75 91 */	bl func_80124C60
/* 800ED6D4 000E8FF4  7C 63 07 74 */	extsb r3, r3
/* 800ED6D8 000E8FF8  38 03 FF FC */	addi r0, r3, -4
/* 800ED6DC 000E8FFC  28 00 00 01 */	cmplwi r0, 1
/* 800ED6E0 000E9000  40 81 00 24 */	ble lbl_800ED704
/* 800ED6E4 000E9004  2C 03 00 02 */	cmpwi r3, 2
/* 800ED6E8 000E9008  41 82 00 10 */	beq lbl_800ED6F8
/* 800ED6EC 000E900C  3F A0 80 2E */	lis r29, lbl_802DDE10@ha
/* 800ED6F0 000E9010  3B BD DE 10 */	addi r29, r29, lbl_802DDE10@l
/* 800ED6F4 000E9014  48 00 00 14 */	b lbl_800ED708
lbl_800ED6F8:
/* 800ED6F8 000E9018  3F A0 80 2E */	lis r29, lbl_802DDE2C@ha
/* 800ED6FC 000E901C  3B BD DE 2C */	addi r29, r29, lbl_802DDE2C@l
/* 800ED700 000E9020  48 00 00 08 */	b lbl_800ED708
lbl_800ED704:
/* 800ED704 000E9024  3B AD 8C 68 */	addi r29, r13, lbl_8031FB28-_SDA_BASE_
lbl_800ED708:
/* 800ED708 000E9028  48 03 6F 99 */	bl func_801246A0
/* 800ED70C 000E902C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800ED710 000E9030  28 00 00 06 */	cmplwi r0, 6
/* 800ED714 000E9034  40 81 00 0C */	ble lbl_800ED720
/* 800ED718 000E9038  80 BD 00 04 */	lwz r5, 4(r29)
/* 800ED71C 000E903C  48 00 00 10 */	b lbl_800ED72C
lbl_800ED720:
/* 800ED720 000E9040  48 03 6F 81 */	bl func_801246A0
/* 800ED724 000E9044  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 800ED728 000E9048  7C BD 00 2E */	lwzx r5, r29, r0
lbl_800ED72C:
/* 800ED72C 000E904C  93 E1 00 08 */	stw r31, 8(r1)
/* 800ED730 000E9050  38 61 00 0C */	addi r3, r1, 0xc
/* 800ED734 000E9054  38 81 00 08 */	addi r4, r1, 8
/* 800ED738 000E9058  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800ED73C 000E905C  4B FF 10 15 */	bl func_800DE750
/* 800ED740 000E9060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED744 000E9064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800ED748 000E9068  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800ED74C 000E906C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800ED750 000E9070  7C 08 03 A6 */	mtlr r0
/* 800ED754 000E9074  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED758 000E9078  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800ED760
func_800ED760:
/* 800ED760 000E9080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED764 000E9084  7C 08 02 A6 */	mflr r0
/* 800ED768 000E9088  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED76C 000E908C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED770 000E9090  7C 7F 1B 78 */	mr r31, r3
/* 800ED774 000E9094  4B FF 26 AD */	bl func_800DFE20
/* 800ED778 000E9098  80 AD 99 48 */	lwz r5, lbl_80320808-_SDA_BASE_(r13)
/* 800ED77C 000E909C  2C 1F 00 00 */	cmpwi r31, 0
/* 800ED780 000E90A0  38 80 00 00 */	li r4, 0
/* 800ED784 000E90A4  7C 05 00 D0 */	neg r0, r5
/* 800ED788 000E90A8  7C 00 2B 78 */	or r0, r0, r5
/* 800ED78C 000E90AC  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 800ED790 000E90B0  41 82 00 0C */	beq lbl_800ED79C
/* 800ED794 000E90B4  3C 80 80 0F */	lis r4, func_800ED690@ha
/* 800ED798 000E90B8  38 84 D6 90 */	addi r4, r4, func_800ED690@l
lbl_800ED79C:
/* 800ED79C 000E90BC  90 8D 99 48 */	stw r4, lbl_80320808-_SDA_BASE_(r13)
/* 800ED7A0 000E90C0  4B FF 26 C1 */	bl func_800DFE60
/* 800ED7A4 000E90C4  7F E3 FB 78 */	mr r3, r31
/* 800ED7A8 000E90C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED7AC 000E90CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED7B0 000E90D0  7C 08 03 A6 */	mtlr r0
/* 800ED7B4 000E90D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED7B8 000E90D8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800ED7C0
func_800ED7C0:
/* 800ED7C0 000E90E0  80 6D 99 48 */	lwz r3, lbl_80320808-_SDA_BASE_(r13)
/* 800ED7C4 000E90E4  7C 03 00 D0 */	neg r0, r3
/* 800ED7C8 000E90E8  7C 00 1B 78 */	or r0, r0, r3
/* 800ED7CC 000E90EC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800ED7D0 000E90F0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800ED7E0
func_800ED7E0:
/* 800ED7E0 000E9100  81 8D 99 48 */	lwz r12, lbl_80320808-_SDA_BASE_(r13)
/* 800ED7E4 000E9104  2C 0C 00 00 */	cmpwi r12, 0
/* 800ED7E8 000E9108  4D 82 00 20 */	beqlr 
/* 800ED7EC 000E910C  7D 89 03 A6 */	mtctr r12
/* 800ED7F0 000E9110  4E 80 04 20 */	bctr 
/* 800ED7F4 000E9114  4E 80 00 20 */	blr 


.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DDE10

lbl_802DDE10:

	# ROM: 0x2D9F10
	.4byte lbl_802FF6E0
	.4byte lbl_802FF770
	.4byte lbl_802FF820
	.4byte lbl_802FF8D8
	.4byte lbl_802FF988
	.4byte lbl_802FFA28
	.4byte lbl_802FFAD4


.global lbl_802DDE2C

lbl_802DDE2C:

	# ROM: 0x2D9F2C
	.4byte lbl_802FF6E0 
	.4byte lbl_802FFB68 
	.4byte lbl_802FF820 
	.4byte lbl_802FFC0C 
	.4byte lbl_802FFCB0 
	.4byte lbl_802FFA28 
	.4byte lbl_802FFAD4 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802FF6E0
lbl_802FF6E0:
	# "\n\n\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
.global lbl_802FF770
lbl_802FF770:
	.asciz "\n\n\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn off the power to the\nconsole. Please read the Wii Operations\nManual for further instructions."
	.balign 4
.global lbl_802FF820
lbl_802FF820:
	#"\n\n\nEin Fehler ist aufgetreten.\nDrücke den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.asciz "\n\n\nEin Fehler ist aufgetreten.\nDr\xFC\cke den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
.global lbl_802FF8D8
lbl_802FF8D8:
	#"\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au Mode d'emploi\nde la Wii pour plus de détails."
	.asciz "\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et \xE9teignez la console.\nVeuillez vous r\xE9\x66\xE9rer au Mode d'emploi\nde la Wii pour plus de d\xE9tails."
	.balign 4
	.asciz ""
	.balign 4
.global lbl_802FF988
lbl_802FF988:
	#"\n\n\nOcurrió un Error.\nOprime el Botón EJECT, saca el disco\ny apaga la consola. Consulta el manual\nde operaciones de la consola Wii para\nobtener más información."
	.4byte 0x0A0A0A4F
	.4byte 0x63757272
	.4byte 0x69F32075
	.4byte 0x6E204572
	.4byte 0x726F722E
	.4byte 0x0A4F7072
	.4byte 0x696D6520
	.4byte 0x656C2042
	.4byte 0x6F74F36E
	.4byte 0x20454A45
	.4byte 0x43542C20
	.4byte 0x73616361
	.4byte 0x20656C20
	.4byte 0x64697363
	.4byte 0x6F0A7920
	.4byte 0x61706167
	.4byte 0x61206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x2E20436F
	.4byte 0x6E73756C
	.4byte 0x74612065
	.4byte 0x6C206D61
	.4byte 0x6E75616C
	.4byte 0x0A646520
	.4byte 0x6F706572
	.4byte 0x6163696F
	.4byte 0x6E657320
	.4byte 0x6465206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x69207061
	.4byte 0x72610A6F
	.4byte 0x6274656E
	.4byte 0x6572206D
	.4byte 0xE1732069
	.4byte 0x6E666F72
	.4byte 0x6D616369
	.4byte 0xF36E2E00
.global lbl_802FFA28
lbl_802FFA28:
	#"\n\n\nSi è verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
	.balign 4
.global lbl_802FFAD4
lbl_802FFAD4:
	.asciz "\n\n\nEr is een fout opgetreden.\nDruk op de EJECT-knop, verwijder de\ndisk en zet het Wii-systeem uit. Lees\nde Wii-handleiding voor meer informatie."
	.balign 4
.global lbl_802FFB68
lbl_802FFB68:
	.asciz "\n\n\nAn error has occurred.\nPress the EJECT Button, remove the Disc,\nand turn off the power to the console.\nPlease refer to the Wii Operations Manual\nfor details."
	.balign 4
.global lbl_802FFC0C
lbl_802FFC0C:
	#"\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au mode d'emploi\nWii pour plus de détails."
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652065
	.4byte 0x7420E974
	.4byte 0x6569676E
	.4byte 0x657A206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x652E0A56
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x20617520
	.4byte 0x6D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x690A5769
	.4byte 0x6920706F
	.4byte 0x75722070
	.4byte 0x6C757320
	.4byte 0x64652064
	.4byte 0xE9746169
	.4byte 0x6C732E00
.global lbl_802FFCB0
lbl_802FFCB0:
	#"\n\n\nSe ha producido un error.\nPulsa el Botón EJECT, extrae el disco y\napaga la consola. Consulta el manual de\ninstrucciones de la consola Wii para\nobtener más información."
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A50756C
	.4byte 0x73612065
	.4byte 0x6C20426F
	.4byte 0x74F36E20
	.4byte 0x454A4543
	.4byte 0x542C2065
	.4byte 0x78747261
	.4byte 0x6520656C
	.4byte 0x20646973
	.4byte 0x636F2079
	.4byte 0x0A617061
	.4byte 0x6761206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x612E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A696E73
	.4byte 0x74727563
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
.global lbl_802FFD5C
lbl_802FFD5C:
	#"\n\nエラーコード１０４。\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688250
	.4byte 0x824F8253
	.4byte 0x81420A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
.global lbl_802FFE00
lbl_802FFE00:
	.asciz "\n\nError #104,\nAn error has occurred.\nPress the EJECT Button, remove the\nGame Disc, and turn the power off.\nPlease read the Wii Operations Manual\nfor more information."
	.balign 4


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FB28

lbl_8031FB28:

	# ROM: 0x31BC28
	.4byte lbl_802FFD5C
	.4byte lbl_802FFE00


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320808
lbl_80320808:
	.skip 0x8


.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_803288D8

lbl_803288D8:

	# ROM: 0x323B38
	.4byte 0xFFFFFF00
	.4byte 0

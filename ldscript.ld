ENTRY(__start)
_SDA_BASE_ = 0x80326EC0;
_SDA2_BASE_ = 0x80328FE0;
PHDRS
{
    text0 PT_LOAD;
    text1 PT_LOAD;
    data0 PT_LOAD;
    data1 PT_LOAD;
    data2 PT_LOAD;
    data3 PT_LOAD;
    data4 PT_LOAD;
    data5 PT_LOAD;
    data6 PT_LOAD;
    data7 PT_LOAD;
    bss PT_LOAD;
}
SECTIONS
{
    .text0 0x80004000 : { *(.text0) } : text0
    .text1 0x80006F00 : { *(.text1) } : text1
    .data0 0x80006720 : { *(.data0) } : data0
    .data1 0x80006A60 : { *(.data1) } : data1
    .data2 0x801F74E0 : { *(.data2) } : data2
    .data3 0x801F7580 : { *(.data3) } : data3
    .data4 0x801F75A0 : { *(.data4) } : data4
    .data5 0x802E5740 : { *(.data5) } : data5
    .data6 0x8031EEC0 : { *(.data6) } : data6
    .data7 0x80320FE0 : { *(.data7) } : data7
    .bss 0x80320140 (NOLOAD) : { *(.bss) } : bss
}

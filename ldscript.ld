ENTRY(__start)
_SDA_BASE_ = 0x80326EC0;
_SDA2_BASE_ = 0x80328FE0;
PHDRS
{
    init PT_LOAD;
    text PT_LOAD;
    extab PT_LOAD;
    extabindex PT_LOAD;
    ctors PT_LOAD;
    dtors PT_LOAD;
    rodata PT_LOAD;
    data PT_LOAD;
    bss PT_LOAD;
    sdata PT_LOAD;
    sbss PT_LOAD;
    sdata2 PT_LOAD;
    sbss2 PT_LOAD;
}
SECTIONS
{
    .init 0x80004000 : { *(.init) } : init
    .text 0x80006F00 : { *(.text) } : text
    .extab 0x80006720 : { *(.extab) } : extab
    .extabindex 0x80006A60 : { *(.extabindex) } : extabindex
    .ctors 0x801F74E0 : { *(.ctors) } : ctors
    .dtors 0x801F7580 : { *(.dtors) } : dtors
    .rodata 0x801F75A0 : { *(.rodata) } : rodata
    .data 0x802E5740 : { *(.data) } : data
    .bss 0x80320140 (NOLOAD) : { *(.bss) } : bss
    .sdata 0x8031EEC0 : { *(.sdata) } : sdata
    .sbss 0x80329940 (NOLOAD) : { *(.sbss) } : sbss
    .sdata2 0x80320FE0 : { *(.sdata2) } : sdata2
    .sbss2 0x80329980 (NOLOAD) : { *(.sbss2) } : sbss2
}

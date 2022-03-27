### Tools ###
COMPILER_DIR := tools/mwcc_compiler/1.3
AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
LD      := $(COMPILER_DIR)/mwldeppc.exe
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
HOSTCC  := cc
SHA1SUM := sha1sum
ELF2DOL := tools/elf2dol

ASFLAGS := -mgekko -I asm

### Files ###
DOL      := rhf.dol
ELF      := $(DOL:.dol=.elf)
LDSCRIPT := ldscript.lcf
S_FILES  := asm/code.s
C_FILES  :=
O_FILES  := $(S_FILES:.s=.o) $(C_FILES:.c=.o)

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

.PHONY: tools

$(DOL): $(ELF) | tools
	$(ELF2DOL) $(ELF) $(DOL)
	$(SHA1SUM) -c rhf.sha1

$(ELF): $(LDSCRIPT) $(O_FILES)
	$(LD) $(O_FILES) -map rhf.map -lcf $(LDSCRIPT) -o $@
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	$(OBJCOPY) $(ELF) $(ELF)

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	$(RM) $(DOL) $(ELF) $(O_FILES)
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

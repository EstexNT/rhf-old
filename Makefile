# Tools
COMPILER_DIR := tools/mwcc_compiler/Wii/1.3
LINKER_DIR := tools/mwcc_compiler/GC/2.5
AS := $(DEVKITPPC)/bin/powerpc-eabi-as
CC := $(COMPILER_DIR)/mwcceppc.exe
LD := $(LINKER_DIR)/mwldeppc.exe
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
HOSTCC := cc
SHA1SUM := sha1sum
ELF2DOL := tools/elf2dol

ASFLAGS := -mgekko -I asm

# Files
BUILD_DIR := build
SRC_DIRS := src
ASM_DIRS := asm
DOL := $(BUILD_DIR)/rhf.dol
ELF := $(DOL:.dol=.elf)
LDSCRIPT := ldscript.lcf
S_FILES := asm/code.s
C_FILES :=
O_FILES := $(BUILD_DIR)/$(S_FILES:.s=.o) #$(BUILD_DIR)/$(C_FILES:.c=.o)

ALL_DIRS := build $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

# Recipes
.PHONY: tools

$(DOL): $(ELF) | tools
	$(ELF2DOL) $(ELF) $(DOL)
	$(SHA1SUM) -c rhf.sha1

$(ELF): $(LDSCRIPT) $(O_FILES)
	$(LD) $(O_FILES) -map $(BUILD_DIR)/rhf.map -lcf $(LDSCRIPT) -o $@
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	$(OBJCOPY) $(ELF) $(ELF)

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	$(RM) $(DOL) $(ELF) $(O_FILES) $(BUILD_DIR)/rhf.map
	rmdir $(BUILD_DIR)/$(ASM_DIRS) $(BUILD_DIR)/$(SRC_DIRS) $(BUILD_DIR)
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

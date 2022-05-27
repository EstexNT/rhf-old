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
LDFLAGS := -fp hard -nodefaults

# Files
BUILD_DIR := build
SRC_DIRS := src
ASM_DIRS := asm
DOL := $(BUILD_DIR)/main.dol
ELF := $(DOL:.dol=.elf)
LDSCRIPT := ldscript.lcf
S_FILES :=  asm/init.s \
			asm/extab.s \
			asm/extabindex.s \
			asm/text.s \
			asm/ctors.s \
			asm/dtors.s \
			asm/rodata.s \
			asm/data.s \
			asm/sdata.s \
			asm/sbss.s \
			asm/sdata2.s \
			asm/sbss2.s \
			asm/bss.s

C_FILES :=
O_FILES :=  build/asm/init.o \
			build/asm/extab.o \
			build/asm/extabindex.o \
			build/asm/text.o \
			build/asm/ctors.o \
			build/asm/dtors.o \
			build/asm/rodata.o \
			build/asm/data.o \
			build/asm/sdata.o \
			build/asm/sbss.o \
			build/asm/sdata2.o \
			build/asm/sbss2.o \
			build/asm/bss.o

ALL_DIRS := build $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Recipes
default: all

all: $(DOL)

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools

$(DOL): $(ELF) | tools
	@$(ELF2DOL) $(ELF) $(DOL)
	@$(SHA1SUM) -c rhf.sha1

$(ELF): $(LDSCRIPT) $(O_FILES)
	@echo Linking ELF $@
	@$(LD) $(LDFLAGS) $(O_FILES) -map $(BUILD_DIR)/rhf.map -lcf $(LDSCRIPT) -o $@

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	@$(AS) $(ASFLAGS) -o $@ $<

clean:
	@$(RM) $(DOL) $(ELF) $(O_FILES) $(BUILD_DIR)/rhf.map
	@rmdir $(BUILD_DIR)/$(ASM_DIRS) $(BUILD_DIR)/$(SRC_DIRS) $(BUILD_DIR)
	@$(MAKE) -C tools clean

tools:
	@$(MAKE) -C tools

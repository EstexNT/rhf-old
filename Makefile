VERBOSE ?= 0 

ifeq ($(VERBOSE),0)
  QUIET := @
endif

# source files
ASM_DIR := asm
CODE_FILE := $(ASM_DIR)/code
BUILD_DIR := build

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(BUILD_DIR)
DUMMY1 != mkdir -p $(BUILD_DIR)/$(ASM_DIR)

# tools
MWCC_COMPILER := tools/mwcc_compiler/1.3/mwcceppc.exe
AS := $(DEVKITPPC)/bin/powerpc-eabi-as
LD := tools/mwcc_compiler/1.3/mwldeppc.exe

# flags
MWCC_FLAGS := --help
AS_FLAGS := -mgekko -I asm 

# main stuff
default:
	@echo Assembling files...
	$(QUIET) $(AS) $(AS_FLAGS) $(CODE_FILE).s -o $(BUILD_DIR)/$(CODE_FILE).o
	@echo Assembled!
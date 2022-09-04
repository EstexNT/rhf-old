include obj_files_rvlsdk.mk

RVL_SDK_O_FILES :=\
	$(RVL_SDK_BASE_O_FILES) \
	$(RVL_SDK_OS_O_FILES) \
	$(RVL_SDK_MTX_O_FILES) \
	$(RVL_SDK_DVD_O_FILES) \
	$(RVL_SDK_VI_O_FILES) \
	$(RVL_SDK_PAD_O_FILES) \
	$(RVL_SDK_AI_O_FILES) \
	$(RVL_SDK_AX_O_FILES) \
	$(RVL_SDK_AXFX_O_FILES) \
	$(RVL_SDK_DSP_O_FILES) \
	$(RVL_SDK_GX_O_FILES)

INIT_O_FILES :=\
	$(BUILD_DIR)/asm/init.o

GAME_O_FILES :=\
	$(BUILD_DIR)/asm/game.o

LIB_O_FILES :=\
	$(BUILD_DIR)/asm/lib.o

GAME_UTIL_FILES :=\
	$(BUILD_DIR)/asm/game_util.o

EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

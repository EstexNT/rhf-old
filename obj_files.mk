# RVL SDK, Metrowerks libraries are split into several parts for whatever reason

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

RVL_SDK_1_O_FILES :=\
	$(RVL_SDK_EXI_O_FILES) \
	$(RVL_SDK_SI_O_FILES)
	
RVL_SDK_2_O_FILES :=\
	$(RVL_SDK_MEM_O_FILES) \
	$(RVL_SDK_EUART_O_FILES) \
	$(RVL_SDK_FS_O_FILES) \
	$(RVL_SDK_IPC_O_FILES) \
	$(RVL_SDK_NAND_O_FILES) \
	$(RVL_SDK_SC_O_FILES) \
	$(RVL_SDK_WENC_O_FILES) \
	$(RVL_SDK_ARC_O_FILES) \
	$(RVL_SDK_CX_O_FILES) \
	$(RVL_SDK_WPAD_O_FILES) 


include obj_files_mw.mk
MW_O_FILES :=\
	$(PPC_EABI_SUPPORT_RUNTIME_O_FILES) \
	$(PPC_EABI_SUPPORT_MSL_C_O_FILES)

MW_1_O_FILES :=\
	$(PPC_EABI_SUPPORT_METROTRK_O_FILES)


NDEV_O_FILES :=\
	$(BUILD_DIR)/asm/NdevExi2A/DebuggerDriver.o \
	$(BUILD_DIR)/asm/NdevExi2A/exi.o


INIT_O_FILES :=\
	$(BUILD_DIR)/asm/init.o

GAME_O_FILES :=\
	$(BUILD_DIR)/asm/game.o

LIB_O_FILES :=\
	$(BUILD_DIR)/asm/lib.o \
	$(BUILD_DIR)/asm/init_1.o

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

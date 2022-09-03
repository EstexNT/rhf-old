RVL_SDK_BASE_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/base/PPCArch.o

RVL_SDK_OS_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/os/OS.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAlarm.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAlloc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSArena.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAudioSystem.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSCache.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSContext.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSError.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSExec.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSFatal.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSFont.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSInterrupt.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSLink.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMessage.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMemory.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMutex.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSReboot.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSReset.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSRtc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSSync.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSThread.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSTime.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSUtf.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSIpc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSStateTM.o \
	$(BUILD_DIR)/asm/RevoSDK/os/__start.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSPlayRecord.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSStateFlags.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSNet.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSNandbootInfo.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSPlayTime.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSCrc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSLaunch.o \
	$(BUILD_DIR)/asm/RevoSDK/os/__ppc_eabi_init.o 

RVL_SDK_MTX_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtxvec.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx44.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/vec.o 

RVL_SDK_DVD_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdfs.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdqueue.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvderror.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdidutils.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdFatal.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdDeviceError.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd_broadway.o 

RVL_SDK_VI_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/vi/vi.o \
	$(BUILD_DIR)/asm/RevoSDK/vi/i2c.o \
	$(BUILD_DIR)/asm/RevoSDK/vi/vi3in1.o 

RVL_SDK_PAD_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/pad/Pad.o

RVL_SDK_AI_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/ai/ai.o

RVL_SDK_AX_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/ax/AX.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXAlloc.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXAux.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXCL.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXOut.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXSPB.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXVPB.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXComp.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AXProf.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/DSPCode.o 

RVL_SDK_AXFX_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHi.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHiExp.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXHooks.o 

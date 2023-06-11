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

RVL_SDK_DSP_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp.o \
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp_debug.o \
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp_task.o 

RVL_SDK_GX_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXInit.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXFifo.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXAttr.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXMisc.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXGeometry.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXFrameBuf.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXLight.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTexture.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXBump.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTev.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXPixel.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXDisplayList.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTransform.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXPerf.o 

RVL_SDK_EXI_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/exi/EXIBios.o \
	$(BUILD_DIR)/asm/RevoSDK/exi/EXIUart.o \
	$(BUILD_DIR)/asm/RevoSDK/exi/EXICommon.o 

RVL_SDK_SI_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/si/SIBios.o \
	$(BUILD_DIR)/asm/RevoSDK/si/SISamplingRate.o 

RVL_SDK_MEM_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_heapCommon.o \
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_expHeap.o \
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_frameHeap.o \
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_allocator.o \
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_list.o 

RVL_SDK_EUART_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/euart/euart.o

RVL_SDK_FS_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/fs/fs.o

RVL_SDK_IPC_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcMain.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcclt.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/memory.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcProfile.o 

# cleanup
RVL_SDK_NAND_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/nand/nand.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDOpenClose.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDCore.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDCheck.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDLogging.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDErrorMessage.o 

# cleanup
RVL_SDK_SC_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/sc/scsystem.o \
	$(BUILD_DIR)/asm/RevoSDK/sc/scapi.o \
	$(BUILD_DIR)/asm/RevoSDK/sc/scapi_prdinfo.o 

# cleanup 
RVL_SDK_WENC_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/wenc/wenc.o 

# cleanup
RVL_SDK_ARC_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/arc/arc.o 

# cleanup
RVL_SDK_CX_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/cx/CXStreamingUncompression.o \
	$(BUILD_DIR)/asm/RevoSDK/cx/CXUncompression.o \
	$(BUILD_DIR)/asm/RevoSDK/cx/CXSecureUncompression.o 

# cleanup
RVL_SDK_WPAD_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPAD.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADHIDParser.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADEncrypt.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADMem.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/lint.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/WUD.o \
	$(BUILD_DIR)/asm/RevoSDK/wpad/WUDHidHost.o 

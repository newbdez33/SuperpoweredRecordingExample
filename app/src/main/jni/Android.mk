LOCAL_PATH := $(call my-dir)
SUPERPOWERED_PATH := /Users/z33/Downloads/SuperpoweredSDK/Superpowered
LAME_LIBMP3_DIR := lame_3.99.5_libmp3lame

include $(CLEAR_VARS)
LOCAL_MODULE := Superpowered
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
	LOCAL_SRC_FILES := $(SUPERPOWERED_PATH)/libSuperpoweredAndroidARM.a
else
	ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
		LOCAL_SRC_FILES := $(SUPERPOWERED_PATH)/libSuperpoweredAndroidARM64.a
	else
		ifeq ($(TARGET_ARCH_ABI),x86_64)
			LOCAL_SRC_FILES := $(SUPERPOWERED_PATH)/libSuperpoweredAndroidX86_64.a
		else
			LOCAL_SRC_FILES := $(SUPERPOWERED_PATH)/libSuperpoweredAndroidX86.a
		endif
	endif
endif
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := SuperpoweredExample

LOCAL_SRC_FILES := \
    SuperpoweredExample.cpp \
    $(SUPERPOWERED_PATH)/SuperpoweredAndroidAudioIO.cpp \
	$(LAME_LIBMP3_DIR)/bitstream.c $(LAME_LIBMP3_DIR)/fft.c $(LAME_LIBMP3_DIR)/id3tag.c $(LAME_LIBMP3_DIR)/mpglib_interface.c $(LAME_LIBMP3_DIR)/presets.c $(LAME_LIBMP3_DIR)/quantize.c $(LAME_LIBMP3_DIR)/reservoir.c $(LAME_LIBMP3_DIR)/tables.c $(LAME_LIBMP3_DIR)/util.c $(LAME_LIBMP3_DIR)/VbrTag.c $(LAME_LIBMP3_DIR)/encoder.c $(LAME_LIBMP3_DIR)/gain_analysis.c $(LAME_LIBMP3_DIR)/lame.c $(LAME_LIBMP3_DIR)/newmdct.c $(LAME_LIBMP3_DIR)/psymodel.c $(LAME_LIBMP3_DIR)/quantize_pvt.c $(LAME_LIBMP3_DIR)/set_get.c $(LAME_LIBMP3_DIR)/takehiro.c $(LAME_LIBMP3_DIR)/vbrquantize.c $(LAME_LIBMP3_DIR)/version.c lame_util.c
LOCAL_C_INCLUDES += $(SUPERPOWERED_PATH)

LOCAL_LDLIBS := -llog -landroid -lOpenSLES
LOCAL_STATIC_LIBRARIES := Superpowered
LOCAL_CFLAGS = -O3 -DSTDC_HEADERS
include $(BUILD_SHARED_LIBRARY)

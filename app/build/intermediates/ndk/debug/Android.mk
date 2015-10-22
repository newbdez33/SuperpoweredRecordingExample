LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := app
LOCAL_SRC_FILES := \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Android.mk \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Application.mk \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/SuperpoweredExample.cpp \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAndroidARM.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAndroidARM64.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAndroidX86.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAndroidX86_64.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAudioIOS.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/libSuperpoweredAudioOSX.a \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/SuperpoweredAndroidAudioIO.cpp \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/SuperpoweredIOSAudioOutput.mm \
	/Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni/Superpowered/SuperpoweredOSXAudioIO.mm \

LOCAL_C_INCLUDES += /Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/main/jni
LOCAL_C_INCLUDES += /Users/z33/Downloads/SuperpoweredSDK/Android/CrossExample/app/src/debug/jni

include $(BUILD_SHARED_LIBRARY)

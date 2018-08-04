
ROOT_PATH := $(call my-dir)


include $(CLEAR_VARS)

TARGET_PLATFORM := android-23
APP_PLATFORM := android-23

LOCAL_ARM_MODE := arm
LOCAL_MODULE := tremolo
LOCAL_PATH := $(ROOT_PATH)/external/tremolo/Tremolo
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)

LOCAL_CFLAGS := -ffast-math -D_ARM_ASSEM_
# Assembly code in asm_arm.h does not compile with Clang.
LOCAL_CLANG_ASFLAGS += \
    -no-integrated-as
endif
LOCAL_CFLAGS += -O2 -D_GNU_SOURCE -DONLY_C -funsigned-char -Wall -Wno-unused-variable
LOCAL_SRC_FILES := bitwise.c \
	codebook.c \
	dsp.c \
	floor0.c \
	floor1.c \
	floor_lookup.c \
	framing.c \
	treminfo.c \
	mapping0.c \
	mdct.c \
	misc.c \
	res012.c \
	vorbisfile.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += ../native/include

LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(LOCAL_PATH)/../av.mk

LOCAL_SRC_FILES := $(FFFILES)

LOCAL_C_INCLUDES :=		\
	$(LOCAL_PATH)		\
	$(LOCAL_PATH)/..	\
	$(LOCAL_PATH)/../ndk/$(LIBAV_CONFIG_TYPE)

LOCAL_CFLAGS += $(FFCFLAGS)

ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_CFLAGS += -fasm -march=atom -ffast-math -msse3 -mfpmath=sse -O3 
endif

LOCAL_ASMFLAGS += -P$(LOCAL_PATH)/../ndk/$(LIBAV_CONFIG_TYPE)/config.asm

LOCAL_LDLIBS := -lz
LOCAL_SHARED_LIBRARIES := $(AFFLIBS)

LOCAL_MODULE := $(FFNAME)

LOCAL_MODULE_TAGS := optional

LOCAL_ARM_MODE := arm

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_ARM_NEON := true
endif
include $(BUILD_SHARED_LIBRARY)

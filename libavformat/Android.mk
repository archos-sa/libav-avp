LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(LOCAL_PATH)/../av.mk

LOCAL_SRC_FILES := $(FFFILES)

LOCAL_C_INCLUDES :=		\
	$(LOCAL_PATH)		\
	$(LOCAL_PATH)/..	\
	$(LIBAV_CONFIG_DIR)

LOCAL_CFLAGS += $(FFCFLAGS)
LOCAL_CFLAGS += -include "string.h" -Dipv6mr_interface=ipv6mr_ifindex

LOCAL_LDLIBS := -lz
LOCAL_SHARED_LIBRARIES := $(AFFLIBS)

LOCAL_MODULE := $(FFNAME)

LOCAL_MODULE_TAGS := samples

LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true

include $(BUILD_SHARED_LIBRARY)

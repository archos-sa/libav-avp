LIBAV_CONFIG_TYPE := full_x86_64

LOCAL_PATH := $(call my-dir)
LIBAV_DIR := $(LOCAL_PATH)/../../..

include $(LIBAV_DIR)/ndkbuild.mk

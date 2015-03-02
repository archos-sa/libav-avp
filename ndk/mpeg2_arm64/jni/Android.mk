LIBAV_CONFIG_TYPE := mpeg2_arm64

LOCAL_PATH := $(call my-dir)
LIBAV_DIR := $(LOCAL_PATH)/../../..

include $(LIBAV_DIR)/ndkbuild.mk

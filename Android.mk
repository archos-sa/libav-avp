LIBAV_DIR := $(shell readlink -m $(call my-dir))
LIBAV_CONFIG_DIR := $(NDK_APP_OUT)/LIBAV_CONFIG

$(shell \
	mkdir -p $(LIBAV_CONFIG_DIR) && \
	make -C $(LIBAV_CONFIG_DIR) -f $(LIBAV_DIR)/configure.mk \
	NDK_ROOT=$(NDK_ROOT) \
	TARGET_PRODUCT=$(TARGET_PRODUCT) \
	LIBAV_DIR=$(LIBAV_DIR) \
	INCLUDE_OUT_DIR=../include \
	> /dev/null 2>&1)

include $(all-subdir-makefiles)

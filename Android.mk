$(shell \
	make -C $(call my-dir) -f configure.mk \
	ANDROID_SRC=$(shell pwd) \
	TARGET_PRODUCT=$(TARGET_PRODUCT) \
	> /tmp/lala 2>&1)

include $(all-subdir-makefiles)

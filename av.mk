# LOCAL_PATH is one of libavutil, libavcodec, libavformat, or libswscale

#include $(LOCAL_PATH)/../config-$(TARGET_ARCH).mak
include $(LOCAL_PATH)/../ndk/$(LIBAV_CONFIG_TYPE)/config.mak

SRC_PATH := $(LOCAL_PATH)/..
SUBDIR := $(notdir $(LOCAL_PATH))/

FFLIBS :=
FFLIBS-yes :=
OBJS :=
OBJS-yes :=
ARMV5TE-OBJS :=
ARMV5TE-OBJS-yes :=
ARMV6-OBJS :=
ARMV6-OBJS-yes :=
ARMVFP-OBJS :=
ARMVFP-OBJS-yes :=
NEON-OBJS :=
NEON-OBJS-yes :=
MMI-OBJS :=
MMI-OBJS-yes :=
ALTIVEC-OBJS :=
ALTIVEC-OBJS-yes :=
VIS-OBJS :=
VIS-OBJS-yes :=
MMX-OBJS :=
MMX-OBJS-yes :=
YASM-OBJS :=
YASM-OBJS-yes :=
include $(LOCAL_PATH)/Makefile
-include $(LOCAL_PATH)/arm/Makefile
include $(SRC_PATH)/arch.mak

# collect objects
OBJS += $(OBJS-yes)

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
FFNAME := lib$(NAME)
AFFLIBS := $(addprefix lib,$(FFLIBS-yes) $(FFLIBS))
else
FFNAME := $(addsuffix _no_neon,lib$(NAME))
AFFLIBS := $(addsuffix _no_neon,$(addprefix lib,$(FFLIBS-yes) $(FFLIBS)))
endif

FFCFLAGS  = -DHAVE_AV_CONFIG_H -Wno-sign-compare -Wno-switch -Wno-pointer-sign -std=c99

OBJS := $(patsubst $(SUBDIR)%,%,$(OBJS))

ALL_S_FILES := $(wildcard $(LOCAL_PATH)/$(TARGET_ARCH)/*.S)
ALL_S_FILES := $(addprefix $(TARGET_ARCH)/, $(notdir $(ALL_S_FILES)))

ifneq ($(ALL_S_FILES),)
ALL_S_OBJS := $(patsubst %.S,%.o,$(ALL_S_FILES))
C_OBJS := $(filter-out $(ALL_S_OBJS),$(OBJS))
S_OBJS := $(filter $(ALL_S_OBJS),$(OBJS))
else
C_OBJS := $(OBJS)
S_OBJS :=
endif

C_FILES := $(patsubst %.o,%.c,$(C_OBJS))
S_FILES := $(patsubst %.o,%.S,$(S_OBJS))

FFFILES := $(sort $(S_FILES)) $(sort $(C_FILES))

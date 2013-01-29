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
ifeq ($(TARGET_ARCH),x86)
-include $(LOCAL_PATH)/x86/Makefile
else
ifeq ($(TARGET_ARCH),arm)
-include $(LOCAL_PATH)/arm/Makefile
endif
endif
include $(SRC_PATH)/arch.mak

ifeq ($(TARGET_ARCH_ABI),x86)
ASM_SUFFIX := .asm
else
ASM_SUFFIX := .S
endif

# collect objects
OBJS += $(OBJS-yes)

ifeq ($(TARGET_ARCH_ABI),armeabi)
FFNAME := $(addsuffix _no_neon,lib$(NAME))
AFFLIBS := $(addsuffix _no_neon,$(addprefix lib,$(FFLIBS-yes) $(FFLIBS)))
else
FFNAME := lib$(NAME)
AFFLIBS := $(addprefix lib,$(FFLIBS-yes) $(FFLIBS))
endif

FFCFLAGS  = -DHAVE_AV_CONFIG_H -Wno-sign-compare -Wno-switch -Wno-pointer-sign -std=c99

OBJS := $(patsubst $(SUBDIR)%,%,$(OBJS))

ALL_ASM_FILES := $(wildcard $(LOCAL_PATH)/$(TARGET_ARCH)/*$(ASM_SUFFIX))
ALL_ASM_FILES := $(addprefix $(TARGET_ARCH)/, $(notdir $(ALL_ASM_FILES)))

ifneq ($(ALL_ASM_FILES),)
ALL_ASM_OBJS := $(patsubst %$(ASM_SUFFIX),%.o,$(ALL_ASM_FILES))
C_OBJS := $(filter-out $(ALL_ASM_OBJS),$(OBJS))
ASM_OBJS := $(filter $(ALL_ASM_OBJS),$(OBJS))
else
C_OBJS := $(OBJS)
ASM_OBJS :=
endif

C_FILES := $(patsubst %.o,%.c,$(C_OBJS))
ASM_FILES := $(patsubst %.o,%$(ASM_SUFFIX),$(ASM_OBJS))

FFFILES := $(sort $(ASM_FILES)) $(sort $(C_FILES))

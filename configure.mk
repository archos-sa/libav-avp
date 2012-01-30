TOOLCHAIN=${ANDROID_SRC}/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x
CROSS=${TOOLCHAIN}/bin/arm-linux-androideabi-
ANDROID_OUT=${ANDROID_SRC}/out/debug/target/product/$(TARGET_PRODUCT)
CRT_PATH=${ANDROID_OUT}/obj/lib
SYSTEM=${ANDROID_OUT}/system
LDSCRIPTS_PATH=${ANDROID_SRC}/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/arm-eabi/lib/ldscripts

BIONIC=${ANDROID_SRC}/bionic
LIBC=${BIONIC}/libc

CFLAGS= \
	-fPIC -DANDROID -DPIC \
	-march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -marm \
	-I${LIBC}/arch-arm/include \
        -I${LIBC}/include \
        -I${LIBC}/libstdc++/include \
        -I${LIBC}/kernel/common \
        -I${LIBC}/kernel/arch-arm \
        -I${BIONIC}/libm/include \
        -I${BIONIC}/libm/include/arm

LDFLAGS= \
	-Wl,-T,${LDSCRIPTS_PATH}/armelf.x \
	-Wl,-rpath-link=${SYSTEM}/lib \
	-L${SYSTEM}/lib \
	-nostdlib \
	${CRT_PATH}/crtbegin_dynamic.o \
	${CRT_PATH}/crtend_android.o \
	-lc -lm -ldl

include configure_common.mk

config.mak: configure.mk configure_common.mk configure
	./configure --target-os=linux \
		--arch=armv7a \
		--enable-cross-compile \
		--cc=${CROSS}gcc \
		--cross-prefix=${CROSS} \
		--nm=${CROSS}nm \
		--extra-cflags="${CFLAGS}" \
		--extra-ldflags="${LDFLAGS}" \
		--prefix=/system  \
		--libdir=/system/lib \
		${CONFIG_LIBAV}

all: config.mak

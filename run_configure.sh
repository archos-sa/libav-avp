#!/bin/sh

NDK_ROOT=../../android-ndk

TOOLCHAIN_PATH=${NDK_ROOT}/toolchains
TOOLCHAIN=${TOOLCHAIN_PATH}/arm-linux-androideabi-4.6/prebuilt/linux-x86
CROSS=${TOOLCHAIN}/bin/arm-linux-androideabi-
CRT_PATH=${TOOLCHAIN}/lib/gcc/arm-linux-androideabi/4.6.x-google/armv7-a
SYSTEM_LIB=${NDK_ROOT}/platforms/android-9/arch-arm/usr/lib
LDSCRIPTS=${TOOLCHAIN}/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x

CFLAGS="-fPIC -DANDROID -DPIC \
	-march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -marm \
	-I${NDK_ROOT}/platforms/android-9/arch-arm/usr/include \
	-I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/4.6/include \
	-I${TOOLCHAIN}/include"

CFLAGS_NO_NEON="-fPIC -DANDROID -DPIC \
	-march=armv7-a -mtune=cortex-a8 -mfloat-abi=softfp -marm \
	-I${NDK_ROOT}/platforms/android-9/arch-arm/usr/include \
	-I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/4.6/include \
	-I${TOOLCHAIN}/include"

LDFLAGS="-Wl,-T,${LDSCRIPTS} \
	-Wl,-rpath-link=${SYSTEM_LIB} \
	-L${SYSTEM_LIB} \
	-nostdlib \
	${CRT_PATH}/crtbegin.o \
	${CRT_PATH}/crtend.o \
	-lc -lm -ldl"

for type in base archos full;do
	. ./config_${type}.sh

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
	mv config.mak ndk/${type}
	mv config.h ndk/${type}
done

for type in base_no_neon archos_no_neon full_no_neon;do
	. ./config_${type}.sh

	./configure --target-os=linux \
		--arch=armv5te \
		--enable-cross-compile \
		--cc=${CROSS}gcc \
		--cross-prefix=${CROSS} \
		--nm=${CROSS}nm \
		--extra-cflags="${CFLAGS_NO_NEON}" \
		--extra-ldflags="${LDFLAGS}" \
		--prefix=/system  \
		--libdir=/system/lib \
		${CONFIG_LIBAV}
	mv config.mak ndk/${type}
	mv config.h ndk/${type}
done

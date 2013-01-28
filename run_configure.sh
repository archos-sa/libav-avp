#!/bin/sh

NDK_ROOT=../../android-ndk

TOOLCHAIN_PATH=${NDK_ROOT}/toolchains

TOOLCHAIN_ARM=${TOOLCHAIN_PATH}/arm-linux-androideabi-4.6/prebuilt/linux-x86
CROSS_ARM=${TOOLCHAIN_ARM}/bin/arm-linux-androideabi-
CRT_PATH_ARM=${TOOLCHAIN_ARM}/lib/gcc/arm-linux-androideabi/4.6.x-google/armv7-a
SYSTEM_LIB_ARM=${NDK_ROOT}/platforms/android-9/arch-arm/usr/lib
LDSCRIPTS_ARM=${TOOLCHAIN_ARM}/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x

TOOLCHAIN_X86=${TOOLCHAIN_PATH}/x86-4.6/prebuilt/linux-x86
CROSS_X86=${TOOLCHAIN_X86}/bin/i686-linux-android-
CRT_PATH_X86=${TOOLCHAIN_X86}/lib/gcc/i686-linux-android/4.6.x-google
SYSTEM_LIB_X86=${NDK_ROOT}/platforms/android-9/arch-x86/usr/lib
LDSCRIPTS_X86=${TOOLCHAIN_X86}/i686-linux-android/lib/ldscripts/elf_i386.x

CFLAGS_COMMON="-fPIC -DANDROID -DPIC \
	-I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/4.6/include \
	-I${TOOLCHAIN}/include"

CFLAGS_ARM_NEON="-march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -marm \
	-I${NDK_ROOT}/platforms/android-9/arch-arm/usr/include \
	${CFLAGS_COMMON}"

CFLAGS_ARM_NO_NEON="-march=armv7-a -mtune=cortex-a8 -mfloat-abi=softfp -marm \
	-I${NDK_ROOT}/platforms/android-9/arch-arm/usr/include \
	${CFLAGS_COMMON}"

CFLAGS_X86="-I${NDK_ROOT}/platforms/android-9/arch-x86/usr/include \
	${CFLAGS_COMMON}"

LDFLAGS_ARM="-Wl,-T,${LDSCRIPTS_ARM} \
	-Wl,-rpath-link=${SYSTEM_LIB_ARM} \
	-L${SYSTEM_LIB_ARM} \
	-nostdlib \
	${CRT_PATH_ARM}/crtbegin.o \
	${CRT_PATH_ARM}/crtend.o \
	-lc -lm -ldl"

LDFLAGS_X86="-Wl,-T,${LDSCRIPTS_X86} \
	-Wl,-rpath-link=${SYSTEM_LIB_X86} \
	-L${SYSTEM_LIB_X86} \
	-nostdlib \
	${CRT_PATH_X86}/crtbegin.o \
	${CRT_PATH_X86}/crtend.o \
	-lc -lm -ldl"

CONFIG_LIBAV_EXTRA_ARM_NO_NEON="--disable-armv6 \
	--disable-armv6t2 \
	--disable-armvfp \
	--disable-neon"

CONFIG_LIBAV_EXTRA_X86="--disable-mmx \
	--disable-mmx2"

for type in base archos mpeg2 ac3 full;do
	for cpu_type in "neon" "no_neon" "x86";do
		out_path=
		arch=
		cflags=
		config_libav=
		ldflags=
		cross=
		. ./config_${type}.sh

		if [ "$cpu_type" = "neon" ];then
			cross=${CROSS_ARM}
			arch=armv7a
			cflags=${CFLAGS_ARM_NEON}
			ldflags=${LDFLAGS_ARM}
			config_libav=${CONFIG_LIBAV}
			out_path=ndk/${type}
		elif [ "$cpu_type" = "no_neon" ];then
			cross=${CROSS_ARM}
			arch=armv5te
			cflags=${CFLAGS_ARM_NO_NEON}
			ldflags=${LDFLAGS_ARM}
			config_libav="${CONFIG_LIBAV} \
				${CONFIG_LIBAV_EXTRA_ARM_NO_NEON}"
			out_path=ndk/${type}_no_neon
		else
			cross=${CROSS_X86}
			arch=x86
			cflags=${CFLAGS_X86}
			ldflags=${LDFLAGS_X86}
			config_libav="${CONFIG_LIBAV} \
				${CONFIG_LIBAV_EXTRA_X86}"
			out_path=ndk/${type}_x86
		fi

		./configure --target-os=linux \
			--arch=${arch} \
			--enable-cross-compile \
			--cc=${cross}gcc \
			--cross-prefix=${cross} \
			--nm=${cross}nm \
			--extra-cflags="${cflags}" \
			--extra-ldflags="${ldflags}" \
			--prefix=/system  \
			--libdir=/system/lib \
			${config_libav}
		mkdir -p ${out_path}/libavutil
		mv libavutil/avconfig.h ${out_path}/libavutil/
		mv config.mak ${out_path}
		mv config.h ${out_path}
	done
done

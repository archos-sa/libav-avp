#!/bin/sh

NDK_ROOT=../../android-ndk

TOOLCHAIN_PATH=${NDK_ROOT}/toolchains
TOOLCHAIN=${TOOLCHAIN_PATH}/arm-linux-androideabi-4.6/prebuilt/linux-x86
CROSS=${TOOLCHAIN}/bin/arm-linux-androideabi-
CRT_PATH=${TOOLCHAIN}/lib/gcc/arm-linux-androideabi/4.6.x-google/armv7-a
SYSTEM_LIB=${NDK_ROOT}/platforms/android-9/arch-arm/usr/lib
LDSCRIPTS=${TOOLCHAIN}/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x

CFLAGS_NEON="-fPIC -DANDROID -DPIC \
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

CONFIG_LIBAV_EXTRA_NO_NEON="--disable-armv6 \
	--disable-armv6t2 \
	--disable-armvfp \
	--disable-neon"

for type in base archos mpeg2 full;do
	for cpu_type in "neon" "no_neon";do
		out_path=
		arch=
		cflags=
		config_libav=
		. ./config_${type}.sh

		if [ "$cpu_type" = "neon" ];then
			arch=armv7a
			cflags=${CFLAGS_NEON}
			config_libav=${CONFIG_LIBAV}
			out_path=ndk/${type}
		else
			arch=armv5te
			cflags=${CFLAGS_NO_NEON}
			config_libav="${CONFIG_LIBAV} \
				${CONFIG_LIBAV_EXTRA_NO_NEON}"
			out_path=ndk/${type}_no_neon
		fi

		./configure --target-os=linux \
			--arch=${arch} \
			--enable-cross-compile \
			--cc=${CROSS}gcc \
			--cross-prefix=${CROSS} \
			--nm=${CROSS}nm \
			--extra-cflags="${cflags}" \
			--extra-ldflags="${LDFLAGS}" \
			--prefix=/system  \
			--libdir=/system/lib \
			${config_libav}
		mv libavutil/avconfig.h ${out_path}/libavutil
		mv config.mak ${out_path}
		mv config.h ${out_path}
	done
done

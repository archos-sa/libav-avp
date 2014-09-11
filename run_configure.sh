#!/bin/bash

NDK_ROOT=../../android-ndk

HOST=linux-x86_64
GCC_V=4.9

TOOLCHAIN_PATH=${NDK_ROOT}/toolchains

GCCNAME_arm=arm-linux-androideabi
TLNAME_arm=arm-linux-androideabi
LIB_arm=lib
PLATFORM_arm=android-14

GCCNAME_x86=i686-linux-android
TLNAME_x86=x86
LIB_x86=lib
PLATFORM_x86=android-14

GCCNAME_mips=mipsel-linux-android
TLNAME_mips=mipsel-linux-android
LIB_mips=lib
PLATFORM_mips=android-14

GCCNAME_arm64=aarch64-linux-android
TLNAME_arm64=aarch64-linux-android
LIB_arm64=lib
PLATFORM_arm64=android-L

GCCNAME_x86_64=x86_64-linux-android
TLNAME_x86_64=x86_64
LIB_x86_64=lib64
PLATFORM_x86_64=android-L

GCCNAME_mips64=mips64el-linux-android
TLNAME_mips64=mips64el-linux-android
LIB_mips64=lib64
PLATFORM_mips64=android-L

function tlname ()
{
	eval echo $\TLNAME_$1
}

function gccname ()
{
	eval echo $\GCCNAME_$1
}

function lib ()
{
	eval echo $\LIB_$1
}

function platform ()
{
	eval echo $\PLATFORM_$1
}

function tlpath ()
{
	echo ${TOOLCHAIN_PATH}/`tlname $1`-${GCC_V}/prebuilt/${HOST}
}

function cross ()
{
	echo `tlpath $1`/bin/`gccname $1`-
}

function cflags ()
{
	ext_cflags=
	if [ "$1" = "arm" ];then
		if [ "$2" = "neon" ];then
			ext_cflags="-march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -marm -mvectorize-with-neon-quad"
		else
			ext_cflags="-march=armv7-a -mtune=cortex-a8 -mfloat-abi=softfp -marm"
		fi
	fi
	echo "$ext_cflags" \
		"-I${NDK_ROOT}/platforms/`platform $1`/arch-${1}/usr/include" \
		"-fPIC -DANDROID -DPIC" \
		"-I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/${GCC_V}/include"
}

function ldflags ()
{
	rpathlink="${NDK_ROOT}/platforms/`platform $1`/arch-$1/usr/`lib $1`"
	ext_crtpath=
	if [ "$1" = "arm" ];then
		if [ "$2" = "neon" ];then
			ext_crtpath="/armv7-a"
		fi
	fi
	crtpath="`tlpath $1`/lib/gcc/`gccname $1`/${GCC_V}${ext_crtpath}"
	echo "-L${rpathlink}" \
		"${crtpath}/crtbegin.o" \
		"${crtpath}/crtend.o" \
		"-nostdlib" \
		"-lc -lm -ldl"
}

function config_libav ()
{
	ext_config=
	if [ "$1" = "arm" ];then
		if [ "$2" != "neon" ];then
			ext_config="--disable-armv6 --disable-armv6t2 --disable-neon"
		fi
	elif [ "$1" = "x86" -o "$1" = "x86_64" ];then
		ext_config="--disable-yasm"
	fi
	echo ${ext_config} ${CONFIG_LIBAV}
}

for type in base archos mpeg2 ac3 full hacenter;do
	for cpu_type in "neon" "no_neon" "x86" "mips" "arm64" "x86_64";do
		out_path=
		arch=
		cflags=
		config_libav=
		ldflags=
		cross=
		arg1=
		arg2=

		. ./config_${type}.sh

		if [ "$cpu_type" = "neon" ];then
			arg1="arm"
			arg2="neon"
			arch=armv7a
			out_path=ndk/${type}
		elif [ "$cpu_type" = "no_neon" ];then
			arg1="arm"
			arch=armv5te
			out_path=ndk/${type}_no_neon
		else
			arg1="$cpu_type"
			arch="$cpu_type"
			out_path=ndk/${type}_$cpu_type
		fi
		cross=`cross $arg1 $arg2`
		cflags=`cflags $arg1 $arg2`
		ldflags=`ldflags $arg1 $arg2`
		config_libav=`config_libav $arg1 $arg2`

		./configure --target-os=linux \
			--arch=${arch} \
			--enable-cross-compile \
			--cc=${cross}gcc \
			--cross-prefix=${cross} \
			--nm=${cross}nm \
			--ld=${cross}ld \
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

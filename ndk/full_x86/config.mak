# Automatically generated by configure - do not modify!
LIBAV_CONFIGURATION=--target-os=linux --arch=x86 --enable-cross-compile --cc=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc --cross-prefix=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android- --nm=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-nm --ld=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-ld --extra-cflags='-O3 -fasm -march=atom -ffast-math -msse3 -mfpmath=sse -I../../android-ndk/platforms/android-14/arch-x86/usr/include -fPIC -DANDROID -DPIC' --extra-ldflags='-L../../android-ndk/platforms/android-14/arch-x86/usr/lib ../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/lib/gcc/i686-linux-android/4.9/crtbegin.o ../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/lib/gcc/i686-linux-android/4.9/crtend.o -nostdlib -lc -lm -ldl' --prefix=/system --libdir=/system/lib --enable-asm --enable-yasm --enable-pic --cpu=i686 --enable-shared --disable-bzlib --disable-libfaac --disable-muxers --disable-bsfs --disable-avdevice --disable-devices --disable-filters --disable-encoders --enable-muxer=spdif --enable-protocols --enable-demuxers --enable-parsers --enable-decoders --disable-decoder=opus
prefix=/system
LIBDIR=$(DESTDIR)/system/lib
SHLIBDIR=$(DESTDIR)${prefix}/lib
INCDIR=$(DESTDIR)${prefix}/include
BINDIR=$(DESTDIR)${prefix}/bin
DATADIR=$(DESTDIR)${prefix}/share/avconv
DOCDIR=$(DESTDIR)${prefix}/share/doc/libav
MANDIR=$(DESTDIR)${prefix}/share/man
SRC_PATH=.
CC_IDENT=gcc 4.9 (GCC) 20140827 (prerelease)
ARCH=x86
INTRINSICS=none
CC=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc
AS=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc
LD=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-ld
DEPCC=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc
DEPCCFLAGS= $(CPPFLAGS)
DEPAS=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc
DEPASFLAGS= $(CPPFLAGS)
YASM=yasm
DEPYASM=yasm
AR=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-ar
ARFLAGS=rc
AR_O=$@
RANLIB=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-ranlib
STRIP=../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-strip
LN_S=ln -s -f
CPPFLAGS= -D_ISOC99_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -Dstrtod=avpriv_strtod -DPIC -DZLIB_CONST
CFLAGS=  -O3 -fasm -march=atom -ffast-math -msse3 -mfpmath=sse -I../../android-ndk/platforms/android-14/arch-x86/usr/include -fPIC -DANDROID -DPIC -march=i686 -std=c99 -fomit-frame-pointer -fPIC -g -Wdeclaration-after-statement -Wall -Wdisabled-optimization -Wpointer-arith -Wredundant-decls -Wcast-qual -Wwrite-strings -Wtype-limits -Wundef -Wmissing-prototypes -Wstrict-prototypes -Wno-parentheses -Wno-switch -Wno-format-zero-length -Wno-pointer-sign -O3 -fno-math-errno -fno-signed-zeros -fno-tree-vectorize -Werror=implicit-function-declaration -Werror=missing-prototypes -Werror=return-type -Werror=declaration-after-statement -Werror=vla -Wno-maybe-uninitialized
ASFLAGS=  -O3 -fasm -march=atom -ffast-math -msse3 -mfpmath=sse -I../../android-ndk/platforms/android-14/arch-x86/usr/include -fPIC -DANDROID -DPIC -march=i686 -fPIC -g
AS_C=-c
AS_O=-o $@
CC_C=-c
CC_E=-E -o $@
CC_O=-o $@
LD_O=-o $@
LD_LIB=-l%
LD_PATH=-L
DLLTOOL=
LDFLAGS= -L../../android-ndk/platforms/android-14/arch-x86/usr/lib ../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/lib/gcc/i686-linux-android/4.9/crtbegin.o ../../android-ndk/toolchains/x86-4.9/prebuilt/linux-x86_64/lib/gcc/i686-linux-android/4.9/crtend.o -nostdlib -lc -lm -ldl  
LDEXEFLAGS=
SHFLAGS=-shared -Wl,-soname,$$(@F)
STRIPFLAGS= -wN '..@*'
YASMFLAGS=-f elf  -DPIC -g dwarf2
BUILDSUF=
FULLNAME=$(NAME)$(BUILDSUF)
LIBPREF=lib
LIBSUF=.a
LIBNAME=$(LIBPREF)$(FULLNAME)$(LIBSUF)
SLIBPREF=lib
SLIBSUF=.so
EXESUF=
EXTRA_VERSION=
CCDEP=
CCDEP_FLAGS=
ASDEP=
ASDEP_FLAGS=
CC_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@
AS_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@
HOSTCC=gcc
HOSTLD=gcc
HOSTCFLAGS=  -std=c99 -Wall -O3
HOSTCPPFLAGS= -D_ISOC99_SOURCE -D_POSIX_C_SOURCE=200112 -D_XOPEN_SOURCE=600
HOSTEXESUF=
HOSTLDFLAGS= 
HOSTLIBS=-lm
DEPHOSTCC=gcc
DEPHOSTCCFLAGS= $(HOSTCCFLAGS)
HOSTCCDEP=
HOSTCCDEP_FLAGS=
HOSTCC_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@
HOSTCC_C=-c
HOSTCC_O=-o $@
HOSTLD_O=-o $@
TARGET_EXEC= 
TARGET_PATH=$(CURDIR)
TARGET_SAMPLES=$(SAMPLES)
CFLAGS-avplay=
ZLIB=-lz
LIB_INSTALL_EXTRA_CMD=$$(RANLIB) "$(LIBDIR)/$(LIBNAME)"
EXTRALIBS=-lm -lz 
COMPAT_OBJS= strtod.o
EXEOBJS=
INSTALL=install
LIBTARGET=
SLIBNAME=$(SLIBPREF)$(FULLNAME)$(SLIBSUF)
SLIBNAME_WITH_VERSION=$(SLIBNAME).$(LIBVERSION)
SLIBNAME_WITH_MAJOR=$(SLIBNAME).$(LIBMAJOR)
SLIB_CREATE_DEF_CMD=
SLIB_EXTRA_CMD=
SLIB_INSTALL_NAME=$(SLIBNAME_WITH_VERSION)
SLIB_INSTALL_LINKS=$(SLIBNAME_WITH_MAJOR) $(SLIBNAME)
SLIB_INSTALL_EXTRA_LIB=
SLIB_INSTALL_EXTRA_SHLIB=
SAMPLES:=$(LIBAV_SAMPLES)
libavcodec_VERSION=56.1.0
libavcodec_VERSION_MAJOR=56
libavcodec_VERSION_MINOR=1
libavdevice_VERSION=55.0.0
libavdevice_VERSION_MAJOR=55
libavdevice_VERSION_MINOR=0
libavfilter_VERSION=5.0.0
libavfilter_VERSION_MAJOR=5
libavfilter_VERSION_MINOR=0
libavformat_VERSION=56.4.0
libavformat_VERSION_MAJOR=56
libavformat_VERSION_MINOR=4
libavresample_VERSION=2.1.0
libavresample_VERSION_MAJOR=2
libavresample_VERSION_MINOR=1
libavutil_VERSION=54.3.0
libavutil_VERSION_MAJOR=54
libavutil_VERSION_MINOR=3
libswscale_VERSION=3.0.0
libswscale_VERSION_MAJOR=3
libswscale_VERSION_MINOR=0
avcodec_FFLIBS= avutil
avdevice_FFLIBS=avformat avcodec avutil
avfilter_FFLIBS=swscale avresample avutil
avformat_FFLIBS=avcodec avutil
avresample_FFLIBS= avutil
avutil_FFLIBS=
swscale_FFLIBS= avutil
LIBS-avconv=
LIBS-avplay=
LIBS-avprobe=
!ARCH_AARCH64=yes
!ARCH_ALPHA=yes
!ARCH_ARM=yes
!ARCH_AVR32=yes
!ARCH_AVR32_AP=yes
!ARCH_AVR32_UC=yes
!ARCH_BFIN=yes
!ARCH_IA64=yes
!ARCH_M68K=yes
!ARCH_MIPS=yes
!ARCH_MIPS64=yes
!ARCH_PARISC=yes
!ARCH_PPC=yes
!ARCH_PPC64=yes
!ARCH_S390=yes
!ARCH_SH4=yes
!ARCH_SPARC=yes
!ARCH_SPARC64=yes
!ARCH_TILEGX=yes
!ARCH_TILEPRO=yes
!ARCH_TOMI=yes
ARCH_X86=yes
ARCH_X86_32=yes
!ARCH_X86_64=yes
!HAVE_ARMV5TE=yes
!HAVE_ARMV6=yes
!HAVE_ARMV6T2=yes
!HAVE_ARMV8=yes
!HAVE_NEON=yes
!HAVE_VFP=yes
!HAVE_VFPV3=yes
!HAVE_ALTIVEC=yes
HAVE_DCBZL=yes
HAVE_LDBRX=yes
!HAVE_PPC4XX=yes
HAVE_AMD3DNOW=yes
HAVE_AMD3DNOWEXT=yes
HAVE_AVX=yes
HAVE_AVX2=yes
HAVE_FMA3=yes
HAVE_FMA4=yes
HAVE_MMX=yes
HAVE_MMXEXT=yes
HAVE_SSE=yes
HAVE_SSE2=yes
HAVE_SSE3=yes
HAVE_SSE4=yes
HAVE_SSE42=yes
HAVE_SSSE3=yes
HAVE_XOP=yes
HAVE_CPUNOP=yes
HAVE_I686=yes
HAVE_LOONGSON=yes
HAVE_VIS=yes
!HAVE_ARMV5TE_EXTERNAL=yes
!HAVE_ARMV6_EXTERNAL=yes
!HAVE_ARMV6T2_EXTERNAL=yes
!HAVE_ARMV8_EXTERNAL=yes
!HAVE_NEON_EXTERNAL=yes
!HAVE_VFP_EXTERNAL=yes
!HAVE_VFPV3_EXTERNAL=yes
!HAVE_ALTIVEC_EXTERNAL=yes
!HAVE_DCBZL_EXTERNAL=yes
!HAVE_LDBRX_EXTERNAL=yes
!HAVE_PPC4XX_EXTERNAL=yes
HAVE_AMD3DNOW_EXTERNAL=yes
HAVE_AMD3DNOWEXT_EXTERNAL=yes
HAVE_AVX_EXTERNAL=yes
HAVE_AVX2_EXTERNAL=yes
HAVE_FMA3_EXTERNAL=yes
HAVE_FMA4_EXTERNAL=yes
HAVE_MMX_EXTERNAL=yes
HAVE_MMXEXT_EXTERNAL=yes
HAVE_SSE_EXTERNAL=yes
HAVE_SSE2_EXTERNAL=yes
HAVE_SSE3_EXTERNAL=yes
HAVE_SSE4_EXTERNAL=yes
HAVE_SSE42_EXTERNAL=yes
HAVE_SSSE3_EXTERNAL=yes
HAVE_XOP_EXTERNAL=yes
!HAVE_CPUNOP_EXTERNAL=yes
!HAVE_I686_EXTERNAL=yes
!HAVE_LOONGSON_EXTERNAL=yes
!HAVE_VIS_EXTERNAL=yes
!HAVE_ARMV5TE_INLINE=yes
!HAVE_ARMV6_INLINE=yes
!HAVE_ARMV6T2_INLINE=yes
!HAVE_ARMV8_INLINE=yes
!HAVE_NEON_INLINE=yes
!HAVE_VFP_INLINE=yes
!HAVE_VFPV3_INLINE=yes
!HAVE_ALTIVEC_INLINE=yes
!HAVE_DCBZL_INLINE=yes
!HAVE_LDBRX_INLINE=yes
!HAVE_PPC4XX_INLINE=yes
HAVE_AMD3DNOW_INLINE=yes
HAVE_AMD3DNOWEXT_INLINE=yes
HAVE_AVX_INLINE=yes
HAVE_AVX2_INLINE=yes
HAVE_FMA3_INLINE=yes
HAVE_FMA4_INLINE=yes
HAVE_MMX_INLINE=yes
HAVE_MMXEXT_INLINE=yes
HAVE_SSE_INLINE=yes
HAVE_SSE2_INLINE=yes
HAVE_SSE3_INLINE=yes
HAVE_SSE4_INLINE=yes
HAVE_SSE42_INLINE=yes
HAVE_SSSE3_INLINE=yes
HAVE_XOP_INLINE=yes
!HAVE_CPUNOP_INLINE=yes
!HAVE_I686_INLINE=yes
!HAVE_LOONGSON_INLINE=yes
!HAVE_VIS_INLINE=yes
HAVE_ALIGNED_STACK=yes
!HAVE_FAST_64BIT=yes
HAVE_FAST_CLZ=yes
HAVE_FAST_CMOV=yes
HAVE_LOCAL_ALIGNED_8=yes
HAVE_LOCAL_ALIGNED_16=yes
HAVE_SIMD_ALIGN_16=yes
HAVE_ATOMICS_GCC=yes
!HAVE_ATOMICS_SUNCC=yes
!HAVE_ATOMICS_WIN32=yes
!HAVE_ATOMIC_CAS_PTR=yes
!HAVE_MACHINE_RW_BARRIER=yes
!HAVE_MEMORYBARRIER=yes
HAVE_MM_EMPTY=yes
!HAVE_RDTSC=yes
HAVE_SYNC_VAL_COMPARE_AND_SWAP=yes
HAVE_INLINE_ASM=yes
!HAVE_SYMVER=yes
HAVE_YASM=yes
!HAVE_BIGENDIAN=yes
HAVE_FAST_UNALIGNED=yes
!HAVE_ALSA_ASOUNDLIB_H=yes
!HAVE_ALTIVEC_H=yes
HAVE_ARPA_INET_H=yes
!HAVE_CDIO_PARANOIA_H=yes
!HAVE_CDIO_PARANOIA_PARANOIA_H=yes
!HAVE_DEV_BKTR_IOCTL_BT848_H=yes
!HAVE_DEV_BKTR_IOCTL_METEOR_H=yes
!HAVE_DEV_IC_BT8XX_H=yes
!HAVE_DEV_VIDEO_BKTR_IOCTL_BT848_H=yes
!HAVE_DEV_VIDEO_METEOR_IOCTL_METEOR_H=yes
!HAVE_DIRECT_H=yes
HAVE_DLFCN_H=yes
!HAVE_DXVA_H=yes
!HAVE_GSM_H=yes
!HAVE_IO_H=yes
!HAVE_MACH_MACH_TIME_H=yes
!HAVE_MACHINE_IOCTL_BT848_H=yes
!HAVE_MACHINE_IOCTL_METEOR_H=yes
HAVE_MALLOC_H=yes
HAVE_POLL_H=yes
!HAVE_SNDIO_H=yes
!HAVE_SOUNDCARD_H=yes
HAVE_SYS_MMAN_H=yes
HAVE_SYS_PARAM_H=yes
HAVE_SYS_RESOURCE_H=yes
HAVE_SYS_SELECT_H=yes
!HAVE_SYS_SOUNDCARD_H=yes
HAVE_SYS_TIME_H=yes
HAVE_SYS_UN_H=yes
!HAVE_SYS_VIDEOIO_H=yes
HAVE_UNISTD_H=yes
!HAVE_WINDOWS_H=yes
!HAVE_WINSOCK2_H=yes
!HAVE_INTRINSICS_NEON=yes
HAVE_ATANF=yes
HAVE_ATAN2F=yes
HAVE_CBRTF=yes
HAVE_COSF=yes
HAVE_EXP2=yes
HAVE_EXP2F=yes
HAVE_EXPF=yes
HAVE_ISINF=yes
HAVE_ISNAN=yes
HAVE_LDEXPF=yes
HAVE_LLRINT=yes
HAVE_LLRINTF=yes
!HAVE_LOG2=yes
!HAVE_LOG2F=yes
HAVE_LOG10F=yes
HAVE_LRINT=yes
HAVE_LRINTF=yes
HAVE_POWF=yes
HAVE_RINT=yes
HAVE_ROUND=yes
HAVE_ROUNDF=yes
HAVE_SINF=yes
HAVE_TRUNC=yes
HAVE_TRUNCF=yes
!HAVE_ALIGNED_MALLOC=yes
HAVE_CLOCK_GETTIME=yes
!HAVE_CLOSESOCKET=yes
!HAVE_COMMANDLINETOARGVW=yes
!HAVE_COTASKMEMFREE=yes
!HAVE_CRYPTGENRANDOM=yes
HAVE_DLOPEN=yes
HAVE_FCNTL=yes
HAVE_FLT_LIM=yes
HAVE_FORK=yes
HAVE_GETADDRINFO=yes
!HAVE_GETHRTIME=yes
HAVE_GETOPT=yes
!HAVE_GETPROCESSAFFINITYMASK=yes
!HAVE_GETPROCESSMEMORYINFO=yes
!HAVE_GETPROCESSTIMES=yes
HAVE_GETRUSAGE=yes
HAVE_GETSERVBYPORT=yes
!HAVE_GETSYSTEMTIMEASFILETIME=yes
HAVE_GETTIMEOFDAY=yes
HAVE_INET_ATON=yes
HAVE_ISATTY=yes
!HAVE_JACK_PORT_GET_LATENCY_RANGE=yes
HAVE_LOCALTIME_R=yes
!HAVE_MACH_ABSOLUTE_TIME=yes
!HAVE_MAPVIEWOFFILE=yes
HAVE_MEMALIGN=yes
HAVE_MKSTEMP=yes
HAVE_MMAP=yes
HAVE_MPROTECT=yes
HAVE_NANOSLEEP=yes
!HAVE_POSIX_MEMALIGN=yes
!HAVE_SCHED_GETAFFINITY=yes
!HAVE_SETCONSOLETEXTATTRIBUTE=yes
!HAVE_SETMODE=yes
HAVE_SETRLIMIT=yes
!HAVE_SLEEP=yes
HAVE_STRERROR_R=yes
HAVE_STRPTIME=yes
HAVE_SYSCONF=yes
!HAVE_SYSCTL=yes
HAVE_USLEEP=yes
!HAVE_VIRTUALALLOC=yes
HAVE_PTHREADS=yes
!HAVE_W32THREADS=yes
!HAVE_AS_DN_DIRECTIVE=yes
!HAVE_AS_FUNC=yes
!HAVE_ASM_MOD_Q=yes
HAVE_ATTRIBUTE_MAY_ALIAS=yes
HAVE_ATTRIBUTE_PACKED=yes
HAVE_EBP_AVAILABLE=yes
!HAVE_EBX_AVAILABLE=yes
!HAVE_GNU_AS=yes
!HAVE_IBM_ASM=yes
HAVE_INLINE_ASM_LABELS=yes
HAVE_PRAGMA_DEPRECATED=yes
!HAVE_SYMVER_ASM_LABEL=yes
!HAVE_SYMVER_GNU_ASM=yes
!HAVE_VFP_ARGS=yes
!HAVE_XFORM_ASM=yes
HAVE_XMM_CLOBBERS=yes
HAVE_SOCKLEN_T=yes
HAVE_STRUCT_ADDRINFO=yes
HAVE_STRUCT_GROUP_SOURCE_REQ=yes
HAVE_STRUCT_IP_MREQ_SOURCE=yes
HAVE_STRUCT_IPV6_MREQ=yes
HAVE_STRUCT_POLLFD=yes
HAVE_STRUCT_RUSAGE_RU_MAXRSS=yes
HAVE_STRUCT_SOCKADDR_IN6=yes
!HAVE_STRUCT_SOCKADDR_SA_LEN=yes
HAVE_STRUCT_SOCKADDR_STORAGE=yes
!HAVE_STRUCT_V4L2_FRMIVALENUM_DISCRETE=yes
HAVE_ATOMICS_NATIVE=yes
!HAVE_DOS_PATHS=yes
!HAVE_DXVA2_LIB=yes
!HAVE_LIBC_MSVCRT=yes
!HAVE_LIBDC1394_1=yes
!HAVE_LIBDC1394_2=yes
!HAVE_SDL=yes
HAVE_SECTION_DATA_REL_RO=yes
HAVE_THREADS=yes
!HAVE_VDPAU_X11=yes
!HAVE_XLIB=yes
!CONFIG_BSFS=yes
CONFIG_DECODERS=yes
CONFIG_DEMUXERS=yes
!CONFIG_ENCODERS=yes
!CONFIG_FILTERS=yes
!CONFIG_HWACCELS=yes
!CONFIG_INDEVS=yes
CONFIG_MUXERS=yes
!CONFIG_OUTDEVS=yes
CONFIG_PARSERS=yes
CONFIG_PROTOCOLS=yes
CONFIG_AVCODEC_EXAMPLE=yes
CONFIG_FILTER_AUDIO_EXAMPLE=yes
CONFIG_METADATA_EXAMPLE=yes
CONFIG_OUTPUT_EXAMPLE=yes
CONFIG_TRANSCODE_AAC_EXAMPLE=yes
!CONFIG_AVISYNTH=yes
!CONFIG_BZLIB=yes
!CONFIG_FREI0R=yes
!CONFIG_GNUTLS=yes
!CONFIG_LIBBS2B=yes
!CONFIG_LIBCDIO=yes
!CONFIG_LIBDC1394=yes
!CONFIG_LIBFAAC=yes
!CONFIG_LIBFDK_AAC=yes
!CONFIG_LIBFONTCONFIG=yes
!CONFIG_LIBFREETYPE=yes
!CONFIG_LIBGSM=yes
!CONFIG_LIBILBC=yes
!CONFIG_LIBMP3LAME=yes
!CONFIG_LIBOPENCORE_AMRNB=yes
!CONFIG_LIBOPENCORE_AMRWB=yes
!CONFIG_LIBOPENCV=yes
!CONFIG_LIBOPENJPEG=yes
!CONFIG_LIBOPUS=yes
!CONFIG_LIBPULSE=yes
!CONFIG_LIBRTMP=yes
!CONFIG_LIBSCHROEDINGER=yes
!CONFIG_LIBSPEEX=yes
!CONFIG_LIBTHEORA=yes
!CONFIG_LIBTWOLAME=yes
!CONFIG_LIBVO_AACENC=yes
!CONFIG_LIBVO_AMRWBENC=yes
!CONFIG_LIBVORBIS=yes
!CONFIG_LIBVPX=yes
!CONFIG_LIBWAVPACK=yes
!CONFIG_LIBWEBP=yes
!CONFIG_LIBX264=yes
!CONFIG_LIBX265=yes
!CONFIG_LIBXAVS=yes
!CONFIG_LIBXVID=yes
!CONFIG_OPENSSL=yes
!CONFIG_X11GRAB=yes
CONFIG_ZLIB=yes
!CONFIG_GRAY=yes
!CONFIG_HARDCODED_TABLES=yes
!CONFIG_RUNTIME_CPUDETECT=yes
CONFIG_SAFE_BITSTREAM_READER=yes
CONFIG_SHARED=yes
!CONFIG_SMALL=yes
!CONFIG_SRAM=yes
CONFIG_STATIC=yes
CONFIG_SWSCALE_ALPHA=yes
!CONFIG_DXVA2=yes
!CONFIG_VAAPI=yes
!CONFIG_VDA=yes
!CONFIG_VDPAU=yes
!CONFIG_GPL=yes
!CONFIG_NONFREE=yes
!CONFIG_VERSION3=yes
CONFIG_AVCODEC=yes
!CONFIG_AVDEVICE=yes
CONFIG_AVFILTER=yes
CONFIG_AVFORMAT=yes
CONFIG_AVRESAMPLE=yes
CONFIG_AVUTIL=yes
CONFIG_SWSCALE=yes
CONFIG_AVCONV=yes
!CONFIG_AVPLAY=yes
CONFIG_AVPROBE=yes
CONFIG_DCT=yes
CONFIG_DOC=yes
CONFIG_ERROR_RESILIENCE=yes
CONFIG_FAAN=yes
CONFIG_FFT=yes
CONFIG_LSP=yes
CONFIG_LZO=yes
CONFIG_MDCT=yes
CONFIG_NETWORK=yes
CONFIG_RDFT=yes
!CONFIG_MEMALIGN_HACK=yes
!CONFIG_NEON_CLOBBER_TEST=yes
CONFIG_PIC=yes
CONFIG_POD2MAN=yes
!CONFIG_TEXI2HTML=yes
!CONFIG_THUMB=yes
!CONFIG_XMM_CLOBBER_TEST=yes
CONFIG_AANDCTTABLES=yes
CONFIG_AC3DSP=yes
!CONFIG_AUDIO_FRAME_QUEUE=yes
CONFIG_AUDIODSP=yes
CONFIG_BLOCKDSP=yes
CONFIG_BSWAPDSP=yes
CONFIG_CABAC=yes
CONFIG_DVPROFILE=yes
CONFIG_FAANDCT=yes
CONFIG_FAANIDCT=yes
CONFIG_FDCTDSP=yes
!CONFIG_GCRYPT=yes
CONFIG_GOLOMB=yes
!CONFIG_GPLV3=yes
CONFIG_H263DSP=yes
CONFIG_H264CHROMA=yes
CONFIG_H264DSP=yes
CONFIG_H264PRED=yes
CONFIG_H264QPEL=yes
CONFIG_HPELDSP=yes
CONFIG_HUFFMAN=yes
CONFIG_HUFFYUVDSP=yes
!CONFIG_HUFFYUVENCDSP=yes
CONFIG_IDCTDSP=yes
!CONFIG_IIRFILTER=yes
CONFIG_INTRAX8=yes
!CONFIG_LGPLV3=yes
!CONFIG_LPC=yes
CONFIG_ME_CMP=yes
CONFIG_MPEG_ER=yes
CONFIG_MPEGAUDIO=yes
CONFIG_MPEGAUDIODSP=yes
CONFIG_MPEGVIDEO=yes
!CONFIG_MPEGVIDEOENC=yes
!CONFIG_NETTLE=yes
CONFIG_PIXBLOCKDSP=yes
CONFIG_QPELDSP=yes
CONFIG_RANGECODER=yes
CONFIG_RIFFDEC=yes
!CONFIG_RIFFENC=yes
CONFIG_RTPDEC=yes
!CONFIG_RTPENC_CHAIN=yes
CONFIG_SINEWIN=yes
CONFIG_STARTCODE=yes
CONFIG_TPELDSP=yes
CONFIG_VIDEODSP=yes
CONFIG_VP3DSP=yes
CONFIG_WMA_FREQS=yes
!CONFIG_AAC_ADTSTOASC_BSF=yes
!CONFIG_CHOMP_BSF=yes
!CONFIG_DUMP_EXTRADATA_BSF=yes
!CONFIG_H264_MP4TOANNEXB_BSF=yes
!CONFIG_IMX_DUMP_HEADER_BSF=yes
!CONFIG_MJPEG2JPEG_BSF=yes
!CONFIG_MJPEGA_DUMP_HEADER_BSF=yes
!CONFIG_MOV2TEXTSUB_BSF=yes
!CONFIG_NOISE_BSF=yes
!CONFIG_REMOVE_EXTRADATA_BSF=yes
!CONFIG_TEXT2MOVSUB_BSF=yes
CONFIG_AASC_DECODER=yes
CONFIG_AIC_DECODER=yes
CONFIG_ALIAS_PIX_DECODER=yes
CONFIG_AMV_DECODER=yes
CONFIG_ANM_DECODER=yes
CONFIG_ANSI_DECODER=yes
CONFIG_ASV1_DECODER=yes
CONFIG_ASV2_DECODER=yes
CONFIG_AURA_DECODER=yes
CONFIG_AURA2_DECODER=yes
CONFIG_AVS_DECODER=yes
CONFIG_BETHSOFTVID_DECODER=yes
CONFIG_BFI_DECODER=yes
CONFIG_BINK_DECODER=yes
CONFIG_BMP_DECODER=yes
CONFIG_BMV_VIDEO_DECODER=yes
CONFIG_BRENDER_PIX_DECODER=yes
CONFIG_C93_DECODER=yes
CONFIG_CAVS_DECODER=yes
CONFIG_CDGRAPHICS_DECODER=yes
CONFIG_CDXL_DECODER=yes
CONFIG_CINEPAK_DECODER=yes
CONFIG_CLJR_DECODER=yes
CONFIG_CLLC_DECODER=yes
CONFIG_COMFORTNOISE_DECODER=yes
CONFIG_CSCD_DECODER=yes
CONFIG_CYUV_DECODER=yes
CONFIG_DFA_DECODER=yes
CONFIG_DNXHD_DECODER=yes
CONFIG_DPX_DECODER=yes
CONFIG_DSICINVIDEO_DECODER=yes
CONFIG_DVVIDEO_DECODER=yes
CONFIG_DXA_DECODER=yes
CONFIG_DXTORY_DECODER=yes
CONFIG_EACMV_DECODER=yes
CONFIG_EAMAD_DECODER=yes
CONFIG_EATGQ_DECODER=yes
CONFIG_EATGV_DECODER=yes
CONFIG_EATQI_DECODER=yes
CONFIG_EIGHTBPS_DECODER=yes
CONFIG_EIGHTSVX_EXP_DECODER=yes
CONFIG_EIGHTSVX_FIB_DECODER=yes
CONFIG_ESCAPE124_DECODER=yes
CONFIG_ESCAPE130_DECODER=yes
CONFIG_EXR_DECODER=yes
CONFIG_FFV1_DECODER=yes
CONFIG_FFVHUFF_DECODER=yes
CONFIG_FIC_DECODER=yes
CONFIG_FLASHSV_DECODER=yes
CONFIG_FLASHSV2_DECODER=yes
CONFIG_FLIC_DECODER=yes
CONFIG_FLV_DECODER=yes
CONFIG_FOURXM_DECODER=yes
CONFIG_FRAPS_DECODER=yes
CONFIG_FRWU_DECODER=yes
CONFIG_G2M_DECODER=yes
CONFIG_GIF_DECODER=yes
CONFIG_H261_DECODER=yes
CONFIG_H263_DECODER=yes
CONFIG_H263I_DECODER=yes
CONFIG_H264_DECODER=yes
CONFIG_HEVC_DECODER=yes
CONFIG_HNM4_VIDEO_DECODER=yes
CONFIG_HUFFYUV_DECODER=yes
CONFIG_IDCIN_DECODER=yes
CONFIG_IFF_BYTERUN1_DECODER=yes
CONFIG_IFF_ILBM_DECODER=yes
CONFIG_INDEO2_DECODER=yes
CONFIG_INDEO3_DECODER=yes
CONFIG_INDEO4_DECODER=yes
CONFIG_INDEO5_DECODER=yes
CONFIG_INTERPLAY_VIDEO_DECODER=yes
CONFIG_JPEG2000_DECODER=yes
CONFIG_JPEGLS_DECODER=yes
CONFIG_JV_DECODER=yes
CONFIG_KGV1_DECODER=yes
CONFIG_KMVC_DECODER=yes
CONFIG_LAGARITH_DECODER=yes
CONFIG_LOCO_DECODER=yes
CONFIG_MDEC_DECODER=yes
CONFIG_MIMIC_DECODER=yes
CONFIG_MJPEG_DECODER=yes
CONFIG_MJPEGB_DECODER=yes
CONFIG_MMVIDEO_DECODER=yes
CONFIG_MOTIONPIXELS_DECODER=yes
!CONFIG_MPEG_XVMC_DECODER=yes
CONFIG_MPEG1VIDEO_DECODER=yes
CONFIG_MPEG2VIDEO_DECODER=yes
CONFIG_MPEG4_DECODER=yes
CONFIG_MSA1_DECODER=yes
CONFIG_MSMPEG4V1_DECODER=yes
CONFIG_MSMPEG4V2_DECODER=yes
CONFIG_MSMPEG4V3_DECODER=yes
CONFIG_MSRLE_DECODER=yes
CONFIG_MSS1_DECODER=yes
CONFIG_MSS2_DECODER=yes
CONFIG_MSVIDEO1_DECODER=yes
CONFIG_MSZH_DECODER=yes
CONFIG_MTS2_DECODER=yes
CONFIG_MVC1_DECODER=yes
CONFIG_MVC2_DECODER=yes
CONFIG_MXPEG_DECODER=yes
CONFIG_NUV_DECODER=yes
CONFIG_PAF_VIDEO_DECODER=yes
CONFIG_PAM_DECODER=yes
CONFIG_PBM_DECODER=yes
CONFIG_PCX_DECODER=yes
CONFIG_PGM_DECODER=yes
CONFIG_PGMYUV_DECODER=yes
CONFIG_PICTOR_DECODER=yes
CONFIG_PNG_DECODER=yes
CONFIG_PPM_DECODER=yes
CONFIG_PRORES_DECODER=yes
CONFIG_PTX_DECODER=yes
CONFIG_QDRAW_DECODER=yes
CONFIG_QPEG_DECODER=yes
CONFIG_QTRLE_DECODER=yes
CONFIG_R10K_DECODER=yes
CONFIG_R210_DECODER=yes
CONFIG_RAWVIDEO_DECODER=yes
CONFIG_RL2_DECODER=yes
CONFIG_ROQ_DECODER=yes
CONFIG_RPZA_DECODER=yes
CONFIG_RV10_DECODER=yes
CONFIG_RV20_DECODER=yes
CONFIG_RV30_DECODER=yes
CONFIG_RV40_DECODER=yes
CONFIG_S302M_DECODER=yes
CONFIG_SANM_DECODER=yes
CONFIG_SGI_DECODER=yes
CONFIG_SGIRLE_DECODER=yes
CONFIG_SMACKER_DECODER=yes
CONFIG_SMC_DECODER=yes
CONFIG_SP5X_DECODER=yes
CONFIG_SUNRAST_DECODER=yes
CONFIG_SVQ1_DECODER=yes
CONFIG_SVQ3_DECODER=yes
CONFIG_TARGA_DECODER=yes
CONFIG_THEORA_DECODER=yes
CONFIG_THP_DECODER=yes
CONFIG_TIERTEXSEQVIDEO_DECODER=yes
CONFIG_TIFF_DECODER=yes
CONFIG_TMV_DECODER=yes
CONFIG_TRUEMOTION1_DECODER=yes
CONFIG_TRUEMOTION2_DECODER=yes
CONFIG_TSCC_DECODER=yes
CONFIG_TSCC2_DECODER=yes
CONFIG_TXD_DECODER=yes
CONFIG_ULTI_DECODER=yes
CONFIG_UTVIDEO_DECODER=yes
CONFIG_V210_DECODER=yes
CONFIG_V210X_DECODER=yes
CONFIG_V410_DECODER=yes
CONFIG_VB_DECODER=yes
CONFIG_VBLE_DECODER=yes
CONFIG_VC1_DECODER=yes
CONFIG_VC1IMAGE_DECODER=yes
CONFIG_VCR1_DECODER=yes
CONFIG_VMDVIDEO_DECODER=yes
CONFIG_VMNC_DECODER=yes
CONFIG_VP3_DECODER=yes
CONFIG_VP5_DECODER=yes
CONFIG_VP6_DECODER=yes
CONFIG_VP6A_DECODER=yes
CONFIG_VP6F_DECODER=yes
CONFIG_VP7_DECODER=yes
CONFIG_VP8_DECODER=yes
CONFIG_VP9_DECODER=yes
CONFIG_VQA_DECODER=yes
CONFIG_WEBP_DECODER=yes
CONFIG_WMV1_DECODER=yes
CONFIG_WMV2_DECODER=yes
CONFIG_WMV3_DECODER=yes
CONFIG_WMV3IMAGE_DECODER=yes
CONFIG_WNV1_DECODER=yes
CONFIG_XAN_WC3_DECODER=yes
CONFIG_XAN_WC4_DECODER=yes
CONFIG_XBM_DECODER=yes
CONFIG_XL_DECODER=yes
CONFIG_XWD_DECODER=yes
CONFIG_YOP_DECODER=yes
CONFIG_ZEROCODEC_DECODER=yes
CONFIG_ZLIB_DECODER=yes
CONFIG_ZMBV_DECODER=yes
CONFIG_AAC_DECODER=yes
CONFIG_AAC_LATM_DECODER=yes
CONFIG_AC3_DECODER=yes
CONFIG_ALAC_DECODER=yes
CONFIG_ALS_DECODER=yes
CONFIG_AMRNB_DECODER=yes
CONFIG_AMRWB_DECODER=yes
CONFIG_APE_DECODER=yes
CONFIG_ATRAC1_DECODER=yes
CONFIG_ATRAC3_DECODER=yes
CONFIG_ATRAC3P_DECODER=yes
CONFIG_BINKAUDIO_DCT_DECODER=yes
CONFIG_BINKAUDIO_RDFT_DECODER=yes
CONFIG_BMV_AUDIO_DECODER=yes
CONFIG_COOK_DECODER=yes
CONFIG_DCA_DECODER=yes
CONFIG_DSICINAUDIO_DECODER=yes
CONFIG_EAC3_DECODER=yes
CONFIG_FLAC_DECODER=yes
CONFIG_G723_1_DECODER=yes
CONFIG_GSM_DECODER=yes
CONFIG_GSM_MS_DECODER=yes
CONFIG_IAC_DECODER=yes
CONFIG_IMC_DECODER=yes
CONFIG_MACE3_DECODER=yes
CONFIG_MACE6_DECODER=yes
CONFIG_METASOUND_DECODER=yes
CONFIG_MLP_DECODER=yes
CONFIG_MP1_DECODER=yes
CONFIG_MP1FLOAT_DECODER=yes
CONFIG_MP2_DECODER=yes
CONFIG_MP2FLOAT_DECODER=yes
CONFIG_MP3_DECODER=yes
CONFIG_MP3FLOAT_DECODER=yes
CONFIG_MP3ADU_DECODER=yes
CONFIG_MP3ADUFLOAT_DECODER=yes
CONFIG_MP3ON4_DECODER=yes
CONFIG_MP3ON4FLOAT_DECODER=yes
CONFIG_MPC7_DECODER=yes
CONFIG_MPC8_DECODER=yes
CONFIG_NELLYMOSER_DECODER=yes
CONFIG_ON2AVC_DECODER=yes
!CONFIG_OPUS_DECODER=yes
CONFIG_PAF_AUDIO_DECODER=yes
CONFIG_QCELP_DECODER=yes
CONFIG_QDM2_DECODER=yes
CONFIG_RA_144_DECODER=yes
CONFIG_RA_288_DECODER=yes
CONFIG_RALF_DECODER=yes
CONFIG_SHORTEN_DECODER=yes
CONFIG_SIPR_DECODER=yes
CONFIG_SMACKAUD_DECODER=yes
CONFIG_TAK_DECODER=yes
CONFIG_TRUEHD_DECODER=yes
CONFIG_TRUESPEECH_DECODER=yes
CONFIG_TTA_DECODER=yes
CONFIG_TWINVQ_DECODER=yes
CONFIG_VMDAUDIO_DECODER=yes
CONFIG_VORBIS_DECODER=yes
CONFIG_WAVPACK_DECODER=yes
CONFIG_WMALOSSLESS_DECODER=yes
CONFIG_WMAPRO_DECODER=yes
CONFIG_WMAV1_DECODER=yes
CONFIG_WMAV2_DECODER=yes
CONFIG_WMAVOICE_DECODER=yes
CONFIG_WS_SND1_DECODER=yes
CONFIG_PCM_ALAW_DECODER=yes
CONFIG_PCM_BLURAY_DECODER=yes
CONFIG_PCM_DVD_DECODER=yes
CONFIG_PCM_F32BE_DECODER=yes
CONFIG_PCM_F32LE_DECODER=yes
CONFIG_PCM_F64BE_DECODER=yes
CONFIG_PCM_F64LE_DECODER=yes
CONFIG_PCM_LXF_DECODER=yes
CONFIG_PCM_MULAW_DECODER=yes
CONFIG_PCM_S8_DECODER=yes
CONFIG_PCM_S8_PLANAR_DECODER=yes
CONFIG_PCM_S16BE_DECODER=yes
CONFIG_PCM_S16LE_DECODER=yes
CONFIG_PCM_S16LE_PLANAR_DECODER=yes
CONFIG_PCM_S24BE_DECODER=yes
CONFIG_PCM_S24DAUD_DECODER=yes
CONFIG_PCM_S24LE_DECODER=yes
CONFIG_PCM_S24LE_PLANAR_DECODER=yes
CONFIG_PCM_S32BE_DECODER=yes
CONFIG_PCM_S32LE_DECODER=yes
CONFIG_PCM_S32LE_PLANAR_DECODER=yes
CONFIG_PCM_U8_DECODER=yes
CONFIG_PCM_U16BE_DECODER=yes
CONFIG_PCM_U16LE_DECODER=yes
CONFIG_PCM_U24BE_DECODER=yes
CONFIG_PCM_U24LE_DECODER=yes
CONFIG_PCM_U32BE_DECODER=yes
CONFIG_PCM_U32LE_DECODER=yes
CONFIG_PCM_ZORK_DECODER=yes
CONFIG_INTERPLAY_DPCM_DECODER=yes
CONFIG_ROQ_DPCM_DECODER=yes
CONFIG_SOL_DPCM_DECODER=yes
CONFIG_XAN_DPCM_DECODER=yes
CONFIG_ADPCM_4XM_DECODER=yes
CONFIG_ADPCM_ADX_DECODER=yes
CONFIG_ADPCM_CT_DECODER=yes
CONFIG_ADPCM_EA_DECODER=yes
CONFIG_ADPCM_EA_MAXIS_XA_DECODER=yes
CONFIG_ADPCM_EA_R1_DECODER=yes
CONFIG_ADPCM_EA_R2_DECODER=yes
CONFIG_ADPCM_EA_R3_DECODER=yes
CONFIG_ADPCM_EA_XAS_DECODER=yes
CONFIG_ADPCM_G722_DECODER=yes
CONFIG_ADPCM_G726_DECODER=yes
CONFIG_ADPCM_IMA_AMV_DECODER=yes
CONFIG_ADPCM_IMA_APC_DECODER=yes
CONFIG_ADPCM_IMA_DK3_DECODER=yes
CONFIG_ADPCM_IMA_DK4_DECODER=yes
CONFIG_ADPCM_IMA_EA_EACS_DECODER=yes
CONFIG_ADPCM_IMA_EA_SEAD_DECODER=yes
CONFIG_ADPCM_IMA_ISS_DECODER=yes
CONFIG_ADPCM_IMA_QT_DECODER=yes
CONFIG_ADPCM_IMA_SMJPEG_DECODER=yes
CONFIG_ADPCM_IMA_WAV_DECODER=yes
CONFIG_ADPCM_IMA_WS_DECODER=yes
CONFIG_ADPCM_MS_DECODER=yes
CONFIG_ADPCM_SBPRO_2_DECODER=yes
CONFIG_ADPCM_SBPRO_3_DECODER=yes
CONFIG_ADPCM_SBPRO_4_DECODER=yes
CONFIG_ADPCM_SWF_DECODER=yes
CONFIG_ADPCM_THP_DECODER=yes
CONFIG_ADPCM_VIMA_DECODER=yes
CONFIG_ADPCM_XA_DECODER=yes
CONFIG_ADPCM_YAMAHA_DECODER=yes
CONFIG_ASS_DECODER=yes
CONFIG_DVBSUB_DECODER=yes
CONFIG_DVDSUB_DECODER=yes
CONFIG_PGSSUB_DECODER=yes
CONFIG_SRT_DECODER=yes
CONFIG_XSUB_DECODER=yes
!CONFIG_LIBFDK_AAC_DECODER=yes
!CONFIG_LIBGSM_DECODER=yes
!CONFIG_LIBGSM_MS_DECODER=yes
!CONFIG_LIBILBC_DECODER=yes
!CONFIG_LIBOPENCORE_AMRNB_DECODER=yes
!CONFIG_LIBOPENCORE_AMRWB_DECODER=yes
!CONFIG_LIBOPENJPEG_DECODER=yes
!CONFIG_LIBOPUS_DECODER=yes
!CONFIG_LIBSCHROEDINGER_DECODER=yes
!CONFIG_LIBSPEEX_DECODER=yes
!CONFIG_LIBVPX_VP8_DECODER=yes
!CONFIG_LIBVPX_VP9_DECODER=yes
CONFIG_AAC_DEMUXER=yes
CONFIG_AC3_DEMUXER=yes
CONFIG_ADX_DEMUXER=yes
CONFIG_AEA_DEMUXER=yes
CONFIG_AIFF_DEMUXER=yes
CONFIG_AMR_DEMUXER=yes
CONFIG_ANM_DEMUXER=yes
CONFIG_APC_DEMUXER=yes
CONFIG_APE_DEMUXER=yes
CONFIG_ASF_DEMUXER=yes
CONFIG_ASS_DEMUXER=yes
CONFIG_AU_DEMUXER=yes
CONFIG_AVI_DEMUXER=yes
!CONFIG_AVISYNTH_DEMUXER=yes
CONFIG_AVS_DEMUXER=yes
CONFIG_BETHSOFTVID_DEMUXER=yes
CONFIG_BFI_DEMUXER=yes
CONFIG_BINK_DEMUXER=yes
CONFIG_BMV_DEMUXER=yes
CONFIG_C93_DEMUXER=yes
CONFIG_CAF_DEMUXER=yes
CONFIG_CAVSVIDEO_DEMUXER=yes
CONFIG_CDG_DEMUXER=yes
CONFIG_CDXL_DEMUXER=yes
CONFIG_DAUD_DEMUXER=yes
CONFIG_DFA_DEMUXER=yes
CONFIG_DIRAC_DEMUXER=yes
CONFIG_DNXHD_DEMUXER=yes
CONFIG_DSICIN_DEMUXER=yes
CONFIG_DTS_DEMUXER=yes
CONFIG_DV_DEMUXER=yes
CONFIG_DXA_DEMUXER=yes
CONFIG_EA_DEMUXER=yes
CONFIG_EA_CDATA_DEMUXER=yes
CONFIG_EAC3_DEMUXER=yes
CONFIG_FFMETADATA_DEMUXER=yes
CONFIG_FILMSTRIP_DEMUXER=yes
CONFIG_FLAC_DEMUXER=yes
CONFIG_FLIC_DEMUXER=yes
CONFIG_FLV_DEMUXER=yes
CONFIG_FOURXM_DEMUXER=yes
CONFIG_G722_DEMUXER=yes
CONFIG_G723_1_DEMUXER=yes
CONFIG_GSM_DEMUXER=yes
CONFIG_GXF_DEMUXER=yes
CONFIG_H261_DEMUXER=yes
CONFIG_H263_DEMUXER=yes
CONFIG_H264_DEMUXER=yes
CONFIG_HEVC_DEMUXER=yes
CONFIG_HLS_DEMUXER=yes
CONFIG_HNM_DEMUXER=yes
CONFIG_IDCIN_DEMUXER=yes
CONFIG_IFF_DEMUXER=yes
CONFIG_ILBC_DEMUXER=yes
CONFIG_IMAGE2_DEMUXER=yes
CONFIG_IMAGE2PIPE_DEMUXER=yes
CONFIG_INGENIENT_DEMUXER=yes
CONFIG_IPMOVIE_DEMUXER=yes
CONFIG_ISS_DEMUXER=yes
CONFIG_IV8_DEMUXER=yes
CONFIG_IVF_DEMUXER=yes
CONFIG_JV_DEMUXER=yes
CONFIG_LATM_DEMUXER=yes
CONFIG_LMLM4_DEMUXER=yes
CONFIG_LXF_DEMUXER=yes
CONFIG_M4V_DEMUXER=yes
CONFIG_MATROSKA_DEMUXER=yes
CONFIG_MJPEG_DEMUXER=yes
CONFIG_MLP_DEMUXER=yes
CONFIG_MM_DEMUXER=yes
CONFIG_MMF_DEMUXER=yes
CONFIG_MOV_DEMUXER=yes
CONFIG_MP3_DEMUXER=yes
CONFIG_MPC_DEMUXER=yes
CONFIG_MPC8_DEMUXER=yes
CONFIG_MPEGPS_DEMUXER=yes
CONFIG_MPEGTS_DEMUXER=yes
CONFIG_MPEGTSRAW_DEMUXER=yes
CONFIG_MPEGVIDEO_DEMUXER=yes
CONFIG_MSNWC_TCP_DEMUXER=yes
CONFIG_MTV_DEMUXER=yes
CONFIG_MV_DEMUXER=yes
CONFIG_MVI_DEMUXER=yes
CONFIG_MXF_DEMUXER=yes
CONFIG_MXG_DEMUXER=yes
CONFIG_NC_DEMUXER=yes
CONFIG_NSV_DEMUXER=yes
CONFIG_NUT_DEMUXER=yes
CONFIG_NUV_DEMUXER=yes
CONFIG_OGG_DEMUXER=yes
CONFIG_OMA_DEMUXER=yes
CONFIG_PAF_DEMUXER=yes
CONFIG_PCM_ALAW_DEMUXER=yes
CONFIG_PCM_MULAW_DEMUXER=yes
CONFIG_PCM_F64BE_DEMUXER=yes
CONFIG_PCM_F64LE_DEMUXER=yes
CONFIG_PCM_F32BE_DEMUXER=yes
CONFIG_PCM_F32LE_DEMUXER=yes
CONFIG_PCM_S32BE_DEMUXER=yes
CONFIG_PCM_S32LE_DEMUXER=yes
CONFIG_PCM_S24BE_DEMUXER=yes
CONFIG_PCM_S24LE_DEMUXER=yes
CONFIG_PCM_S16BE_DEMUXER=yes
CONFIG_PCM_S16LE_DEMUXER=yes
CONFIG_PCM_S8_DEMUXER=yes
CONFIG_PCM_U32BE_DEMUXER=yes
CONFIG_PCM_U32LE_DEMUXER=yes
CONFIG_PCM_U24BE_DEMUXER=yes
CONFIG_PCM_U24LE_DEMUXER=yes
CONFIG_PCM_U16BE_DEMUXER=yes
CONFIG_PCM_U16LE_DEMUXER=yes
CONFIG_PCM_U8_DEMUXER=yes
CONFIG_PMP_DEMUXER=yes
CONFIG_PVA_DEMUXER=yes
CONFIG_QCP_DEMUXER=yes
CONFIG_R3D_DEMUXER=yes
CONFIG_RAWVIDEO_DEMUXER=yes
CONFIG_RL2_DEMUXER=yes
CONFIG_RM_DEMUXER=yes
CONFIG_ROQ_DEMUXER=yes
CONFIG_RPL_DEMUXER=yes
CONFIG_RSO_DEMUXER=yes
CONFIG_RTP_DEMUXER=yes
CONFIG_RTSP_DEMUXER=yes
CONFIG_SAP_DEMUXER=yes
CONFIG_SDP_DEMUXER=yes
CONFIG_SEGAFILM_DEMUXER=yes
CONFIG_SHORTEN_DEMUXER=yes
CONFIG_SIFF_DEMUXER=yes
CONFIG_SMACKER_DEMUXER=yes
CONFIG_SMJPEG_DEMUXER=yes
CONFIG_SMUSH_DEMUXER=yes
CONFIG_SOL_DEMUXER=yes
CONFIG_SOX_DEMUXER=yes
CONFIG_SPDIF_DEMUXER=yes
CONFIG_SRT_DEMUXER=yes
CONFIG_STR_DEMUXER=yes
CONFIG_SWF_DEMUXER=yes
CONFIG_TAK_DEMUXER=yes
CONFIG_THP_DEMUXER=yes
CONFIG_TIERTEXSEQ_DEMUXER=yes
CONFIG_TMV_DEMUXER=yes
CONFIG_TRUEHD_DEMUXER=yes
CONFIG_TTA_DEMUXER=yes
CONFIG_TXD_DEMUXER=yes
CONFIG_TTY_DEMUXER=yes
CONFIG_VC1_DEMUXER=yes
CONFIG_VC1T_DEMUXER=yes
CONFIG_VMD_DEMUXER=yes
CONFIG_VOC_DEMUXER=yes
CONFIG_VQF_DEMUXER=yes
CONFIG_W64_DEMUXER=yes
CONFIG_WAV_DEMUXER=yes
CONFIG_WC3_DEMUXER=yes
CONFIG_WSAUD_DEMUXER=yes
CONFIG_WSVQA_DEMUXER=yes
CONFIG_WTV_DEMUXER=yes
CONFIG_WV_DEMUXER=yes
CONFIG_XA_DEMUXER=yes
CONFIG_XMV_DEMUXER=yes
CONFIG_XWMA_DEMUXER=yes
CONFIG_YOP_DEMUXER=yes
CONFIG_YUV4MPEGPIPE_DEMUXER=yes
!CONFIG_A64MULTI_ENCODER=yes
!CONFIG_A64MULTI5_ENCODER=yes
!CONFIG_ALIAS_PIX_ENCODER=yes
!CONFIG_ASV1_ENCODER=yes
!CONFIG_ASV2_ENCODER=yes
!CONFIG_BMP_ENCODER=yes
!CONFIG_CLJR_ENCODER=yes
!CONFIG_COMFORTNOISE_ENCODER=yes
!CONFIG_DNXHD_ENCODER=yes
!CONFIG_DPX_ENCODER=yes
!CONFIG_DVVIDEO_ENCODER=yes
!CONFIG_FFV1_ENCODER=yes
!CONFIG_FFVHUFF_ENCODER=yes
!CONFIG_FLASHSV_ENCODER=yes
!CONFIG_FLV_ENCODER=yes
!CONFIG_GIF_ENCODER=yes
!CONFIG_H261_ENCODER=yes
!CONFIG_H263_ENCODER=yes
!CONFIG_H263P_ENCODER=yes
!CONFIG_HUFFYUV_ENCODER=yes
!CONFIG_JPEGLS_ENCODER=yes
!CONFIG_LJPEG_ENCODER=yes
!CONFIG_MJPEG_ENCODER=yes
!CONFIG_MPEG1VIDEO_ENCODER=yes
!CONFIG_MPEG2VIDEO_ENCODER=yes
!CONFIG_MPEG4_ENCODER=yes
!CONFIG_MSMPEG4V2_ENCODER=yes
!CONFIG_MSMPEG4V3_ENCODER=yes
!CONFIG_PAM_ENCODER=yes
!CONFIG_PBM_ENCODER=yes
!CONFIG_PCX_ENCODER=yes
!CONFIG_PGM_ENCODER=yes
!CONFIG_PGMYUV_ENCODER=yes
!CONFIG_PNG_ENCODER=yes
!CONFIG_PPM_ENCODER=yes
!CONFIG_PRORES_ENCODER=yes
!CONFIG_QTRLE_ENCODER=yes
!CONFIG_RAWVIDEO_ENCODER=yes
!CONFIG_ROQ_ENCODER=yes
!CONFIG_RV10_ENCODER=yes
!CONFIG_RV20_ENCODER=yes
!CONFIG_SGI_ENCODER=yes
!CONFIG_SUNRAST_ENCODER=yes
!CONFIG_SVQ1_ENCODER=yes
!CONFIG_TARGA_ENCODER=yes
!CONFIG_LIBTWOLAME_ENCODER=yes
!CONFIG_TIFF_ENCODER=yes
!CONFIG_UTVIDEO_ENCODER=yes
!CONFIG_V210_ENCODER=yes
!CONFIG_V410_ENCODER=yes
!CONFIG_WMV1_ENCODER=yes
!CONFIG_WMV2_ENCODER=yes
!CONFIG_XBM_ENCODER=yes
!CONFIG_XWD_ENCODER=yes
!CONFIG_ZLIB_ENCODER=yes
!CONFIG_ZMBV_ENCODER=yes
!CONFIG_AAC_ENCODER=yes
!CONFIG_AC3_ENCODER=yes
!CONFIG_AC3_FIXED_ENCODER=yes
!CONFIG_ALAC_ENCODER=yes
!CONFIG_EAC3_ENCODER=yes
!CONFIG_FLAC_ENCODER=yes
!CONFIG_MP2_ENCODER=yes
!CONFIG_NELLYMOSER_ENCODER=yes
!CONFIG_RA_144_ENCODER=yes
!CONFIG_VORBIS_ENCODER=yes
!CONFIG_WMAV1_ENCODER=yes
!CONFIG_WMAV2_ENCODER=yes
!CONFIG_PCM_ALAW_ENCODER=yes
!CONFIG_PCM_F32BE_ENCODER=yes
!CONFIG_PCM_F32LE_ENCODER=yes
!CONFIG_PCM_F64BE_ENCODER=yes
!CONFIG_PCM_F64LE_ENCODER=yes
!CONFIG_PCM_MULAW_ENCODER=yes
!CONFIG_PCM_S8_ENCODER=yes
!CONFIG_PCM_S16BE_ENCODER=yes
!CONFIG_PCM_S16LE_ENCODER=yes
!CONFIG_PCM_S24BE_ENCODER=yes
!CONFIG_PCM_S24DAUD_ENCODER=yes
!CONFIG_PCM_S24LE_ENCODER=yes
!CONFIG_PCM_S32BE_ENCODER=yes
!CONFIG_PCM_S32LE_ENCODER=yes
!CONFIG_PCM_U8_ENCODER=yes
!CONFIG_PCM_U16BE_ENCODER=yes
!CONFIG_PCM_U16LE_ENCODER=yes
!CONFIG_PCM_U24BE_ENCODER=yes
!CONFIG_PCM_U24LE_ENCODER=yes
!CONFIG_PCM_U32BE_ENCODER=yes
!CONFIG_PCM_U32LE_ENCODER=yes
!CONFIG_ROQ_DPCM_ENCODER=yes
!CONFIG_ADPCM_ADX_ENCODER=yes
!CONFIG_ADPCM_G722_ENCODER=yes
!CONFIG_ADPCM_G726_ENCODER=yes
!CONFIG_ADPCM_IMA_QT_ENCODER=yes
!CONFIG_ADPCM_IMA_WAV_ENCODER=yes
!CONFIG_ADPCM_MS_ENCODER=yes
!CONFIG_ADPCM_SWF_ENCODER=yes
!CONFIG_ADPCM_YAMAHA_ENCODER=yes
!CONFIG_ASS_ENCODER=yes
!CONFIG_DVBSUB_ENCODER=yes
!CONFIG_DVDSUB_ENCODER=yes
!CONFIG_XSUB_ENCODER=yes
!CONFIG_LIBFAAC_ENCODER=yes
!CONFIG_LIBFDK_AAC_ENCODER=yes
!CONFIG_LIBGSM_ENCODER=yes
!CONFIG_LIBGSM_MS_ENCODER=yes
!CONFIG_LIBILBC_ENCODER=yes
!CONFIG_LIBMP3LAME_ENCODER=yes
!CONFIG_LIBOPENCORE_AMRNB_ENCODER=yes
!CONFIG_LIBOPENJPEG_ENCODER=yes
!CONFIG_LIBOPUS_ENCODER=yes
!CONFIG_LIBSCHROEDINGER_ENCODER=yes
!CONFIG_LIBSPEEX_ENCODER=yes
!CONFIG_LIBTHEORA_ENCODER=yes
!CONFIG_LIBVO_AACENC_ENCODER=yes
!CONFIG_LIBVO_AMRWBENC_ENCODER=yes
!CONFIG_LIBVORBIS_ENCODER=yes
!CONFIG_LIBVPX_VP8_ENCODER=yes
!CONFIG_LIBVPX_VP9_ENCODER=yes
!CONFIG_LIBWAVPACK_ENCODER=yes
!CONFIG_LIBWEBP_ENCODER=yes
!CONFIG_LIBX264_ENCODER=yes
!CONFIG_LIBX265_ENCODER=yes
!CONFIG_LIBXAVS_ENCODER=yes
!CONFIG_LIBXVID_ENCODER=yes
CONFIG_AFORMAT_FILTER=yes
!CONFIG_AMIX_FILTER=yes
CONFIG_ANULL_FILTER=yes
!CONFIG_ASETPTS_FILTER=yes
!CONFIG_ASETTB_FILTER=yes
!CONFIG_ASHOWINFO_FILTER=yes
!CONFIG_ASPLIT_FILTER=yes
CONFIG_ASYNCTS_FILTER=yes
CONFIG_ATRIM_FILTER=yes
!CONFIG_BS2B_FILTER=yes
!CONFIG_CHANNELMAP_FILTER=yes
!CONFIG_CHANNELSPLIT_FILTER=yes
!CONFIG_COMPAND_FILTER=yes
!CONFIG_JOIN_FILTER=yes
CONFIG_RESAMPLE_FILTER=yes
!CONFIG_VOLUME_FILTER=yes
!CONFIG_ANULLSRC_FILTER=yes
!CONFIG_ANULLSINK_FILTER=yes
!CONFIG_BLACKFRAME_FILTER=yes
!CONFIG_BOXBLUR_FILTER=yes
!CONFIG_COPY_FILTER=yes
!CONFIG_CROP_FILTER=yes
!CONFIG_CROPDETECT_FILTER=yes
!CONFIG_DELOGO_FILTER=yes
!CONFIG_DRAWBOX_FILTER=yes
!CONFIG_DRAWTEXT_FILTER=yes
!CONFIG_FADE_FILTER=yes
!CONFIG_FIELDORDER_FILTER=yes
CONFIG_FORMAT_FILTER=yes
CONFIG_FPS_FILTER=yes
!CONFIG_FRAMEPACK_FILTER=yes
!CONFIG_FREI0R_FILTER=yes
!CONFIG_GRADFUN_FILTER=yes
!CONFIG_HFLIP_FILTER=yes
!CONFIG_HQDN3D_FILTER=yes
!CONFIG_INTERLACE_FILTER=yes
!CONFIG_LUT_FILTER=yes
!CONFIG_LUTRGB_FILTER=yes
!CONFIG_LUTYUV_FILTER=yes
!CONFIG_NEGATE_FILTER=yes
!CONFIG_NOFORMAT_FILTER=yes
CONFIG_NULL_FILTER=yes
!CONFIG_OCV_FILTER=yes
!CONFIG_OVERLAY_FILTER=yes
!CONFIG_PAD_FILTER=yes
!CONFIG_PIXDESCTEST_FILTER=yes
CONFIG_SCALE_FILTER=yes
!CONFIG_SELECT_FILTER=yes
!CONFIG_SETDAR_FILTER=yes
CONFIG_SETPTS_FILTER=yes
!CONFIG_SETSAR_FILTER=yes
!CONFIG_SETTB_FILTER=yes
!CONFIG_SHOWINFO_FILTER=yes
!CONFIG_SHUFFLEPLANES_FILTER=yes
!CONFIG_SPLIT_FILTER=yes
!CONFIG_TRANSPOSE_FILTER=yes
CONFIG_TRIM_FILTER=yes
!CONFIG_UNSHARP_FILTER=yes
!CONFIG_VFLIP_FILTER=yes
!CONFIG_YADIF_FILTER=yes
!CONFIG_COLOR_FILTER=yes
!CONFIG_FREI0R_SRC_FILTER=yes
!CONFIG_MOVIE_FILTER=yes
!CONFIG_NULLSRC_FILTER=yes
!CONFIG_RGBTESTSRC_FILTER=yes
!CONFIG_TESTSRC_FILTER=yes
!CONFIG_NULLSINK_FILTER=yes
!CONFIG_H263_VAAPI_HWACCEL=yes
!CONFIG_H263_VDPAU_HWACCEL=yes
!CONFIG_H264_DXVA2_HWACCEL=yes
!CONFIG_H264_VAAPI_HWACCEL=yes
!CONFIG_H264_VDA_HWACCEL=yes
!CONFIG_H264_VDA_OLD_HWACCEL=yes
!CONFIG_H264_VDPAU_HWACCEL=yes
!CONFIG_MPEG1_VDPAU_HWACCEL=yes
!CONFIG_MPEG2_DXVA2_HWACCEL=yes
!CONFIG_MPEG2_VAAPI_HWACCEL=yes
!CONFIG_MPEG2_VDPAU_HWACCEL=yes
!CONFIG_MPEG4_VAAPI_HWACCEL=yes
!CONFIG_MPEG4_VDPAU_HWACCEL=yes
!CONFIG_VC1_DXVA2_HWACCEL=yes
!CONFIG_VC1_VAAPI_HWACCEL=yes
!CONFIG_VC1_VDPAU_HWACCEL=yes
!CONFIG_WMV3_DXVA2_HWACCEL=yes
!CONFIG_WMV3_VAAPI_HWACCEL=yes
!CONFIG_WMV3_VDPAU_HWACCEL=yes
!CONFIG_ALSA_INDEV=yes
!CONFIG_BKTR_INDEV=yes
!CONFIG_DV1394_INDEV=yes
!CONFIG_FBDEV_INDEV=yes
!CONFIG_JACK_INDEV=yes
!CONFIG_OSS_INDEV=yes
!CONFIG_PULSE_INDEV=yes
!CONFIG_SNDIO_INDEV=yes
!CONFIG_V4L2_INDEV=yes
!CONFIG_VFWCAP_INDEV=yes
!CONFIG_X11GRAB_INDEV=yes
!CONFIG_LIBCDIO_INDEV=yes
!CONFIG_LIBDC1394_INDEV=yes
!CONFIG_A64_MUXER=yes
!CONFIG_AC3_MUXER=yes
!CONFIG_ADTS_MUXER=yes
!CONFIG_ADX_MUXER=yes
!CONFIG_AIFF_MUXER=yes
!CONFIG_AMR_MUXER=yes
!CONFIG_ASF_MUXER=yes
!CONFIG_ASS_MUXER=yes
!CONFIG_ASF_STREAM_MUXER=yes
!CONFIG_AU_MUXER=yes
!CONFIG_AVI_MUXER=yes
!CONFIG_AVM2_MUXER=yes
!CONFIG_CAVSVIDEO_MUXER=yes
!CONFIG_CRC_MUXER=yes
!CONFIG_DAUD_MUXER=yes
!CONFIG_DIRAC_MUXER=yes
!CONFIG_DNXHD_MUXER=yes
!CONFIG_DTS_MUXER=yes
!CONFIG_DV_MUXER=yes
!CONFIG_EAC3_MUXER=yes
!CONFIG_F4V_MUXER=yes
!CONFIG_FFMETADATA_MUXER=yes
!CONFIG_FILMSTRIP_MUXER=yes
!CONFIG_FLAC_MUXER=yes
!CONFIG_FLV_MUXER=yes
!CONFIG_FRAMECRC_MUXER=yes
!CONFIG_FRAMEMD5_MUXER=yes
!CONFIG_G722_MUXER=yes
!CONFIG_GIF_MUXER=yes
!CONFIG_GXF_MUXER=yes
!CONFIG_H261_MUXER=yes
!CONFIG_H263_MUXER=yes
!CONFIG_H264_MUXER=yes
!CONFIG_HDS_MUXER=yes
!CONFIG_HEVC_MUXER=yes
!CONFIG_HLS_MUXER=yes
!CONFIG_ILBC_MUXER=yes
!CONFIG_IMAGE2_MUXER=yes
!CONFIG_IMAGE2PIPE_MUXER=yes
!CONFIG_IPOD_MUXER=yes
!CONFIG_ISMV_MUXER=yes
!CONFIG_IVF_MUXER=yes
!CONFIG_LATM_MUXER=yes
!CONFIG_M4V_MUXER=yes
!CONFIG_MD5_MUXER=yes
!CONFIG_MATROSKA_MUXER=yes
!CONFIG_MATROSKA_AUDIO_MUXER=yes
!CONFIG_MJPEG_MUXER=yes
!CONFIG_MLP_MUXER=yes
!CONFIG_MMF_MUXER=yes
!CONFIG_MOV_MUXER=yes
!CONFIG_MP2_MUXER=yes
!CONFIG_MP3_MUXER=yes
!CONFIG_MP4_MUXER=yes
!CONFIG_MPEG1SYSTEM_MUXER=yes
!CONFIG_MPEG1VCD_MUXER=yes
!CONFIG_MPEG1VIDEO_MUXER=yes
!CONFIG_MPEG2DVD_MUXER=yes
!CONFIG_MPEG2SVCD_MUXER=yes
!CONFIG_MPEG2VIDEO_MUXER=yes
!CONFIG_MPEG2VOB_MUXER=yes
!CONFIG_MPEGTS_MUXER=yes
!CONFIG_MPJPEG_MUXER=yes
!CONFIG_MXF_MUXER=yes
!CONFIG_MXF_D10_MUXER=yes
!CONFIG_NULL_MUXER=yes
!CONFIG_NUT_MUXER=yes
!CONFIG_OGA_MUXER=yes
!CONFIG_OGG_MUXER=yes
!CONFIG_OMA_MUXER=yes
!CONFIG_OPUS_MUXER=yes
!CONFIG_PCM_ALAW_MUXER=yes
!CONFIG_PCM_MULAW_MUXER=yes
!CONFIG_PCM_F64BE_MUXER=yes
!CONFIG_PCM_F64LE_MUXER=yes
!CONFIG_PCM_F32BE_MUXER=yes
!CONFIG_PCM_F32LE_MUXER=yes
!CONFIG_PCM_S32BE_MUXER=yes
!CONFIG_PCM_S32LE_MUXER=yes
!CONFIG_PCM_S24BE_MUXER=yes
!CONFIG_PCM_S24LE_MUXER=yes
!CONFIG_PCM_S16BE_MUXER=yes
!CONFIG_PCM_S16LE_MUXER=yes
!CONFIG_PCM_S8_MUXER=yes
!CONFIG_PCM_U32BE_MUXER=yes
!CONFIG_PCM_U32LE_MUXER=yes
!CONFIG_PCM_U24BE_MUXER=yes
!CONFIG_PCM_U24LE_MUXER=yes
!CONFIG_PCM_U16BE_MUXER=yes
!CONFIG_PCM_U16LE_MUXER=yes
!CONFIG_PCM_U8_MUXER=yes
!CONFIG_PSP_MUXER=yes
!CONFIG_RAWVIDEO_MUXER=yes
!CONFIG_RM_MUXER=yes
!CONFIG_ROQ_MUXER=yes
!CONFIG_RSO_MUXER=yes
!CONFIG_RTP_MUXER=yes
!CONFIG_RTSP_MUXER=yes
!CONFIG_SAP_MUXER=yes
!CONFIG_SEGMENT_MUXER=yes
!CONFIG_SMJPEG_MUXER=yes
!CONFIG_SMOOTHSTREAMING_MUXER=yes
!CONFIG_SOX_MUXER=yes
!CONFIG_SPX_MUXER=yes
CONFIG_SPDIF_MUXER=yes
!CONFIG_SRT_MUXER=yes
!CONFIG_SWF_MUXER=yes
!CONFIG_TG2_MUXER=yes
!CONFIG_TGP_MUXER=yes
!CONFIG_TRUEHD_MUXER=yes
!CONFIG_VC1T_MUXER=yes
!CONFIG_VOC_MUXER=yes
!CONFIG_WAV_MUXER=yes
!CONFIG_WEBM_MUXER=yes
!CONFIG_WV_MUXER=yes
!CONFIG_YUV4MPEGPIPE_MUXER=yes
!CONFIG_ALSA_OUTDEV=yes
!CONFIG_OSS_OUTDEV=yes
!CONFIG_SNDIO_OUTDEV=yes
CONFIG_AAC_PARSER=yes
CONFIG_AAC_LATM_PARSER=yes
CONFIG_AC3_PARSER=yes
CONFIG_ADX_PARSER=yes
CONFIG_BMP_PARSER=yes
CONFIG_CAVSVIDEO_PARSER=yes
CONFIG_COOK_PARSER=yes
CONFIG_DCA_PARSER=yes
CONFIG_DIRAC_PARSER=yes
CONFIG_DNXHD_PARSER=yes
CONFIG_DVBSUB_PARSER=yes
CONFIG_DVDSUB_PARSER=yes
CONFIG_FLAC_PARSER=yes
CONFIG_GSM_PARSER=yes
CONFIG_H261_PARSER=yes
CONFIG_H263_PARSER=yes
CONFIG_H264_PARSER=yes
CONFIG_HEVC_PARSER=yes
CONFIG_MJPEG_PARSER=yes
CONFIG_MLP_PARSER=yes
CONFIG_MPEG4VIDEO_PARSER=yes
CONFIG_MPEGAUDIO_PARSER=yes
CONFIG_MPEGVIDEO_PARSER=yes
CONFIG_OPUS_PARSER=yes
CONFIG_PNG_PARSER=yes
CONFIG_PNM_PARSER=yes
CONFIG_RV30_PARSER=yes
CONFIG_RV40_PARSER=yes
CONFIG_TAK_PARSER=yes
CONFIG_VC1_PARSER=yes
CONFIG_VORBIS_PARSER=yes
CONFIG_VP3_PARSER=yes
CONFIG_VP8_PARSER=yes
CONFIG_CONCAT_PROTOCOL=yes
CONFIG_CRYPTO_PROTOCOL=yes
!CONFIG_FFRTMPCRYPT_PROTOCOL=yes
CONFIG_FFRTMPHTTP_PROTOCOL=yes
CONFIG_FILE_PROTOCOL=yes
CONFIG_GOPHER_PROTOCOL=yes
CONFIG_HLS_PROTOCOL=yes
CONFIG_HTTP_PROTOCOL=yes
CONFIG_HTTPPROXY_PROTOCOL=yes
!CONFIG_HTTPS_PROTOCOL=yes
CONFIG_ICECAST_PROTOCOL=yes
CONFIG_MMSH_PROTOCOL=yes
CONFIG_MMST_PROTOCOL=yes
CONFIG_MD5_PROTOCOL=yes
CONFIG_PIPE_PROTOCOL=yes
CONFIG_RTMP_PROTOCOL=yes
!CONFIG_RTMPE_PROTOCOL=yes
!CONFIG_RTMPS_PROTOCOL=yes
CONFIG_RTMPT_PROTOCOL=yes
!CONFIG_RTMPTE_PROTOCOL=yes
!CONFIG_RTMPTS_PROTOCOL=yes
CONFIG_RTP_PROTOCOL=yes
!CONFIG_SCTP_PROTOCOL=yes
CONFIG_SRTP_PROTOCOL=yes
CONFIG_TCP_PROTOCOL=yes
!CONFIG_TLS_PROTOCOL=yes
CONFIG_UDP_PROTOCOL=yes
CONFIG_UNIX_PROTOCOL=yes
!CONFIG_LIBRTMP_PROTOCOL=yes
!CONFIG_LIBRTMPE_PROTOCOL=yes
!CONFIG_LIBRTMPS_PROTOCOL=yes
!CONFIG_LIBRTMPT_PROTOCOL=yes
!CONFIG_LIBRTMPTE_PROTOCOL=yes

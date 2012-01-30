CONFIG_LIBAV:= \
	--enable-shared \
	--disable-bzlib \
	--disable-sse \
	--disable-libfaac \
	--disable-muxers \
	--disable-demuxers \
	--disable-parsers \
	--disable-bsfs \
	--disable-protocols \
	--disable-avdevice \
	--disable-devices \
	--disable-filters \
	--disable-encoders \
	--disable-decoders \
	\
	--enable-decoder=cook \
	--enable-decoder=flac \
	--enable-decoder=dca \
	--enable-decoder=ac3 \
	--enable-decoder=aac \
	--enable-decoder=mp2 \
	--enable-decoder=mp3 \
	--enable-decoder=wmav2 \
	--enable-decoder=wmapro \
	--enable-decoder=wmavoice \
	--enable-decoder=wavpack \
        --enable-decoder=tta \
	\
	--enable-decoder=msmpeg4v1 \
	--enable-decoder=msmpeg4v2 \
	--enable-decoder=msmpeg4v3 \
	--enable-decoder=h263 \
	--enable-decoder=h264 \
	--enable-decoder=mpeg4 \
	--enable-decoder=mpegvideo \
	--enable-decoder=mpeg1video \
	--enable-decoder=mpeg2video \
	--enable-decoder=flv \
	--enable-decoder=rv10 \
	--enable-decoder=rv20 \
	--enable-decoder=rv30 \
	--enable-decoder=rv40 \
	--enable-decoder=mjpeg \
	--enable-decoder=vp6f \
	--enable-decoder=vp8 \
	--enable-decoder=wmv1 \
	--enable-decoder=wmv2 \
	--enable-decoder=wmv3 \
	--enable-decoder=vc1 \
	\
	--enable-demuxer=avi \
	--enable-demuxer=matroska \
	--enable-demuxer=rtsp \
	--enable-demuxer=sdp \
	--enable-demuxer=aac \
	--enable-demuxer=ac3 \
	--enable-demuxer=mp3 \
	--enable-demuxer=h261 \
	--enable-demuxer=h263 \
	--enable-demuxer=h264 \
	--enable-demuxer=mpegts \
	--enable-demuxer=mpegtsraw \
	--enable-demuxer=mpegps \
	--enable-demuxer=mpegvideo \
	\
	--enable-protocol=file \
	--enable-protocol=http \
	--enable-protocol=rtp \
	--enable-protocol=tcp \
	--enable-protocol=udp \
	\
	--enable-parser=aac \
	--enable-parser=h261 \
	--enable-parser=h263 \
	--enable-parser=h264 \
	--enable-parser=mpeg4video \
	--enable-parser=mpegaudio \
	--enable-parser=mpegvideo \
	--enable-parser=flac \
	\
	--disable-static \
	--disable-mmx \
	--disable-symver \
	--enable-memalign-hack

config.mak: configure.mk
	./configure ${CONFIG_LIBAV}

all: config.mak
	./configure ${CONFIG_LIBAV}

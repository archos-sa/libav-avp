. ./config_base.sh
CONFIG_LIBAV="${CONFIG_LIBAV} \
	--enable-decoder=ac3 \
	--enable-decoder=mpeg2video \
	--enable-decoder=mp2 \
	--enable-decoder=dca \
	--enable-demuxer=ac3 \
	\
	--enable-parser=dca \
        --disable-armv6 \
	--disable-armv6t2 \
	--disable-armvfp \
	--disable-neon"

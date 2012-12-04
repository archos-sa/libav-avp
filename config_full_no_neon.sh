. ./config_base.sh
CONFIG_LIBAV="${CONFIG_LIBAV} \
	--enable-gpl \
	--enable-version3 \
	--enable-decoder=dca \
	--enable-decoder=ac3 \
	--enable-decoder=mpeg2video \
	--enable-decoder=mp2 \
	--enable-demuxer=ac3 \
	\
	--enable-parser=dca \
	--disable-armvfp
	--disable-neon"

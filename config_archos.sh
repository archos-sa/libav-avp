. ./config_base.sh
CONFIG_LIBAV="${CONFIG_LIBAV} \
	--enable-decoder=ac3 \
	--enable-decoder=mpeg2video \
	--enable-decoder=mp2 \
	--enable-demuxer=ac3"

. ./config_base.sh
CONFIG_LIBAV="${CONFIG_LIBAV} \
	--enable-decoder=dca \
	--enable-decoder=ac3 \
	--enable-decoder=mpeg2video \
	--enable-demuxer=ac3"

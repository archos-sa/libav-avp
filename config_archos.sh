. ./config_base.sh
CONFIG_LIBAV="${CONFIG_LIBAV} \
	--enable-decoder=wmav2 \
	--enable-decoder=wmapro \
	--enable-decoder=wmavoice \
	--enable-decoder=ac3 \
	--enable-decoder=dca"

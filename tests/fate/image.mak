FATE_ALIASPIX += fate-aliaspix-bgr
fate-aliaspix-bgr: CMD = framecrc -i $(TARGET_SAMPLES)/aliaspix/first.pix -pix_fmt bgr24

FATE_ALIASPIX += fate-aliaspix-gray
fate-aliaspix-gray: CMD = framecrc -i $(TARGET_SAMPLES)/aliaspix/firstgray.pix -pix_fmt gray

FATE_ALIASPIX-$(call DEMDEC, IMAGE2, ALIAS_PIX) += $(FATE_ALIASPIX)
FATE_SAMPLES_AVCONV += $(FATE_ALIASPIX-yes)
fate-aliaspix: $(FATE_ALIASPIX-yes)

FATE_BRENDERPIX += fate-brenderpix-24
fate-brenderpix-24: CMD = framecrc -c:v brender_pix -i $(TARGET_SAMPLES)/brenderpix/sbwheel.pix

FATE_BRENDERPIX += fate-brenderpix-565
fate-brenderpix-565: CMD = framecrc -c:v brender_pix -i $(TARGET_SAMPLES)/brenderpix/maximafront.pix

FATE_BRENDERPIX += fate-brenderpix-defpal
fate-brenderpix-defpal: CMD = framecrc -c:v brender_pix -i $(TARGET_SAMPLES)/brenderpix/rivrock1.pix -pix_fmt rgb24

FATE_BRENDERPIX += fate-brenderpix-intpal
fate-brenderpix-intpal: CMD = framecrc -c:v brender_pix -i $(TARGET_SAMPLES)/brenderpix/testtex.pix -pix_fmt rgb24

FATE_BRENDERPIX += fate-brenderpix-y400a
fate-brenderpix-y400a: CMD = framecrc -c:v brender_pix -i $(TARGET_SAMPLES)/brenderpix/gears.pix

FATE_BRENDERPIX-$(call DEMDEC, IMAGE2, BRENDER_PIX) += $(FATE_BRENDERPIX)
FATE_SAMPLES_AVCONV += $(FATE_BRENDERPIX-yes)
fate-brenderpix: $(FATE_BRENDERPIX-yes)

FATE_SAMPLES_AVCONV-$(call PARSERDEMDEC, BMP, IMAGE2PIPE, BMP) += fate-bmpparser
fate-bmpparser: CMD = framecrc -f image2pipe -i $(TARGET_SAMPLES)/bmp/libav_4x_concat.bmp -pix_fmt rgb24

FATE_SAMPLES_AVCONV-$(call DEMDEC, IMAGE2, DPX) += fate-dpx
fate-dpx: CMD = framecrc -i $(TARGET_SAMPLES)/dpx/lighthouse_rgb48.dpx

FATE_EXR += fate-exr-slice-raw
fate-exr-slice-raw: CMD = framecrc -i $(TARGET_SAMPLES)/exr/rgba_slice_raw.exr -pix_fmt rgba64le

FATE_EXR += fate-exr-slice-rle
fate-exr-slice-rle: CMD = framecrc -i $(TARGET_SAMPLES)/exr/rgba_slice_rle.exr -pix_fmt rgba64le

FATE_EXR += fate-exr-slice-zip1
fate-exr-slice-zip1: CMD = framecrc -i $(TARGET_SAMPLES)/exr/rgba_slice_zip1.exr -pix_fmt rgba64le

FATE_EXR += fate-exr-slice-zip16
fate-exr-slice-zip16: CMD = framecrc -i $(TARGET_SAMPLES)/exr/rgba_slice_zip16.exr -pix_fmt rgba64le

FATE_EXR += fate-exr-slice-pxr24
fate-exr-slice-pxr24: CMD = framecrc -i $(TARGET_SAMPLES)/exr/rgb_slice_pxr24.exr -pix_fmt rgb48le

FATE_EXR-$(call DEMDEC, IMAGE2, EXR) += $(FATE_EXR)

FATE_SAMPLES_AVCONV += $(FATE_EXR-yes)
fate-exr: $(FATE_EXR-yes)

FATE_SAMPLES_AVCONV-$(call DEMDEC, IMAGE2, PICTOR) += fate-pictor
fate-pictor: CMD = framecrc -i $(TARGET_SAMPLES)/pictor/MFISH.PIC -pix_fmt rgb24

FATE_SAMPLES_AVCONV-$(call PARSERDEMDEC, PNG, IMAGE2PIPE, PNG) += fate-pngparser
fate-pngparser: CMD = framecrc -f image2pipe -i $(TARGET_SAMPLES)/png1/libav_4x_concat.png -pix_fmt rgba

FATE_SAMPLES_AVCONV-$(call DEMDEC, IMAGE2, PTX) += fate-ptx
fate-ptx: CMD = framecrc -i $(TARGET_SAMPLES)/ptx/_113kw_pic.ptx -pix_fmt rgb24

FATE_SUNRASTER += fate-sunraster-1bit-raw
fate-sunraster-1bit-raw: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-1bit-raw.sun

FATE_SUNRASTER += fate-sunraster-1bit-rle
fate-sunraster-1bit-rle: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-1bit-rle.sun

FATE_SUNRASTER += fate-sunraster-8bit-raw
fate-sunraster-8bit-raw: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-8bit-raw.sun -pix_fmt rgb24

FATE_SUNRASTER += fate-sunraster-8bit_gray-raw
fate-sunraster-8bit_gray-raw: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/gray.ras

FATE_SUNRASTER += fate-sunraster-8bit-rle
fate-sunraster-8bit-rle: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-8bit-rle.sun -pix_fmt rgb24

FATE_SUNRASTER += fate-sunraster-24bit-raw
fate-sunraster-24bit-raw: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-24bit-raw.sun

FATE_SUNRASTER += fate-sunraster-24bit-rle
fate-sunraster-24bit-rle: CMD = framecrc -i $(TARGET_SAMPLES)/sunraster/lena-24bit-rle.sun

FATE_SUNRASTER-$(call DEMDEC, IMAGE2, SUNRAST) += $(FATE_SUNRASTER)

FATE_SAMPLES_AVCONV += $(FATE_SUNRASTER-yes)
fate-sunraster: $(FATE_SUNRASTER-yes)

FATE_TARGA = CBW8       \
             CCM8       \
             CTC16      \
             CTC24      \
             CTC32      \
             UBW8       \
             UCM8       \
             UTC16      \
             UTC24      \
             UTC32

FATE_TARGA := $(FATE_TARGA:%=fate-targa-conformance-%)  \
              fate-targa-top-to-bottom

FATE_TARGA-$(call DEMDEC, IMAGE2, TARGA) += $(FATE_TARGA)

FATE_SAMPLES_AVCONV += $(FATE_TARGA-yes)
fate-targa: $(FATE_TARGA-yes)

fate-targa-conformance-CBW8:  CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/CBW8.TGA
fate-targa-conformance-CCM8:  CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/CCM8.TGA  -pix_fmt rgba
fate-targa-conformance-CTC16: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/CTC16.TGA -pix_fmt rgb555le
fate-targa-conformance-CTC24: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/CTC24.TGA
fate-targa-conformance-CTC32: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/CTC32.TGA -pix_fmt bgra
fate-targa-conformance-UBW8:  CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/UBW8.TGA
fate-targa-conformance-UCM8:  CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/UCM8.TGA  -pix_fmt rgba
fate-targa-conformance-UTC16: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/UTC16.TGA -pix_fmt rgb555le
fate-targa-conformance-UTC24: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/UTC24.TGA
fate-targa-conformance-UTC32: CMD = framecrc -i $(TARGET_SAMPLES)/targa-conformance/UTC32.TGA -pix_fmt bgra

fate-targa-top-to-bottom: CMD = framecrc -i $(TARGET_SAMPLES)/targa/lena-top-to-bottom.tga

FATE_TIFF += fate-tiff-fax-g3
fate-tiff-fax-g3: CMD = framecrc -i $(TARGET_SAMPLES)/CCITT_fax/G31D.TIF

FATE_TIFF += fate-tiff-fax-g3s
fate-tiff-fax-g3s: CMD = framecrc -i $(TARGET_SAMPLES)/CCITT_fax/G31DS.TIF

FATE_TIFF-$(call DEMDEC, IMAGE2, TIFF) += $(FATE_TIFF)

FATE_SAMPLES_AVCONV += $(FATE_TIFF-yes)
fate-tiff: $(FATE_TIFF-yes)

FATE_XBM += fate-xbm10
fate-xbm10: CMD = framecrc -i $(TARGET_SAMPLES)/xbm/xl.xbm

FATE_XBM += fate-xbm11
fate-xbm11: CMD = framecrc -i $(TARGET_SAMPLES)/xbm/lbw.xbm

FATE_XBM-$(call DEMDEC, IMAGE2, XBM) += $(FATE_XBM)
FATE_SAMPLES_AVCONV += $(FATE_XBM-yes)
fate-xbm: $(FATE_XBM-yes)

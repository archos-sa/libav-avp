/*
 * This file is part of Libav.
 *
 * Libav is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * Libav is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with Libav; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#include "config.h"
#include "libavutil/attributes.h"
#include "libavutil/cpu.h"
#include "libavutil/x86/cpu.h"
#include "libavcodec/avcodec.h"
#include "libavcodec/dsputil.h"
#include "libavcodec/simple_idct.h"
#include "dsputil_x86.h"
#include "idct_xvid.h"

static av_cold void dsputil_init_mmx(DSPContext *c, AVCodecContext *avctx,
                                     int cpu_flags, unsigned high_bit_depth)
{
#if HAVE_MMX_INLINE
    c->put_pixels_clamped        = ff_put_pixels_clamped_mmx;
    c->put_signed_pixels_clamped = ff_put_signed_pixels_clamped_mmx;
    c->add_pixels_clamped        = ff_add_pixels_clamped_mmx;

    if (!high_bit_depth) {
        c->draw_edges   = ff_draw_edges_mmx;

        switch (avctx->idct_algo) {
        case FF_IDCT_AUTO:
        case FF_IDCT_SIMPLEMMX:
            c->idct_put              = ff_simple_idct_put_mmx;
            c->idct_add              = ff_simple_idct_add_mmx;
            c->idct                  = ff_simple_idct_mmx;
            c->idct_permutation_type = FF_SIMPLE_IDCT_PERM;
            break;
        case FF_IDCT_XVIDMMX:
            c->idct_put              = ff_idct_xvid_mmx_put;
            c->idct_add              = ff_idct_xvid_mmx_add;
            c->idct                  = ff_idct_xvid_mmx;
            break;
        }
    }

    c->gmc = ff_gmc_mmx;
#endif /* HAVE_MMX_INLINE */
}

static av_cold void dsputil_init_mmxext(DSPContext *c, AVCodecContext *avctx,
                                        int cpu_flags, unsigned high_bit_depth)
{
#if HAVE_MMXEXT_INLINE
    if (!high_bit_depth && avctx->idct_algo == FF_IDCT_XVIDMMX) {
        c->idct_put = ff_idct_xvid_mmxext_put;
        c->idct_add = ff_idct_xvid_mmxext_add;
        c->idct     = ff_idct_xvid_mmxext;
    }
#endif /* HAVE_MMXEXT_INLINE */
}

static av_cold void dsputil_init_sse2(DSPContext *c, AVCodecContext *avctx,
                                      int cpu_flags, unsigned high_bit_depth)
{
#if HAVE_SSE2_INLINE
    if (!high_bit_depth && avctx->idct_algo == FF_IDCT_XVIDMMX) {
        c->idct_put              = ff_idct_xvid_sse2_put;
        c->idct_add              = ff_idct_xvid_sse2_add;
        c->idct                  = ff_idct_xvid_sse2;
        c->idct_permutation_type = FF_SSE2_IDCT_PERM;
    }
#endif /* HAVE_SSE2_INLINE */
}

av_cold void ff_dsputil_init_x86(DSPContext *c, AVCodecContext *avctx,
                                 unsigned high_bit_depth)
{
    int cpu_flags = av_get_cpu_flags();

    if (X86_MMX(cpu_flags))
        dsputil_init_mmx(c, avctx, cpu_flags, high_bit_depth);

    if (X86_MMXEXT(cpu_flags))
        dsputil_init_mmxext(c, avctx, cpu_flags, high_bit_depth);

    if (X86_SSE2(cpu_flags))
        dsputil_init_sse2(c, avctx, cpu_flags, high_bit_depth);

    if (CONFIG_ENCODERS)
        ff_dsputilenc_init_mmx(c, avctx, high_bit_depth);
}

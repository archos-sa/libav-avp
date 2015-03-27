/*
 * DSP utils
 * Copyright (c) 2000, 2001 Fabrice Bellard
 * Copyright (c) 2002-2004 Michael Niedermayer <michaelni@gmx.at>
 *
 * gmc & q-pel & 32/64 bit based MC by Michael Niedermayer <michaelni@gmx.at>
 *
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

/**
 * @file
 * DSP utils
 */

#include "pixels.h"

/* draw the edges of width 'w' of an image of size width, height */
// FIXME: Check that this is OK for MPEG-4 interlaced.
static void draw_edges_8_c(uint8_t *buf, int wrap, int width, int height,
                           int w, int h, int sides)
{
    uint8_t *ptr = buf, *last_line;
    int i;

    /* left and right */
    for (i = 0; i < height; i++) {
        memset(ptr - w, ptr[0], w);
        memset(ptr + width, ptr[width - 1], w);
        ptr += wrap;
    }

    /* top and bottom + corners */
    buf -= w;
    last_line = buf + (height - 1) * wrap;
    if (sides & EDGE_TOP)
        for (i = 0; i < h; i++)
            // top
            memcpy(buf - (i + 1) * wrap, buf, width + w + w);
    if (sides & EDGE_BOTTOM)
        for (i = 0; i < h; i++)
            // bottom
            memcpy(last_line + (i + 1) * wrap, last_line, width + w + w);
}

static void clear_block_8_c(int16_t *block)
{
    memset(block, 0, sizeof(int16_t) * 64);
}

static void clear_blocks_8_c(int16_t *blocks)
{
    memset(blocks, 0, sizeof(int16_t) * 6 * 64);
}

#define PIXOP2(OPNAME, OP)                                              \
static inline void OPNAME ## _no_rnd_pixels8_l2_8(uint8_t *dst,         \
                                                  const uint8_t *src1,  \
                                                  const uint8_t *src2,  \
                                                  int dst_stride,       \
                                                  int src_stride1,      \
                                                  int src_stride2,      \
                                                  int h)                \
{                                                                       \
    int i;                                                              \
                                                                        \
    for (i = 0; i < h; i++) {                                           \
        uint32_t a, b;                                                  \
        a = AV_RN32(&src1[i * src_stride1]);                            \
        b = AV_RN32(&src2[i * src_stride2]);                            \
        OP(*((uint32_t *) &dst[i * dst_stride]),                        \
           no_rnd_avg32(a, b));                                         \
        a = AV_RN32(&src1[i * src_stride1 + 4]);                        \
        b = AV_RN32(&src2[i * src_stride2 + 4]);                        \
        OP(*((uint32_t *) &dst[i * dst_stride + 4]),                    \
           no_rnd_avg32(a, b));                                         \
    }                                                                   \
}                                                                       \
                                                                        \
static inline void OPNAME ## _no_rnd_pixels16_l2_8(uint8_t *dst,        \
                                                   const uint8_t *src1, \
                                                   const uint8_t *src2, \
                                                   int dst_stride,      \
                                                   int src_stride1,     \
                                                   int src_stride2,     \
                                                   int h)               \
{                                                                       \
    OPNAME ## _no_rnd_pixels8_l2_8(dst, src1, src2, dst_stride,         \
                                   src_stride1, src_stride2, h);        \
    OPNAME ## _no_rnd_pixels8_l2_8(dst  + 8,                            \
                                   src1 + 8,                            \
                                   src2 + 8,                            \
                                   dst_stride, src_stride1,             \
                                   src_stride2, h);                     \
}                                                                       \
                                                                        \
static inline void OPNAME ## _pixels8_l4_8(uint8_t *dst,                \
                                           const uint8_t *src1,         \
                                           const uint8_t *src2,         \
                                           const uint8_t *src3,         \
                                           const uint8_t *src4,         \
                                           int dst_stride,              \
                                           int src_stride1,             \
                                           int src_stride2,             \
                                           int src_stride3,             \
                                           int src_stride4,             \
                                           int h)                       \
{                                                                       \
    /* FIXME HIGH BIT DEPTH */                                          \
    int i;                                                              \
                                                                        \
    for (i = 0; i < h; i++) {                                           \
        uint32_t a, b, c, d, l0, l1, h0, h1;                            \
        a  = AV_RN32(&src1[i * src_stride1]);                           \
        b  = AV_RN32(&src2[i * src_stride2]);                           \
        c  = AV_RN32(&src3[i * src_stride3]);                           \
        d  = AV_RN32(&src4[i * src_stride4]);                           \
        l0 = (a & 0x03030303UL) +                                       \
             (b & 0x03030303UL) +                                       \
                  0x02020202UL;                                         \
        h0 = ((a & 0xFCFCFCFCUL) >> 2) +                                \
             ((b & 0xFCFCFCFCUL) >> 2);                                 \
        l1 = (c & 0x03030303UL) +                                       \
             (d & 0x03030303UL);                                        \
        h1 = ((c & 0xFCFCFCFCUL) >> 2) +                                \
             ((d & 0xFCFCFCFCUL) >> 2);                                 \
        OP(*((uint32_t *) &dst[i * dst_stride]),                        \
           h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));                \
        a  = AV_RN32(&src1[i * src_stride1 + 4]);                       \
        b  = AV_RN32(&src2[i * src_stride2 + 4]);                       \
        c  = AV_RN32(&src3[i * src_stride3 + 4]);                       \
        d  = AV_RN32(&src4[i * src_stride4 + 4]);                       \
        l0 = (a & 0x03030303UL) +                                       \
             (b & 0x03030303UL) +                                       \
                  0x02020202UL;                                         \
        h0 = ((a & 0xFCFCFCFCUL) >> 2) +                                \
             ((b & 0xFCFCFCFCUL) >> 2);                                 \
        l1 = (c & 0x03030303UL) +                                       \
             (d & 0x03030303UL);                                        \
        h1 = ((c & 0xFCFCFCFCUL) >> 2) +                                \
             ((d & 0xFCFCFCFCUL) >> 2);                                 \
        OP(*((uint32_t *) &dst[i * dst_stride + 4]),                    \
           h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));                \
    }                                                                   \
}                                                                       \
                                                                        \
static inline void OPNAME ## _no_rnd_pixels8_l4_8(uint8_t *dst,         \
                                                  const uint8_t *src1,  \
                                                  const uint8_t *src2,  \
                                                  const uint8_t *src3,  \
                                                  const uint8_t *src4,  \
                                                  int dst_stride,       \
                                                  int src_stride1,      \
                                                  int src_stride2,      \
                                                  int src_stride3,      \
                                                  int src_stride4,      \
                                                  int h)                \
{                                                                       \
    /* FIXME HIGH BIT DEPTH */                                          \
    int i;                                                              \
                                                                        \
    for (i = 0; i < h; i++) {                                           \
        uint32_t a, b, c, d, l0, l1, h0, h1;                            \
        a  = AV_RN32(&src1[i * src_stride1]);                           \
        b  = AV_RN32(&src2[i * src_stride2]);                           \
        c  = AV_RN32(&src3[i * src_stride3]);                           \
        d  = AV_RN32(&src4[i * src_stride4]);                           \
        l0 = (a & 0x03030303UL) +                                       \
             (b & 0x03030303UL) +                                       \
                  0x01010101UL;                                         \
        h0 = ((a & 0xFCFCFCFCUL) >> 2) +                                \
             ((b & 0xFCFCFCFCUL) >> 2);                                 \
        l1 = (c & 0x03030303UL) +                                       \
             (d & 0x03030303UL);                                        \
        h1 = ((c & 0xFCFCFCFCUL) >> 2) +                                \
             ((d & 0xFCFCFCFCUL) >> 2);                                 \
        OP(*((uint32_t *) &dst[i * dst_stride]),                        \
           h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));                \
        a  = AV_RN32(&src1[i * src_stride1 + 4]);                       \
        b  = AV_RN32(&src2[i * src_stride2 + 4]);                       \
        c  = AV_RN32(&src3[i * src_stride3 + 4]);                       \
        d  = AV_RN32(&src4[i * src_stride4 + 4]);                       \
        l0 = (a & 0x03030303UL) +                                       \
             (b & 0x03030303UL) +                                       \
                  0x01010101UL;                                         \
        h0 = ((a & 0xFCFCFCFCUL) >> 2) +                                \
             ((b & 0xFCFCFCFCUL) >> 2);                                 \
        l1 = (c & 0x03030303UL) +                                       \
             (d & 0x03030303UL);                                        \
        h1 = ((c & 0xFCFCFCFCUL) >> 2) +                                \
             ((d & 0xFCFCFCFCUL) >> 2);                                 \
        OP(*((uint32_t *) &dst[i * dst_stride + 4]),                    \
           h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));                \
    }                                                                   \
}                                                                       \
                                                                        \
static inline void OPNAME ## _pixels16_l4_8(uint8_t *dst,               \
                                            const uint8_t *src1,        \
                                            const uint8_t *src2,        \
                                            const uint8_t *src3,        \
                                            const uint8_t *src4,        \
                                            int dst_stride,             \
                                            int src_stride1,            \
                                            int src_stride2,            \
                                            int src_stride3,            \
                                            int src_stride4,            \
                                            int h)                      \
{                                                                       \
    OPNAME ## _pixels8_l4_8(dst, src1, src2, src3, src4, dst_stride,    \
                            src_stride1, src_stride2, src_stride3,      \
                            src_stride4, h);                            \
    OPNAME ## _pixels8_l4_8(dst  + 8,                                   \
                            src1 + 8, src2 + 8,                         \
                            src3 + 8, src4 + 8,                         \
                            dst_stride, src_stride1, src_stride2,       \
                            src_stride3, src_stride4, h);               \
}                                                                       \
                                                                        \
static inline void OPNAME ## _no_rnd_pixels16_l4_8(uint8_t *dst,        \
                                                   const uint8_t *src1, \
                                                   const uint8_t *src2, \
                                                   const uint8_t *src3, \
                                                   const uint8_t *src4, \
                                                   int dst_stride,      \
                                                   int src_stride1,     \
                                                   int src_stride2,     \
                                                   int src_stride3,     \
                                                   int src_stride4,     \
                                                   int h)               \
{                                                                       \
    OPNAME ## _no_rnd_pixels8_l4_8(dst, src1, src2, src3, src4,         \
                                   dst_stride, src_stride1,             \
                                   src_stride2, src_stride3,            \
                                   src_stride4, h);                     \
    OPNAME ## _no_rnd_pixels8_l4_8(dst  + 8,                            \
                                   src1 + 8, src2 + 8,                  \
                                   src3 + 8, src4 + 8,                  \
                                   dst_stride, src_stride1,             \
                                   src_stride2, src_stride3,            \
                                   src_stride4, h);                     \
}                                                                       \
                                                                        \
static inline void OPNAME ## _pixels8_xy2_8_c(uint8_t *block,           \
                                              const uint8_t *pixels,    \
                                              ptrdiff_t line_size,      \
                                              int h)                    \
{                                                                       \
    /* FIXME HIGH BIT DEPTH */                                          \
    int j;                                                              \
                                                                        \
    for (j = 0; j < 2; j++) {                                           \
        int i;                                                          \
        const uint32_t a = AV_RN32(pixels);                             \
        const uint32_t b = AV_RN32(pixels + 1);                         \
        uint32_t l0 = (a & 0x03030303UL) +                              \
                      (b & 0x03030303UL) +                              \
                           0x02020202UL;                                \
        uint32_t h0 = ((a & 0xFCFCFCFCUL) >> 2) +                       \
                      ((b & 0xFCFCFCFCUL) >> 2);                        \
        uint32_t l1, h1;                                                \
                                                                        \
        pixels += line_size;                                            \
        for (i = 0; i < h; i += 2) {                                    \
            uint32_t a = AV_RN32(pixels);                               \
            uint32_t b = AV_RN32(pixels + 1);                           \
            l1 = (a & 0x03030303UL) +                                   \
                 (b & 0x03030303UL);                                    \
            h1 = ((a & 0xFCFCFCFCUL) >> 2) +                            \
                 ((b & 0xFCFCFCFCUL) >> 2);                             \
            OP(*((uint32_t *) block),                                   \
               h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));            \
            pixels += line_size;                                        \
            block  += line_size;                                        \
            a = AV_RN32(pixels);                                        \
            b = AV_RN32(pixels + 1);                                    \
            l0 = (a & 0x03030303UL) +                                   \
                 (b & 0x03030303UL) +                                   \
                      0x02020202UL;                                     \
            h0 = ((a & 0xFCFCFCFCUL) >> 2) +                            \
                 ((b & 0xFCFCFCFCUL) >> 2);                             \
            OP(*((uint32_t *) block),                                   \
               h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL));            \
            pixels += line_size;                                        \
            block  += line_size;                                        \
        }                                                               \
        pixels += 4 - line_size * (h + 1);                              \
        block  += 4 - line_size * h;                                    \
    }                                                                   \
}                                                                       \
                                                                        \
CALL_2X_PIXELS(OPNAME ## _pixels16_xy2_8_c,                             \
               OPNAME ## _pixels8_xy2_8_c,                              \
               8)                                                       \

#define op_avg(a, b) a = rnd_avg32(a, b)
#define op_put(a, b) a = b
#define put_no_rnd_pixels8_8_c put_pixels8_8_c
PIXOP2(avg, op_avg)
PIXOP2(put, op_put)
#undef op_avg
#undef op_put

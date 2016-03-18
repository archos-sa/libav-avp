/*
 * Intel MediaSDK QSV encoder/decoder shared code
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

#include <mfx/mfxvideo.h>
#include <mfx/mfxplugin.h>

#include <stdio.h>
#include <string.h>

#include "libavutil/avstring.h"
#include "libavutil/error.h"

#include "avcodec.h"
#include "qsv_internal.h"

int ff_qsv_codec_id_to_mfx(enum AVCodecID codec_id)
{
    switch (codec_id) {
    case AV_CODEC_ID_H264:
        return MFX_CODEC_AVC;
#if QSV_VERSION_ATLEAST(1, 8)
    case AV_CODEC_ID_HEVC:
        return MFX_CODEC_HEVC;
#endif
    case AV_CODEC_ID_MPEG1VIDEO:
    case AV_CODEC_ID_MPEG2VIDEO:
        return MFX_CODEC_MPEG2;
    case AV_CODEC_ID_VC1:
        return MFX_CODEC_VC1;
    default:
        break;
    }

    return AVERROR(ENOSYS);
}

int ff_qsv_error(int mfx_err)
{
    switch (mfx_err) {
    case MFX_ERR_NONE:
        return 0;
    case MFX_ERR_MEMORY_ALLOC:
    case MFX_ERR_NOT_ENOUGH_BUFFER:
        return AVERROR(ENOMEM);
    case MFX_ERR_INVALID_HANDLE:
        return AVERROR(EINVAL);
    case MFX_ERR_DEVICE_FAILED:
    case MFX_ERR_DEVICE_LOST:
    case MFX_ERR_LOCK_MEMORY:
        return AVERROR(EIO);
    case MFX_ERR_NULL_PTR:
    case MFX_ERR_UNDEFINED_BEHAVIOR:
    case MFX_ERR_NOT_INITIALIZED:
        return AVERROR_BUG;
    case MFX_ERR_UNSUPPORTED:
    case MFX_ERR_NOT_FOUND:
        return AVERROR(ENOSYS);
    case MFX_ERR_MORE_DATA:
    case MFX_ERR_MORE_SURFACE:
    case MFX_ERR_MORE_BITSTREAM:
        return AVERROR(EAGAIN);
    case MFX_ERR_INCOMPATIBLE_VIDEO_PARAM:
    case MFX_ERR_INVALID_VIDEO_PARAM:
        return AVERROR(EINVAL);
    case MFX_ERR_ABORTED:
    case MFX_ERR_UNKNOWN:
    default:
        return AVERROR_UNKNOWN;
    }
}

int ff_qsv_init_internal_session(AVCodecContext *avctx, mfxSession *session,
                                 const char *load_plugins)
{
    mfxIMPL impl   = MFX_IMPL_AUTO_ANY;
    mfxVersion ver = { { QSV_VERSION_MINOR, QSV_VERSION_MAJOR } };

    const char *desc;
    int ret;

    ret = MFXInit(impl, &ver, session);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error initializing an internal MFX session\n");
        return ff_qsv_error(ret);
    }

    if (load_plugins && *load_plugins) {
        while (*load_plugins) {
            mfxPluginUID uid;
            int i, err = 0;

            char *plugin = av_get_token(&load_plugins, ":");
            if (!plugin)
                return AVERROR(ENOMEM);
            if (strlen(plugin) != 2 * sizeof(uid.Data)) {
                av_log(avctx, AV_LOG_ERROR, "Invalid plugin UID length\n");
                err = AVERROR(EINVAL);
                goto load_plugin_fail;
            }

            for (i = 0; i < sizeof(uid.Data); i++) {
                err = sscanf(plugin + 2 * i, "%2hhx", uid.Data + i);
                if (err != 1) {
                    av_log(avctx, AV_LOG_ERROR, "Invalid plugin UID\n");
                    err = AVERROR(EINVAL);
                    goto load_plugin_fail;
                }

            }

            ret = MFXVideoUSER_Load(*session, &uid, 1);
            if (ret < 0) {
                av_log(avctx, AV_LOG_ERROR, "Could not load the requested plugin: %s\n",
                       plugin);
                err = ff_qsv_error(ret);
                goto load_plugin_fail;
            }

            if (*load_plugins)
                load_plugins++;
load_plugin_fail:
            av_freep(&plugin);
            if (err < 0)
                return err;
        }
    }

    MFXQueryIMPL(*session, &impl);

    switch (MFX_IMPL_BASETYPE(impl)) {
    case MFX_IMPL_SOFTWARE:
        desc = "software";
        break;
    case MFX_IMPL_HARDWARE:
    case MFX_IMPL_HARDWARE2:
    case MFX_IMPL_HARDWARE3:
    case MFX_IMPL_HARDWARE4:
        desc = "hardware accelerated";
        break;
    default:
        desc = "unknown";
    }

    av_log(avctx, AV_LOG_VERBOSE,
           "Initialized an internal MFX session using %s implementation\n",
           desc);

    return 0;
}

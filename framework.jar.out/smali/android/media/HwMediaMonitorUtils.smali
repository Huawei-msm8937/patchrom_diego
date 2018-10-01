.class public Landroid/media/HwMediaMonitorUtils;
.super Ljava/lang/Object;
.source "HwMediaMonitorUtils.java"


# static fields
.field public static final BAD_VALUE:I = -0x2

.field public static final COUNT_MBD_MONITORSERVICE:I = 0x1

.field public static final DEAD_OBJECT:I = -0x6

.field public static final ERROR:I = -0x1

.field public static final INVALID_OPERATION:I = -0x3

.field public static final MEDIA_LOG_ERROR:I = 0x3

.field public static final MEDIA_LOG_FATAL:I = 0x4

.field public static final MEDIA_LOG_INFO:I = 0x1

.field public static final MEDIA_LOG_WARN:I = 0x2

.field public static final NO_INIT:I = -0x5

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwMediaMonitorUtils"

.field private static final TYPES_MBD_MONITORSERVICE:[I

.field public static final TYPE_AUDIOFLINGER_PLAYTRACK:I = 0x7

.field public static final TYPE_AUDIOFLINGER_RECORDTRACK:I = 0x8

.field public static final TYPE_AUDIO_BT_SCO_STATE:I = 0x6

.field public static final TYPE_AUDIO_MODE:I = 0x1

.field public static final TYPE_AUDIO_VOLUME:I = 0x2

.field public static final TYPE_AUIDO_FORCE_COMMUNICATION_PATH:I = 0x3

.field public static final TYPE_AUIDO_FORCE_MEDIA_PATH:I = 0x4

.field public static final TYPE_AUIDO_FORCE_RECORD_PATH:I = 0x5

.field public static final TYPE_MEDIA_BIGDATA_MAX:I = 0x4fb9

.field public static final TYPE_MEDIA_BIGDATA_MIN:I = 0x2710

.field public static final TYPE_MEDIA_RECORD_ALARM_COUNT:I = 0x4fb5

.field public static final TYPE_MEDIA_RECORD_ANLG_DOCK_HEADSET_COUNT:I = 0x4ef6

.field public static final TYPE_MEDIA_RECORD_AUDIOPLAYER_COUNT:I = 0x4e87

.field public static final TYPE_MEDIA_RECORD_AUX_DIGITAL_COUNT:I = 0x4ef3

.field public static final TYPE_MEDIA_RECORD_AUX_LINE_COUNT:I = 0x4f00

.field public static final TYPE_MEDIA_RECORD_AWESOMEPLAYER_COUNT:I = 0x4e89

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_A2DP_COUNT:I = 0x4ef0

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_A2DP_HEADPHONES_COUNT:I = 0x4ef1

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_A2DP_SPEAKER_COUNT:I = 0x4ef2

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_SCO_CARKIT_COUNT:I = 0x4eef

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_SCO_COUNT:I = 0x4eed

.field public static final TYPE_MEDIA_RECORD_BLUETOOTH_SCO_HEADSET_COUNT:I = 0x4eee

.field public static final TYPE_MEDIA_RECORD_CODEC_COUNT:I = 0x4f4c

.field public static final TYPE_MEDIA_RECORD_DEV_COUNT:I = 0x4ee8

.field public static final TYPE_MEDIA_RECORD_DGTL_DOCK_HEADSET_COUNT:I = 0x4ef7

.field public static final TYPE_MEDIA_RECORD_DTMF_COUNT:I = 0x4fb9

.field public static final TYPE_MEDIA_RECORD_DTS_COUNT:I = 0x4e20

.field public static final TYPE_MEDIA_RECORD_EARPIECE_COUNT:I = 0x4ee9

.field public static final TYPE_MEDIA_RECORD_FM_COUNT:I = 0x4eff

.field public static final TYPE_MEDIA_RECORD_FOUNCTION_CALL:I = 0x2710

.field public static final TYPE_MEDIA_RECORD_HDMI_ARC_COUNT:I = 0x4efd

.field public static final TYPE_MEDIA_RECORD_HDMI_COUNT:I = 0x4ef5

.field public static final TYPE_MEDIA_RECORD_INTERNET_HEADSET_COUNT:I = 0x4e21

.field public static final TYPE_MEDIA_RECORD_IP_COUNT:I = 0x4f02

.field public static final TYPE_MEDIA_RECORD_LINE_COUNT:I = 0x4efc

.field public static final TYPE_MEDIA_RECORD_LOWPOWERPLAYER_COUNT:I = 0x4e8a

.field public static final TYPE_MEDIA_RECORD_MEDIAPLAYER_COUNT:I = 0x4e85

.field public static final TYPE_MEDIA_RECORD_MUSIC_COUNT:I = 0x4fb4

.field public static final TYPE_MEDIA_RECORD_NOTIFICATION_COUNT:I = 0x4fb6

.field public static final TYPE_MEDIA_RECORD_NUPLAYER_COUNT:I = 0x4e86

.field public static final TYPE_MEDIA_RECORD_OUTPUT_COUNT:I = 0x4e22

.field public static final TYPE_MEDIA_RECORD_PLAYER_COUNT:I = 0x4e84

.field public static final TYPE_MEDIA_RECORD_PROXY_COUNT:I = 0x4f03

.field public static final TYPE_MEDIA_RECORD_REMOTE_SUBMIX_COUNT:I = 0x4efa

.field public static final TYPE_MEDIA_RECORD_RING_COUNT:I = 0x4fb3

.field public static final TYPE_MEDIA_RECORD_SPDIF_COUNT:I = 0x4efe

.field public static final TYPE_MEDIA_RECORD_SPEAKER_COUNT:I = 0x4eea

.field public static final TYPE_MEDIA_RECORD_SPEAKER_SAFE_COUNT:I = 0x4f01

.field public static final TYPE_MEDIA_RECORD_STRAIGHTFRIGHTPLAYER_COUNT:I = 0x4e88

.field public static final TYPE_MEDIA_RECORD_STREAM_BLUETOOTH_SCO_COUNT:I = 0x4fb7

.field public static final TYPE_MEDIA_RECORD_STREAM_COUNT:I = 0x4fb0

.field public static final TYPE_MEDIA_RECORD_SYSTEM_COUNT:I = 0x4fb2

.field public static final TYPE_MEDIA_RECORD_SYSTEM_ENFORCED_COUNT:I = 0x4fb8

.field public static final TYPE_MEDIA_RECORD_TELEPHONY_TX_COUNT:I = 0x4efb

.field public static final TYPE_MEDIA_RECORD_USB_ACCESSORY_COUNT:I = 0x4ef8

.field public static final TYPE_MEDIA_RECORD_USB_DEVICE_COUNT:I = 0x4ef9

.field public static final TYPE_MEDIA_RECORD_VOICE_CALL_COUNT:I = 0x4fb1

.field public static final TYPE_MEDIA_RECORD_WIRED_HEADPHONE_COUNT:I = 0x4eec

.field public static final TYPE_MEDIA_RECORD_WIRED_HEADSET_COUNT:I = 0x4eeb

.field public static final WOULD_BLOCK:I = -0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/media/HwMediaMonitorUtils;->TYPES_MBD_MONITORSERVICE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaBigDataWritedNative(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/HwMediaMonitorUtils;->TYPES_MBD_MONITORSERVICE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 138
    sget-object v1, Landroid/media/HwMediaMonitorUtils;->TYPES_MBD_MONITORSERVICE:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_1
    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

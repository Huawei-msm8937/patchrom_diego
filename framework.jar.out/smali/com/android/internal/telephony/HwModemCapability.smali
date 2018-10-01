.class public Lcom/android/internal/telephony/HwModemCapability;
.super Ljava/lang/Object;
.source "HwModemCapability.java"


# static fields
.field private static final A_VALUE:I = 0xa

.field private static final BCD_LEN:I = 0x4

.field private static MODEM_CAP:Ljava/lang/String; = null

.field public static final MODEM_CAP_BIP_SUPPORT:I = 0x1

.field public static final MODEM_CAP_CDMA_USE_VIA_HISI:I = 0xe

.field public static final MODEM_CAP_DSDA_SPEECH_CODEC_ADJUST:I = 0xb

.field public static final MODEM_CAP_DSDS_MANUAL_PS_ATTACH:I = 0xa

.field public static final MODEM_CAP_DUAL_PS_ATTACHED:I = 0x0

.field public static final MODEM_CAP_FULL_PREFMODE:I = 0x3

.field public static final MODEM_CAP_GET_ICCID_AT:I = 0x13

.field public static final MODEM_CAP_GET_IMSI_GSM:I = 0x12

.field public static final MODEM_CAP_GET_MODEM_CAPABILITY:I = 0x9

.field public static final MODEM_CAP_LONG_SMS_DELAY_RELEASE:I = 0x11

.field public static final MODEM_CAP_MANUAL_SEL_NETWORK_AUTO:I = 0x4

.field public static final MODEM_CAP_MAX:I = 0x168

.field public static final MODEM_CAP_NOUPDATE_LAC_AND_CID:I = 0xc

.field public static final MODEM_CAP_NV_FUCTION_RPC:I = 0xd

.field public static final MODEM_CAP_ONS_MATCH_PNN:I = 0x5

.field public static final MODEM_CAP_PLUS_TRANSFER_SUPPORT:I = 0x2

.field public static final MODEM_CAP_RETTACH_API_SUPPORT:I = 0x7

.field public static final MODEM_CAP_RIL_RECOVERY_ENDCALL:I = 0x8

.field public static final MODEM_CAP_RPT_DEREGISTER_STATE_DELAYED:I = 0x6

.field public static final MODEM_CAP_SUPPORT_DIFF_ID:I = 0xf

.field public static final MODEM_CAP_SUPPORT_SWITCH_SOCKET:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "persist.radio.modem.cap"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertChar2Int(C)I
    .locals 2
    .param p0, "origChar"    # C

    .prologue
    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "retVaule":I
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 112
    add-int/lit8 v0, p0, -0x30

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 114
    add-int/lit8 v1, p0, -0x61

    add-int/lit8 v0, v1, 0xa

    goto :goto_0

    .line 115
    :cond_2
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    .line 116
    add-int/lit8 v1, p0, -0x41

    add-int/lit8 v0, v1, 0xa

    goto :goto_0
.end method

.method public static isCapabilitySupport(I)Z
    .locals 8
    .param p0, "capability"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    div-int/lit8 v0, p0, 0x4

    .line 86
    .local v0, "bcdIndex":I
    rem-int/lit8 v1, p0, 0x4

    .line 89
    .local v1, "bcdOffset":I
    if-ltz p0, :cond_0

    const/16 v6, 0x168

    if-lt p0, v6, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v5

    .line 94
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-string v6, "persist.radio.modem.cap"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    .line 99
    :cond_2
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/HwModemCapability;->convertChar2Int(C)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 100
    .local v2, "bcdValue":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 101
    rsub-int/lit8 v6, v1, 0x3

    shl-int v6, v4, v6

    and-int/2addr v6, v2

    if-lez v6, :cond_3

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 103
    .end local v2    # "bcdValue":I
    :catch_0
    move-exception v3

    .line 104
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.class public Landroid/hardware/fmradio/FmReceiver;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmReceiver.java"


# static fields
.field public static final FM_RX_AUDIO_MODE_MONO:I = 0x1

.field public static final FM_RX_AUDIO_MODE_STEREO:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_1S:I = 0x1

.field public static final FM_RX_DWELL_PERIOD_2S:I = 0x2

.field public static final FM_RX_DWELL_PERIOD_3S:I = 0x3

.field public static final FM_RX_DWELL_PERIOD_4S:I = 0x4

.field public static final FM_RX_DWELL_PERIOD_5S:I = 0x5

.field public static final FM_RX_DWELL_PERIOD_6S:I = 0x6

.field public static final FM_RX_DWELL_PERIOD_7S:I = 0x7

.field public static final FM_RX_LOW_POWER_MODE:I = 0x1

.field public static final FM_RX_MUTE:I = 0x1

.field public static final FM_RX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_RX_RDS_GRP_AF_EBL:I = 0x4

.field public static final FM_RX_RDS_GRP_PS_EBL:I = 0x2

.field public static final FM_RX_RDS_GRP_PS_SIMPLE_EBL:I = 0x10

.field public static final FM_RX_RDS_GRP_RT_EBL:I = 0x1

.field private static final FM_RX_RSSI_LEVEL_STRONG:I = -0x60

.field private static final FM_RX_RSSI_LEVEL_VERY_STRONG:I = -0x5a

.field private static final FM_RX_RSSI_LEVEL_VERY_WEAK:I = -0x69

.field private static final FM_RX_RSSI_LEVEL_WEAK:I = -0x64

.field public static final FM_RX_SCREEN_OFF_MODE:I = 0x0

.field public static final FM_RX_SCREEN_ON_MODE:I = 0x1

.field public static final FM_RX_SEARCHDIR_DOWN:I = 0x0

.field public static final FM_RX_SEARCHDIR_UP:I = 0x1

.field public static final FM_RX_SIGNAL_STRENGTH_STRONG:I = 0x2

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_STRONG:I = 0x3

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_WEAK:I = 0x0

.field public static final FM_RX_SIGNAL_STRENGTH_WEAK:I = 0x1

.field public static final FM_RX_SRCHLIST_MAX_STATIONS:I = 0xc

.field public static final FM_RX_SRCHLIST_MODE_STRONG:I = 0x2

.field public static final FM_RX_SRCHLIST_MODE_STRONGEST:I = 0x8

.field public static final FM_RX_SRCHLIST_MODE_WEAK:I = 0x3

.field public static final FM_RX_SRCHLIST_MODE_WEAKEST:I = 0x9

.field public static final FM_RX_SRCHRDS_MODE_SCAN_PTY:I = 0x5

.field public static final FM_RX_SRCHRDS_MODE_SEEK_AF:I = 0x7

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PI:I = 0x6

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PTY:I = 0x4

.field public static final FM_RX_SRCH_MODE_SCAN:I = 0x1

.field public static final FM_RX_SRCH_MODE_SEEK:I = 0x0

.field public static final FM_RX_UNMUTE:I = 0x0

.field static final STD_BUF_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "FMRadio"

.field private static final TAVARUA_BUF_AF_LIST:I = 0x5

.field private static final TAVARUA_BUF_EVENTS:I = 0x1

.field private static final TAVARUA_BUF_MAX:I = 0x6

.field private static final TAVARUA_BUF_PS_RDS:I = 0x3

.field private static final TAVARUA_BUF_RAW_RDS:I = 0x4

.field private static final TAVARUA_BUF_RT_RDS:I = 0x2

.field private static final TAVARUA_BUF_SRCH_LIST:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field public static mSearchState:I


# instance fields
.field private mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 290
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 291
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 292
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 1
    .param p1, "devicePath"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 306
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 307
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 310
    iput-object p2, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 311
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    .line 961
    const/4 v0, 0x1

    return v0
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v0

    .line 495
    .local v0, "status":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 496
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 502
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 3
    .param p1, "configSettings"    # Landroid/hardware/fmradio/FmConfig;

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-super {p0, p1, v1}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 422
    .local v0, "status":Z
    if-ne v0, v1, :cond_0

    .line 424
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-virtual {p0, v1}, Landroid/hardware/fmradio/FmReceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 425
    new-instance v1, Landroid/hardware/fmradio/FmRxRdsData;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v1, v2}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 430
    :goto_0
    return v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAFjump(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1616
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1618
    .local v0, "re":I
    if-eqz v0, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return v1

    .line 1621
    :cond_1
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1}, Landroid/hardware/fmradio/FmRxRdsData;->enableAFjump(Z)I

    move-result v0

    .line 1623
    if-nez v0, :cond_0

    move v1, v2

    .line 1624
    goto :goto_0
.end method

.method public getAFInfo()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 1263
    const/16 v4, 0x80

    new-array v1, v4, [B

    .line 1264
    .local v1, "buff":[B
    const/16 v4, 0x28

    new-array v0, v4, [I

    .line 1267
    .local v0, "AfList":[I
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v5, 0x5

    invoke-static {v4, v1, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1269
    aget-byte v4, v1, v7

    if-lez v4, :cond_0

    aget-byte v4, v1, v7

    const/16 v5, 0x19

    if-le v4, v5, :cond_2

    .line 1270
    :cond_0
    const/4 v0, 0x0

    .line 1286
    .end local v0    # "AfList":[I
    :cond_1
    return-object v0

    .line 1272
    .restart local v0    # "AfList":[I
    :cond_2
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v3

    .line 1273
    .local v3, "lowerBand":I
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low band "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget-byte v4, v1, v7

    if-ge v2, v4, :cond_1

    .line 1282
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v3

    aput v4, v0, v2

    .line 1283
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAudioQuilty(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1817
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getAudioQuiltyNative(II)I

    move-result v0

    .line 1819
    .local v0, "ret":I
    return v0
.end method

.method public getFMState()I
    .locals 1

    .prologue
    .line 1795
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v0

    .line 1796
    .local v0, "currFMState":I
    return v0
.end method

.method public getInternalAntenna()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1700
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1702
    .local v0, "re":I
    if-ne v0, v1, :cond_0

    .line 1705
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPSInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 10

    .prologue
    const/4 v8, 0x3

    .line 1163
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 1164
    .local v0, "buff":[B
    const/4 v4, 0x0

    .line 1165
    .local v4, "piLower":I
    const/4 v3, 0x0

    .line 1167
    .local v3, "piHigher":I
    sget v7, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v7, v0, v8}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1171
    aget-byte v7, v0, v8

    and-int/lit16 v4, v7, 0xff

    .line 1172
    const/4 v7, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v3, v7, 0xff

    .line 1173
    shl-int/lit8 v7, v3, 0x8

    or-int v2, v7, v4

    .line 1174
    .local v2, "pi":I
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1175
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x1f

    invoke-virtual {v7, v8}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1176
    const/4 v7, 0x0

    aget-byte v7, v0, v7

    and-int/lit8 v1, v7, 0xf

    .line 1180
    .local v1, "numOfPs":I
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x5

    mul-int/lit8 v8, v1, 0x8

    invoke-direct {v5, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 1181
    .local v5, "rdsStr":Ljava/lang/String;
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v5}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v5    # "rdsStr":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v7

    .line 1183
    :catch_0
    move-exception v6

    .line 1185
    .local v6, "x":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "FMRadio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of PS names "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMode()I
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getPwrMode(I)I

    move-result v0

    return v0
.end method

.method public getRTInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1213
    const/16 v6, 0x80

    new-array v0, v6, [B

    .line 1214
    .local v0, "buff":[B
    const/4 v3, 0x0

    .line 1215
    .local v3, "piLower":I
    const/4 v2, 0x0

    .line 1217
    .local v2, "piHigher":I
    sget v6, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v6, v0, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1218
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1222
    .local v4, "rdsStr":Ljava/lang/String;
    const/4 v6, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v3, v6, 0xff

    .line 1223
    aget-byte v6, v0, v7

    and-int/lit16 v2, v6, 0xff

    .line 1224
    shl-int/lit8 v6, v2, 0x8

    or-int v1, v6, v3

    .line 1225
    .local v1, "pi":I
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1226
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1229
    const/4 v6, 0x5

    const/4 v7, 0x0

    :try_start_0
    aget-byte v7, v0, v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1230
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v4}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :goto_0
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v6

    .line 1232
    :catch_0
    move-exception v5

    .line 1234
    .local v5, "x":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "FMRadio"

    const-string v7, "StringIndexOutOfBoundsException ..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRawRDS(I)[B
    .locals 6
    .param p1, "numBlocks"    # I

    .prologue
    const/4 v5, 0x0

    .line 1766
    mul-int/lit8 v3, p1, 0x3

    new-array v1, v3, [B

    .line 1769
    .local v1, "rawRds":[B
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    mul-int/lit8 v4, p1, 0x3

    invoke-static {v3, v1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getRawRdsNative(I[BI)I

    move-result v2

    .line 1771
    .local v2, "re":I
    mul-int/lit8 v3, p1, 0x3

    if-ne v2, v3, :cond_0

    .line 1781
    .end local v1    # "rawRds":[B
    :goto_0
    return-object v1

    .line 1774
    .restart local v1    # "rawRds":[B
    :cond_0
    if-gtz v2, :cond_1

    .line 1775
    const/4 v1, 0x0

    goto :goto_0

    .line 1777
    :cond_1
    new-array v0, v2, [B

    .line 1779
    .local v0, "buff":[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v0

    .line 1781
    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 1672
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getRSSINative(I)I

    move-result v0

    .line 1681
    .local v0, "rssi":I
    return v0
.end method

.method public getRssiLimit()[I
    .locals 2

    .prologue
    .line 1378
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1380
    .local v0, "rssiLimits":[I
    return-object v0

    .line 1378
    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public getSignalThreshold()I
    .locals 8

    .prologue
    const/16 v7, -0x60

    const/16 v6, -0x64

    .line 1413
    const/4 v2, 0x0

    .line 1414
    .local v2, "threshold":I
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v4, 0x8000008

    invoke-static {v3, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1415
    .local v0, "rmssiThreshold":I
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal Threshhold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/16 v3, -0x69

    if-ge v3, v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 1419
    const/16 v1, -0x64

    .line 1434
    .local v1, "signalStrength":I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1453
    :goto_1
    return v2

    .line 1421
    .end local v1    # "signalStrength":I
    :cond_0
    if-ge v6, v0, :cond_1

    if-gt v0, v7, :cond_1

    .line 1423
    const/16 v1, -0x60

    .restart local v1    # "signalStrength":I
    goto :goto_0

    .line 1425
    .end local v1    # "signalStrength":I
    :cond_1
    if-ge v7, v0, :cond_2

    .line 1427
    const/16 v1, -0x5a

    .restart local v1    # "signalStrength":I
    goto :goto_0

    .line 1431
    .end local v1    # "signalStrength":I
    :cond_2
    const/16 v1, -0x69

    .restart local v1    # "signalStrength":I
    goto :goto_0

    .line 1437
    :sswitch_0
    const/4 v2, 0x0

    .line 1438
    goto :goto_1

    .line 1440
    :sswitch_1
    const/4 v2, 0x1

    .line 1441
    goto :goto_1

    .line 1443
    :sswitch_2
    const/4 v2, 0x2

    .line 1444
    goto :goto_1

    .line 1446
    :sswitch_3
    const/4 v2, 0x3

    .line 1447
    goto :goto_1

    .line 1434
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_0
        -0x64 -> :sswitch_1
        -0x60 -> :sswitch_2
        -0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public getStationList()[I
    .locals 3

    .prologue
    .line 1647
    const/16 v1, 0x64

    new-array v0, v1, [I

    .line 1649
    .local v0, "stnList":[I
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->stationList(I)[I

    move-result-object v0

    .line 1651
    return-object v0
.end method

.method public getTunedFrequency()I
    .locals 4

    .prologue
    .line 1129
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 1131
    .local v0, "frequency":I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 1
    .param p1, "callback"    # Landroid/hardware/fmradio/FmRxEvCallbacks;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 350
    .local v0, "status":Z
    return v0
.end method

.method public registerRdsGroupProcessing(I)Z
    .locals 4
    .param p1, "fmGrpsToProc"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1582
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1584
    .local v0, "re":I
    if-eqz v0, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return v1

    .line 1587
    :cond_1
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOptions(I)I

    move-result v0

    .line 1589
    if-nez v0, :cond_0

    move v1, v2

    .line 1590
    goto :goto_0
.end method

.method public reset()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "status":Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 456
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 457
    const-string v3, "FMRadio"

    const-string v4, "FM already turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return v2

    .line 461
    :cond_0
    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    .line 462
    const-string v2, "FMRadio"

    const-string/jumbo v3, "reset: NEW-STATE : FMState_Turned_Off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v1

    .line 466
    const-string v2, "/dev/radio0"

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->release(Ljava/lang/String;)Z

    move v2, v1

    .line 468
    goto :goto_0
.end method

.method public searchStationList(IIII)Z
    .locals 8
    .param p1, "mode"    # I
    .param p2, "direction"    # I
    .param p3, "maximumStations"    # I
    .param p4, "pty"    # I

    .prologue
    .line 892
    const/4 v6, 0x1

    .line 893
    .local v6, "bStatus":Z
    const/4 v7, 0x0

    .line 895
    .local v7, "re":I
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: maximumStations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 907
    const/4 v6, 0x0

    .line 909
    :cond_0
    if-ltz p3, :cond_1

    const/16 v0, 0xc

    if-le p3, v0, :cond_2

    .line 912
    :cond_1
    const/4 v6, 0x0

    .line 914
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    .line 917
    const/4 v6, 0x0

    .line 920
    :cond_3
    if-eqz v6, :cond_5

    .line 922
    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    .line 923
    :cond_4
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    .line 928
    :cond_5
    :goto_0
    if-nez v7, :cond_7

    .line 929
    const/4 v0, 0x1

    .line 931
    :goto_1
    return v0

    .line 925
    :cond_6
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    goto :goto_0

    .line 931
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public searchStations(III)Z
    .locals 9
    .param p1, "mode"    # I
    .param p2, "dwellPeriod"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 610
    const/4 v7, 0x1

    .line 612
    .local v7, "bStatus":Z
    const-string v0, "FMRadio"

    const-string v1, "Basic search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 618
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v7, 0x0

    .line 621
    :cond_0
    if-lt p2, v8, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 624
    :cond_1
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v7, 0x0

    .line 627
    :cond_2
    if-eqz p3, :cond_3

    if-eq p3, v8, :cond_3

    .line 630
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v7, 0x0

    .line 634
    :cond_3
    if-eqz v7, :cond_4

    .line 636
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 639
    :cond_4
    return v8
.end method

.method public searchStations(IIIII)Z
    .locals 9
    .param p1, "mode"    # I
    .param p2, "dwellPeriod"    # I
    .param p3, "direction"    # I
    .param p4, "pty"    # I
    .param p5, "pi"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v8, 0x1

    .line 769
    const/4 v7, 0x1

    .line 771
    .local v7, "bStatus":Z
    const-string v0, "FMRadio"

    const-string v1, "RDS search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 780
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v7, 0x0

    .line 783
    :cond_0
    if-lt p2, v8, :cond_1

    if-le p2, v3, :cond_2

    .line 786
    :cond_1
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v7, 0x0

    .line 789
    :cond_2
    if-eqz p3, :cond_3

    if-eq p3, v8, :cond_3

    .line 792
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v7, 0x0

    .line 796
    :cond_3
    if-eqz v7, :cond_4

    .line 798
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: dwellPeriod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 805
    :cond_4
    return v8
.end method

.method public setFmRssiThresh(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1864
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFmRssiThreshNative(II)I

    move-result v0

    .line 1866
    .local v0, "ret":I
    return v0
.end method

.method public setFmSnrThresh(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1843
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFmSnrThreshNative(II)I

    move-result v0

    .line 1845
    .local v0, "ret":I
    return v0
.end method

.method public setInternalAntenna(Z)Z
    .locals 4
    .param p1, "intAnt"    # Z

    .prologue
    .line 1727
    if-eqz p1, :cond_0

    .line 1728
    const/4 v0, 0x1

    .line 1733
    .local v0, "iAntenna":I
    :goto_0
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 1735
    .local v1, "re":I
    if-nez v1, :cond_1

    .line 1736
    const/4 v2, 0x1

    .line 1738
    :goto_1
    return v2

    .line 1730
    .end local v0    # "iAntenna":I
    .end local v1    # "re":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "iAntenna":I
    goto :goto_0

    .line 1738
    .restart local v1    # "re":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setMuteMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 986
    packed-switch p1, :pswitch_data_0

    .line 998
    :goto_0
    return v3

    .line 989
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_0

    .line 992
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1, v3}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPowerMode(I)Z
    .locals 5
    .param p1, "powerMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1319
    if-ne p1, v1, :cond_0

    .line 1320
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 1326
    .local v0, "re":I
    :goto_0
    if-nez v0, :cond_1

    .line 1328
    :goto_1
    return v1

    .line 1323
    .end local v0    # "re":I
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0    # "re":I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1328
    goto :goto_1
.end method

.method public setRdsGroupOptions(IIZ)Z
    .locals 4
    .param p1, "enRdsGrpsMask"    # I
    .param p2, "rdsBuffSize"    # I
    .param p3, "enRdsChangeFilter"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1512
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, v2}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1514
    .local v0, "re":I
    if-eqz v0, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return v1

    .line 1517
    :cond_1
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsGrpOptions(IIZ)I

    move-result v0

    .line 1519
    if-nez v0, :cond_0

    move v1, v2

    .line 1520
    goto :goto_0
.end method

.method public setSignalThreshold(I)Z
    .locals 7
    .param p1, "threshold"    # I

    .prologue
    .line 1054
    const/4 v0, 0x1

    .line 1056
    .local v0, "bStatus":Z
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v3, 0x0

    .line 1059
    .local v3, "rssiLev":I
    packed-switch p1, :pswitch_data_0

    .line 1075
    const/4 v0, 0x0

    .line 1076
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1087
    .end local v0    # "bStatus":Z
    .local v1, "bStatus":I
    :goto_0
    return v1

    .line 1062
    .end local v1    # "bStatus":I
    .restart local v0    # "bStatus":Z
    :pswitch_0
    const/16 v3, -0x69

    .line 1080
    :goto_1
    if-eqz v0, :cond_0

    .line 1081
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 1083
    .local v2, "re":I
    if-eqz v2, :cond_0

    .line 1084
    const/4 v0, 0x0

    .end local v2    # "re":I
    :cond_0
    move v1, v0

    .line 1087
    .restart local v1    # "bStatus":I
    goto :goto_0

    .line 1065
    .end local v1    # "bStatus":I
    :pswitch_1
    const/16 v3, -0x64

    .line 1066
    goto :goto_1

    .line 1068
    :pswitch_2
    const/16 v3, -0x60

    .line 1069
    goto :goto_1

    .line 1071
    :pswitch_3
    const/16 v3, -0x5a

    .line 1072
    goto :goto_1

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStereoMode(Z)Z
    .locals 3
    .param p1, "stereoEnable"    # Z

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->stereoControl(IZ)I

    move-result v0

    .line 1022
    .local v0, "re":I
    if-nez v0, :cond_0

    .line 1023
    const/4 v1, 0x1

    .line 1024
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->unregisterClient()Z

    move-result v0

    .line 375
    .local v0, "status":Z
    return v0
.end method

.class public Lcom/android/server/wifi/hotspot2/NetworkDetail;
.super Ljava/lang/Object;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;,
        Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    }
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4

.field private static final DBG:Z = true

.field private static final EID_BSSLoad:I = 0xb

.field private static final EID_ExtendedCaps:I = 0x7f

.field private static final EID_HT_CAP:I = 0x2d

.field private static final EID_HT_OPERATION:I = 0x3d

.field private static final EID_Interworking:I = 0x6b

.field private static final EID_RoamingConsortium:I = 0x6f

.field private static final EID_SSID:I = 0x0

.field private static final EID_VHT_OPERATION:I = 0xc0

.field private static final EID_VSA:I = 0xdd

.field private static final HWFLOW:Z

.field private static final IE:Ljava/lang/String; = "ie=000477696e670b052a00cf611e6b091e0a016104086212056f0a0e530111112222222229dd07506f9a10143a01"

.field private static final IE2:Ljava/lang/String; = "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:J = 0x1000000000000L

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"

.field private static final VDBG:Z


# instance fields
.field private final m80211McRTTResponder:Z

.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnqpDomainID:I

.field private final mAnqpOICount:I

.field private final mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field private final mBSSID:J

.field private final mCapabilities:Ljava/lang/String;

.field private final mCapacity:I

.field private final mCenterfreq0:I

.field private final mCenterfreq1:I

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private final mExtendedCapabilities:Ljava/lang/Long;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private mStream1:I

.field private mStream2:I

.field private mStream3:I

.field private mStream4:I

.field private mTxMcsSet:I

.field private final mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkDetail:"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->HWFLOW:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v0, 0x0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    .line 133
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    .line 134
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    .line 135
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    .line 136
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mTxMcsSet:I

    .line 480
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 481
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 483
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapabilities:Ljava/lang/String;

    .line 485
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 486
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 487
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 488
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 489
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 490
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 491
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 492
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 493
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 494
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 495
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 496
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 497
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    .line 498
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 499
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 500
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 501
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 502
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 503
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    .line 504
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 56
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "cap"    # Ljava/lang/String;
    .param p3, "infoElements"    # Ljava/lang/String;
    .param p5, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p4, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    .line 133
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    .line 134
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    .line 135
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    .line 136
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mTxMcsSet:I

    .line 165
    if-nez p3, :cond_0

    .line 166
    new-instance v52, Ljava/lang/IllegalArgumentException;

    const-string v53, "Null information element string"

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 168
    :cond_0
    const/16 v52, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v42

    .line 169
    .local v42, "separator":I
    if-gez v42, :cond_1

    .line 170
    new-instance v52, Ljava/lang/IllegalArgumentException;

    const-string v53, "No element separator"

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 173
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 175
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapabilities:Ljava/lang/String;

    .line 178
    add-int/lit8 v52, v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v52

    sget-object v53, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v52 .. v53}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 181
    .local v16, "data":Ljava/nio/ByteBuffer;
    const/16 v43, 0x0

    .line 182
    .local v43, "ssid":Ljava/lang/String;
    const/16 v44, 0x0

    .line 183
    .local v44, "ssidOctets":[B
    const/16 v45, 0x0

    .line 184
    .local v45, "stationCount":I
    const/4 v15, 0x0

    .line 185
    .local v15, "channelUtilization":I
    const/4 v10, 0x0

    .line 187
    .local v10, "capacity":I
    const/4 v9, 0x0

    .line 188
    .local v9, "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    const/16 v32, 0x0

    .line 189
    .local v32, "internet":Z
    const/16 v48, 0x0

    .line 190
    .local v48, "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    const/16 v49, 0x0

    .line 191
    .local v49, "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    const-wide/16 v26, 0x0

    .line 193
    .local v26, "hessid":J
    const/4 v8, 0x0

    .line 194
    .local v8, "anqpOICount":I
    const/16 v40, 0x0

    .line 196
    .local v40, "roamingConsortiums":[J
    const/16 v28, 0x0

    .line 197
    .local v28, "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    const/4 v7, 0x0

    .line 199
    .local v7, "anqpDomainID":I
    const/16 v24, 0x0

    .line 201
    .local v24, "extendedCapabilities":Ljava/lang/Long;
    const/16 v41, 0x0

    .line 202
    .local v41, "secondChanelOffset":I
    const/4 v14, 0x0

    .line 203
    .local v14, "channelMode":I
    const/4 v12, 0x0

    .line 204
    .local v12, "centerFreqIndex1":I
    const/4 v13, 0x0

    .line 205
    .local v13, "centerFreqIndex2":I
    const/4 v4, 0x0

    .line 207
    .local v4, "RTTResponder":Z
    const/16 v23, 0x0

    .line 210
    .local v23, "exception":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_18

    .line 211
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 212
    .local v20, "eid":I
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 214
    .local v22, "elementLength":I
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v52

    move/from16 v0, v22

    move/from16 v1, v52

    if-le v0, v1, :cond_3

    .line 215
    new-instance v52, Ljava/lang/IllegalArgumentException;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Element length "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " exceeds payload length "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " @ "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->position()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    .end local v20    # "eid":I
    .end local v22    # "elementLength":I
    :catch_0
    move-exception v19

    .line 381
    .local v19, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Caught "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-nez v44, :cond_17

    .line 383
    new-instance v52, Ljava/lang/IllegalArgumentException;

    const-string v53, "Malformed IE string (no SSID)"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v52

    .line 219
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "eid":I
    .restart local v22    # "elementLength":I
    :cond_3
    if-nez v20, :cond_4

    if-nez v22, :cond_4

    if-nez v44, :cond_2

    .line 226
    :cond_4
    sparse-switch v20, :sswitch_data_0

    .line 375
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->position()I

    move-result v52

    add-int v52, v52, v22

    move-object/from16 v0, v16

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 380
    .end local v20    # "eid":I
    .end local v22    # "elementLength":I
    :catch_1
    move-exception v19

    goto :goto_1

    .line 229
    .restart local v20    # "eid":I
    .restart local v22    # "elementLength":I
    :sswitch_0
    sget-boolean v52, Lcom/android/server/wifi/hotspot2/NetworkDetail;->HWFLOW:Z

    if-eqz v52, :cond_5

    const-string v52, "NetworkDetail:"

    const-string v53, "EID_HT_CAP case"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 231
    .local v21, "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v29

    .line 232
    .local v29, "htcap0":I
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v30

    .line 233
    .local v30, "htcap1":I
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 234
    .local v5, "ampde":I
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    .line 235
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    .line 236
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    .line 237
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    move/from16 v52, v0

    if-nez v52, :cond_7

    const/16 v52, 0x0

    :goto_2
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    move/from16 v52, v0

    if-nez v52, :cond_8

    const/16 v52, 0x0

    :goto_3
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    move/from16 v52, v0

    if-nez v52, :cond_9

    const/16 v52, 0x0

    :goto_4
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    move/from16 v52, v0

    if-nez v52, :cond_a

    const/16 v52, 0x0

    :goto_5
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    .line 242
    sget-boolean v52, Lcom/android/server/wifi/hotspot2/NetworkDetail;->HWFLOW:Z

    if-eqz v52, :cond_6

    const-string v52, "NetworkDetail:"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Parse AP info htcap0 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", htcap1 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", ampde = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", mStream1 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", mStream2 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", mStream3 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", mStream4 = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", element.position = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v52

    add-int/lit8 v52, v52, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    .line 247
    .local v47, "tx_mcs":I
    shr-int/lit8 v52, v47, 0x4

    and-int/lit8 v52, v52, 0xf

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mTxMcsSet:I

    .line 248
    sget-boolean v52, Lcom/android/server/wifi/hotspot2/NetworkDetail;->HWFLOW:Z

    if-eqz v52, :cond_2

    const-string v52, "NetworkDetail:"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "EID_TX_MCS_SET = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ", mTxMcsSet = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mTxMcsSet:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    .end local v5    # "ampde":I
    .end local v20    # "eid":I
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    .end local v22    # "elementLength":I
    .end local v29    # "htcap0":I
    .end local v30    # "htcap1":I
    .end local v47    # "tx_mcs":I
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 238
    .restart local v5    # "ampde":I
    .restart local v20    # "eid":I
    .restart local v21    # "element":Ljava/nio/ByteBuffer;
    .restart local v22    # "elementLength":I
    .restart local v29    # "htcap0":I
    .restart local v30    # "htcap1":I
    :cond_7
    const/16 v52, 0x1

    goto/16 :goto_2

    .line 239
    :cond_8
    const/16 v52, 0x1

    goto/16 :goto_3

    .line 240
    :cond_9
    const/16 v52, 0x1

    goto/16 :goto_4

    .line 241
    :cond_a
    const/16 v52, 0x1

    goto/16 :goto_5

    .line 252
    .end local v5    # "ampde":I
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    .end local v29    # "htcap0":I
    .end local v30    # "htcap1":I
    :sswitch_1
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v44, v0

    .line 253
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 256
    :sswitch_2
    const/16 v52, 0x5

    move/from16 v0, v22

    move/from16 v1, v52

    if-eq v0, v1, :cond_b

    .line 257
    new-instance v52, Ljava/lang/IllegalArgumentException;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "BSS Load element length is not 5: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 260
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v52

    const v53, 0xffff

    and-int v45, v52, v53

    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v15, v0, 0xff

    .line 262
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v52

    const v53, 0xffff

    and-int v10, v52, v53

    .line 263
    goto/16 :goto_0

    .line 265
    :sswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 266
    .restart local v21    # "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v39

    .line 267
    .local v39, "primary_channel":I
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    and-int/lit8 v41, v52, 0x3

    .line 268
    goto/16 :goto_0

    .line 270
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    .end local v39    # "primary_channel":I
    :sswitch_4
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 271
    .restart local v21    # "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v14, v0, 0xff

    .line 272
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v12, v0, 0xff

    .line 273
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v13, v0, 0xff

    .line 274
    goto/16 :goto_0

    .line 276
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    :sswitch_5
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v6, v0, 0xff

    .line 277
    .local v6, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v52

    and-int/lit8 v53, v6, 0xf

    aget-object v9, v52, v53
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 278
    and-int/lit8 v52, v6, 0x10

    if-eqz v52, :cond_f

    const/16 v32, 0x1

    .line 280
    :goto_6
    const/16 v52, 0x3

    move/from16 v0, v22

    move/from16 v1, v52

    if-eq v0, v1, :cond_c

    const/16 v52, 0x9

    move/from16 v0, v22

    move/from16 v1, v52

    if-ne v0, v1, :cond_10

    .line 282
    :cond_c
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v50

    .line 283
    .local v50, "vinfo":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v50 .. v50}, Ljava/nio/ByteBuffer;->position()I

    move-result v52

    add-int/lit8 v52, v52, 0x2

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    new-instance v51, Lcom/android/server/wifi/anqp/VenueNameElement;

    sget-object v52, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    .line 287
    .local v51, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/anqp/VenueNameElement;->getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v48

    .line 288
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/anqp/VenueNameElement;->getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v49

    .line 289
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getShort()S
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 297
    .end local v50    # "vinfo":Ljava/nio/ByteBuffer;
    .end local v51    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_d
    :goto_7
    const/16 v52, 0x7

    move/from16 v0, v22

    move/from16 v1, v52

    if-eq v0, v1, :cond_e

    const/16 v52, 0x9

    move/from16 v0, v22

    move/from16 v1, v52

    if-ne v0, v1, :cond_2

    .line 298
    :cond_e
    :try_start_3
    sget-object v52, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v53, 0x6

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v26

    goto/16 :goto_0

    .line 278
    :cond_f
    const/16 v32, 0x0

    goto :goto_6

    .line 293
    :cond_10
    const/16 v52, 0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-eq v0, v1, :cond_d

    const/16 v52, 0x7

    move/from16 v0, v22

    move/from16 v1, v52

    if-eq v0, v1, :cond_d

    .line 294
    new-instance v52, Ljava/lang/IllegalArgumentException;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Bad Interworking element length: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 302
    .end local v6    # "anOptions":I
    :sswitch_6
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v8, v0, 0xff

    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    .line 305
    .local v34, "oi12Length":I
    and-int/lit8 v35, v34, 0xf

    .line 306
    .local v35, "oi1Length":I
    ushr-int/lit8 v52, v34, 0x4

    and-int/lit8 v36, v52, 0xf

    .line 307
    .local v36, "oi2Length":I
    add-int/lit8 v52, v22, -0x2

    sub-int v52, v52, v35

    sub-int v37, v52, v36

    .line 308
    .local v37, "oi3Length":I
    const/16 v38, 0x0

    .line 309
    .local v38, "oiCount":I
    if-lez v35, :cond_11

    .line 310
    add-int/lit8 v38, v38, 0x1

    .line 311
    if-lez v36, :cond_11

    .line 312
    add-int/lit8 v38, v38, 0x1

    .line 313
    if-lez v37, :cond_11

    .line 314
    add-int/lit8 v38, v38, 0x1

    .line 318
    :cond_11
    move/from16 v0, v38

    new-array v0, v0, [J

    move-object/from16 v40, v0

    .line 319
    if-lez v35, :cond_12

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v52, v0

    if-lez v52, :cond_12

    .line 320
    const/16 v52, 0x0

    sget-object v53, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v54

    aput-wide v54, v40, v52

    .line 323
    :cond_12
    if-lez v36, :cond_13

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_13

    .line 324
    const/16 v52, 0x1

    sget-object v53, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v54

    aput-wide v54, v40, v52

    .line 327
    :cond_13
    if-lez v37, :cond_2

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_2

    .line 328
    const/16 v52, 0x2

    sget-object v53, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v54

    aput-wide v54, v40, v52

    goto/16 :goto_0

    .line 333
    .end local v34    # "oi12Length":I
    .end local v35    # "oi1Length":I
    .end local v36    # "oi2Length":I
    .end local v37    # "oi3Length":I
    .end local v38    # "oiCount":I
    :sswitch_7
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 334
    .restart local v21    # "element":Ljava/nio/ByteBuffer;
    const/16 v52, 0x5

    move/from16 v0, v22

    move/from16 v1, v52

    if-lt v0, v1, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v52

    const v53, 0x109a6f50

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    .line 335
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B

    move-result v52

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 336
    .local v25, "hsConf":I
    shr-int/lit8 v52, v25, 0x4

    and-int/lit8 v52, v52, 0xf

    packed-switch v52, :pswitch_data_0

    .line 344
    sget-object v28, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 347
    :goto_8
    and-int/lit8 v52, v25, 0x4

    if-eqz v52, :cond_2

    .line 348
    const/16 v52, 0x7

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_14

    .line 349
    new-instance v52, Ljava/lang/IllegalArgumentException;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "HS20 indication element too short: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 338
    :pswitch_0
    sget-object v28, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 339
    goto :goto_8

    .line 341
    :pswitch_1
    sget-object v28, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 342
    goto :goto_8

    .line 352
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v52

    const v53, 0xffff

    and-int v7, v52, v53

    goto/16 :goto_0

    .line 357
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    .end local v25    # "hsConf":I
    :sswitch_8
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 358
    .restart local v21    # "element":Ljava/nio/ByteBuffer;
    sget-object v52, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 361
    const/16 v31, 0x8

    .line 362
    .local v31, "index":I
    const/16 v33, 0x6

    .line 364
    .local v33, "offset":B
    const/16 v52, 0x9

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    .line 365
    const/4 v4, 0x0

    .line 366
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v52

    add-int v52, v52, v22

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 370
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v52

    add-int v52, v52, v31

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->get()B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v52

    and-int/lit8 v52, v52, 0x40

    if-eqz v52, :cond_16

    const/4 v4, 0x1

    .line 373
    :goto_9
    goto/16 :goto_0

    .line 372
    :cond_16
    const/4 v4, 0x0

    goto :goto_9

    .line 385
    .end local v20    # "eid":I
    .end local v21    # "element":Ljava/nio/ByteBuffer;
    .end local v22    # "elementLength":I
    .end local v31    # "index":I
    .end local v33    # "offset":B
    .restart local v19    # "e":Ljava/lang/RuntimeException;
    :cond_17
    move-object/from16 v23, v19

    .line 388
    .end local v19    # "e":Ljava/lang/RuntimeException;
    :cond_18
    if-eqz v44, :cond_1b

    .line 389
    if-eqz v24, :cond_19

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    const-wide/high16 v54, 0x1000000000000L

    and-long v52, v52, v54

    const-wide/16 v54, 0x0

    cmp-long v52, v52, v54

    if-eqz v52, :cond_19

    const/16 v46, 0x1

    .line 400
    .local v46, "strictUTF8":Z
    :goto_a
    sget-object v52, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v52 .. v52}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v18

    .line 402
    .local v18, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_4
    invoke-static/range {v44 .. v44}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v52

    move-object/from16 v0, v18

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v17

    .line 403
    .local v17, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v43

    .line 409
    .end local v17    # "decoded":Ljava/nio/CharBuffer;
    :goto_b
    if-nez v43, :cond_1b

    .line 410
    if-eqz v46, :cond_1a

    if-eqz v23, :cond_1a

    .line 411
    new-instance v52, Ljava/lang/IllegalArgumentException;

    const-string v53, "Failed to decode SSID in dubious IE string"

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 389
    .end local v18    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v46    # "strictUTF8":Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_a

    .line 405
    .restart local v18    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v46    # "strictUTF8":Z
    :catch_3
    move-exception v11

    .line 406
    .local v11, "cce":Ljava/nio/charset/CharacterCodingException;
    const/16 v43, 0x0

    goto :goto_b

    .line 414
    .end local v11    # "cce":Ljava/nio/charset/CharacterCodingException;
    :cond_1a
    new-instance v43, Ljava/lang/String;

    .end local v43    # "ssid":Ljava/lang/String;
    sget-object v52, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 419
    .end local v18    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v46    # "strictUTF8":Z
    .restart local v43    # "ssid":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 420
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 421
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 422
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 423
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 424
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 425
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 426
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 427
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 428
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 429
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 430
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 431
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 432
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    .line 433
    invoke-static/range {p4 .. p4}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseANQPLines(Ljava/util/List;)Ljava/util/Map;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 435
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 437
    if-eqz v14, :cond_1d

    .line 439
    add-int/lit8 v52, v14, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 440
    add-int/lit8 v52, v12, -0x24

    mul-int/lit8 v52, v52, 0x5

    move/from16 v0, v52

    add-int/lit16 v0, v0, 0x143c

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 441
    const/16 v52, 0x1

    move/from16 v0, v52

    if-le v14, v0, :cond_1c

    .line 442
    add-int/lit8 v52, v13, -0x24

    mul-int/lit8 v52, v52, 0x5

    move/from16 v0, v52

    add-int/lit16 v0, v0, 0x143c

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 464
    :goto_c
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    .line 470
    return-void

    .line 444
    :cond_1c
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto :goto_c

    .line 448
    :cond_1d
    if-eqz v41, :cond_20

    .line 449
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 450
    const/16 v52, 0x1

    move/from16 v0, v41

    move/from16 v1, v52

    if-ne v0, v1, :cond_1e

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x14

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 462
    :goto_d
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto :goto_c

    .line 452
    :cond_1e
    const/16 v52, 0x3

    move/from16 v0, v41

    move/from16 v1, v52

    if-ne v0, v1, :cond_1f

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x14

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    goto :goto_d

    .line 455
    :cond_1f
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 456
    const-string v52, "NetworkDetail:"

    const-string v53, "Error on secondChanelOffset"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 459
    :cond_20
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 460
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    goto :goto_d

    .line 290
    .restart local v6    # "anOptions":I
    .restart local v20    # "eid":I
    .restart local v22    # "elementLength":I
    :catch_4
    move-exception v52

    goto/16 :goto_7

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xb -> :sswitch_2
        0x2d -> :sswitch_0
        0x3d -> :sswitch_3
        0x6b -> :sswitch_5
        0x6f -> :sswitch_6
        0x7f -> :sswitch_8
        0xc0 -> :sswitch_4
        0xdd -> :sswitch_7
    .end sparse-switch

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "infoElements"    # Ljava/lang/String;
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 160
    return-void
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "plLength"    # I

    .prologue
    .line 473
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 474
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    return-object v0
.end method

.method private static getCapString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cap"    # Ljava/lang/String;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, "capStr":Ljava/lang/String;
    if-nez p0, :cond_0

    const-string v1, "NULL"

    .line 558
    :goto_0
    return-object v1

    .line 548
    :cond_0
    const-string v1, "WEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    const-string v0, "WEP"

    :goto_1
    move-object v1, v0

    .line 558
    goto :goto_0

    .line 550
    :cond_1
    const-string v1, "PSK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    const-string v0, "PSK"

    goto :goto_1

    .line 552
    :cond_2
    const-string v1, "EAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    const-string v0, "EAP"

    goto :goto_1

    .line 555
    :cond_3
    const-string v0, "NONE"

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 734
    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-direct {v1}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 735
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    const-string v2, "wing"

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 736
    const-string v2, "610408"

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 737
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 738
    .local v0, "nwkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method private static parseMac(Ljava/lang/String;)J
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 512
    const-wide/16 v2, 0x0

    .line 513
    .local v2, "mac":J
    const/4 v0, 0x0

    .line 514
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 515
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v10}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    .line 516
    .local v4, "nibble":I
    if-ltz v4, :cond_0

    .line 517
    const/4 v5, 0x4

    shl-long v6, v2, v5

    int-to-long v8, v4

    or-long v2, v6, v8

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 514
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v4    # "nibble":I
    :cond_1
    const/16 v5, 0xc

    if-lt v0, v5, :cond_2

    and-int/lit8 v5, v0, 0x1

    if-ne v5, v10, :cond_3

    .line 522
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad MAC address: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 524
    :cond_3
    return-wide v2
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 10
    .param p0, "mac"    # J

    .prologue
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 713
    .local v0, "first":Z
    const/4 v1, 0x5

    .local v1, "n":I
    :goto_0
    if-ltz v1, :cond_1

    .line 714
    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 719
    :goto_1
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0x8

    ushr-long v6, p0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 717
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 721
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    .line 657
    if-ne p0, p1, :cond_1

    .line 658
    const/4 v0, 0x1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 664
    check-cast v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 667
    .local v1, "that":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v0, 0x0

    .line 668
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCap()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :cond_4
    const-string v2, "NetworkDetail:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CapChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", that Cap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    return v0
.end method

.method public getExtendedCapabilities()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    return-object v0
.end method

.method public getHESSID()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method

.method public getPrimaryFreq()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    return v0
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    return v0
.end method

.method public getStream1()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream1:I

    return v0
.end method

.method public getStream2()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream2:I

    return v0
.end method

.method public getStream3()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream3:I

    return v0
.end method

.method public getStream4()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStream4:I

    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 568
    :goto_1
    return-object v1

    .line 563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getTxMcsSet()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mTxMcsSet:I

    return v0
.end method

.method public getVenueGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method

.method public getVenueType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    return-object v0
.end method

.method public has80211uInfo()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInterworking()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapabilities:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "scanResultKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public is80211McResponderSupport()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    return v0
.end method

.method public isInternet()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    return v0
.end method

.method public isInterworking()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSID_UTF8()Z
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 701
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "\'%s\':%012x (%012x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\'%s\':%012x"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 690
    const-string v0, "NetworkInfo{mSSID=\'%s\', mHESSID=%x, mBSSID=%x, mStationCount=%d, mChannelUtilization=%d, mCapacity=%d, mAnt=%s, mInternet=%s, mVenueGroup=%s, mVenueType=%s, mHSRelease=%s, mAnqpDomainID=%d, mAnqpOICount=%d, mRoamingConsortiums=%s}"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString([J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

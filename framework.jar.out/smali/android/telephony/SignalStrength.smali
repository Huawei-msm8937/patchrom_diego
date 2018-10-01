.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final FEATURE_VALIDATEINPUT:Z

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private GSM_STRENGTH_GOOD_STD:I

.field private GSM_STRENGTH_GREAT_STD:I

.field private GSM_STRENGTH_MODERATE_STD:I

.field private GSM_STRENGTH_NONE:I

.field private GSM_STRENGTH_POOR_STD:I

.field private GSM_STRENGTH_UNKOUWN:I

.field private LTE_STRENGTH_GOOD_STD:I

.field private LTE_STRENGTH_GREAT_STD:I

.field private LTE_STRENGTH_MODERATE_STD:I

.field private LTE_STRENGTH_NONE_STD:I

.field private LTE_STRENGTH_POOR_STD:I

.field private LTE_STRENGTH_UNKOUWN_STD:I

.field private TDS_STRENGTH_GOOD_STD:I

.field private TDS_STRENGTH_GREAT_STD:I

.field private TDS_STRENGTH_MODERATE_STD:I

.field private TDS_STRENGTH_POOR_STD:I

.field private WCDMA_STRENGTH_GOOD_STD:I

.field private WCDMA_STRENGTH_GREAT_STD:I

.field private WCDMA_STRENGTH_INVALID:I

.field private WCDMA_STRENGTH_MODERATE_STD:I

.field private WCDMA_STRENGTH_NONE:I

.field private WCDMA_STRENGTH_POOR_STD:I

.field private isCdma:Z

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mWcdmaEcio:I

.field private mWcdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 90
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 92
    const-string/jumbo v0, "ro.SignalStrength.ValidateInput"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/SignalStrength;->FEATURE_VALIDATEINPUT:Z

    .line 433
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 90
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x0

    const/16 v3, -0x69

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, -0x6d

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v0, -0x67

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v0, -0x61

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v0, -0x59

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    iput v4, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    iput v5, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v0, -0x70

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    iput v3, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    const/16 v0, -0x62

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    const/16 v0, -0x5b

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    iput v4, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    iput v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v0, -0x73

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    iput v3, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v0, -0x5f

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v0, -0x55

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v0, -0x8c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v0, -0x2c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v0, -0x6f

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    iput v3, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    const/16 v0, -0x62

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    const/16 v0, -0x5b

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 141
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 142
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 145
    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 147
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 148
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 149
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 152
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 153
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 154
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 155
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 156
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 159
    iput-boolean v4, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 161
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "wcdmaRscp"    # I
    .param p4, "wcdmaEcio"    # I
    .param p5, "cdmaDbm"    # I
    .param p6, "cdmaEcio"    # I
    .param p7, "evdoDbm"    # I
    .param p8, "evdoEcio"    # I
    .param p9, "evdoSnr"    # I
    .param p10, "lteSignalStrength"    # I
    .param p11, "lteRsrp"    # I
    .param p12, "lteRsrq"    # I
    .param p13, "lteRssnr"    # I
    .param p14, "lteCqi"    # I
    .param p15, "gsmFlag"    # Z

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, -0x6d

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v0, -0x67

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v0, -0x61

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v0, -0x59

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v0, -0x70

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    const/16 v0, -0x69

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    const/16 v0, -0x62

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    const/16 v0, -0x5b

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v0, -0x73

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    const/16 v0, -0x69

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v0, -0x5f

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v0, -0x55

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v0, -0x8c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v0, -0x2c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v0, -0x6f

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    const/16 v0, -0x69

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    const/16 v0, -0x62

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    const/16 v0, -0x5b

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 206
    invoke-virtual/range {p0 .. p15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 209
    return-void
.end method

.method public constructor <init>(IIIIIIIIIZ)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "wcdmaRscp"    # I
    .param p4, "wcdmaEcio"    # I
    .param p5, "cdmaDbm"    # I
    .param p6, "cdmaEcio"    # I
    .param p7, "evdoDbm"    # I
    .param p8, "evdoEcio"    # I
    .param p9, "evdoSnr"    # I
    .param p10, "gsmFlag"    # Z

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v1, -0x6d

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v1, -0x67

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v1, -0x61

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v1, -0x59

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    const/16 v1, 0x63

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v1, -0x70

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    const/16 v1, -0x69

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    const/16 v1, -0x62

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    const/16 v1, -0x5b

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v1, -0x73

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    const/16 v1, -0x69

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v1, -0x5f

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v1, -0x55

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v1, -0x8c

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v1, -0x2c

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v1, -0x6f

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    const/16 v1, -0x69

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    const/16 v1, -0x62

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    const/16 v1, -0x5b

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 221
    const/16 v11, 0x63

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v16, p10

    invoke-virtual/range {v1 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/16 v5, -0x5b

    const/16 v4, -0x62

    const/16 v3, -0x69

    const/4 v2, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, -0x6d

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v0, -0x67

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v0, -0x61

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v0, -0x59

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    iput v2, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v0, -0x70

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    iput v3, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    iput v4, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    iput v5, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    iput v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v0, -0x73

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    iput v3, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v0, -0x5f

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v0, -0x55

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v0, -0x8c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v0, -0x2c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v0, -0x6f

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    iput v3, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    iput v4, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    iput v5, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of signalstrength parcel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 362
    return-void

    :cond_0
    move v0, v2

    .line 358
    goto :goto_0

    :cond_1
    move v1, v2

    .line 360
    goto :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v4, 0x0

    const/16 v3, -0x5b

    const/16 v2, -0x62

    const/16 v1, -0x69

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, -0x6d

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v0, -0x67

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v0, -0x61

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v0, -0x59

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    iput v4, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v0, -0x70

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    iput v1, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    iput v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    iput v3, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    iput v4, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v0, -0x73

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v0, -0x5f

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v0, -0x55

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v0, -0x8c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v0, -0x2c

    iput v0, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v0, -0x6f

    iput v0, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    iput v1, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    iput v2, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    iput v3, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 234
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v5, 0x63

    const/4 v0, 0x0

    const/16 v4, -0x69

    const v3, 0x7fffffff

    const/4 v2, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v1, -0x6d

    iput v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 58
    const/16 v1, -0x67

    iput v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 59
    const/16 v1, -0x61

    iput v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 60
    const/16 v1, -0x59

    iput v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 61
    iput v0, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    .line 62
    iput v5, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    .line 64
    const/16 v1, -0x70

    iput v1, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 65
    iput v4, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 66
    const/16 v1, -0x62

    iput v1, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 67
    const/16 v1, -0x5b

    iput v1, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 68
    iput v0, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    .line 69
    iput v3, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_INVALID:I

    .line 71
    const/16 v1, -0x73

    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 72
    iput v4, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 73
    const/16 v1, -0x5f

    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 74
    const/16 v1, -0x55

    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 75
    const/16 v1, -0x8c

    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_NONE_STD:I

    .line 76
    const/16 v1, -0x2c

    iput v1, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    .line 78
    const/16 v1, -0x6f

    iput v1, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_POOR_STD:I

    .line 79
    iput v4, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_MODERATE_STD:I

    .line 80
    const/16 v1, -0x62

    iput v1, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GOOD_STD:I

    .line 81
    const/16 v1, -0x5b

    iput v1, p0, Landroid/telephony/SignalStrength;->TDS_STRENGTH_GREAT_STD:I

    .line 172
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 173
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 175
    iput v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 176
    iput v2, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 178
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 179
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 180
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 181
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 182
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 183
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 184
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 185
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 186
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 187
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 188
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 190
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 192
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1203
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 375
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 376
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 378
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 379
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 381
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 382
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 383
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 384
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 385
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 386
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 387
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 392
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 130
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 131
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 132
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1154
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1155
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1157
    const-string v0, "WcdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 1158
    const-string v0, "WcdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 1160
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1161
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1162
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1163
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1164
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1165
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1166
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1167
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1168
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1169
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1170
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1171
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 312
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 313
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 315
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 316
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 318
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 319
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 328
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 330
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isCdma:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 332
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1093
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1102
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1094
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1102
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1180
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1181
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    const-string v0, "WcdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1184
    const-string v0, "WcdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1189
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1190
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1193
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1194
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1195
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1196
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1197
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 706
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 711
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 729
    .local v0, "asuLevel":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 730
    return v0

    .line 713
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 716
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 717
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 718
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 720
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 721
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 723
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 726
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 894
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 895
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 900
    .local v2, "cdmaEcio":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const/16 v0, 0x63

    .line 910
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_6

    const/16 v3, 0x10

    .line 917
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_b

    move v4, v0

    .line 918
    .local v4, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 919
    return v4

    .line 902
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1

    const/16 v0, 0x10

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 903
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    const/16 v5, -0x52

    if-lt v1, v5, :cond_2

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 904
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    if-lt v1, v7, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 905
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 906
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    if-lt v1, v6, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 907
    .end local v0    # "cdmaAsuLevel":I
    :cond_5
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 911
    :cond_6
    if-lt v2, v6, :cond_7

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 912
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x73

    if-lt v2, v5, :cond_8

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 913
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x82

    if-lt v2, v5, :cond_9

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 914
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v5, -0x96

    if-lt v2, v5, :cond_a

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 915
    .end local v3    # "ecioAsuLevel":I
    :cond_a
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_b
    move v4, v3

    .line 917
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 861
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/telephony/HwInnerTelephonyManager;->useHwSignalStrength()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 862
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/telephony/HwInnerTelephonyManager;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v2

    .line 885
    :goto_0
    return v2

    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 866
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 870
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 877
    .local v3, "levelDbm":I
    :goto_1
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 883
    .local v4, "levelEcio":I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 884
    .local v2, "level":I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 871
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 872
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 873
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x64

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 874
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 878
    :cond_5
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 879
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x82

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 880
    .end local v4    # "levelEcio":I
    :cond_7
    const/16 v5, -0x96

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 881
    .end local v4    # "levelEcio":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 883
    goto :goto_3
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 741
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 742
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 743
    .local v1, "dBm":I
    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    .line 744
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 753
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 754
    .end local v1    # "dBm":I
    :goto_0
    return v1

    .line 747
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 748
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 750
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_4

    .end local v0    # "cdmaDbm":I
    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_4
    if-ne v0, v4, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    if-lt v0, v2, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 963
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 968
    .local v1, "evdoSnr":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const/16 v3, 0x63

    .line 977
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_6

    const/16 v4, 0x10

    .line 984
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_b

    move v2, v3

    .line 985
    .local v2, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 986
    return v2

    .line 970
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x41

    if-lt v0, v5, :cond_1

    const/16 v3, 0x10

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 971
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_2

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 972
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x55

    if-lt v0, v5, :cond_3

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 973
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_4

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 974
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v5, -0x69

    if-lt v0, v5, :cond_5

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 975
    .end local v3    # "levelEvdoDbm":I
    :cond_5
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 978
    :cond_6
    const/4 v5, 0x6

    if-lt v1, v5, :cond_7

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 979
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x5

    if-lt v1, v5, :cond_8

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 980
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x3

    if-lt v1, v5, :cond_9

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 981
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/4 v5, 0x1

    if-lt v1, v5, :cond_a

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 982
    .end local v4    # "levelEvdoSnr":I
    :cond_a
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_b
    move v2, v4

    .line 984
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 930
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/telephony/HwInnerTelephonyManager;->useHwSignalStrength()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 931
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/telephony/HwInnerTelephonyManager;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v2

    .line 953
    :goto_0
    return v2

    .line 934
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 935
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 939
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 945
    .local v3, "levelEvdoDbm":I
    :goto_1
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 951
    .local v4, "levelEvdoSnr":I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 952
    .local v2, "level":I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_1
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 941
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 942
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 943
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 946
    :cond_5
    const/4 v5, 0x5

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 947
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x3

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 948
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x1

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 949
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 951
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 834
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/telephony/HwInnerTelephonyManager;->useHwSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/telephony/HwInnerTelephonyManager;->getGsmAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 849
    :goto_0
    return v0

    .line 840
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 841
    .local v2, "gsmSignalStrength":I
    if-nez v2, :cond_1

    move v1, v3

    .line 842
    .local v1, "dbm":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsmSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWcdmaRscp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 843
    if-eq v1, v3, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-nez v3, :cond_2

    .line 844
    add-int/lit8 v3, v1, 0x71

    div-int/lit8 v0, v3, 0x2

    .line 848
    .local v0, "asu":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "asu":I
    .end local v1    # "dbm":I
    :cond_1
    move v1, v2

    .line 841
    goto :goto_1

    .line 846
    .restart local v1    # "dbm":I
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "asu":I
    goto :goto_2
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 765
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 767
    .local v1, "gsmSignalStrength":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaRscp()I

    move-result v2

    .line 769
    .local v2, "wcdmaDbm":I
    if-eq v0, v2, :cond_0

    if-nez v2, :cond_2

    .line 770
    :cond_0
    const/16 v3, 0x63

    if-ne v1, v3, :cond_1

    .line 775
    .local v0, "dBm":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 776
    return v0

    .end local v0    # "dBm":I
    :cond_1
    move v0, v1

    .line 770
    goto :goto_0

    .line 772
    :cond_2
    move v0, v2

    .restart local v0    # "dBm":I
    goto :goto_0
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 787
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/HwInnerTelephonyManager;->useHwSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/telephony/HwInnerTelephonyManager;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 819
    :goto_0
    return v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    .line 797
    .local v0, "level":I
    const/4 v1, -0x1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-nez v1, :cond_8

    .line 799
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_NONE:I

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_UNKOUWN:I

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 816
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGsmSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mWcdmaRscp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    if-lt v1, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    .line 801
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    if-lt v1, v2, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    .line 802
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    if-lt v1, v2, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    .line 803
    :cond_6
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, p0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    if-lt v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    .line 804
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 808
    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_NONE:I

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 809
    :cond_a
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    if-lt v1, v2, :cond_b

    const/4 v0, 0x4

    goto :goto_1

    .line 810
    :cond_b
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    if-lt v1, v2, :cond_c

    const/4 v0, 0x3

    goto :goto_1

    .line 811
    :cond_c
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    if-lt v1, v2, :cond_d

    const/4 v0, 0x2

    goto :goto_1

    .line 812
    :cond_d
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_1

    .line 813
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 604
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 605
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 606
    .local v2, "level":I
    if-nez v2, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 623
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 624
    return v2

    .line 610
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 611
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 612
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 614
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 615
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    .line 617
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 620
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 1039
    const/16 v0, 0x63

    .line 1040
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1054
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1056
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1057
    return v0

    .line 1055
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 3

    .prologue
    .line 1013
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/HwInnerTelephonyManager;->useHwSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/telephony/HwInnerTelephonyManager;->getLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1028
    :goto_0
    return v0

    .line 1017
    :cond_0
    const/4 v0, 0x0

    .line 1019
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_UNKOUWN_STD:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x0

    .line 1025
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLTELevel - rsrp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " snr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrpIconLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 1021
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    .line 1022
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    .line 1023
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, p0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    .line 1024
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getWcdmaEcio()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1072
    const/16 v0, 0x1f

    .line 1073
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIIIZ)V
    .locals 3
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "wcdmaRscp"    # I
    .param p4, "wcdmaEcio"    # I
    .param p5, "cdmaDbm"    # I
    .param p6, "cdmaEcio"    # I
    .param p7, "evdoDbm"    # I
    .param p8, "evdoEcio"    # I
    .param p9, "evdoSnr"    # I
    .param p10, "lteSignalStrength"    # I
    .param p11, "lteRsrp"    # I
    .param p12, "lteRsrq"    # I
    .param p13, "lteRssnr"    # I
    .param p14, "lteCqi"    # I
    .param p15, "gsm"    # Z

    .prologue
    .line 286
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 287
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 288
    iput p3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 289
    iput p4, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 290
    iput p5, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 291
    iput p6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 292
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 293
    iput p8, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 294
    iput p9, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 295
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 296
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 297
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 298
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 299
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 300
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 302
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 305
    return-void

    .line 302
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIZ)V
    .locals 16
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "wcdmaRscp"    # I
    .param p4, "wcdmaEcio"    # I
    .param p5, "cdmaDbm"    # I
    .param p6, "cdmaEcio"    # I
    .param p7, "evdoDbm"    # I
    .param p8, "evdoEcio"    # I
    .param p9, "evdoSnr"    # I
    .param p10, "gsm"    # Z

    .prologue
    .line 256
    const/16 v10, 0x63

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v15, p10

    invoke-virtual/range {v0 .. v15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 259
    return-void
.end method

.method public isCdma()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    return v0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setCdma(Z)V
    .locals 0
    .param p1, "cdmaFlag"    # Z

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    .line 691
    return-void
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 663
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 664
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 668
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 669
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 673
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 674
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 678
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 679
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 683
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 684
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 499
    return-void
.end method

.method public setGsmSignalStrength(I)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I

    .prologue
    .line 629
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 630
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 644
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 645
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 649
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 650
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 658
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 659
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 653
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 654
    return-void
.end method

.method public setWcdmaEcio(I)V
    .locals 0
    .param p1, "wcdmaEcio"    # I

    .prologue
    .line 639
    iput p1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 640
    return-void
.end method

.method public setWcdmaRscp(I)V
    .locals 0
    .param p1, "wcdmaRscp"    # I

    .prologue
    .line 634
    iput p1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 635
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gw|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal before validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 457
    sget-boolean v0, Landroid/telephony/SignalStrength;->FEATURE_VALIDATEINPUT:Z

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FEATURE_VALIDATEINPUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/SignalStrength;->FEATURE_VALIDATEINPUT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/telephony/HwInnerTelephonyManager;->validateInput(Landroid/telephony/SignalStrength;)V

    .line 487
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isCdma:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return-void

    :cond_0
    move v0, v2

    .line 415
    goto :goto_0

    :cond_1
    move v1, v2

    .line 417
    goto :goto_1
.end method

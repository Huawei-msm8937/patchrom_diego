.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field public static final SCALE_FORCE:I = 0x1

.field public static final SCALE_GL:I = 0x1

.field public static final SCALE_NATIVE:I = 0x8

.field public static final SCALE_PACKAGE:I = 0x4

.field public static final SCALE_SURFACE:I = 0x2

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public appScaleOptFlags:I

.field public appScaleRatio:F

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 797
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 323
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 326
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 307
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 308
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 309
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 310
    return-void
.end method

.method private constructor <init>(IIFFI)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F
    .param p5, "flags"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 316
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 317
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 318
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 319
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v5, 0x0

    .line 132
    .local v5, "compatFlags":I
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    .line 133
    if-eqz p4, :cond_4

    .line 134
    const/4 v9, 0x1

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 158
    :goto_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_a

    .line 162
    :cond_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_5

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 165
    .local v7, "required":I
    :goto_1
    if-nez v7, :cond_1

    .line 166
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 168
    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_6

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 170
    .local v4, "compat":I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 171
    move v4, v7

    .line 173
    :cond_2
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 175
    .local v6, "largest":I
    const/16 v9, 0x140

    if-le v7, v9, :cond_7

    .line 182
    or-int/lit8 v5, v5, 0x4

    .line 199
    :cond_3
    :goto_3
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 200
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 201
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 301
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :goto_4
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 302
    return-void

    .line 136
    :cond_4
    const/4 v9, 0x0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    goto :goto_0

    .line 162
    :cond_5
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_1

    .restart local v7    # "required":I
    :cond_6
    move v4, v7

    .line 168
    goto :goto_2

    .line 183
    .restart local v4    # "compat":I
    .restart local v6    # "largest":I
    :cond_7
    if-eqz v6, :cond_8

    if-le p3, v6, :cond_8

    .line 187
    or-int/lit8 v5, v5, 0xa

    goto :goto_3

    .line 188
    :cond_8
    if-lt v4, p3, :cond_9

    .line 191
    or-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 192
    :cond_9
    if-eqz p4, :cond_3

    .line 195
    or-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 208
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :cond_a
    const/4 v0, 0x2

    .line 214
    .local v0, "EXPANDABLE":I
    const/16 v1, 0x8

    .line 220
    .local v1, "LARGE_SCREENS":I
    const/16 v2, 0x20

    .line 222
    .local v2, "XLARGE_SCREENS":I
    const/4 v8, 0x0

    .line 226
    .local v8, "sizeInfo":I
    const/4 v3, 0x0

    .line 228
    .local v3, "anyResizeable":Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_b

    .line 229
    or-int/lit8 v8, v8, 0x8

    .line 230
    const/4 v3, 0x1

    .line 231
    if-nez p4, :cond_b

    .line 235
    or-int/lit8 v8, v8, 0x22

    .line 238
    :cond_b
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    .line 239
    const/4 v3, 0x1

    .line 240
    if-nez p4, :cond_c

    .line 241
    or-int/lit8 v8, v8, 0x22

    .line 244
    :cond_c
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_d

    .line 245
    const/4 v3, 0x1

    .line 246
    or-int/lit8 v8, v8, 0x2

    .line 249
    :cond_d
    if-eqz p4, :cond_e

    .line 254
    and-int/lit8 v8, v8, -0x3

    .line 257
    :cond_e
    or-int/lit8 v5, v5, 0x8

    .line 258
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_0

    .line 277
    :cond_f
    :goto_5
    const/high16 v9, 0x10000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_14

    .line 278
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_13

    .line 279
    and-int/lit8 v5, v5, -0x9

    .line 288
    :cond_10
    :goto_6
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_15

    .line 289
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 290
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 291
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_4

    .line 260
    :pswitch_0
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_11

    .line 261
    and-int/lit8 v5, v5, -0x9

    .line 263
    :cond_11
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_f

    .line 264
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 268
    :pswitch_1
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_12

    .line 269
    and-int/lit8 v5, v5, -0x9

    .line 271
    :cond_12
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_f

    .line 272
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 280
    :cond_13
    if-nez v3, :cond_10

    .line 281
    or-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 284
    :cond_14
    and-int/lit8 v5, v5, -0x9

    .line 285
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 293
    :cond_15
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 294
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 296
    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 297
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 855
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 8
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v7, 0x0

    .line 597
    iget v5, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    .line 601
    const/high16 v2, 0x3f800000    # 1.0f

    .line 616
    :goto_0
    return v2

    .line 604
    :cond_0
    iget v4, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 605
    .local v4, "width":I
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 607
    .local v0, "height":I
    if-ge v4, v0, :cond_1

    .line 608
    move v3, v4

    .line 609
    .local v3, "shortSize":I
    move v1, v0

    .line 614
    .local v1, "longSize":I
    :goto_1
    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v5, v1, v3, p0, p1}, Landroid/content/res/CompatibilityInfo;->computeScale(FIILandroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v2

    .line 616
    .local v2, "scale":F
    goto :goto_0

    .line 611
    .end local v1    # "longSize":I
    .end local v2    # "scale":F
    .end local v3    # "shortSize":I
    :cond_1
    move v3, v0

    .line 612
    .restart local v3    # "shortSize":I
    move v1, v4

    .restart local v1    # "longSize":I
    goto :goto_1
.end method

.method public static computeForceCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 9
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v8, 0x0

    .line 628
    iget v6, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 632
    const/high16 v3, 0x3f800000    # 1.0f

    .line 684
    :goto_0
    return v3

    .line 635
    :cond_0
    iget v5, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 636
    .local v5, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 638
    .local v1, "height":I
    if-ge v5, v1, :cond_2

    .line 639
    move v4, v5

    .line 640
    .local v4, "shortSize":I
    move v2, v1

    .line 646
    .local v2, "longSize":I
    :goto_1
    const/high16 v0, 0x43a00000    # 320.0f

    .line 650
    .local v0, "factor":F
    const/16 v6, 0x438

    if-ge v2, v6, :cond_3

    .line 652
    const/high16 v0, 0x43a00000    # 320.0f

    .line 683
    :cond_1
    :goto_2
    invoke-static {v0, v2, v4, p0, p1}, Landroid/content/res/CompatibilityInfo;->computeScale(FIILandroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v3

    .line 684
    .local v3, "scale":F
    goto :goto_0

    .line 642
    .end local v0    # "factor":F
    .end local v2    # "longSize":I
    .end local v3    # "scale":F
    .end local v4    # "shortSize":I
    :cond_2
    move v4, v1

    .line 643
    .restart local v4    # "shortSize":I
    move v2, v5

    .restart local v2    # "longSize":I
    goto :goto_1

    .line 656
    .restart local v0    # "factor":F
    :cond_3
    const/16 v6, 0x4b0

    if-gt v2, v6, :cond_4

    .line 659
    const/high16 v0, 0x438a0000    # 276.0f

    goto :goto_2

    .line 661
    :cond_4
    const/16 v6, 0x500

    if-gt v2, v6, :cond_5

    .line 663
    const/high16 v0, 0x43900000    # 288.0f

    goto :goto_2

    .line 668
    :cond_5
    const/16 v6, 0x780

    if-gt v2, v6, :cond_6

    .line 672
    const/high16 v0, 0x43700000    # 240.0f

    goto :goto_2

    .line 676
    :cond_6
    const/16 v6, 0xa00

    if-gt v2, v6, :cond_1

    .line 680
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_2
.end method

.method public static computeScale(FIILandroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13
    .param p0, "factor"    # F
    .param p1, "longSize"    # I
    .param p2, "shortSize"    # I
    .param p3, "dm"    # Landroid/util/DisplayMetrics;
    .param p4, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 689
    move-object/from16 v0, p3

    iget v10, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 690
    .local v10, "width":I
    move-object/from16 v0, p3

    iget v2, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 691
    .local v2, "height":I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, p0

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v5, v11

    .line 692
    .local v5, "newShortSize":I
    int-to-float v11, p1

    int-to-float v12, p2

    div-float v1, v11, v12

    .line 693
    .local v1, "aspect":F
    const v11, 0x3fe3bbbc

    cmpl-float v11, v1, v11

    if-lez v11, :cond_0

    .line 694
    const v1, 0x3fe3bbbc

    .line 696
    :cond_0
    int-to-float v11, v5

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v4, v11

    .line 698
    .local v4, "newLongSize":I
    if-ge v10, v2, :cond_3

    .line 699
    move v6, v5

    .line 700
    .local v6, "newWidth":I
    move v3, v4

    .line 706
    .local v3, "newHeight":I
    :goto_0
    int-to-float v11, v10

    int-to-float v12, v6

    div-float v9, v11, v12

    .line 707
    .local v9, "sw":F
    int-to-float v11, v2

    int-to-float v12, v3

    div-float v8, v11, v12

    .line 708
    .local v8, "sh":F
    cmpg-float v11, v9, v8

    if-gez v11, :cond_4

    move v7, v9

    .line 709
    .local v7, "scale":F
    :goto_1
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v7, v11

    if-gez v11, :cond_1

    .line 710
    const/high16 v7, 0x3f800000    # 1.0f

    .line 713
    :cond_1
    if-eqz p4, :cond_2

    .line 714
    move-object/from16 v0, p4

    iput v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 715
    move-object/from16 v0, p4

    iput v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 718
    :cond_2
    return v7

    .line 702
    .end local v3    # "newHeight":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "sw":F
    :cond_3
    move v6, v4

    .line 703
    .restart local v6    # "newWidth":I
    move v3, v5

    .restart local v3    # "newHeight":I
    goto :goto_0

    .restart local v8    # "sh":F
    .restart local v9    # "sw":F
    :cond_4
    move v7, v8

    .line 708
    goto :goto_1
.end method

.method public static final makeCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .param p0, "flags"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 841
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0x8

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move v4, v3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNewCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .param p0, "flags"    # I

    .prologue
    .line 814
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    const v3, 0x3faa6666

    const v4, 0x3f404cec

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNewPackageCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .param p0, "flags"    # I

    .prologue
    const/high16 v5, 0x43200000    # 160.0f

    .line 823
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v4, v4

    div-float v4, v5, v4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNoneCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .param p0, "flags"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 832
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x4

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move v4, v3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 556
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 557
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 558
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 560
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 561
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 563
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 565
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public applyToConfigurationExt(Landroid/util/DisplayMetrics;ILandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayDensity"    # I
    .param p3, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 576
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    if-eqz p1, :cond_1

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 578
    .local v1, "noNeedToChange":Z
    :goto_0
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 580
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    div-float v0, v4, v2

    .line 581
    .local v0, "localAppScaleRatio":F
    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    .line 585
    .end local v0    # "localAppScaleRatio":F
    .end local v1    # "noNeedToChange":Z
    :cond_0
    return-void

    .line 577
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 507
    const/high16 v0, 0x3f800000    # 1.0f

    .line 508
    .local v0, "invertedRatio":F
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 513
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeForceCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 523
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 525
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 526
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 527
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 528
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 529
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 530
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 531
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 545
    :cond_0
    :goto_1
    return-void

    .line 515
    :cond_1
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 519
    :cond_2
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 520
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 533
    :cond_3
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 535
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    .line 536
    div-float v0, v4, v0

    .line 537
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 538
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 539
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 540
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 541
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 723
    if-ne p0, p1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v3

    .line 727
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 728
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v5, v6, :cond_2

    move v3, v4

    goto :goto_0

    .line 729
    :cond_2
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v5, v6, :cond_3

    move v3, v4

    goto :goto_0

    .line 730
    :cond_3
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 731
    :cond_4
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    move v3, v4

    goto :goto_0

    .line 732
    :cond_5
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 734
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 735
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 770
    const/16 v0, 0x11

    .line 771
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 772
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 773
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 774
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 776
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    add-int v0, v1, v2

    .line 778
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realNeedCompat()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 742
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 748
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 754
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 757
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v1, :cond_4

    .line 761
    const-string v1, " enabledAppScaleOpt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 788
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 794
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 795
    return-void
.end method

.class public Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.25f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.2f

.field private static final P2:F = 0.25f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.8f


# instance fields
.field private fBoostParamVal:[I

.field private fBoostTimeOut:I

.field private flingBoostTimeOut:I

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field public mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 605
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 615
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 616
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 637
    const/4 v7, 0x0

    .line 638
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 639
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 640
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 642
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 645
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 646
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 647
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 648
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    .line 652
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 654
    const/high16 v9, 0x3f800000    # 1.0f

    .line 657
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 658
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 659
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 660
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 664
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 649
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 650
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 661
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 662
    :cond_3
    move v10, v8

    goto :goto_2

    .line 666
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 667
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 597
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 628
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 629
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 630
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 631
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 632
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 674
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 676
    const-string v2, "hw.lcd.density.scale"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 677
    .local v0, "densityScale":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    mul-float v1, v2, v0

    .line 683
    .local v1, "ppi":F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v1

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 688
    invoke-static {p0, p1}, Landroid/hwcontrol/HwWidgetFactory;->getHwSplineOverScroller(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)Landroid/widget/IHwSplineOverScroller;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 694
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    .line 700
    :cond_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v2, :cond_1

    .line 701
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 704
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 722
    sub-int v2, p2, p1

    .line 723
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 724
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 725
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 726
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 727
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 728
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 729
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 730
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 731
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 732
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 734
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 891
    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v5, v6

    .line 893
    .local v2, "durationToApex":F
    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    .line 894
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    .line 895
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 896
    .local v1, "distanceToEdge":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-float v5, v0, v1

    float-to-double v8, v5

    mul-double/2addr v6, v8

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 898
    .local v3, "totalDuration":F
    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 899
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 900
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 901
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 714
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 873
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 877
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 878
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 879
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 884
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 885
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 886
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 949
    iget-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    invoke-interface {v3, v4, v5, v6}, Landroid/widget/IHwSplineOverScroller;->adjustBallisticVelocity(IFI)I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 951
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 952
    .local v2, "velocitySquared":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v7

    div-float v0, v2, v3

    .line 953
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 955
    .local v1, "sign":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 957
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 958
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v3

    .line 961
    :cond_0
    float-to-int v3, v0

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 962
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 963
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    .end local v0    # "distance":F
    :goto_0
    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 964
    const/high16 v3, 0x447a0000    # 1000.0f

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 966
    iget-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-interface {v3, v4}, Landroid/widget/IHwSplineOverScroller;->getBallisticDuration(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 968
    return-void

    .line 963
    .restart local v0    # "distance":F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 18
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 910
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 911
    const-string v4, "OverScroller"

    const-string v5, "startAfterEdge called from a valid position"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 932
    :goto_0
    return-void

    .line 915
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    const/4 v15, 0x1

    .line 916
    .local v15, "positive":Z
    :goto_1
    if-eqz v15, :cond_2

    move/from16 v12, p3

    .line 917
    .local v12, "edge":I
    :goto_2
    sub-int v14, p1, v12

    .line 918
    .local v14, "overDistance":I
    mul-int v4, v14, p4

    if-ltz v4, :cond_3

    const/4 v13, 0x1

    .line 919
    .local v13, "keepIncreasing":Z
    :goto_3
    if-eqz v13, :cond_4

    .line 921
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 915
    .end local v12    # "edge":I
    .end local v13    # "keepIncreasing":Z
    .end local v14    # "overDistance":I
    .end local v15    # "positive":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .restart local v15    # "positive":Z
    :cond_2
    move/from16 v12, p2

    .line 916
    goto :goto_2

    .line 918
    .restart local v12    # "edge":I
    .restart local v14    # "overDistance":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 924
    .restart local v13    # "keepIncreasing":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v5

    sget v7, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v8, v7

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    move/from16 v7, p4

    invoke-interface/range {v4 .. v11}, Landroid/widget/IHwSplineOverScroller;->getSplineFlingDistance(DIDFF)D

    move-result-wide v16

    .line 926
    .local v16, "totalDistance":D
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v16, v4

    if-lez v4, :cond_7

    .line 927
    if-eqz v15, :cond_5

    move/from16 v7, p2

    :goto_4
    if-eqz v15, :cond_6

    move/from16 v8, p1

    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p4

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move/from16 v7, p1

    goto :goto_4

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    .line 929
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 904
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 905
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 906
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 907
    return-void

    :cond_0
    move v0, p3

    .line 904
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 801
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 802
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 803
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 804
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 805
    sub-int v0, p1, p2

    .line 806
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 808
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 809
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 810
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 812
    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-interface {v1, v2}, Landroid/widget/IHwSplineOverScroller;->getCubicDuration(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 814
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 971
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 995
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 996
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 974
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 976
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 978
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 979
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 980
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 981
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 988
    :pswitch_2
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 989
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 776
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 777
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 778
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 779
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 762
    :cond_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 767
    return-void
.end method

.method fling(IIIII)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 817
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 818
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 819
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 820
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 821
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 822
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 824
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    invoke-interface {v0, v4, v5, v4, v5}, Landroid/widget/IHwSplineOverScroller;->resetLastDistanceValue(DD)V

    .line 826
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 827
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 870
    :cond_1
    :goto_0
    return-void

    .line 831
    :cond_2
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 832
    const-wide/16 v8, 0x0

    .line 834
    .local v8, "totalDistance":D
    if-eqz p2, :cond_3

    .line 836
    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    sget v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v0

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    move v3, p2

    invoke-interface/range {v1 .. v7}, Landroid/widget/IHwSplineOverScroller;->getSplineFlingDuration(IIDFF)I

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 837
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    sget v3, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v3

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/widget/IHwSplineOverScroller;->getSplineFlingDistance(DIDFF)D

    move-result-wide v8

    .line 844
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 846
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    if-nez v0, :cond_5

    .line 847
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 852
    :goto_1
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 857
    :cond_3
    int-to-float v0, p2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 858
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 861
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v0, p3, :cond_4

    .line 862
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 863
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 866
    :cond_4
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v0, p4, :cond_1

    .line 867
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 868
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_0

    .line 850
    :cond_5
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    goto :goto_1
.end method

.method public getSplineOverScrollerVelocity()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 936
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 937
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 938
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 941
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 943
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 770
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 772
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 670
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 671
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 782
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 784
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 785
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 787
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 788
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 790
    if-ge p1, p2, :cond_1

    .line 791
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 796
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 792
    :cond_1
    if-le p1, p3, :cond_0

    .line 793
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 796
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 737
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 739
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 740
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 742
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 743
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 747
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 748
    return-void
.end method

.method update()Z
    .locals 23

    .prologue
    .line 1005
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v20

    .line 1006
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v10, v20, v6

    .line 1008
    .local v10, "currentTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v10, v6

    if-nez v3, :cond_1

    .line 1010
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 1065
    :goto_0
    return v3

    .line 1010
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1012
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v3

    cmp-long v3, v10, v6

    if-lez v3, :cond_2

    .line 1013
    const/4 v3, 0x0

    goto :goto_0

    .line 1016
    :cond_2
    const-wide/16 v4, 0x0

    .line 1017
    .local v4, "distance":D
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1063
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1065
    const/4 v3, 0x1

    goto :goto_0

    .line 1019
    :pswitch_0
    long-to-float v3, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .line 1020
    .local v16, "t":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, v16

    float-to-int v14, v3

    .line 1021
    .local v14, "index":I
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1022
    .local v13, "distanceCoef":F
    const/16 v22, 0x0

    .line 1023
    .local v22, "velocityCoef":F
    const/16 v3, 0x64

    if-ge v14, v3, :cond_3

    .line 1024
    int-to-float v3, v14

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v18, v3, v6

    .line 1025
    .local v18, "t_inf":F
    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v19, v3, v6

    .line 1026
    .local v19, "t_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v3, v14

    .line 1027
    .local v2, "d_inf":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v6, v14, 0x1

    aget v12, v3, v6

    .line 1028
    .local v12, "d_sup":F
    sub-float v3, v12, v2

    sub-float v6, v19, v18

    div-float v22, v3, v6

    .line 1029
    sub-float v3, v16, v18

    mul-float v3, v3, v22

    add-float v13, v2, v3

    .line 1032
    .end local v2    # "d_inf":F
    .end local v12    # "d_sup":F
    .end local v18    # "t_inf":F
    .end local v19    # "t_sup":F
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, v13

    float-to-double v4, v3

    .line 1033
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    invoke-interface {v3, v4, v5}, Landroid/widget/IHwSplineOverScroller;->adjustDistance(D)D

    move-result-wide v4

    .line 1037
    goto :goto_1

    .line 1041
    .end local v13    # "distanceCoef":F
    .end local v14    # "index":I
    .end local v16    # "t":F
    .end local v22    # "velocityCoef":F
    :pswitch_1
    long-to-float v3, v10

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v16, v3, v6

    .line 1042
    .restart local v16    # "t":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1043
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    mul-float v6, v6, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v4, v3

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v8

    invoke-interface/range {v3 .. v11}, Landroid/widget/IHwSplineOverScroller;->getBallisticDistance(DIIJJ)D

    move-result-wide v4

    .line 1047
    goto/16 :goto_1

    .line 1051
    .end local v16    # "t":F
    :pswitch_2
    long-to-float v3, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .line 1052
    .restart local v16    # "t":F
    mul-float v17, v16, v16

    .line 1053
    .local v17, "t2":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v15

    .line 1054
    .local v15, "sign":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v17

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v16

    mul-float v7, v7, v17

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-double v4, v3

    .line 1055
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v3, v6

    move/from16 v0, v16

    neg-float v6, v0

    add-float v6, v6, v17

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIHwSplineOverScrollerInner:Landroid/widget/IHwSplineOverScroller;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v8

    invoke-interface/range {v3 .. v11}, Landroid/widget/IHwSplineOverScroller;->getCubicDistance(DIIJJ)D

    move-result-wide v4

    .line 1059
    goto/16 :goto_1

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 707
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 708
    return-void
.end method
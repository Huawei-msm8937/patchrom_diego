.class public Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field protected mAnimatedValue:F

.field protected mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mAnimationCallbackForNewPolicy:Ljava/lang/Runnable;

.field public mAutoBrightnessIntervened:Z

.field protected final mChoreographer:Landroid/view/Choreographer;

.field protected mCurrentValue:I

.field private mDecreaseFixAmount:F

.field protected mFirstTime:Z

.field private mFirstTimeCalculateAmount:Z

.field public mIsAutoBrightnessMode:Z

.field public mIsFirstValidAutoBrightness:Z

.field private mIsHighPrecision:Z

.field public mIsValidAutoBrightness:Z

.field protected mLastFrameTimeNanos:J

.field protected mListener:Lcom/android/server/display/RampAnimator$Listener;

.field protected final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mRate:I

.field protected mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z

    .line 143
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 194
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    .line 195
    const-string v0, "RampAnimator"

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->TAG:Ljava/lang/String;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mIsValidAutoBrightness:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z

    .line 208
    new-instance v0, Lcom/android/server/display/RampAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$2;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallbackForNewPolicy:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateFirstTimeCalculateAmountFlag(Z)V
    .locals 1
    .param p1, "changed"    # Z

    .prologue
    .line 204
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_0

    if-gtz p2, :cond_5

    .line 65
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_4

    .line 66
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 67
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 68
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 69
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 70
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->notifyAlgoUpdateCurrentValue()V

    .line 72
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    .line 73
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v2}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_3
    move v0, v1

    .line 110
    :cond_4
    :goto_0
    return v0

    .line 91
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_7

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_6

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_8

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_8

    .line 95
    :cond_7
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 98
    :cond_8
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_9

    move v0, v1

    .line 99
    .local v0, "changed":Z
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/display/RampAnimator;->updateFirstTimeCalculateAmountFlag(Z)V

    .line 100
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 103
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_4

    .line 104
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 105
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 107
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    goto :goto_0
.end method

.method protected cancelAnimationCallback()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallbackForNewPolicy:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method protected notifyAlgoUpdateCurrentValue()V
    .locals 0

    .prologue
    .line 296
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    return-void
.end method

.method protected postAnimationCallback()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallbackForNewPolicy:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 125
    return-void
.end method

.method public updateBrightnessRampPara(ZIZI)V
    .locals 0
    .param p1, "automode"    # Z
    .param p2, "updateAutoBrightnessCount"    # I
    .param p3, "intervened"    # Z
    .param p4, "state"    # I

    .prologue
    .line 299
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    return-void
.end method

.method public updateProximityState(Z)V
    .locals 0
    .param p1, "proximityState"    # Z

    .prologue
    .line 302
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    return-void
.end method

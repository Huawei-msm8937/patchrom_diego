.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 143
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 146
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, v6, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 147
    .local v2, "frameTimeNanos":J
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-wide v6, v6, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float v5, v6, v7

    .line 149
    .local v5, "timeDelta":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iput-wide v2, v6, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 155
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    .line 156
    .local v4, "scale":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_2

    .line 158
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v7, v7

    iput v7, v6, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 173
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v1, v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 174
    .local v1, "oldCurrentValue":I
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 176
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq v1, v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, v6, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, v7, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 180
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq v6, v7, :cond_5

    .line 181
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 161
    .end local v1    # "oldCurrentValue":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mIsHighPrecision:Z
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_3

    .line 162
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mRate:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42200000    # 40.0f

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 167
    .local v0, "amount":F
    :goto_2
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-le v6, v7, :cond_4

    .line 168
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto/16 :goto_0

    .line 164
    .end local v0    # "amount":F
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v6, v6, Lcom/android/server/display/RampAnimator;->mRate:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    .restart local v0    # "amount":F
    goto :goto_2

    .line 170
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v7, v7, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto/16 :goto_0

    .line 183
    .end local v0    # "amount":F
    .restart local v1    # "oldCurrentValue":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 184
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, v6, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v6, :cond_1

    .line 185
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, v6, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v6}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto :goto_1
.end method

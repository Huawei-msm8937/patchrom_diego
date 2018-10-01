.class Lcom/android/server/display/RampAnimator$2;
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
    .line 208
    .local p0, "this":Lcom/android/server/display/RampAnimator$2;, "Lcom/android/server/display/RampAnimator.2;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 211
    .local p0, "this":Lcom/android/server/display/RampAnimator$2;, "Lcom/android/server/display/RampAnimator.2;"
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, v8, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v8}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 212
    .local v2, "frameTimeNanos":J
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-wide v8, v8, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    sub-long v8, v2, v8

    long-to-float v8, v8

    const v9, 0x3089705f    # 1.0E-9f

    mul-float v7, v8, v9

    .line 215
    .local v7, "timeDelta":F
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iput-wide v2, v8, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 221
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v5

    .line 222
    .local v5, "scale":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_2

    .line 224
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v9, v9

    iput v9, v8, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 275
    :goto_0
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v4, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 276
    .local v4, "oldCurrentValue":I
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 278
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq v4, v8, :cond_0

    .line 279
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, v8, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v9, v9, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v8, v9, v10}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 282
    :cond_0
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq v8, v9, :cond_12

    .line 283
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v8}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 292
    :cond_1
    :goto_1
    return-void

    .line 226
    .end local v4    # "oldCurrentValue":I
    :cond_2
    const/4 v0, 0x0

    .line 227
    .local v0, "amount":F
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mRate:I

    const/16 v9, 0x28

    if-ne v8, v9, :cond_8

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 228
    .local v6, "sigma":F
    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 229
    .local v1, "duration":F
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mIsAutoBrightnessMode:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-lt v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    if-eqz v8, :cond_b

    .line 230
    :cond_3
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 231
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 232
    :goto_3
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    mul-float v0, v8, v7

    .line 233
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    const/16 v9, 0x4e6

    if-ge v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    const/16 v9, 0x514

    if-ge v8, v9, :cond_5

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v8, v1, v8

    if-nez v8, :cond_5

    .line 234
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    div-float/2addr v8, v9

    mul-float v0, v8, v7

    .line 236
    :cond_5
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F
    invoke-static {v8, v0}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    .line 237
    float-to-double v8, v7

    const-wide v10, 0x3f90624dd2f1a9fcL    # 0.016

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    .line 238
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z
    invoke-static {v8, v9}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;Z)Z

    .line 263
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG:Z
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 264
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsAutoBrightnessMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v10, v10, Lcom/android/server/display/RampAnimator;->mIsAutoBrightnessMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mTargetValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mCurrentValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",amount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mRate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",sigma="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",timeDelta="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mIsFirstValidAutoBrightness="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v10, v10, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mAutoBrightnessIntervened="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v10, v10, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_7
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-le v8, v9, :cond_11

    .line 269
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    add-float/2addr v9, v0

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto/16 :goto_0

    .line 227
    .end local v1    # "duration":F
    .end local v6    # "sigma":F
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 231
    .restart local v1    # "duration":F
    .restart local v6    # "sigma":F
    :cond_9
    const/high16 v1, 0x40400000    # 3.0f

    goto/16 :goto_3

    .line 241
    :cond_a
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    goto/16 :goto_4

    .line 244
    :cond_b
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    const/16 v9, 0x4e6

    if-le v8, v9, :cond_d

    .line 245
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x28

    if-ge v8, v9, :cond_c

    .line 246
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mRate:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    mul-float/2addr v8, v6

    div-float v0, v8, v5

    goto/16 :goto_4

    .line 248
    :cond_c
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mRate:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    mul-float/2addr v8, v6

    const/high16 v9, 0x42200000    # 40.0f

    div-float/2addr v8, v9

    div-float v0, v8, v5

    goto/16 :goto_4

    .line 251
    :cond_d
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 252
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v8, v8, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    :cond_e
    const/high16 v1, 0x3f000000    # 0.5f

    .line 253
    :goto_5
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v8, v8, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    div-float/2addr v8, v9

    mul-float v0, v8, v7

    .line 254
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F
    invoke-static {v8, v0}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    .line 255
    float-to-double v8, v7

    const-wide v10, 0x3f90624dd2f1a9fcL    # 0.016

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    .line 256
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mFirstTimeCalculateAmount:Z
    invoke-static {v8, v9}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;Z)Z

    goto/16 :goto_4

    .line 252
    :cond_f
    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_5

    .line 259
    :cond_10
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDecreaseFixAmount:F
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    goto/16 :goto_4

    .line 271
    :cond_11
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v9, v9, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    sub-float/2addr v9, v0

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget v10, v10, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto/16 :goto_0

    .line 285
    .end local v0    # "amount":F
    .end local v1    # "duration":F
    .end local v6    # "sigma":F
    .restart local v4    # "oldCurrentValue":I
    :cond_12
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 286
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    .line 287
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    .line 288
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, v8, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v8, :cond_1

    .line 289
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$2;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, v8, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v8}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto/16 :goto_1
.end method

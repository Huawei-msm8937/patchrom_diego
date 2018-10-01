.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 70
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightGradualChange(IIZ)V
    .locals 9
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I
    .param p3, "isPGset"    # Z

    .prologue
    .line 183
    move v8, p1

    .line 185
    .local v8, "tarBrightness":I
    # getter for: Lcom/android/server/lights/LightsService;->mRatio:D
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    .line 186
    # getter for: Lcom/android/server/lights/LightsService;->mRatio:D
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()D

    move-result-wide v2

    invoke-static {v8, v2, v3}, Lcom/huawei/pgmng/common/Utils;->getRatioBright(ID)I

    move-result v8

    .line 190
    :cond_0
    # getter for: Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-static {v8}, Lcom/huawei/pgmng/common/Utils;->getAutoAdjustBright(I)I

    move-result v8

    .line 196
    :cond_1
    if-nez p3, :cond_3

    .line 197
    # getter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()I

    move-result v0

    if-nez v0, :cond_2

    if-lez v8, :cond_2

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/lights/LightsService;->mAmountTime:J
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$402(J)J

    .line 200
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # getter for: Lcom/android/server/lights/LightsService;->mAmountTime:J
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$400()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 201
    # setter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {v8}, Lcom/android/server/lights/LightsService;->access$302(I)I

    .line 205
    :cond_3
    # getter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v6, v0, 0x12

    .line 206
    .local v6, "amount":I
    const/16 v0, 0x64

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 208
    monitor-enter p0

    .line 209
    const/4 v7, 0x0

    .line 211
    .local v7, "setValue":I
    :cond_4
    :try_start_0
    # getter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()I

    move-result v0

    invoke-static {v8, v0, v6}, Lcom/huawei/pgmng/common/Utils;->getAnimatedValue(III)I

    move-result v7

    .line 212
    # setter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {v7}, Lcom/android/server/lights/LightsService;->access$302(I)I

    .line 213
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v7}, Lcom/android/server/lights/LightsService;->mapIntoRealBacklightLevel(I)I

    move-result v7

    .line 214
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mIsHighPrecision:Z

    if-eqz v0, :cond_5

    .line 215
    const v0, 0xffff

    and-int v1, v7, v0

    .line 216
    .local v1, "color":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked_10000stage(IIIII)V

    .line 223
    :goto_0
    # getter for: Lcom/android/server/lights/LightsService;->mLcdBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$200()I

    move-result v0

    if-nez v0, :cond_6

    .line 224
    const-string v0, "LightsService"

    const-string v2, "synchronized conflict..."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1
    monitor-exit p0

    .line 233
    return-void

    .line 218
    .end local v1    # "color":I
    :cond_5
    and-int/lit16 v1, v7, 0xff

    .line 219
    .restart local v1    # "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 220
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_0

    .line 231
    .end local v1    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 227
    .restart local v1    # "color":I
    :cond_6
    :try_start_1
    # getter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()I

    move-result v0

    if-eq v0, v8, :cond_7

    .line 228
    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 230
    :cond_7
    # getter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_4

    goto :goto_1
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 280
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 283
    :cond_0
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 284
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 285
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 286
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-wide v0, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 295
    :cond_1
    return-void

    .line 292
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setLightLocked_10000stage(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 298
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 300
    :cond_0
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 301
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 302
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 303
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-wide v0, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/16 v2, 0xb

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    :cond_1
    return-void

    .line 308
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDeviceActualBrightnessLevel()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getDeviceActualBrightnessLevelImpl()I

    move-result v0

    return v0
.end method

.method public getMaxBrightnessFromKernel()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/android/server/lights/LightsService;->mMaxBrightnessFromKernel:I

    return v0
.end method

.method public isHighPrecision()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public pulse()V
    .locals 2

    .prologue
    .line 252
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 253
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 261
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    :cond_0
    monitor-exit p0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendCustomBackLight(I)V
    .locals 8
    .param p1, "backlight"    # I

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-wide v0, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    .line 140
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSmartBackLight(III)V
    .locals 9
    .param p1, "enable"    # I
    .param p2, "level"    # I
    .param p3, "value"    # I

    .prologue
    const v0, 0xffff

    const/4 v8, 0x0

    .line 123
    monitor-enter p0

    .line 124
    if-le p3, v0, :cond_0

    move p3, v0

    .line 125
    :cond_0
    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/2addr v0, p3

    or-int v3, v1, v0

    .line 127
    .local v3, "lightValue":I
    const/16 v0, 0x259

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set smart backlight. enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lightValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-wide v0, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    .line 132
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/view/ViewRootImpl;->setEnablePartialUpdate(Z)V

    .line 134
    monitor-exit p0

    .line 135
    return-void

    :cond_1
    move v0, v8

    .line 132
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSmartBackLightWithRefreshFrames(IIIIZII)V
    .locals 9
    .param p1, "enable"    # I
    .param p2, "level"    # I
    .param p3, "value"    # I
    .param p4, "frames"    # I
    .param p5, "setAfterRefresh"    # Z
    .param p6, "enable2"    # I
    .param p7, "value2"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/lights/LightsService;->sendSmartBackLightWithRefreshFramesImpl(IIIIIZII)V

    .line 95
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 146
    return-void
.end method

.method public setBrightness(II)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    const/4 v6, 0x0

    .line 151
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_2

    .line 152
    # setter for: Lcom/android/server/lights/LightsService;->mLcdBrightness:I
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$202(I)I

    .line 153
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->sendUpdateaAutoBrightnessDbMsg()V

    .line 156
    if-eqz p1, :cond_1

    # getter for: Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/lights/LightsService;->mRatio:D
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 157
    :cond_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightGradualChange(IIZ)V

    .line 177
    :goto_0
    return-void

    .line 161
    :cond_1
    # setter for: Lcom/android/server/lights/LightsService;->mCurBrightness:I
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$302(I)I

    .line 165
    :cond_2
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/LightsService;->mapIntoRealBacklightLevel(I)I

    move-result p1

    .line 167
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mIsHighPrecision:Z

    if-eqz v0, :cond_3

    .line 168
    const v0, 0xffff

    and-int v1, p1, v0

    .line 169
    .local v1, "color":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked_10000stage(IIIII)V

    .line 176
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_3
    and-int/lit16 v1, p1, 0xff

    .line 173
    .restart local v1    # "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 174
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 247
    monitor-exit p0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLcdRatio(IZ)V
    .locals 5
    .param p1, "ratio"    # I
    .param p2, "autoAdjust"    # Z

    .prologue
    const/4 v4, 0x1

    .line 75
    # setter for: Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z
    invoke-static {p2}, Lcom/android/server/lights/LightsService;->access$002(Z)Z

    .line 76
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ge p1, v4, :cond_1

    .line 77
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    # setter for: Lcom/android/server/lights/LightsService;->mRatio:D
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$102(D)D

    .line 82
    :goto_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLcdRatio ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoAdjust:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    # getter for: Lcom/android/server/lights/LightsService;->mLcdBrightness:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$200()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/lights/LightsService$LightImpl;->setLightGradualChange(IIZ)V

    .line 87
    return-void

    .line 79
    :cond_1
    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    # setter for: Lcom/android/server/lights/LightsService;->mRatio:D
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$102(D)D

    goto :goto_0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 270
    monitor-exit p0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBrightnessAdjustMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/LightsService;->updateBrightnessMode(Z)V

    .line 119
    return-void
.end method

.method public updateUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/LightsService;->updateCurrentUserId(I)V

    .line 110
    return-void
.end method

.method public writeAutoBrightnessDbEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iput-boolean p1, v0, Lcom/android/server/lights/LightsService;->mWriteAutoBrightnessDbEnable:Z

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->sendUpdateaAutoBrightnessDbMsg()V

    .line 106
    :cond_0
    return-void
.end method

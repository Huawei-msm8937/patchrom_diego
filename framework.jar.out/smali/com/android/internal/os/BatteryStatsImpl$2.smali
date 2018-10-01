.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$cpuSpeedSteps:I

.field final synthetic val$cpuSpeeds:[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I[JI)V
    .locals 0

    .prologue
    .line 8237
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    iput p4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    .prologue
    .line 8241
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v6

    .line 8244
    .local v6, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v8, v7, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long/2addr v8, p2

    iput-wide v8, v7, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8245
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v8, v7, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long v8, v8, p4

    iput-wide v8, v7, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8247
    const/4 v5, 0x0

    .line 8257
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    if-lez v7, :cond_0

    .line 8261
    const-wide/16 v8, 0x32

    mul-long/2addr v8, p2

    const-wide/16 v10, 0x64

    div-long p2, v8, v10

    .line 8262
    const-wide/16 v8, 0x32

    mul-long v8, v8, p4

    const-wide/16 v10, 0x64

    div-long p4, v8, v10

    .line 8265
    :cond_0
    if-eqz v5, :cond_1

    .line 8266
    const-string v7, "  adding to uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": u="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8267
    const-wide/16 v8, 0x3e8

    div-long v8, p2, v8

    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8268
    const-string v7, " s="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8269
    const-wide/16 v8, 0x3e8

    div-long v8, p4, v8

    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8270
    const-string v7, " p="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    div-long v8, p6, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mAms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8271
    const-string v7, "BatteryStatsImpl"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8274
    :cond_1
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8275
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8276
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8281
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    array-length v7, v7

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8282
    .local v3, "length":I
    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8284
    .local v4, "safeCpuSpeedSteps":I
    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    if-le v7, v3, :cond_2

    .line 8285
    const-string v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!Error , cpuSpeeds.length ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",u.mSpeedBins.length ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",cpuSpeedSteps ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8289
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 8290
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v2

    if-nez v7, :cond_3

    .line 8291
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v2

    .line 8293
    :cond_3
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    aget-wide v8, v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8296
    :cond_4
    return-void
.end method

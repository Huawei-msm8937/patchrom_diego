.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mNativeHal:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 45
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 47
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    .line 51
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    return-void
.end method

.method private static native halGetCarrierFrequencies(J)[I
.end method

.method private static native halLearnIR(JI)[I
.end method

.method private static native halOpen()J
.end method

.method private static native halTransmit(JI[I)I
.end method

.method private static native halcancelLearn(J)V
.end method

.method private throwIfNoIrEmitter()V
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLearn()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 128
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    const-string v0, "ConsumerIrService"

    const-string v2, "cancelLearn in java server I.."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    invoke-static {v2, v3}, Lcom/android/server/ConsumerIrService;->halcancelLearn(J)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCarrierFrequencies()[I
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 143
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    invoke-static {v2, v3}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(J)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

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

.method public learnIR(I)[I
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 113
    const-string v0, "ConsumerIrService"

    const-string v1, "learnIR I ."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    const-string v0, "ConsumerIrService"

    const-string v2, "learnIR II "

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    invoke-static {v2, v3, p1}, Lcom/android/server/ConsumerIrService;->halLearnIR(JI)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .prologue
    .line 74
    iget-object v5, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.TRANSMIT_IR"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    new-instance v5, Ljava/lang/SecurityException;

    const-string v8, "Requires TRANSMIT_IR permission"

    invoke-direct {v5, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_0
    const-wide/16 v6, 0x0

    .line 81
    .local v6, "totalXmitTime":J
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 82
    .local v4, "slice":I
    if-gtz v4, :cond_1

    .line 83
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Non-positive IR slice"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_1
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "slice":I
    :cond_2
    const-wide/32 v8, 0x1e8480

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "IR pattern too long"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 95
    iget-object v8, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v8

    .line 96
    :try_start_0
    iget-wide v10, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    invoke-static {v10, v11, p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(JI[I)I

    move-result v1

    .line 98
    .local v1, "err":I
    if-gez v1, :cond_4

    .line 99
    const-string v5, "ConsumerIrService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error transmitting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_4
    monitor-exit v8

    .line 102
    return-void

    .line 101
    .end local v1    # "err":I
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

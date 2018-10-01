.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static sSensorModuleInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 53
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 72
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 74
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 77
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x1

    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 80
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 86
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    monitor-exit v3

    .line 91
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Landroid/hardware/SystemSensorManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 43
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 43
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 232
    :goto_0
    return v1

    .line 217
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 219
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 221
    if-nez p2, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 226
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 230
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 233
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 232
    .end local v1    # "result":Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 241
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    .line 242
    monitor-exit v2

    .line 244
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 246
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 250
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    if-eqz p1, :cond_2

    .line 252
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v0

    .line 254
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    .line 255
    const-string v1, "SensorManager"

    const-string v3, "Data Injection mode not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    monitor-exit v2

    .line 270
    .end local v0    # "isDataInjectionModeEnabled":Z
    :goto_0
    return v1

    .line 259
    .restart local v0    # "isDataInjectionModeEnabled":Z
    :cond_0
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v1, :cond_1

    .line 260
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 270
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 265
    :cond_2
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v1, :cond_1

    .line 266
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 267
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v7, 0x0

    .line 276
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 277
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_0

    .line 278
    const-string v0, "SensorManager"

    const-string v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v8

    move v0, v7

    .line 288
    :goto_0
    return v0

    .line 281
    :cond_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    .line 284
    .local v6, "ret":I
    if-eqz v6, :cond_1

    .line 285
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 286
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 288
    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 289
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6    # "ret":I
    :cond_2
    move v0, v7

    .line 288
    goto :goto_1
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    const-string v5, "SensorManager"

    const-string/jumbo v6, "sensor or listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return v4

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 111
    const-string v5, "SensorManager"

    const-string v6, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 115
    :cond_3
    const-string v5, "SensorManager"

    const-string/jumbo v6, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 119
    .local v3, "sensorType":I
    const/16 v6, 0x13

    if-eq v6, v3, :cond_5

    const/16 v6, 0x12

    if-eq v6, v3, :cond_5

    if-ne v5, v3, :cond_6

    .line 122
    :cond_5
    const/high16 v6, 0x4000000

    invoke-static {v6}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 123
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListenerImpl blocked, sensor type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_6
    const/16 v6, 0x15

    if-ne v6, v3, :cond_7

    .line 128
    const/high16 v6, 0x8000000

    invoke-static {v6}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 129
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListenerImpl blocked, sensor type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_7
    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 138
    :try_start_0
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 139
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_b

    .line 140
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 141
    .local v1, "looper":Landroid/os/Looper;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_2
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 145
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v7

    if-nez v7, :cond_a

    .line 146
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 147
    monitor-exit v6

    goto/16 :goto_0

    .line 154
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 140
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_8
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_1

    .line 141
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 149
    .restart local v0    # "fullClassName":Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v6

    move v4, v5

    goto/16 :goto_0

    .line 152
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_b
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v2, 0x0

    .line 185
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 205
    :goto_0
    return v2

    .line 191
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 193
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v4, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 198
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v4, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 200
    monitor-exit v3

    goto :goto_0

    .line 207
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 194
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 202
    .restart local v0    # "fullClassName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 205
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 161
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 167
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 169
    if-nez p2, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 174
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 179
    .end local v1    # "result":Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 172
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1
.end method

.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static McuSwitch:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWOLProxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    .line 54
    const-string v0, "true"

    const-string v1, "ro.config.hw_sensorhub"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 934
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowOrientationListener$1;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mWOLProxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    .line 92
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McuSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    if-eqz v0, :cond_1

    .line 95
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/server/policy/HWExtMotionRotationProcessor;

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mWOLProxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    invoke-direct {v0, v1}, Lcom/android/server/policy/HWExtMotionRotationProcessor;-><init>(Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 100
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 101
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/WindowOrientationListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return p1
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    sget-boolean v3, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    .line 232
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_2

    :goto_2
    monitor-exit v2

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 232
    goto :goto_2
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 153
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    invoke-virtual {v0}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->disableMotionRotation()V

    .line 165
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 168
    :cond_1
    monitor-exit v1

    .line 169
    :goto_1
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 160
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v1

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 260
    :cond_0
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_1

    .line 121
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->enableMotionRotation(Landroid/os/Handler;)V

    .line 140
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 143
    :cond_1
    monitor-exit v1

    .line 144
    :goto_1
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 130
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v1

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProposedRotation()I
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 212
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->McuSwitch:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHWEMRProcessor:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    invoke-virtual {v0}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->getProposedRotation()I

    move-result v0

    monitor-exit v1

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_1
    const/4 v0, -0x1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 182
    .local v0, "whenElapsedNanos":J
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->onTouchEndLocked(J)V
    invoke-static {v2, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->access$200(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;J)V

    .line 186
    :cond_0
    monitor-exit v3

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onTouchStart()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->onTouchStartLocked()V
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->access$100(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 176
    :cond_0
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

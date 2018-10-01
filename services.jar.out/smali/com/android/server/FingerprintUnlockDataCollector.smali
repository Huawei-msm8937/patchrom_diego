.class public Lcom/android/server/FingerprintUnlockDataCollector;
.super Ljava/lang/Object;
.source "FingerprintUnlockDataCollector.java"


# static fields
.field static final AUTHENTICATE_FAIL:I = 0x2

.field static final AUTHENTICATE_NONE:I = 0x0

.field static final AUTHENTICATE_SUCCESS:I = 0x1

.field private static DEBUG:Z = false

.field private static DEBUG_FPLOG:Z = false

.field static ENROLL_LOG_FULL_PATH:Ljava/lang/String; = null

.field private static final SLEEP_TIME:J = 0x32L

.field private static final SYNC_NODE:Ljava/lang/String; = "/sys/devices/platform/fingerprint/read_image_flag"

.field private static final SYNC_TIMEOUT:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "FpDataCollector"

.field static UNLOCK_LOG_FULL_PATH:Ljava/lang/String;

.field static UPLOAD_HOUR:I

.field static UPLOAD_TAG:Ljava/lang/String;

.field static UPLOAD_TIME_MILL_SEC:J

.field private static instance:Lcom/android/server/FingerprintUnlockDataCollector;

.field static final mLock:Ljava/lang/Object;

.field private static mLogException:Landroid/util/LogException;


# instance fields
.field private isAuthenticated:I

.field private isScreenStateOn:Z

.field private mAuthenticatedTime:Ljava/lang/String;

.field private mAuthenticatedTimeToWrite:Ljava/lang/String;

.field private mCaptureCompletedTime:Ljava/lang/String;

.field private mCaptureCompletedTimeToWrite:Ljava/lang/String;

.field private mFingerDownTime:Ljava/lang/String;

.field private mFingerDownTimeToWrite:Ljava/lang/String;

.field private mLastUploadTime:J

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mScreenOnTime:Ljava/lang/String;

.field private mScreenOnTimeToWrite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->mLock:Ljava/lang/Object;

    .line 33
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_1

    const-string v0, "FpDataCollector"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG:Z

    .line 34
    sget-boolean v0, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG:Z

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    .line 56
    const-string v0, "fingerprint"

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_TAG:Ljava/lang/String;

    .line 57
    const-string v0, "/data/log/fingerprint/fpc_enroll.json"

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->ENROLL_LOG_FULL_PATH:Ljava/lang/String;

    .line 58
    const-string v0, "/data/log/fingerprint/fpc_unlock.json"

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->UNLOCK_LOG_FULL_PATH:Ljava/lang/String;

    .line 59
    const/16 v0, 0x18

    sput v0, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_HOUR:I

    .line 60
    sget v0, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_HOUR:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_TIME_MILL_SEC:J

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->instance:Lcom/android/server/FingerprintUnlockDataCollector;

    .line 73
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->mLogException:Landroid/util/LogException;

    return-void

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0

    :cond_2
    move v1, v2

    .line 34
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/android/server/FingerprintUnlockDataCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/FingerprintUnlockDataCollector$1;-><init>(Lcom/android/server/FingerprintUnlockDataCollector;)V

    iput-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mRunnable:Ljava/lang/Runnable;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mLastUploadTime:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isAuthenticated:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->readSyncNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTimeToWrite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTimeToWrite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTimeToWrite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTimeToWrite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/FingerprintUnlockDataCollector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->writeSyncNode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/FingerprintUnlockDataCollector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->resetTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/FingerprintUnlockDataCollector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FingerprintUnlockDataCollector;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->sendLog()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/FingerprintUnlockDataCollector;
    .locals 3

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "FpDataCollector"

    const-string v1, "FingerprintUnlockDataCollector.getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    sget-object v1, Lcom/android/server/FingerprintUnlockDataCollector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->instance:Lcom/android/server/FingerprintUnlockDataCollector;

    if-nez v0, :cond_2

    .line 89
    sget-boolean v0, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "FpDataCollector"

    const-string v2, "new intance in getInstance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    new-instance v0, Lcom/android/server/FingerprintUnlockDataCollector;

    invoke-direct {v0}, Lcom/android/server/FingerprintUnlockDataCollector;-><init>()V

    sput-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->instance:Lcom/android/server/FingerprintUnlockDataCollector;

    .line 94
    :cond_2
    sget-object v0, Lcom/android/server/FingerprintUnlockDataCollector;->instance:Lcom/android/server/FingerprintUnlockDataCollector;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isScreenOn()Z
    .locals 6

    .prologue
    .line 357
    const/4 v2, 0x1

    .line 359
    .local v2, "isScreenOn":Z
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 360
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 361
    .local v3, "power":Landroid/os/IPowerManager;
    if-eqz v3, :cond_0

    .line 362
    invoke-interface {v3}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 367
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return v2

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FpDataCollector"

    const-string v5, "can not connect to powermanagerservice"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTimeOverThreshold()Z
    .locals 8

    .prologue
    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "res":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mLastUploadTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_TIME_MILL_SEC:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 346
    const/4 v2, 0x1

    .line 348
    :cond_0
    return v2
.end method

.method private readSyncNode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 375
    .local v5, "res":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/devices/platform/fingerprint/read_image_flag"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    const-string v6, "FpDataCollector"

    const-string v7, "sync operation node doesn\'t exist! just return null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v6, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v0, :cond_0

    .line 389
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 390
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 382
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 387
    if-eqz v1, :cond_4

    .line 389
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    move-object v6, v5

    .line 395
    goto :goto_0

    .line 390
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 391
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 392
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 384
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 387
    if-eqz v0, :cond_2

    .line 389
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 390
    :catch_3
    move-exception v2

    .line 391
    const-string v6, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 387
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 389
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 392
    :cond_3
    :goto_4
    throw v6

    .line 390
    :catch_4
    move-exception v2

    .line 391
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 387
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 384
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private resetTime()V
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTimeToWrite:Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTimeToWrite:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTimeToWrite:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTimeToWrite:Ljava/lang/String;

    .line 306
    monitor-exit p0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendLog()V
    .locals 8

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->isTimeOverThreshold()Z

    move-result v6

    if-nez v6, :cond_1

    .line 317
    sget-boolean v6, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v6, :cond_0

    .line 318
    const-string v6, "FpDataCollector"

    const-string v7, "time is not access threshold, don\'t send the log"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "sdfSecond":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 324
    .local v4, "timeStamp":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "formatTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_fingerprint"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "zipFilename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "archive -i "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/FingerprintUnlockDataCollector;->UNLOCK_LOG_FULL_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -i "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/FingerprintUnlockDataCollector;->ENROLL_LOG_FULL_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -d "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/FingerprintUnlockDataCollector;->UNLOCK_LOG_FULL_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -d "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/FingerprintUnlockDataCollector;->ENROLL_LOG_FULL_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -o "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -z zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "archiveMsg":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v6, :cond_2

    .line 329
    const-string v6, "FpDataCollector"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    sget-object v6, Lcom/android/server/FingerprintUnlockDataCollector;->mLogException:Landroid/util/LogException;

    if-eqz v6, :cond_3

    .line 332
    sget-object v6, Lcom/android/server/FingerprintUnlockDataCollector;->mLogException:Landroid/util/LogException;

    sget-object v7, Lcom/android/server/FingerprintUnlockDataCollector;->UPLOAD_TAG:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Landroid/util/LogException;->cmd(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mLastUploadTime:J

    goto/16 :goto_0
.end method

.method private writeSyncNode()V
    .locals 8

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/devices/platform/fingerprint/read_image_flag"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 403
    const-string v5, "FpDataCollector"

    const-string v6, "sync operation node doesn\'t exist! just return"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz v0, :cond_0

    .line 416
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 408
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_3
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 414
    if-eqz v1, :cond_3

    .line 416
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 419
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 417
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 418
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 419
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 411
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 412
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v5, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    if-eqz v0, :cond_0

    .line 416
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 417
    :catch_3
    move-exception v2

    .line 418
    const-string v5, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_2

    .line 416
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 419
    :cond_2
    :goto_3
    throw v5

    .line 417
    :catch_4
    move-exception v2

    .line 418
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "FpDataCollector"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 414
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 411
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_3
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public reportCaptureCompleted()V
    .locals 5

    .prologue
    .line 123
    sget-boolean v1, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "FpDataCollector"

    const-string v4, "fingerprint capture completed"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "sdfMicrosecond":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 129
    .local v2, "timeStamp":J
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTime:Ljava/lang/String;

    .line 131
    monitor-exit p0

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportFingerDown()V
    .locals 5

    .prologue
    .line 104
    sget-boolean v1, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "FpDataCollector"

    const-string v4, "receive finger press down"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "sdfMicrosecond":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 110
    .local v2, "timeStamp":J
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTime:Ljava/lang/String;

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-direct {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOn:Z

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reportFingerprintAuthenticated(Z)V
    .locals 6
    .param p1, "authenticated"    # Z

    .prologue
    .line 142
    sget-boolean v1, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "FpDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fingerprint authenticated result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "sdfMicrosecond":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 147
    .local v2, "timeStamp":J
    monitor-enter p0

    .line 148
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isAuthenticated:I

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTime:Ljava/lang/String;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-boolean v1, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOn:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FingerprintUnlockDataCollector;->reportScreenTurnedOn()V

    .line 155
    :cond_2
    return-void

    .line 148
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reportScreenStateOn(Ljava/lang/String;)V
    .locals 3
    .param p1, "stateStr"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "FpDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set screen state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const-string v0, "ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isScreenStateOn:Z

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isScreenStateOn:Z

    goto :goto_0
.end method

.method public reportScreenTurnedOn()V
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isScreenStateOn:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isAuthenticated:I

    if-eqz v4, :cond_3

    .line 185
    iget-boolean v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOn:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isAuthenticated:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 186
    sget-boolean v4, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "FpDataCollector"

    const-string v5, "fingerprint unlock in black screen!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmssSSS"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "sdfMicrosecond":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    .local v2, "timeStamp":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTime:Ljava/lang/String;

    .line 203
    .end local v1    # "sdfMicrosecond":Ljava/text/SimpleDateFormat;
    .end local v2    # "timeStamp":J
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->isAuthenticated:I

    .line 204
    iget-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTime:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTimeToWrite:Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTime:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTimeToWrite:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTime:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTimeToWrite:Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTime:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTimeToWrite:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, "mThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    monitor-exit p0

    .line 212
    .end local v0    # "mThread":Ljava/lang/Thread;
    :goto_1
    return-void

    .line 193
    :cond_1
    sget-boolean v4, Lcom/android/server/FingerprintUnlockDataCollector;->DEBUG_FPLOG:Z

    if-eqz v4, :cond_2

    .line 194
    const-string v4, "FpDataCollector"

    const-string v5, "fingerprint unlock in white screen!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    const-string v4, "null"

    iput-object v4, p0, Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTime:Ljava/lang/String;

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 200
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

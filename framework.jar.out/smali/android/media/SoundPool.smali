.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$Builder;,
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private mHasAppOpsPlayAudio:Z

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    const-string v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .prologue
    .line 155
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    .line 157
    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {p2}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    invoke-static {v3}, Landroid/media/HwMediaMonitorManager;->getStreamBigDataType(I)I

    move-result v3

    const-string v4, "SoundPool"

    invoke-static {v2, v3, v4}, Landroid/media/HwMediaMonitorManager;->writeMediaBigData(IILjava/lang/String;)I

    .line 165
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;ILjava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Native setup failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    .line 169
    iput-object p2, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    .line 170
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 171
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 173
    invoke-direct {p0}, Landroid/media/SoundPool;->updateAppOpsPlayAudio()V

    .line 175
    new-instance v2, Landroid/media/SoundPool$1;

    invoke-direct {v2, p0}, Landroid/media/SoundPool$1;-><init>(Landroid/media/SoundPool;)V

    iput-object v2, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 185
    :try_start_0
    iget-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x1c

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/AudioAttributes;
    .param p3, "x2"    # Landroid/media/SoundPool$1;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _play(IFFIIF)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method static synthetic access$000(Landroid/media/SoundPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/SoundPool;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/SoundPool;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SoundPool;

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/media/SoundPool;->updateAppOpsPlayAudio()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/SoundPool;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private isRestricted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    iget-object v1, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 537
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 538
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateAppOpsPlayAudio()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 515
    :try_start_0
    iget-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v4, 0x1c

    iget-object v5, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 518
    .local v1, "mode":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v1    # "mode":I
    :goto_1
    return-void

    .restart local v1    # "mode":I
    :cond_0
    move v2, v3

    .line 518
    goto :goto_0

    .line 519
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    goto :goto_1
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 257
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v8, 0x0

    .line 258
    .local v8, "id":I
    if-eqz v7, :cond_0

    .line 259
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    .line 261
    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return v8

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 278
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 280
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 281
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    .line 285
    .end local v4    # "len":J
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 304
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 225
    const/4 v10, 0x0

    .line 227
    .local v10, "id":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v8, "f":Ljava/io/File;
    const/high16 v0, 0x10000000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 230
    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_0

    .line 231
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v10

    .line 232
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return v10

    .line 234
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/media/SoundPool;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 p3, 0x0

    move p2, p3

    .line 348
    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 488
    iget-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 489
    if-eqz p1, :cond_2

    .line 492
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 493
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    .line 502
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_0
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 503
    monitor-exit v2

    .line 504
    return-void

    .line 494
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_0

    .line 503
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 497
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_0

    .line 500
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 431
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 432
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 420
    invoke-direct {p0}, Landroid/media/SoundPool;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    goto :goto_0
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method

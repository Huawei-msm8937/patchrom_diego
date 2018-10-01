.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DESKCLOCK_PACKAGENAME:Ljava/lang/String; = "com.android.deskclock"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_FPGA:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCAL_LOGV:Z = true

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static boardname:Ljava/lang/String;


# instance fields
.field final fingerprintStartThread:Ljava/lang/Thread;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPGManagerService:Lcom/android/server/pg/PGManagerService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "ro.board.boardname"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->boardname:Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/android/server/SystemServer;->boardname:Ljava/lang/String;

    const-string v1, "fpga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->IS_FPGA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->fingerprintStartThread:Ljava/lang/Thread;

    .line 282
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 283
    iget v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v0, :cond_0

    .line 285
    const/16 v0, 0x1a

    const-string v1, "JL_FIRST_BOOT"

    invoke-static {v0, v1}, Landroid/util/Jlog;->d(ILjava/lang/String;)I

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/server/SystemServer;->IS_FPGA:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SystemServer;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer;->setAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 438
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 439
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 440
    return-void
.end method

.method private isSupportIFAA()Z
    .locals 2

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1820
    .local v0, "support":Z
    :try_start_0
    const-string v1, "org.ifaa.android.manager.IFAAManagerFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    const/4 v0, 0x1

    .line 1824
    :goto_0
    return v0

    .line 1822
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 278
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 420
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 423
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 426
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 427
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 434
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 429
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 415
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    return-void
.end method

.method private run()V
    .locals 12

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 295
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 307
    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 319
    const/16 v0, 0x1e

    const-string v1, "JL_BOOT_PROGRESS_SYSTEM_RUN"

    invoke-static {v0, v1}, Landroid/util/Jlog;->d(ILjava/lang/String;)I

    .line 328
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 333
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 334
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$2;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 343
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 347
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 351
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 355
    invoke-static {v11}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 358
    invoke-static {v11}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 361
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 363
    invoke-static {v10}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 364
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 367
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 374
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 377
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 378
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 384
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    const-string v0, "ro.logsystem.usertype"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 399
    .local v9, "userType":I
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 400
    .local v6, "adbEnable":I
    if-eq v11, v9, :cond_4

    const/4 v0, 0x6

    if-ne v0, v9, :cond_5

    :cond_4
    if-gtz v6, :cond_5

    .line 401
    const-string v0, "sys.logbuffer.disable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/SmartShrinker;->reclaim(II)V

    .line 410
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    .end local v6    # "adbEnable":I
    .end local v9    # "userType":I
    :catch_0
    move-exception v7

    .line 386
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    throw v7
.end method

.method private sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "on"    # Z

    .prologue
    .line 1750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1752
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1754
    return-void
.end method

.method private setAirplaneMode(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 1761
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1764
    .local v1, "lastAirplaneMode":I
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastAirplaneMode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const-string v5, "RTC"

    const-string v6, "persist.sys.powerup_reason"

    const-string v7, "NORMAL"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ro.runtime.firstboot"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_1

    .line 1770
    const-string v3, "com.android.deskclock"

    const-string v4, "persist.sys.hwairplanestate"

    const-string v5, "error"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1772
    const-string v3, "SystemServer"

    const-string v4, "RTC power on"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1778
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_set_airplane"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1781
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V

    .line 1805
    .end local v1    # "lastAirplaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 1784
    .restart local v1    # "lastAirplaneMode":I
    :cond_1
    const-string v5, "persist.sys.hwairplanestate"

    const-string v6, "error"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v5, "SystemServer"

    const-string v6, "systemserver,hw airplane prop = error"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_set_airplane"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1792
    .local v2, "userChangeAirplane":I
    const-string v5, "SystemServer"

    const-string v6, "normal power on"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userSetAirplane= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    if-eq v8, v2, :cond_0

    .line 1798
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1799
    if-ne v2, v3, :cond_2

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1802
    .end local v1    # "lastAirplaneMode":I
    .end local v2    # "userChangeAirplane":I
    :catch_0
    move-exception v0

    .line 1803
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "power off alarm occure error:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "lastAirplaneMode":I
    .restart local v2    # "userChangeAirplane":I
    :cond_2
    move v3, v4

    .line 1799
    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v5, 0x1

    .line 453
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 456
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 458
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 459
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 466
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.power.HwPowerManagerService"

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    :try_start_1
    const-string v4, "SystemServer"

    const-string v6, "PG Manager service"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/pg/PGManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/pg/PGManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPGManagerService:Lcom/android/server/pg/PGManagerService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    :goto_1
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 488
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.lights.HwLightsService"

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    :goto_2
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 500
    invoke-direct {p0}, Lcom/android/server/SystemServer;->isSupportIFAA()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    :try_start_3
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.security.HwSecurityService"

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 503
    const-string v4, "SystemServer"

    const-string v6, "HwSecurityService start success"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 512
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 515
    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "cryptState":Ljava/lang/String;
    const-string v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 524
    :cond_1
    :goto_4
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->bootSceneEnd(I)Z

    .line 528
    const-string v4, "SystemServer"

    const-string v6, "Package Manager"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Lhuawei/android/app/HwCustEmergDataManager;->getDefault()Lhuawei/android/app/HwCustEmergDataManager;

    move-result-object v2

    .line 532
    .local v2, "emergDataManager":Lhuawei/android/app/HwCustEmergDataManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lhuawei/android/app/HwCustEmergDataManager;->isEmergencyState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 533
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 534
    invoke-virtual {v2}, Lhuawei/android/app/HwCustEmergDataManager;->isEmergencyMountState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 535
    invoke-virtual {v2}, Lhuawei/android/app/HwCustEmergDataManager;->backupEmergencyDataFile()V

    .line 539
    :cond_2
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v6, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 542
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 543
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 545
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[bootinfo]\nisFirstBoot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isUpgrade: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->addBootInfo(Ljava/lang/String;)Z

    .line 546
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x65

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->bootSceneStart(IJ)Z

    .line 549
    const-string v4, "SystemServer"

    const-string v5, "User Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v4, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 552
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_3

    .line 554
    const/16 v4, 0x1a

    const-string v5, "JL_FIRST_BOOT"

    invoke-static {v4, v5}, Landroid/util/Jlog;->d(ILjava/lang/String;)I

    .line 558
    :cond_3
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 561
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 565
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 569
    invoke-static {}, Lcom/android/server/SystemServer;->startPowerProfileService()V

    .line 570
    return-void

    .line 467
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v2    # "emergDataManager":Lhuawei/android/app/HwCustEmergDataManager;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "SystemServer"

    const-string v6, "create HwPowerManagerService failed"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    goto/16 :goto_0

    .line 477
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "PG Manager service"

    invoke-direct {p0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 489
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "SystemServer"

    const-string v6, "create HwLightsService failed"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/lights/LightsService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_2

    .line 504
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v6, "can\'t start HwSecurityService service"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_4
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_4

    .line 539
    .restart local v2    # "emergDataManager":Lhuawei/android/app/HwCustEmergDataManager;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_5
.end method

.method private startCoreServices()V
    .locals 3

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.HwBatteryService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 586
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 592
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 593
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SystemServer"

    const-string v2, "create HwBatteryService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BatteryService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 117

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 601
    .local v3, "context":Landroid/content/Context;
    const/16 v32, 0x0

    .line 602
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v48, 0x0

    .line 603
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const/16 v108, 0x0

    .line 604
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    const/16 v34, 0x0

    .line 606
    .local v34, "alarm":Landroid/app/IAlarmManager;
    const/16 v35, 0x0

    .line 608
    .local v35, "almService":Lcom/android/server/AlarmManagerService;
    const/16 v85, 0x0

    .line 609
    .local v85, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 610
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 611
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v87, 0x0

    .line 612
    .local v87, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 613
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v88, 0x0

    .line 614
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v99, 0x0

    .line 615
    .local v99, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v116, 0x0

    .line 616
    .local v116, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v107, 0x0

    .line 617
    .local v107, "usb":Lcom/android/server/usb/UsbService;
    const/16 v97, 0x0

    .line 618
    .local v97, "serial":Lcom/android/server/SerialService;
    const/16 v91, 0x0

    .line 619
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v42, 0x0

    .line 620
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v71, 0x0

    .line 621
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v102, 0x0

    .line 622
    .local v102, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v46, 0x0

    .line 626
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    invoke-static {}, Lhuawei/android/app/HwCustEmergDataManager;->getDefault()Lhuawei/android/app/HwCustEmergDataManager;

    move-result-object v60

    .line 627
    .local v60, "emergDataManager":Lhuawei/android/app/HwCustEmergDataManager;
    if-eqz v60, :cond_0

    invoke-virtual/range {v60 .. v60}, Lhuawei/android/app/HwCustEmergDataManager;->isEmergencyState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 628
    invoke-static {}, Lcom/android/server/HwServiceFactory;->activePlaceFile()V

    .line 632
    :cond_0
    const/16 v39, 0x0

    .line 633
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v84, 0x0

    .line 634
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v63, 0x0

    .line 635
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v41, 0x0

    .line 637
    .local v41, "cameraService":Lcom/android/server/camera/CameraService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 638
    .local v56, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 639
    .local v51, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 640
    .local v52, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 641
    .local v57, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 642
    .local v55, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 643
    .local v53, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 644
    .local v54, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    .line 646
    .local v73, "isEmulator":Z
    const-string v4, "ro.config.enable_rms"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 648
    .local v62, "enableRms":Z
    const-string v4, "ro.hdmi.service"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 649
    .local v61, "enableHdmi":Z
    const-string v4, "ro.tui.service"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v106

    .line 650
    .local v106, "tuiEnable":Z
    const-string v4, "ro.vr_display.service"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v110

    .line 652
    .local v110, "vrDisplayEnable":Z
    const-string v4, "CN"

    const-string v5, "ro.product.locale.region"

    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v72

    .line 653
    .local v72, "isChinaArea":Z
    move/from16 v74, v72

    .line 656
    .local v74, "isSupportedSecIme":Z
    if-nez v55, :cond_1

    .line 658
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->fingerprintStartThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_1
    :goto_0
    :try_start_1
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 670
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 675
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget v4, Landroid/hsm/HwSystemManager;->mPermissionEnabled:I

    if-nez v4, :cond_34

    .line 679
    new-instance v103, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v102, v103

    .line 689
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 691
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v64, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v64

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_47

    .line 694
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v64, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 696
    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 702
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v33, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 704
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_48

    move-object/from16 v32, v33

    .line 709
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    const/4 v4, 0x1

    :goto_3
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v48

    .line 713
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 716
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v109, Lcom/android/server/VibratorService;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 718
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .local v109, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 720
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v47, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_49

    .line 722
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 727
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.HwAlarmManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v101

    .line 728
    .local v101, "sysService":Lcom/android/server/SystemService;
    move-object/from16 v0, v101

    check-cast v0, Lcom/android/server/AlarmManagerService;

    move-object/from16 v35, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 734
    .end local v101    # "sysService":Lcom/android/server/SystemService;
    :goto_4
    :try_start_9
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v34

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setAlarmManager(Lcom/android/server/AlarmManagerService;)V

    .line 739
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwDrmDialogService()Lcom/android/server/HwServiceFactory$IHwDrmDialogService;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/server/HwServiceFactory$IHwDrmDialogService;->startDrmDialogService(Landroid/content/Context;)V

    .line 740
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v114

    .line 742
    .local v114, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 744
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwInputManagerService()Lcom/android/server/input/IHwInputManagerService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/server/input/IHwInputManagerService;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/input/InputManagerService;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v71

    .line 749
    if-eqz v62, :cond_2

    .line 751
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.rms.HwSysResManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    .line 758
    :cond_2
    :goto_5
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_37

    const/4 v4, 0x1

    move v5, v4

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_38

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v71

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v116

    .line 763
    const-string v4, "persist.sys.dpi"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v58

    .line 765
    .local v58, "dpi":I
    const-string v4, "persist.sys.rog.width"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v115

    .line 766
    .local v115, "width":I
    if-lez v115, :cond_3

    .line 768
    sget v58, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 771
    :cond_3
    if-lez v58, :cond_4

    .line 772
    const/4 v4, 0x0

    move-object/from16 v0, v116

    move/from16 v1, v58

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensity(II)V

    .line 775
    :cond_4
    const-string v4, "window"

    move-object/from16 v0, v116

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 776
    const-string v4, "input"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v116

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 780
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 781
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/input/InputManagerService;->start()V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 789
    if-eqz v73, :cond_39

    .line 790
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    :goto_8
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .line 807
    .end local v58    # "dpi":I
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    .end local v115    # "width":I
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    :goto_9
    const/16 v100, 0x0

    .line 808
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v93, 0x0

    .line 809
    .local v93, "notification":Landroid/app/INotificationManager;
    const/16 v68, 0x0

    .line 810
    .local v68, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v112, 0x0

    .line 811
    .local v112, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v77, 0x0

    .line 812
    .local v77, "location":Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 813
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v104, 0x0

    .line 814
    .local v104, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v79, 0x0

    .line 815
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v36, 0x0

    .line 816
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v81, 0x0

    .line 818
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v86, 0x0

    .line 821
    .local v86, "multiWinService":Landroid/os/IMultiWinService;
    const/16 v96, 0x0

    .line 824
    .local v96, "sec_imm":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    .line 826
    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwInputMethodManagerService()Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;

    move-result-object v67

    .line 829
    .local v67, "iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
    if-eqz v67, :cond_3d

    .line 830
    move-object/from16 v0, v67

    move-object/from16 v1, v116

    invoke-interface {v0, v3, v1}, Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;->getInstance(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/InputMethodManagerService;

    move-result-object v68

    .line 835
    :goto_a
    const-string v4, "input_method"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 842
    .end local v67    # "iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
    :goto_b
    if-eqz v74, :cond_6

    .line 844
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Secure Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwSecureInputMethodManagerServices()Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;

    move-result-object v95

    .line 846
    .local v95, "sec_iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;
    if-eqz v95, :cond_5

    .line 847
    move-object/from16 v0, v95

    move-object/from16 v1, v116

    invoke-interface {v0, v3, v1}, Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;->getInstance(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/InputMethodManagerService;

    move-result-object v96

    .line 849
    :cond_5
    const-string v4, "input_method_secure"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 858
    .end local v95    # "sec_iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;
    :cond_6
    :goto_c
    :try_start_e
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 867
    :cond_7
    :goto_d
    :try_start_f
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 872
    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 873
    if-nez v56, :cond_8

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 880
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 881
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    move-result-object v85

    .line 891
    :cond_8
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->bootSceneEnd(I)Z

    .line 897
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 903
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x66

    const-wide/32 v8, 0xea60

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->bootSceneStart(IJ)Z

    .line 907
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x104036e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_46

    .line 914
    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_43

    .line 917
    sget-boolean v4, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    if-eqz v4, :cond_9

    .line 922
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "Multi Window Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwMultiWinService()Lcom/android/server/HwServiceFactory$IHwMultiWinService;

    move-result-object v70

    .line 925
    .local v70, "imws":Lcom/android/server/HwServiceFactory$IHwMultiWinService;
    if-eqz v70, :cond_9

    .line 927
    const-string v4, "multiwin"

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v70

    invoke-interface {v0, v3, v5}, Lcom/android/server/HwServiceFactory$IHwMultiWinService;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/IMultiWinService$Stub;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 930
    const-string v4, "multiwin"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IMultiWinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMultiWinService;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    move-result-object v86

    .line 938
    .end local v70    # "imws":Lcom/android/server/HwServiceFactory$IHwMultiWinService;
    :cond_9
    :goto_12
    if-nez v55, :cond_b

    .line 940
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v80, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 942
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_15
    const-string v4, "lock_settings"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_45

    move-object/from16 v79, v80

    .line 947
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_13
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 951
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 958
    :cond_b
    if-nez v57, :cond_c

    .line 960
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, v116

    invoke-static {v3, v0}, Lcom/android/server/HwServiceFactory;->createHwStatusBarManagerService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/statusbar/StatusBarManagerService;

    move-result-object v100

    .line 964
    const-string v4, "statusbar"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_e

    .line 970
    :cond_c
    :goto_14
    if-nez v55, :cond_d

    .line 972
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f

    .line 980
    :cond_d
    :goto_15
    if-nez v53, :cond_e

    .line 982
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 984
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_10

    .line 990
    :cond_e
    :goto_16
    if-nez v55, :cond_f

    .line 992
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v105, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11

    .line 994
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v105, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1a
    const-string v4, "textservices"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_44

    move-object/from16 v104, v105

    .line 1000
    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_f
    :goto_17
    if-nez v53, :cond_42

    .line 1002
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v89, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v89

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_12

    .line 1004
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1c
    const-string v4, "network_score"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_43

    move-object/from16 v88, v89

    .line 1010
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_18
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v90, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v90

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_13

    .line 1012
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v90, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v4, "netstats"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_42

    move-object/from16 v6, v90

    .line 1018
    .end local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_14

    .line 1023
    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_41

    .line 1028
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1037
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1041
    :cond_11
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwConnectivityManager()Lcom/android/server/HwConnectivityManager;

    move-result-object v4

    invoke-interface {v4, v3, v7, v6, v2}, Lcom/android/server/HwConnectivityManager;->createHwConnectivityService(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)Lcom/android/server/ConnectivityService;

    move-result-object v45

    .line 1047
    const-string v4, "connectivity"

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1048
    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1049
    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_15

    .line 1055
    :goto_1b
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v99

    .line 1057
    const-string v4, "servicediscovery"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_16

    .line 1064
    :goto_1c
    if-nez v55, :cond_12

    .line 1066
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_17

    .line 1079
    :cond_12
    :goto_1d
    if-eqz v85, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_13

    .line 1081
    :try_start_24
    invoke-interface/range {v85 .. v85}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_3b

    .line 1087
    :cond_13
    :goto_1e
    if-eqz v32, :cond_14

    .line 1088
    :try_start_25
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_18

    .line 1094
    :cond_14
    :goto_1f
    if-eqz v48, :cond_15

    .line 1095
    :try_start_26
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_19

    .line 1101
    :cond_15
    :goto_20
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.notification.HwNotificationManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_1a

    .line 1106
    :goto_21
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v93

    .line 1108
    move-object/from16 v0, v93

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/HwServiceFactory;->getDeviceStorageMonitorServiceClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1113
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TUI Connect enable "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v106

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-eqz v106, :cond_16

    .line 1116
    :try_start_28
    const-string v4, "tui"

    new-instance v5, Lcom/android/server/TrustedUIService;

    invoke-direct {v5, v3}, Lcom/android/server/TrustedUIService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1b

    .line 1122
    :cond_16
    :goto_22
    if-eqz v110, :cond_17

    .line 1123
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VR Display enable "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v110

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :try_start_29
    const-string v4, "vr_display"

    new-instance v5, Landroid/vr/VRManagerService;

    invoke-direct {v5, v3}, Landroid/vr/VRManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1c

    .line 1131
    :cond_17
    :goto_23
    if-nez v52, :cond_18

    .line 1133
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwLocationManagerService()Lcom/android/server/HwServiceFactory$IHwLocationManagerService;

    move-result-object v65

    .line 1136
    .local v65, "hwLocation":Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
    if-eqz v65, :cond_3e

    .line 1137
    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lcom/android/server/HwServiceFactory$IHwLocationManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/LocationManagerService;

    move-result-object v77

    .line 1142
    :goto_24
    const-string v4, "location"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1d

    .line 1148
    .end local v65    # "hwLocation":Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
    :goto_25
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1e

    .line 1150
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2c
    const-string v4, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_40

    move-object/from16 v49, v50

    .line 1156
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_18
    :goto_26
    if-nez v55, :cond_19

    .line 1158
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1f

    .line 1167
    :cond_19
    :goto_27
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_20

    .line 1174
    :goto_28
    if-nez v55, :cond_1a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1177
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHuaweiWallpaperManagerService()Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;

    move-result-object v76

    .line 1180
    .local v76, "iwms":Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
    if-eqz v76, :cond_3f

    .line 1181
    move-object/from16 v0, v76

    invoke-interface {v0, v3}, Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v112

    .line 1186
    :goto_29
    const-string v4, "wallpaper"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_21

    .line 1193
    .end local v76    # "iwms":Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
    :cond_1a
    :goto_2a
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwAudioService()Lcom/android/server/HwServiceFactory$IHwAudioService;

    move-result-object v66

    .line 1195
    .local v66, "iaudioser":Lcom/android/server/HwServiceFactory$IHwAudioService;
    if-eqz v66, :cond_40

    .line 1196
    move-object/from16 v0, v66

    invoke-interface {v0, v3}, Lcom/android/server/HwServiceFactory$IHwAudioService;->getInstance(Landroid/content/Context;)Lcom/android/server/audio/AudioService;

    move-result-object v39

    .line 1200
    :goto_2b
    const-string v4, "audio"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_22

    .line 1205
    .end local v66    # "iaudioser":Lcom/android/server/HwServiceFactory$IHwAudioService;
    :goto_2c
    if-nez v55, :cond_1b

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1210
    :cond_1b
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v71

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_23

    .line 1218
    :goto_2d
    if-nez v55, :cond_1f

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1224
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1228
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1232
    :cond_1e
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance v98, Lcom/android/server/SerialService;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_24

    .line 1235
    .end local v97    # "serial":Lcom/android/server/SerialService;
    .local v98, "serial":Lcom/android/server/SerialService;
    :try_start_33
    const-string v4, "serial"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_3f

    move-object/from16 v97, v98

    .line 1241
    .end local v98    # "serial":Lcom/android/server/SerialService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    :cond_1f
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1244
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.job.HwJobSchedulerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_25

    .line 1250
    :goto_2f
    if-nez v55, :cond_22

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1255
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1259
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1266
    :cond_22
    invoke-static {v3}, Lcom/android/server/HwServiceFactory;->setupHwServices(Landroid/content/Context;)V

    .line 1270
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_26

    .line 1278
    :goto_30
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "attestation Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwAttestationService()Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;

    move-result-object v38

    .line 1280
    .local v38, "attestation":Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;
    if-eqz v38, :cond_23

    .line 1281
    const-string v4, "attestation_service"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;->getInstance(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_27

    .line 1294
    .end local v38    # "attestation":Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;
    :cond_23
    :goto_31
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_28

    .line 1301
    :goto_32
    if-nez v53, :cond_24

    if-nez v54, :cond_24

    .line 1303
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    new-instance v92, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_29

    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v91, v92

    .line 1311
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_24
    :goto_33
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    new-instance v43, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_2a

    .line 1313
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string v4, "commontime_management"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3e

    move-object/from16 v42, v43

    .line 1318
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_34
    if-nez v53, :cond_25

    .line 1320
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_2b

    .line 1327
    :cond_25
    :goto_35
    if-nez v55, :cond_26

    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1332
    :cond_26
    if-nez v55, :cond_27

    .line 1334
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2c

    .line 1336
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3d
    const-string v4, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_3d

    move-object/from16 v36, v37

    .line 1342
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_27
    :goto_36
    if-nez v55, :cond_28

    .line 1343
    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1347
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1351
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1359
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1362
    :cond_2b
    if-eqz v61, :cond_2c

    .line 1364
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "HDMI Connect Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string v4, "hdmi"

    new-instance v5, Lcom/android/server/HDMIConnectService;

    invoke-direct {v5, v3}, Lcom/android/server/HDMIConnectService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2d

    .line 1371
    :cond_2c
    :goto_37
    if-nez v55, :cond_2d

    .line 1373
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v82, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2e

    .line 1375
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_40
    const-string v4, "media_router"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3c

    move-object/from16 v81, v82

    .line 1380
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1385
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2f

    .line 1393
    :cond_2d
    :goto_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1397
    :goto_3a
    if-nez v55, :cond_2e

    .line 1399
    :try_start_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.NonHardwareAcceleratedPackagesManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_30

    .line 1405
    :cond_2e
    :goto_3b
    if-nez v55, :cond_2f

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1410
    :cond_2f
    if-nez v55, :cond_30

    .line 1412
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.JankShieldService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_31

    .line 1420
    :cond_30
    :goto_3c
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v94

    .line 1422
    .local v94, "safeMode":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v94

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1424
    if-eqz v94, :cond_41

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1427
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1434
    :goto_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v84

    .end local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v84, Lcom/android/server/MmsServiceBroker;

    .line 1438
    .restart local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.HwCoreAppHelperService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_32

    .line 1443
    :goto_3e
    const-string v4, "true"

    const-string v5, "bastet.service.enable"

    const-string v8, "false"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1445
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.HwBastetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_33

    .line 1454
    :cond_31
    :goto_3f
    :try_start_46
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_34

    .line 1459
    :goto_40
    if-eqz v79, :cond_32

    .line 1461
    :try_start_47
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_35

    .line 1468
    :cond_32
    :goto_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1473
    :try_start_48
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_36

    .line 1478
    :goto_42
    if-eqz v94, :cond_33

    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1485
    :cond_33
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 1486
    .local v44, "config":Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1487
    .local v83, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/view/WindowManager;

    .line 1488
    .local v111, "w":Landroid/view/WindowManager;
    invoke-interface/range {v111 .. v111}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1489
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v44

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1493
    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_37

    .line 1502
    :goto_43
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPGManagerService:Lcom/android/server/pg/PGManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, v77

    invoke-virtual {v4, v5, v8, v0}, Lcom/android/server/pg/PGManagerService;->systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/LocationManagerService;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_38

    .line 1510
    :goto_44
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_39

    .line 1517
    :goto_45
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v94

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_3a

    .line 1523
    :goto_46
    move-object v12, v7

    .line 1524
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1525
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1526
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v45

    .line 1527
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v88

    .line 1528
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v112

    .line 1529
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v68

    .line 1530
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v77

    .line 1531
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v49

    .line 1532
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v91

    .line 1533
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v42

    .line 1534
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v104

    .line 1535
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v100

    .line 1536
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v36

    .line 1537
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v71

    .line 1538
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v102

    .line 1539
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v81

    .line 1540
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v39

    .line 1541
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v30, v84

    .line 1543
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v31, v86

    .line 1546
    .local v31, "multiWinServiceF":Landroid/os/IMultiWinService;
    move-object/from16 v20, v96

    .line 1553
    .local v20, "sec_immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$3;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v31}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Landroid/os/IMultiWinService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1740
    return-void

    .line 660
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "sec_immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "multiWinServiceF":Landroid/os/IMultiWinService;
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v86    # "multiWinService":Landroid/os/IMultiWinService;
    .end local v93    # "notification":Landroid/app/INotificationManager;
    .end local v94    # "safeMode":Z
    .end local v96    # "sec_imm":Lcom/android/server/InputMethodManagerService;
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v111    # "w":Landroid/view/WindowManager;
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_0
    move-exception v59

    .line 661
    .local v59, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Start fingerprintservice thread error"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 681
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_34
    :try_start_4d
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwTelephonyRegistry()Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;

    move-result-object v75

    .line 682
    .local v75, "itr":Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;
    if-eqz v75, :cond_35

    .line 683
    move-object/from16 v0, v75

    invoke-interface {v0, v3}, Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;->getInstance(Landroid/content/Context;)Lcom/android/server/TelephonyRegistry;

    move-result-object v102

    goto/16 :goto_1

    .line 685
    :cond_35
    new-instance v103, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_47

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_1

    .line 705
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "itr":Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    :catch_1
    move-exception v59

    .line 706
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_47
    :try_start_4e
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_2

    goto/16 :goto_2

    .line 802
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v59

    move-object/from16 v63, v64

    .line 803
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v59, "e":Ljava/lang/RuntimeException;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    :goto_48
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 710
    .end local v59    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 729
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    :catch_3
    move-exception v59

    .line 730
    .local v59, "e":Ljava/lang/Exception;
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 731
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 752
    .end local v59    # "e":Ljava/lang/Exception;
    .restart local v114    # "watchdog":Lcom/android/server/Watchdog;
    :catch_4
    move-exception v59

    .line 753
    .local v59, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 802
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    :catch_5
    move-exception v59

    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_48

    .line 759
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "watchdog":Lcom/android/server/Watchdog;
    :cond_37
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_6

    :cond_38
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 791
    .restart local v58    # "dpi":I
    .restart local v115    # "width":I
    :cond_39
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 792
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 793
    :cond_3a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 795
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 796
    :cond_3b
    if-eqz v51, :cond_3c

    .line 797
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 799
    :cond_3c
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_5

    goto/16 :goto_8

    .line 832
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "dpi":I
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    .end local v115    # "width":I
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v67    # "iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "multiWinService":Landroid/os/IMultiWinService;
    .restart local v93    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "sec_imm":Lcom/android/server/InputMethodManagerService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_3d
    :try_start_50
    new-instance v69, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v69

    move-object/from16 v1, v116

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_6

    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v68, v69

    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_a

    .line 836
    .end local v67    # "iinputmethodMS":Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
    :catch_6
    move-exception v59

    .line 837
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 850
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v59

    .line 851
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Secure Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 861
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v59

    .line 862
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 868
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v59

    .line 869
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 883
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v59

    .line 884
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 898
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v59

    .line 899
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 933
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v59

    .line 934
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting MultiWinService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 943
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v59

    .line 944
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 965
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v59

    .line 966
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 975
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v59

    .line 976
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 985
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v59

    .line 986
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 995
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v59

    .line 996
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1005
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v59

    .line 1006
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1013
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v59

    .line 1014
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1024
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v59

    move-object/from16 v2, v87

    .line 1025
    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1050
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v59

    .line 1051
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1059
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v59

    .line 1060
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1069
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v59

    .line 1070
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1089
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v59

    .line 1090
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1096
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v59

    .line 1097
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1102
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v59

    .line 1103
    .local v59, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_21

    .line 1117
    .end local v59    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v59

    .line 1118
    .local v59, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting TUI Service "

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 1126
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v59

    .line 1127
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting VR Service "

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 1139
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v65    # "hwLocation":Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
    :cond_3e
    :try_start_51
    new-instance v78, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_1d

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    move-object/from16 v77, v78

    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_24

    .line 1143
    .end local v65    # "hwLocation":Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
    :catch_1d
    move-exception v59

    .line 1144
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1151
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v59

    .line 1152
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1161
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v59

    .line 1162
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1170
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v59

    .line 1171
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1183
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v76    # "iwms":Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
    :cond_3f
    :try_start_52
    new-instance v113, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_21

    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v113, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v112, v113

    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_29

    .line 1187
    .end local v76    # "iwms":Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
    :catch_21
    move-exception v59

    .line 1188
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1198
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v66    # "iaudioser":Lcom/android/server/HwServiceFactory$IHwAudioService;
    :cond_40
    :try_start_53
    new-instance v40, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_22

    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .local v40, "audioService":Lcom/android/server/audio/AudioService;
    move-object/from16 v39, v40

    .end local v40    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v39    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_2b

    .line 1201
    .end local v66    # "iaudioser":Lcom/android/server/HwServiceFactory$IHwAudioService;
    :catch_22
    move-exception v59

    .line 1202
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1214
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v59

    .line 1215
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1236
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v59

    .line 1237
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 1245
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v59

    .line 1246
    .local v59, "e":Ljava/lang/RuntimeException;
    const-string v4, "SystemServer"

    const-string v5, "create HwJobSchedulerService failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_2f

    .line 1272
    .end local v59    # "e":Ljava/lang/RuntimeException;
    :catch_26
    move-exception v59

    .line 1273
    .local v59, "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1283
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v59

    .line 1284
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "attestation_service failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v4, "attestation Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1297
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v59

    .line 1298
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1305
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v59

    .line 1306
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1314
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v59

    .line 1315
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1322
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v59

    .line 1323
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1337
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v59

    .line 1338
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1366
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v59

    .line 1367
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting HDMI Service "

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 1376
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v59

    .line 1377
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1387
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v59

    .line 1388
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1400
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v59

    .line 1401
    .local v59, "e":Ljava/lang/RuntimeException;
    const-string v4, "SystemServer"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1413
    .end local v59    # "e":Ljava/lang/RuntimeException;
    :catch_31
    move-exception v59

    .line 1414
    .restart local v59    # "e":Ljava/lang/RuntimeException;
    const-string v4, "SystemServer"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1430
    .end local v59    # "e":Ljava/lang/RuntimeException;
    .restart local v94    # "safeMode":Z
    :cond_41
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3d

    .line 1439
    :catch_32
    move-exception v59

    .line 1440
    .local v59, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "HwCoreAppHelperService not exists."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 1446
    .end local v59    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v59

    .line 1447
    .restart local v59    # "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "HwBastetService not exists."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1455
    .end local v59    # "e":Ljava/lang/Exception;
    :catch_34
    move-exception v59

    .line 1456
    .local v59, "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1462
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v59

    .line 1463
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1474
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v59

    .line 1475
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1494
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v44    # "config":Landroid/content/res/Configuration;
    .restart local v83    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v111    # "w":Landroid/view/WindowManager;
    :catch_37
    move-exception v59

    .line 1495
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1504
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v59

    .line 1505
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making PG Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1511
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v59

    .line 1512
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1518
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v59

    .line 1519
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1082
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v94    # "safeMode":Z
    .end local v111    # "w":Landroid/view/WindowManager;
    :catch_3b
    move-exception v4

    goto/16 :goto_1e

    .line 1376
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3c
    move-exception v59

    move-object/from16 v81, v82

    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_52

    .line 1337
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3d
    move-exception v59

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_51

    .line 1314
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v59

    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_50

    .line 1236
    .end local v97    # "serial":Lcom/android/server/SerialService;
    .restart local v98    # "serial":Lcom/android/server/SerialService;
    :catch_3f
    move-exception v59

    move-object/from16 v97, v98

    .end local v98    # "serial":Lcom/android/server/SerialService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_4f

    .line 1151
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v59

    move-object/from16 v49, v50

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4e

    .line 1024
    :catch_41
    move-exception v59

    goto/16 :goto_4d

    .line 1013
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_42
    move-exception v59

    move-object/from16 v6, v90

    .end local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4c

    .line 1005
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_43
    move-exception v59

    move-object/from16 v88, v89

    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_4b

    .line 995
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_44
    move-exception v59

    move-object/from16 v104, v105

    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4a

    .line 943
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_45
    move-exception v59

    move-object/from16 v79, v80

    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_49

    .line 911
    :catch_46
    move-exception v4

    goto/16 :goto_11

    .line 802
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "multiWinService":Landroid/os/IMultiWinService;
    .end local v93    # "notification":Landroid/app/INotificationManager;
    .end local v96    # "sec_imm":Lcom/android/server/InputMethodManagerService;
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_47
    move-exception v59

    goto/16 :goto_48

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    :catch_48
    move-exception v59

    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_48

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    :catch_49
    move-exception v59

    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v108, v109

    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_48

    .line 705
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    :catch_4a
    move-exception v59

    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_47

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "multiWinService":Landroid/os/IMultiWinService;
    .restart local v93    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "sec_imm":Lcom/android/server/InputMethodManagerService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_42
    move-object/from16 v2, v87

    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_1c

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_43
    move-object/from16 v2, v87

    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3a
.end method

.method private static native startPowerProfileService()V
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1809
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1810
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1813
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1814
    return-void
.end method

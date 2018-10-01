.class public Lcom/android/server/HwServiceFactory;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HwServiceFactory$IHwBinderMonitor;,
        Lcom/android/server/HwServiceFactory$ICoverManagerService;,
        Lcom/android/server/HwServiceFactory$IHwRampAnimator;,
        Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;,
        Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;,
        Lcom/android/server/HwServiceFactory$IHwMountService;,
        Lcom/android/server/HwServiceFactory$IHwDrmDialogService;,
        Lcom/android/server/HwServiceFactory$IHwActiveServices;,
        Lcom/android/server/HwServiceFactory$IHwLocationManagerService;,
        Lcom/android/server/HwServiceFactory$IHwBluetoothBigDataService;,
        Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;,
        Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;,
        Lcom/android/server/HwServiceFactory$IHwActivityManagerService;,
        Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;,
        Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;,
        Lcom/android/server/HwServiceFactory$IHwActivityStackSupervisor;,
        Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;,
        Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;,
        Lcom/android/server/HwServiceFactory$IHwNetworkManagermentService;,
        Lcom/android/server/HwServiceFactory$IHwNotificationManagerService;,
        Lcom/android/server/HwServiceFactory$IHwPowerManagerService;,
        Lcom/android/server/HwServiceFactory$IHwAlarmManagerService;,
        Lcom/android/server/HwServiceFactory$IHwUserManagerService;,
        Lcom/android/server/HwServiceFactory$IHwMultiWinService;,
        Lcom/android/server/HwServiceFactory$IHwMediaSessionStack;,
        Lcom/android/server/HwServiceFactory$IHwWindowStateAnimator;,
        Lcom/android/server/HwServiceFactory$IHwWindowManagerService;,
        Lcom/android/server/HwServiceFactory$IHwLockSettingsService;,
        Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;,
        Lcom/android/server/HwServiceFactory$IHwZenModeFiltering;,
        Lcom/android/server/HwServiceFactory$IHwAppOpsService;,
        Lcom/android/server/HwServiceFactory$IHwFingerprintService;,
        Lcom/android/server/HwServiceFactory$Factory;,
        Lcom/android/server/HwServiceFactory$IHwAudioService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwServiceFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/server/HwServiceFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/HwServiceFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    return-void
.end method

.method public static activePlaceFile()V
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 452
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->activePlaceFile()V

    .line 455
    :cond_0
    return-void
.end method

.method public static addHwFmService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1520
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1521
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1522
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->addHwFmService(Landroid/content/Context;)V

    .line 1524
    :cond_0
    return-void
.end method

.method public static clearWipeDataFactory(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1109
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1110
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1111
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->clearWipeDataFactory(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 1113
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static clearWipeDataFactoryLowlevel(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1100
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1101
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1102
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->clearWipeDataFactoryLowlevel(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 1104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createActivityRecord(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)Lcom/android/server/am/ActivityRecord;
    .locals 18
    .param p0, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "_launchedFromUid"    # I
    .param p3, "_launchedFromPackage"    # Ljava/lang/String;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_resolvedType"    # Ljava/lang/String;
    .param p6, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p7, "_configuration"    # Landroid/content/res/Configuration;
    .param p8, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p9, "_resultWho"    # Ljava/lang/String;
    .param p10, "_reqCode"    # I
    .param p11, "_componentSpecified"    # Z
    .param p12, "_rootVoiceInteraction"    # Z
    .param p13, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p14, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p15, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1344
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1345
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1346
    invoke-interface/range {v0 .. v16}, Lcom/android/server/HwServiceFactory$Factory;->createActivityRecord(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1351
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createActivityStack(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p0, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    .line 1329
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1330
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createActivityStack(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1333
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/am/ActivityStack;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V

    goto :goto_0
.end method

.method public static createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayContent;
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1379
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1380
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1381
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1383
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_0
.end method

.method public static createHwAppTransition(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wm/AppTransition;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1360
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1361
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1362
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createHwAppTransition(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wm/AppTransition;

    move-result-object v1

    .line 1364
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/AppTransition;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static createHwGpsLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)Lcom/android/server/location/GpsLocationProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1147
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1148
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/HwServiceFactory$Factory;->createHwGpsLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)Lcom/android/server/location/GpsLocationProvider;

    move-result-object v1

    .line 1151
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public static createHwStatusBarManagerService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/statusbar/StatusBarManagerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 837
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 838
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 839
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createHwStatusBarManagerService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/statusbar/StatusBarManagerService;

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_0
.end method

.method public static createHwSyncManager(Landroid/content/Context;Z)Lcom/android/server/content/SyncManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factoryTest"    # Z

    .prologue
    .line 1158
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1159
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1160
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createHwSyncManager(Landroid/content/Context;Z)Lcom/android/server/content/SyncManager;

    move-result-object v1

    .line 1162
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/content/SyncManager;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)Lcom/android/server/am/TaskRecord;
    .locals 36
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "_taskId"    # I
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_affinityIntent"    # Landroid/content/Intent;
    .param p4, "_affinity"    # Ljava/lang/String;
    .param p5, "_rootAffinity"    # Ljava/lang/String;
    .param p6, "_realActivity"    # Landroid/content/ComponentName;
    .param p7, "_origActivity"    # Landroid/content/ComponentName;
    .param p8, "_rootWasReset"    # Z
    .param p9, "_autoRemoveRecents"    # Z
    .param p10, "_askedCompatMode"    # Z
    .param p11, "_taskType"    # I
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p16, "_firstActiveTime"    # J
    .param p18, "_lastActiveTime"    # J
    .param p20, "lastTimeMoved"    # J
    .param p22, "neverRelinquishIdentity"    # Z
    .param p23, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p24, "taskAffiliation"    # I
    .param p25, "prevTaskId"    # I
    .param p26, "nextTaskId"    # I
    .param p27, "taskAffiliationColor"    # I
    .param p28, "callingUid"    # I
    .param p29, "callingPackage"    # Ljava/lang/String;
    .param p30, "resizeable"    # Z
    .param p31, "privileged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v1

    .line 1421
    .local v1, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v1, :cond_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-wide/from16 v18, p16

    move-wide/from16 v20, p18

    move-wide/from16 v22, p20

    move/from16 v24, p22

    move-object/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    move/from16 v29, p27

    move/from16 v30, p28

    move-object/from16 v31, p29

    move/from16 v32, p30

    move/from16 v33, p31

    .line 1422
    invoke-interface/range {v1 .. v33}, Lcom/android/server/HwServiceFactory$Factory;->createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1429
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    move/from16 v26, p22

    move-object/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move/from16 v31, p27

    move/from16 v32, p28

    move-object/from16 v33, p29

    move/from16 v34, p30

    move/from16 v35, p31

    invoke-direct/range {v3 .. v35}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public static createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "_taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 1402
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1403
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1404
    invoke-interface/range {v0 .. v5}, Lcom/android/server/HwServiceFactory$Factory;->createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1407
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/am/TaskRecord;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0
.end method

.method public static createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "_taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 1390
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1391
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1392
    invoke-interface/range {v0 .. v6}, Lcom/android/server/HwServiceFactory$Factory;->createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1395
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/am/TaskRecord;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    goto :goto_0
.end method

.method public static createTaskStack(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/TaskStack;
    .locals 2
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "stackId"    # I

    .prologue
    .line 1370
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1371
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1372
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->createTaskStack(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1374
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    goto :goto_0
.end method

.method public static geocoderProxyCreateAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1507
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1508
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1509
    invoke-interface/range {v0 .. v5}, Lcom/android/server/HwServiceFactory$Factory;->geocoderProxyCreateAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    .line 1512
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCoverManagerService()Lcom/android/server/HwServiceFactory$ICoverManagerService;
    .locals 2

    .prologue
    .line 1266
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1267
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1268
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getCoverManagerService()Lcom/android/server/HwServiceFactory$ICoverManagerService;

    move-result-object v1

    .line 1270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDeviceStorageMonitorServiceClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1310
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1311
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1312
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getDeviceStorageMonitorServiceClassName()Ljava/lang/String;

    move-result-object v1

    .line 1314
    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHuaweiAutomaticBrightnessController()Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;
    .locals 2

    .prologue
    .line 1229
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1230
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1231
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiAutomaticBrightnessController()Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;

    move-result-object v1

    .line 1233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiLockSettingsService()Lcom/android/server/HwServiceFactory$IHwLockSettingsService;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 226
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiLockSettingsService()Lcom/android/server/HwServiceFactory$IHwLockSettingsService;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiMediaSessionStack()Lcom/android/server/HwServiceFactory$IHwMediaSessionStack;
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 290
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiMediaSessionStack()Lcom/android/server/HwServiceFactory$IHwMediaSessionStack;

    move-result-object v1

    .line 293
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiPackageManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "factoryTest"    # Z
    .param p3, "onlyCore"    # Z

    .prologue
    .line 236
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 237
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiPackageManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)V

    goto :goto_0
.end method

.method public static getHuaweiWallpaperManagerService()Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 218
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiWallpaperManagerService()Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiWindowManagerService()Lcom/android/server/HwServiceFactory$IHwWindowManagerService;
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 259
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiWindowManagerService()Lcom/android/server/HwServiceFactory$IHwWindowManagerService;

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiWindowStateAnimator()Lcom/android/server/HwServiceFactory$IHwWindowStateAnimator;
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 282
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHuaweiWindowStateAnimator()Lcom/android/server/HwServiceFactory$IHwWindowStateAnimator;

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwActiveServices()Lcom/android/server/HwServiceFactory$IHwActiveServices;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 461
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwActiveServices()Lcom/android/server/HwServiceFactory$IHwActiveServices;

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwActivityManagerService()Lcom/android/server/HwServiceFactory$IHwActivityManagerService;
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 384
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwActivityManagerService()Lcom/android/server/HwServiceFactory$IHwActivityManagerService;

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwActivityStackSupervisor()Lcom/android/server/HwServiceFactory$IHwActivityStackSupervisor;
    .locals 2

    .prologue
    .line 344
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 345
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwActivityStackSupervisor()Lcom/android/server/HwServiceFactory$IHwActivityStackSupervisor;

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwAppOpsService()Lcom/android/server/HwServiceFactory$IHwAppOpsService;
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 200
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwAppOpsService()Lcom/android/server/HwServiceFactory$IHwAppOpsService;

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwAppTransition()Lcom/android/server/wm/IHwAppTransition;
    .locals 2

    .prologue
    .line 1170
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1171
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwAppTransitionImpl()Lcom/android/server/wm/IHwAppTransition;

    move-result-object v1

    .line 1174
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/wm/HwAppTransitionDummy;->getDefault()Lcom/android/server/wm/HwAppTransitionDummy;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwAttestationService()Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 354
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwAttestationService()Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;

    move-result-object v1

    .line 358
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwAudioService()Lcom/android/server/HwServiceFactory$IHwAudioService;
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 273
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwAudioService()Lcom/android/server/HwServiceFactory$IHwAudioService;

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwBluetoothBigDataService()Lcom/android/server/HwServiceFactory$IHwBluetoothBigDataService;
    .locals 2

    .prologue
    .line 928
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 929
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 930
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwBluetoothBigDataService()Lcom/android/server/HwServiceFactory$IHwBluetoothBigDataService;

    move-result-object v1

    .line 932
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwCmccGpsFeature(Landroid/content/Context;Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/IHwCmccGpsFeature;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpsLocationProvider"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 959
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 960
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 961
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->getHwCmccGpsFeature(Landroid/content/Context;Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/IHwCmccGpsFeature;

    move-result-object v1

    .line 963
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwConnectivityManager()Lcom/android/server/HwConnectivityManager;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwConnectivityManager()Lcom/android/server/HwConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwDefaultPermissionGrantPolicy(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultPermissionGrantPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 247
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 248
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->getHwDefaultPermissionGrantPolicy(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    goto :goto_0
.end method

.method public static getHwDrmDialogService()Lcom/android/server/HwServiceFactory$IHwDrmDialogService;
    .locals 2

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1252
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1253
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwDrmDialogService()Lcom/android/server/HwServiceFactory$IHwDrmDialogService;

    move-result-object v1

    .line 1255
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwFingerprintService()Lcom/android/server/HwServiceFactory$IHwFingerprintService;
    .locals 2

    .prologue
    .line 1019
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1020
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwFingerprintService()Lcom/android/server/HwServiceFactory$IHwFingerprintService;

    move-result-object v1

    .line 1023
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwGpsActionReporter(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwGpsActionReporter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iLocationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 1482
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1483
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1484
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->getHwGpsActionReporter(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwGpsActionReporter;

    move-result-object v1

    .line 1486
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwGpsLocationCustFeature()Lcom/android/server/location/IHwGpsLocationCustFeature;
    .locals 2

    .prologue
    .line 987
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 988
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 989
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwGpsLocationCustFeature()Lcom/android/server/location/IHwGpsLocationCustFeature;

    move-result-object v1

    .line 991
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwGpsLocationManager(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLocationManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1008
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1009
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1010
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->getHwGpsLocationManager(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLocationManager;

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwGpsLogServices(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLogServices;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 968
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 969
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->getHwGpsLogServices(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLogServices;

    move-result-object v1

    .line 972
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwGpsXtraDownloadReceiver()Lcom/android/server/location/IHwGpsXtraDownloadReceiver;
    .locals 2

    .prologue
    .line 998
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 999
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1000
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwGpsXtraDownloadReceiver()Lcom/android/server/location/IHwGpsXtraDownloadReceiver;

    move-result-object v1

    .line 1002
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInputManagerService()Lcom/android/server/input/IHwInputManagerService;
    .locals 2

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1286
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1287
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwInputManagerService()Lcom/android/server/input/IHwInputManagerService;

    move-result-object v1

    .line 1289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInputMethodManagerService()Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
    .locals 2

    .prologue
    .line 334
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 335
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwInputMethodManagerService()Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInputMonitor()Lcom/android/server/wm/IHwInputMonitor;
    .locals 2

    .prologue
    .line 1440
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1441
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1442
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwInputMonitor()Lcom/android/server/wm/IHwInputMonitor;

    move-result-object v1

    .line 1444
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwLocalLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwLocalLocationProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ilocationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 950
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 951
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 952
    invoke-interface {v0, p0, p1}, Lcom/android/server/HwServiceFactory$Factory;->getHwLocalLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwLocalLocationProvider;

    move-result-object v1

    .line 954
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwLocationManagerService()Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
    .locals 2

    .prologue
    .line 941
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 942
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 943
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwLocationManagerService()Lcom/android/server/HwServiceFactory$IHwLocationManagerService;

    move-result-object v1

    .line 945
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwMultiWinService()Lcom/android/server/HwServiceFactory$IHwMultiWinService;
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 431
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwMultiWinService()Lcom/android/server/HwServiceFactory$IHwMultiWinService;

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNLPManager()Lcom/android/server/HwNLPManager;
    .locals 2

    .prologue
    .line 1123
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1124
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1125
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNLPManager()Lcom/android/server/HwNLPManager;

    move-result-object v1

    .line 1127
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/DummyHwNLPManager;->getDefault()Lcom/android/server/HwNLPManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwNativeDaemonConnector()Lcom/android/server/HwNativeDaemonConnector;
    .locals 2

    .prologue
    .line 1070
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1071
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1072
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNativeDaemonConnector()Lcom/android/server/HwNativeDaemonConnector;

    move-result-object v1

    .line 1074
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNetworkManagermentService()Lcom/android/server/HwServiceFactory$IHwNetworkManagermentService;
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 325
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNetworkManagermentService()Lcom/android/server/HwServiceFactory$IHwNetworkManagermentService;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNormalizedRampAnimator()Lcom/android/server/HwServiceFactory$IHwRampAnimator;
    .locals 2

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1242
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1243
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNormalizedRampAnimator()Lcom/android/server/HwServiceFactory$IHwRampAnimator;

    move-result-object v1

    .line 1245
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNotificationManagerService()Lcom/android/server/HwServiceFactory$IHwNotificationManagerService;
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 316
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNotificationManagerService()Lcom/android/server/HwServiceFactory$IHwNotificationManagerService;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNotificationTethering(Landroid/content/Context;)Lcom/android/server/connectivity/HwNotificationTethering;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1319
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1320
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1321
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->getHwNotificationTethering(Landroid/content/Context;)Lcom/android/server/connectivity/HwNotificationTethering;

    move-result-object v1

    .line 1323
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/connectivity/HwNotificationTetheringDummy;

    invoke-direct {v1}, Lcom/android/server/connectivity/HwNotificationTetheringDummy;-><init>()V

    goto :goto_0
.end method

.method public static getHwPackageServiceManager()Lcom/android/server/pm/HwPackageServiceManager;
    .locals 2

    .prologue
    .line 1137
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1138
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1139
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwPackageServiceManager()Lcom/android/server/pm/HwPackageServiceManager;

    move-result-object v1

    .line 1141
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/pm/DummyHwPackageServiceManager;->getDefault()Lcom/android/server/pm/HwPackageServiceManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwPowerInfoService()Lcom/android/server/am/IHwPowerInfoService;
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 766
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 767
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwPowerInfoService()Lcom/android/server/am/IHwPowerInfoService;

    move-result-object v1

    .line 769
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwPowerManagerService()Lcom/android/server/HwServiceFactory$IHwPowerManagerService;
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 307
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwPowerManagerService()Lcom/android/server/HwServiceFactory$IHwPowerManagerService;

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwSecureInputMethodManagerServices()Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;
    .locals 2

    .prologue
    .line 1295
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1296
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwSecureInputMethodManagerServices()Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;

    move-result-object v1

    .line 1299
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwShutdownThread()Lcom/android/server/power/IHwShutdownThread;
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 394
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwShutdownThreadImpl()Lcom/android/server/power/IHwShutdownThread;

    move-result-object v1

    .line 397
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/power/HwShutdownThreadDummy;

    invoke-direct {v1}, Lcom/android/server/power/HwShutdownThreadDummy;-><init>()V

    goto :goto_0
.end method

.method public static getHwSmartBackLightController()Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
    .locals 2

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1210
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1211
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwSmartBackLightController()Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    move-result-object v1

    .line 1213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwTelephonyRegistry()Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 403
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwTelephonyRegistry()Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;

    move-result-object v1

    .line 406
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwUsbHDBManager(Landroid/content/Context;)Lcom/android/server/usb/HwUsbHDBManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1060
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1061
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->getHwUsbHDBManager(Landroid/content/Context;)Lcom/android/server/usb/HwUsbHDBManager;

    move-result-object v1

    .line 1064
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwUserManagerService()Lcom/android/server/HwServiceFactory$IHwUserManagerService;
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 441
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwUserManagerService()Lcom/android/server/HwServiceFactory$IHwUserManagerService;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWindowState()Lcom/android/server/wm/IHwWindowState;
    .locals 2

    .prologue
    .line 1448
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1449
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwWindowState()Lcom/android/server/wm/IHwWindowState;

    move-result-object v1

    .line 1452
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwZenModeFiltering()Lcom/android/server/HwServiceFactory$IHwZenModeFiltering;
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 209
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getHwZenModeFiltering()Lcom/android/server/HwServiceFactory$IHwZenModeFiltering;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIHwBinderMonitor()Lcom/android/server/HwServiceFactory$IHwBinderMonitor;
    .locals 2

    .prologue
    .line 1472
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1473
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1474
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getIHwBinderMonitor()Lcom/android/server/HwServiceFactory$IHwBinderMonitor;

    move-result-object v1

    .line 1476
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/server/HwServiceFactory$Factory;
    .locals 6

    .prologue
    .line 471
    sget-object v2, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;

    if-eqz v2, :cond_0

    .line 472
    sget-object v2, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;

    .line 489
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 474
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/server/HwServiceFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 477
    :try_start_0
    const-string v2, "com.android.server.HwServiceFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 479
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/HwServiceFactory$Factory;

    sput-object v2, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    sget-object v2, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;

    if-eqz v2, :cond_1

    .line 485
    const-string v2, "HwServiceFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v2, Lcom/android/server/HwServiceFactory;->obj:Lcom/android/server/HwServiceFactory$Factory;

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwServiceFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 488
    :cond_1
    const-string v2, "HwServiceFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMtmBRManager(Lcom/android/server/am/HwBroadcastQueue;)Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;
    .locals 2
    .param p0, "queue"    # Lcom/android/server/am/HwBroadcastQueue;

    .prologue
    .line 1458
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1459
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1460
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->getMtmBRManagerImpl(Lcom/android/server/am/HwBroadcastQueue;)Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

    move-result-object v1

    .line 1462
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMultiTaskManagerService()Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 365
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getMultiTaskManagerService()Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;

    move-result-object v1

    .line 369
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNewHwGpsLogService()Lcom/android/server/location/IHwGpsLogServices;
    .locals 2

    .prologue
    .line 978
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 979
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0}, Lcom/android/server/HwServiceFactory$Factory;->getNewHwGpsLogService()Lcom/android/server/location/IHwGpsLogServices;

    move-result-object v1

    .line 982
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCustedCouldStopped(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "block"    # Z
    .param p2, "stopped"    # Z

    .prologue
    .line 1051
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1052
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1053
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/HwServiceFactory$Factory;->isCustedCouldStopped(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 1055
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrivAppInCust(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1043
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1044
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1045
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->isPrivAppInCust(Ljava/io/File;)Z

    move-result v1

    .line 1047
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrivAppInData(Ljava/io/File;)Z
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 1034
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1035
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1036
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->isPrivAppInData(Ljava/io/File;)Z

    move-result v1

    .line 1038
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static locationProviderProxyCreateAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1494
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1495
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 1496
    invoke-interface/range {v0 .. v7}, Lcom/android/server/HwServiceFactory$Factory;->locationProviderProxyCreateAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    .line 1499
    :goto_0
    return-object v1

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeProtectAppInPrivacyMode(Landroid/accounts/AuthenticatorDescription;ZLandroid/content/Context;)Z
    .locals 2
    .param p0, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p1, "removed"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1277
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1278
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/HwServiceFactory$Factory;->removeProtectAppInPrivacyMode(Landroid/accounts/AuthenticatorDescription;ZLandroid/content/Context;)Z

    move-result v1

    .line 1280
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setAlarmService(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 410
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 411
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->setAlarmService(Lcom/android/server/AlarmManagerService;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static setIfCoverClosed(Z)V
    .locals 1
    .param p0, "isClosed"    # Z

    .prologue
    .line 1088
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1089
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1090
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->setIfCoverClosed(Z)V

    .line 1092
    :cond_0
    return-void
.end method

.method public static setupHwServices(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1131
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1132
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1133
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->setupHwServices(Landroid/content/Context;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public static shouldFilteInvalidSensorVal(F)Z
    .locals 2
    .param p0, "lux"    # F

    .prologue
    .line 1080
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getImplObject()Lcom/android/server/HwServiceFactory$Factory;

    move-result-object v0

    .line 1081
    .local v0, "obj":Lcom/android/server/HwServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 1082
    invoke-interface {v0, p0}, Lcom/android/server/HwServiceFactory$Factory;->shouldFilteInvalidSensorVal(F)Z

    move-result v1

    .line 1084
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

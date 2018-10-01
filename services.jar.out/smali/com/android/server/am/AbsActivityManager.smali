.class public abstract Lcom/android/server/am/AbsActivityManager;
.super Landroid/app/ActivityManagerNative;
.source "AbsActivityManager.java"


# static fields
.field public static final MESSAGE_CHECK_AFTER_AMS_INIT:I = 0x64

.field public static final MESSAGE_CHECK_AFTER_BOOT_DEXOPT:I = 0x66

.field public static final MESSAGE_CHECK_AFTER_PMS_INIT:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ActivityManagerNative;-><init>()V

    return-void
.end method


# virtual methods
.method public addBootInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public addCallerToIntent(Landroid/content/Intent;Landroid/app/IApplicationThread;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Landroid/app/IApplicationThread;

    .prologue
    .line 49
    return-void
.end method

.method public bootSceneEnd(I)Z
    .locals 1
    .param p1, "sceneId"    # I

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public bootSceneStart(IJ)Z
    .locals 1
    .param p1, "sceneId"    # I
    .param p2, "maxTime"    # J

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected checkBroadcastRecordSpeed(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 185
    return-void
.end method

.method public checkIfScreenStatusRequestAndSendBroadcast()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public clearAppAndAppServiceResource(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 215
    return-void
.end method

.method protected clearBroadcastResource(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 189
    return-void
.end method

.method protected customActivityResuming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected customActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getBootInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurNaviConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordCust()Lcom/android/server/util/AbsUserBehaviourRecord;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleANRFilterFIFO(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "cmd"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected hwTrimApk()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public initAppAndAppServiceResourceLocked()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected initBroadcastResourceLocked()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected initialBroadcastQueue()[Lcom/android/server/am/BroadcastQueue;
    .locals 2

    .prologue
    .line 152
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/server/am/BroadcastQueue;

    .line 153
    .local v0, "broadcastQueues":[Lcom/android/server/am/BroadcastQueue;
    return-object v0
.end method

.method public isAcquireAppResourceLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public isAcquireAppServiceResourceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public isClonedProcess(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageCloned(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method protected isThirdPartyAppBroadcastQueue(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected isThirdPartyAppFGBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method protected isThirdPartyAppPendingBroadcastProcessLocked(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyProcessGroupChange(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 236
    return-void
.end method

.method public proxyBCConfig(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public proxyBroadcast(Ljava/util/List;Z)J
    .locals 2
    .param p2, "proxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public proxyBroadcastByPid(Ljava/util/List;Z)J
    .locals 2
    .param p2, "proxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected registerCtrlSocketForMm(Ljava/lang/String;I)V
    .locals 0
    .param p1, "processname"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 226
    return-void
.end method

.method public setActionExcludePkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method protected setFocusedActivityLockedForNavi(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 73
    return-void
.end method

.method public setProxyBCActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method protected setSoundEffectState(ZLjava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isOnTop"    # Z
    .param p4, "reserved"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected setThirdPartyAppBroadcastQueue([Lcom/android/server/am/BroadcastQueue;)V
    .locals 0
    .param p1, "broadcastQueues"    # [Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 158
    return-void
.end method

.method public shouldPreventActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPreventRestartService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPreventStartProvider(Landroid/content/pm/ProviderInfo;II)Z
    .locals 1
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPreventStartService(Landroid/content/pm/ServiceInfo;II)Z
    .locals 1
    .param p1, "servInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public showUninstallLauncherDialog(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method protected smartTrimAddProcessRelation(Ljava/lang/String;ILjava/util/HashSet;Ljava/lang/String;ILjava/util/HashSet;)V
    .locals 0
    .param p1, "clientProc"    # Ljava/lang/String;
    .param p2, "clientCurAdj"    # I
    .param p4, "serverProc"    # Ljava/lang/String;
    .param p5, "serverCurAdj"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "clientPkgList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "serverPkgList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method public smartTrimAddProcessRelation_HwSysM(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/AppBindRecord;)V
    .locals 0
    .param p1, "server"    # Lcom/android/server/am/AppBindRecord;
    .param p2, "client"    # Lcom/android/server/am/AppBindRecord;

    .prologue
    .line 44
    return-void
.end method

.method public smartTrimAddProcessRelation_HwSysM(Lcom/android/server/am/ContentProviderConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;

    .prologue
    .line 40
    return-void
.end method

.method protected startPushService()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public startupFilterReceiverList(Landroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

.method protected thirdPartyAppBroadcastQueueForIntent(Landroid/content/Intent;)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public topAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected unregisterCtrlSocketForMm(Ljava/lang/String;)V
    .locals 0
    .param p1, "processname"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

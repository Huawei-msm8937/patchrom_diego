.class Lcom/android/server/SystemServer$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Lcom/android/server/audio/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$multiWinServiceF:Landroid/os/IMultiWinService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sec_immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Landroid/os/IMultiWinService;)V
    .locals 1

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$3;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/SystemServer$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/SystemServer$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$3;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    iput-object p9, p0, Lcom/android/server/SystemServer$3;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p10, p0, Lcom/android/server/SystemServer$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$3;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$3;->val$sec_immF:Lcom/android/server/InputMethodManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$3;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/SystemServer$3;->val$multiWinServiceF:Landroid/os/IMultiWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1556
    const-string v3, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x226

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1561
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :goto_0
    const-string v3, "SystemServer"

    const-string v4, "WebViewFactory preparation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 1571
    :try_start_1
    const-string v3, "SystemServer"

    const-string v4, "FingerprintService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    iget-object v3, v3, Lcom/android/server/SystemServer;->fingerprintStartThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 1579
    const-string v3, "SystemServer"

    const-string v4, "AuthenticationService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.securitymgr.AuthenticationService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v0, "authIntent":Landroid/content/Intent;
    const-string v3, "com.huawei.securitymgr"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1584
    const-string v3, "SystemServer"

    const-string v4, "fingerprint and securityMgr service start success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1590
    .end local v0    # "authIntent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1595
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1600
    :cond_0
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1605
    :cond_1
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1610
    :cond_2
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1615
    :cond_3
    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1620
    :cond_4
    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1626
    :cond_5
    :goto_8
    # getter for: Lcom/android/server/SystemServer;->IS_FPGA:Z
    invoke-static {}, Lcom/android/server/SystemServer;->access$300()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1627
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->start()V

    .line 1632
    :cond_6
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1636
    :try_start_9
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1641
    :cond_7
    :goto_9
    :try_start_a
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer$3;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1648
    :cond_8
    :goto_a
    :try_start_b
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$sec_immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$sec_immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer$3;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1654
    :cond_9
    :goto_b
    :try_start_c
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1659
    :cond_a
    :goto_c
    :try_start_d
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v3}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1664
    :cond_b
    :goto_d
    :try_start_e
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1669
    :cond_c
    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v3, :cond_d

    .line 1670
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v3}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1676
    :cond_d
    :goto_f
    :try_start_10
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v3, :cond_e

    .line 1677
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1682
    :cond_e
    :goto_10
    :try_start_11
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1688
    :cond_f
    :goto_11
    :try_start_12
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1693
    :cond_10
    :goto_12
    :try_start_13
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1698
    :cond_11
    :goto_13
    :try_start_14
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1703
    :cond_12
    :goto_14
    const-string v3, "true"

    const-string v4, "ro.poweroff_alarm"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1704
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    iget-object v4, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/SystemServer;->setAirplaneMode(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/server/SystemServer;->access$400(Lcom/android/server/SystemServer;Landroid/content/Context;)V

    .line 1708
    :cond_13
    :try_start_15
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v3}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1714
    :cond_14
    :goto_15
    sget-boolean v3, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    if-eqz v3, :cond_15

    .line 1716
    :try_start_16
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$multiWinServiceF:Landroid/os/IMultiWinService;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$multiWinServiceF:Landroid/os/IMultiWinService;

    invoke-interface {v3}, Landroid/os/IMultiWinService;->systemRunning()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1725
    :cond_15
    :goto_16
    :try_start_17
    const-string v3, "true"

    const-string v4, "ro.config.multi_task_enable"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1726
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getMultiTaskManagerService()Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;

    move-result-object v2

    .line 1727
    .local v2, "multiTaskManager":Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;
    const-string v3, "multi_task"

    iget-object v4, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;->getInstance(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1736
    .end local v2    # "multiTaskManager":Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;
    :goto_17
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/HwServiceFactory;->addHwFmService(Landroid/content/Context;)V

    .line 1738
    return-void

    .line 1562
    :catch_0
    move-exception v1

    .line 1563
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1585
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1586
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    const-string v4, "can\'t start fingerprint or securityMgr service"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1591
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1596
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 1597
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1601
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 1602
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1606
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 1607
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1611
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v1

    .line 1612
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1616
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .line 1617
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1621
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v1

    .line 1622
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1637
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v1

    .line 1638
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1642
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v1

    .line 1643
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1649
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v1

    .line 1650
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying SecureInputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1655
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v1

    .line 1656
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1660
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v1

    .line 1661
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1665
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v1

    .line 1666
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1672
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v1

    .line 1673
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1678
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 1679
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1683
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v1

    .line 1684
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1689
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v1

    .line 1690
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1694
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v1

    .line 1695
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1699
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v1

    .line 1700
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1709
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v1

    .line 1710
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MmsService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1717
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v1

    .line 1718
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MultiWindowService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1729
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_16
    :try_start_18
    const-string v3, "SystemServer"

    const-string v4, "can not start multitask because the prop is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_17

    goto/16 :goto_17

    .line 1731
    :catch_17
    move-exception v1

    .line 1732
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "starting MultiTaskManagerService"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17
.end method

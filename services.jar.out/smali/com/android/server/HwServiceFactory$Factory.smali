.class public interface abstract Lcom/android/server/HwServiceFactory$Factory;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract activePlaceFile()V
.end method

.method public abstract addHwFmService(Landroid/content/Context;)V
.end method

.method public abstract clearWipeDataFactory(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public abstract clearWipeDataFactoryLowlevel(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public abstract createActivityRecord(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)Lcom/android/server/am/ActivityRecord;
.end method

.method public abstract createActivityStack(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayContent;
.end method

.method public abstract createHwAppTransition(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wm/AppTransition;
.end method

.method public abstract createHwGpsLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)Lcom/android/server/location/GpsLocationProvider;
.end method

.method public abstract createHwStatusBarManagerService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/statusbar/StatusBarManagerService;
.end method

.method public abstract createHwSyncManager(Landroid/content/Context;Z)Lcom/android/server/content/SyncManager;
.end method

.method public abstract createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)Lcom/android/server/am/TaskRecord;
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
.end method

.method public abstract createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
.end method

.method public abstract createTaskRecord(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
.end method

.method public abstract createTaskStack(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/TaskStack;
.end method

.method public abstract geocoderProxyCreateAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;
.end method

.method public abstract getCoverManagerService()Lcom/android/server/HwServiceFactory$ICoverManagerService;
.end method

.method public abstract getDeviceStorageMonitorServiceClassName()Ljava/lang/String;
.end method

.method public abstract getHuaweiAutomaticBrightnessController()Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;
.end method

.method public abstract getHuaweiLockSettingsService()Lcom/android/server/HwServiceFactory$IHwLockSettingsService;
.end method

.method public abstract getHuaweiMediaSessionStack()Lcom/android/server/HwServiceFactory$IHwMediaSessionStack;
.end method

.method public abstract getHuaweiPackageManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;
.end method

.method public abstract getHuaweiWallpaperManagerService()Lcom/android/server/HwServiceFactory$IHwWallpaperManagerService;
.end method

.method public abstract getHuaweiWindowManagerService()Lcom/android/server/HwServiceFactory$IHwWindowManagerService;
.end method

.method public abstract getHuaweiWindowStateAnimator()Lcom/android/server/HwServiceFactory$IHwWindowStateAnimator;
.end method

.method public abstract getHwActiveServices()Lcom/android/server/HwServiceFactory$IHwActiveServices;
.end method

.method public abstract getHwActivityManagerService()Lcom/android/server/HwServiceFactory$IHwActivityManagerService;
.end method

.method public abstract getHwActivityStackSupervisor()Lcom/android/server/HwServiceFactory$IHwActivityStackSupervisor;
.end method

.method public abstract getHwAppOpsService()Lcom/android/server/HwServiceFactory$IHwAppOpsService;
.end method

.method public abstract getHwAppTransitionImpl()Lcom/android/server/wm/IHwAppTransition;
.end method

.method public abstract getHwAttestationService()Lcom/android/server/HwServiceFactory$IHwAttestationServiceFactory;
.end method

.method public abstract getHwAudioService()Lcom/android/server/HwServiceFactory$IHwAudioService;
.end method

.method public abstract getHwBluetoothBigDataService()Lcom/android/server/HwServiceFactory$IHwBluetoothBigDataService;
.end method

.method public abstract getHwCmccGpsFeature(Landroid/content/Context;Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/IHwCmccGpsFeature;
.end method

.method public abstract getHwConnectivityManager()Lcom/android/server/HwConnectivityManager;
.end method

.method public abstract getHwDefaultPermissionGrantPolicy(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.end method

.method public abstract getHwDrmDialogService()Lcom/android/server/HwServiceFactory$IHwDrmDialogService;
.end method

.method public abstract getHwFingerprintService()Lcom/android/server/HwServiceFactory$IHwFingerprintService;
.end method

.method public abstract getHwGpsActionReporter(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwGpsActionReporter;
.end method

.method public abstract getHwGpsLocationCustFeature()Lcom/android/server/location/IHwGpsLocationCustFeature;
.end method

.method public abstract getHwGpsLocationManager(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLocationManager;
.end method

.method public abstract getHwGpsLogServices(Landroid/content/Context;)Lcom/android/server/location/IHwGpsLogServices;
.end method

.method public abstract getHwGpsXtraDownloadReceiver()Lcom/android/server/location/IHwGpsXtraDownloadReceiver;
.end method

.method public abstract getHwInputManagerService()Lcom/android/server/input/IHwInputManagerService;
.end method

.method public abstract getHwInputMethodManagerService()Lcom/android/server/HwServiceFactory$IHwInputMethodManagerService;
.end method

.method public abstract getHwInputMonitor()Lcom/android/server/wm/IHwInputMonitor;
.end method

.method public abstract getHwLocalLocationProvider(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/location/IHwLocalLocationProvider;
.end method

.method public abstract getHwLocationManagerService()Lcom/android/server/HwServiceFactory$IHwLocationManagerService;
.end method

.method public abstract getHwMultiWinService()Lcom/android/server/HwServiceFactory$IHwMultiWinService;
.end method

.method public abstract getHwNLPManager()Lcom/android/server/HwNLPManager;
.end method

.method public abstract getHwNativeDaemonConnector()Lcom/android/server/HwNativeDaemonConnector;
.end method

.method public abstract getHwNetworkManagermentService()Lcom/android/server/HwServiceFactory$IHwNetworkManagermentService;
.end method

.method public abstract getHwNormalizedRampAnimator()Lcom/android/server/HwServiceFactory$IHwRampAnimator;
.end method

.method public abstract getHwNotificationManagerService()Lcom/android/server/HwServiceFactory$IHwNotificationManagerService;
.end method

.method public abstract getHwNotificationTethering(Landroid/content/Context;)Lcom/android/server/connectivity/HwNotificationTethering;
.end method

.method public abstract getHwPackageServiceManager()Lcom/android/server/pm/HwPackageServiceManager;
.end method

.method public abstract getHwPowerInfoService()Lcom/android/server/am/IHwPowerInfoService;
.end method

.method public abstract getHwPowerManagerService()Lcom/android/server/HwServiceFactory$IHwPowerManagerService;
.end method

.method public abstract getHwSecureInputMethodManagerServices()Lcom/android/server/HwServiceFactory$IHwSecureInputMethodManagerService;
.end method

.method public abstract getHwShutdownThreadImpl()Lcom/android/server/power/IHwShutdownThread;
.end method

.method public abstract getHwSmartBackLightController()Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
.end method

.method public abstract getHwTelephonyRegistry()Lcom/android/server/HwServiceFactory$IHwTelephonyRegistry;
.end method

.method public abstract getHwUsbHDBManager(Landroid/content/Context;)Lcom/android/server/usb/HwUsbHDBManager;
.end method

.method public abstract getHwUserManagerService()Lcom/android/server/HwServiceFactory$IHwUserManagerService;
.end method

.method public abstract getHwWindowState()Lcom/android/server/wm/IHwWindowState;
.end method

.method public abstract getHwZenModeFiltering()Lcom/android/server/HwServiceFactory$IHwZenModeFiltering;
.end method

.method public abstract getIHwBinderMonitor()Lcom/android/server/HwServiceFactory$IHwBinderMonitor;
.end method

.method public abstract getMtmBRManagerImpl(Lcom/android/server/am/HwBroadcastQueue;)Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;
.end method

.method public abstract getMultiTaskManagerService()Lcom/android/server/HwServiceFactory$IMultiTaskManagerServiceFactory;
.end method

.method public abstract getNewHwGpsLogService()Lcom/android/server/location/IHwGpsLogServices;
.end method

.method public abstract isCustedCouldStopped(Ljava/lang/String;ZZ)Z
.end method

.method public abstract isPrivAppInCust(Ljava/io/File;)Z
.end method

.method public abstract isPrivAppInData(Ljava/io/File;)Z
.end method

.method public abstract locationProviderProxyCreateAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
.end method

.method public abstract removeProtectAppInPrivacyMode(Landroid/accounts/AuthenticatorDescription;ZLandroid/content/Context;)Z
.end method

.method public abstract setAlarmService(Lcom/android/server/AlarmManagerService;)V
.end method

.method public abstract setIfCoverClosed(Z)V
.end method

.method public abstract setupHwServices(Landroid/content/Context;)V
.end method

.method public abstract shouldFilteInvalidSensorVal(F)Z
.end method

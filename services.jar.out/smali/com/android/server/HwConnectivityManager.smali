.class public interface abstract Lcom/android/server/HwConnectivityManager;
.super Ljava/lang/Object;
.source "HwConnectivityManager.java"


# virtual methods
.method public abstract captivePortalCheckCompleted(Landroid/content/Context;Z)V
.end method

.method public abstract checkDunExisted(Landroid/content/Context;)Z
.end method

.method public abstract createHwConnectivityService(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)Lcom/android/server/ConnectivityService;
.end method

.method public abstract createHwNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
.end method

.method public abstract getNetworkForTypeWifi()Landroid/net/Network;
.end method

.method public abstract getNetworkInfoForWifi()Landroid/net/NetworkInfo;
.end method

.method public abstract isP2pTether(Ljava/lang/String;)Z
.end method

.method public abstract setPushServicePowerNormalMode()V
.end method

.method public abstract setPushServicePowerSaveMode(Landroid/net/NetworkInfo;)Z
.end method

.method public abstract setTetheringProp(Lcom/android/server/connectivity/Tethering;ZZLjava/lang/String;)V
.end method

.method public abstract setUsbFunctionForTethering(Landroid/hardware/usb/UsbManager;)Z
.end method

.method public abstract startBrowserOnClickNotification(Landroid/content/Context;Ljava/lang/String;)V
.end method

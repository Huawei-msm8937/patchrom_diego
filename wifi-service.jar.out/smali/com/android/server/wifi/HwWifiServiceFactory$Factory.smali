.class public interface abstract Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
.super Ljava/lang/Object;
.source "HwWifiServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HwWifiServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract getHwSupplicantHeartBeat(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwSupplicantHeartBeat;
.end method

.method public abstract getHwWifiCHRConst()Lcom/android/server/wifi/HwWifiCHRConst;
.end method

.method public abstract getHwWifiCHRService()Lcom/android/server/wifi/HwWifiCHRService;
.end method

.method public abstract getHwWifiCHRStateManager()Lcom/android/server/wifi/HwWifiCHRStateManager;
.end method

.method public abstract getHwWifiMonitor()Lcom/android/server/wifi/HwWifiMonitor;
.end method

.method public abstract getHwWifiServiceManager()Lcom/android/server/wifi/HwWifiServiceManager;
.end method

.method public abstract getHwWifiStatStore()Lcom/android/server/wifi/HwWifiStatStore;
.end method

.method public abstract getIsmCoexWifiStateTrack(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwIsmCoexWifiStateTrack;
.end method

.method public abstract initWifiCHRService(Landroid/content/Context;)V
.end method

.class public interface abstract Lcom/android/server/wifi/HwWifiServiceManager;
.super Ljava/lang/Object;
.source "HwWifiServiceManager.java"


# virtual methods
.method public abstract autoConnectByMode(Landroid/os/Message;)Z
.end method

.method public abstract createHwArpVerifier(Landroid/content/Context;)V
.end method

.method public abstract createHwWifiAutoJoinController(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiAutoJoinController;
.end method

.method public abstract createHwWifiConfigStore(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiConfigStore;
.end method

.method public abstract createHwWifiController(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)Lcom/android/server/wifi/WifiController;
.end method

.method public abstract createHwWifiP2pService(Landroid/content/Context;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end method

.method public abstract createHwWifiService(Landroid/content/Context;)Lcom/android/server/wifi/WifiServiceImpl;
.end method

.method public abstract createHwWifiStateMachine(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiStateMachine;
.end method

.method public abstract custApConfiguration(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Z
.end method

.method public abstract getAppendSsidWithRandomUuid(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getCustWifiApDefaultName(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

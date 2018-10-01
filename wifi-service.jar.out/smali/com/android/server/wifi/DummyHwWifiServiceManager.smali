.class public Lcom/android/server/wifi/DummyHwWifiServiceManager;
.super Ljava/lang/Object;
.source "DummyHwWifiServiceManager.java"

# interfaces
.implements Lcom/android/server/wifi/HwWifiServiceManager;


# static fields
.field private static mInstance:Lcom/android/server/wifi/HwWifiServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/server/wifi/DummyHwWifiServiceManager;

    invoke-direct {v0}, Lcom/android/server/wifi/DummyHwWifiServiceManager;-><init>()V

    sput-object v0, Lcom/android/server/wifi/DummyHwWifiServiceManager;->mInstance:Lcom/android/server/wifi/HwWifiServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/server/wifi/HwWifiServiceManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/server/wifi/DummyHwWifiServiceManager;->mInstance:Lcom/android/server/wifi/HwWifiServiceManager;

    return-object v0
.end method


# virtual methods
.method public autoConnectByMode(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public createHwArpVerifier(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    return-void
.end method

.method public createHwWifiAutoJoinController(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiAutoJoinController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "stat"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHwWifiConfigStore(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHwWifiController(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 27
    new-instance v0, Lcom/android/server/wifi/WifiController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    return-object v0
.end method

.method public createHwWifiP2pService(Landroid/content/Context;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHwWifiService(Landroid/content/Context;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createHwWifiStateMachine(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;
    .param p3, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public custApConfiguration(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Z
    .locals 1
    .param p1, "s"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getAppendSsidWithRandomUuid(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustWifiApDefaultName(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

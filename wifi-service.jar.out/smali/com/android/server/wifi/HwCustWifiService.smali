.class public Lcom/android/server/wifi/HwCustWifiService;
.super Ljava/lang/Object;
.source "HwCustWifiService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionForWifi(Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 36
    return-void
.end method

.method public getBroadcastResult(Lcom/android/server/wifi/WifiServiceImpl;Landroid/content/Intent;Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "object"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "mWifiController"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 29
    return-void
.end method

.method public initWifiServiceImpl(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    return-void
.end method

.method public isWifiApEnable(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

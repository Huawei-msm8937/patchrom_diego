.class public Lcom/android/server/wifi/HwCustWifiAutoJoinController;
.super Ljava/lang/Object;
.source "HwCustWifiAutoJoinController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptAutoJoinCust(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareWifiConfigurationsKeyMgt(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public isDeleteReenableAutoJoin()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiAutoJoinPriority()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

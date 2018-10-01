.class public abstract Lcom/android/server/wifi/AbsWifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "AbsWifiConfigStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttWifi(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isVariablesWapi(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public resetStaticIpConfig(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 26
    return-void
.end method

.method public setSupportWapiType()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public setWifiConfigurationWapi(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I

    .prologue
    .line 13
    return-void
.end method

.method public tryUseStaticIpForFastConnecting(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public updateWifiConfigByWifiPro(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 21
    return-void
.end method

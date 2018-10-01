.class public Lcom/android/server/wifi/WifiConfigStoreUtils;
.super Ljava/lang/Object;
.source "WifiConfigStoreUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAllNetworks(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 26
    return-void
.end method

.method public static disableNetwork(Lcom/android/server/wifi/WifiConfigStore;II)Z
    .locals 1
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method public static enableAllNetworks(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 20
    return-void
.end method

.method public static getConfiguredNetworks(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/List;
    .locals 1
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WifiConfigStore;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static ignoreEnableNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/net/wifi/wifipro/WifiProStatusUtils;->isWifiProEnabledViaXml(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->allowWifiConfigRecovery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "WifiConfigStoreUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreEnableNetwork, disable config network in supplicant which has no internet again explicitly, netid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v0}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAndEnableAllNetworks(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 29
    return-void
.end method

.method public static loadConfiguredNetworks(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p0, "store"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 23
    return-void
.end method

.class public interface abstract Lcom/android/server/wifi/HwWifiCHRService;
.super Ljava/lang/Object;
.source "HwWifiCHRService.java"


# virtual methods
.method public abstract assocRejectEvent(I)V
.end method

.method public abstract connectFromUser(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract connectFromUserByConfig(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract dhcpfailedEvent(I)V
.end method

.method public abstract disableNetwork(II)V
.end method

.method public abstract disableNetworkByNetworkId(I)V
.end method

.method public abstract enableNetworkByNetworkId(I)V
.end method

.method public abstract fillUserConnectModel(Lcom/huawei/device/connectivitychrlog/CSegEVENT_WIFI_USER_CONNECT;)V
.end method

.method public abstract forgetFromUser(I)V
.end method

.method public abstract getPersistedScanAlwaysAvailable()I
.end method

.method public abstract getProxyInfo()Ljava/lang/String;
.end method

.method public abstract getProxyStatus()I
.end method

.method public abstract getWIFINetworkAvailableNotificationON()I
.end method

.method public abstract getWIFIProStatus()I
.end method

.method public abstract getWIFISleepPolicy()I
.end method

.method public abstract getWIFITOPDP()I
.end method

.method public abstract handleSupplicantStateChange(Landroid/net/wifi/SupplicantState;)V
.end method

.method public abstract setRssi(I)V
.end method

.method public abstract updateConnectState(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract updateConnectStateByConfig(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract updateDhcpFailed()V
.end method

.method public abstract updateDhcpFailedState()V
.end method

.method public abstract updateOpenCloseStat(Z)V
.end method

.method public abstract updateTargetBssid(Ljava/lang/String;)V
.end method

.method public abstract updateWIFIConfiguraion(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract updateWIFIConfiguraionByConfig(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract updateWifiState(I)V
.end method

.method public abstract updateWifiTriggerState(Z)V
.end method

.class public abstract Lcom/android/server/wifi/HwWifiCHRStateManager;
.super Ljava/lang/Object;
.source "HwWifiCHRStateManager.java"


# static fields
.field public static final MAIN_IFACE:Ljava/lang/String; = "wlan0"

.field public static final SCAN_FAILED:I = 0xa

.field public static final TYPE_AP_VENDOR:Ljava/lang/String; = "0"

.field public static final WIFI_CHR_STR:Ljava/lang/String; = "CHR_EVENT"

.field public static final WIFI_STATE_PATH:Ljava/lang/String; = "/sys/devices/platform/bcmdhd_wlan.1/wifi_open_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract LinkPropertiesUpdate(Landroid/net/RouteInfo;)V
.end method

.method public abstract checkAppName(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)V
.end method

.method public abstract clearDisconnectData()V
.end method

.method public abstract getDhcpSerialNo()I
.end method

.method public abstract getScanResultByBssid(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
.end method

.method public abstract handleCHREvents(Ljava/lang/String;)V
.end method

.method public abstract handleIPv4SuccessException(Ljava/net/Inet4Address;)V
.end method

.method public abstract handleSupplicantException()V
.end method

.method public abstract resetWhenDisconnect()V
.end method

.method public abstract setCurrentMsgIface(Ljava/lang/String;)V
.end method

.method public abstract setLastNetIdFromUI(I)V
.end method

.method public abstract setLastNetIdFromUI(Landroid/net/wifi/WifiConfiguration;I)V
.end method

.method public abstract syncSetScanResultsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAP(ILandroid/net/wifi/SupplicantState;Ljava/lang/String;ILcom/android/server/wifi/WifiNative;)V
.end method

.method public abstract updateAPMAC(Ljava/lang/String;)V
.end method

.method public abstract updateAPSsid(Landroid/net/wifi/SupplicantState;Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract updateAPSsid(Ljava/lang/String;)V
.end method

.method public abstract updateAPSsidByEvent(Ljava/lang/String;)V
.end method

.method public abstract updateAccessWebException(II)V
.end method

.method public abstract updateApMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateApVendorInfo(Ljava/lang/String;)V
.end method

.method public abstract updateBSSID(Ljava/lang/String;)V
.end method

.method public abstract updateChannel(I)V
.end method

.method public abstract updateDNS(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDhcpSerialNo(I)V
.end method

.method public abstract updateGateWay(Ljava/lang/String;)V
.end method

.method public abstract updateLeaseIP(J)V
.end method

.method public abstract updateLinkSpeed(I)V
.end method

.method public abstract updateMultiGWCount(B)V
.end method

.method public abstract updateRSSI(I)V
.end method

.method public abstract updateSSID(Ljava/lang/String;)V
.end method

.method public abstract updateScreenState(Z)V
.end method

.method public abstract updateSpeedInfo(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract updateStaMAC(Ljava/lang/String;)V
.end method

.method public abstract updateStrucRoutes(Ljava/lang/String;)V
.end method

.method public abstract updateWifiDirverException(Ljava/lang/String;)V
.end method

.method public abstract updateWifiException(I)I
.end method

.method public abstract updateWifiException(ILjava/lang/String;)V
.end method

.method public abstract updateWifiExceptionByWifipro(ILjava/lang/String;)V
.end method

.method public abstract updateWifiIp(Ljava/lang/String;)V
.end method

.method public abstract uploadAssocRejectExc(I)V
.end method

.method public abstract uploadAssocRejectException(I)V
.end method

.method public abstract uploadAssocRejectException(Ljava/lang/String;)V
.end method

.method public abstract uploadConnectFailed()V
.end method

.method public abstract uploadConnectFailed(II)V
.end method

.method public abstract uploadDhcpException(II)V
.end method

.method public abstract uploadDhcpException(Ljava/lang/String;)V
.end method

.method public abstract uploadDisconnectExc(Ljava/lang/String;)V
.end method

.method public abstract uploadDisconnectException(Ljava/lang/String;)V
.end method

.method public abstract uploadFailureIfFailed(II)V
.end method

.method public abstract uploadTls12Stat(II)V
.end method

.method public abstract uploadUserConnectFailed(I)V
.end method

.method public abstract uploadWifiStat()V
.end method

.method public abstract waitForDhcpStopping(Ljava/lang/String;)V
.end method

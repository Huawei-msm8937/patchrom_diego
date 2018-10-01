.class public interface abstract Lcom/android/server/wifi/HwWifiStatStore;
.super Ljava/lang/Object;
.source "HwWifiStatStore.java"


# static fields
.field public static final HW_DHCP_FAIL:I = 0x4

.field public static final HW_DHCP_RENEW_FAIL:I = 0x5

.field public static final HW_DHCP_RENEW_SUCC:I = 0x3

.field public static final HW_DHCP_START:I = 0x0

.field public static final HW_DHCP_STATIC_FAIL:I = 0x8

.field public static final HW_DHCP_STATIC_SUCC:I = 0x10

.field public static final HW_DHCP_STOP:I = 0x1

.field public static final HW_DHCP_SUCC:I = 0x2


# virtual methods
.method public abstract getWifiStatModel(Ljava/util/Date;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleSupplicantStateChange(Landroid/net/wifi/SupplicantState;)V
.end method

.method public abstract handleWiFiDnsStats(I)V
.end method

.method public abstract incrAccessWebRecord(IZZ)V
.end method

.method public abstract incrWebSpeedStatus(II)V
.end method

.method public abstract readWifiCHRStat()V
.end method

.method public abstract setAPSSID(Ljava/lang/String;)V
.end method

.method public abstract setAbDisconnectFlg(Ljava/lang/String;)V
.end method

.method public abstract setApVendorInfo(Ljava/lang/String;)V
.end method

.method public abstract setApencInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMultiGWCount(B)V
.end method

.method public abstract updateConnectState(Z)V
.end method

.method public abstract updateDhcpState(I)V
.end method

.method public abstract updateScreenState(Z)V
.end method

.method public abstract updateUserType(Z)V
.end method

.method public abstract updateWifiState(I)V
.end method

.method public abstract updateWifiState(ZZ)V
.end method

.method public abstract updateWifiTriggerState(Z)V
.end method

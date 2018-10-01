.class public abstract Lcom/android/server/wifi/AbsWifiAutoJoinController;
.super Ljava/lang/Object;
.source "AbsWifiAutoJoinController.java"


# static fields
.field public static final HANDOVER_STATUS_CONNECT_AUTH_FAILED:I = -0x7

.field public static final HANDOVER_STATUS_CONNECT_REJECT_FAILED:I = -0x6

.field public static final HANDOVER_STATUS_DISALLOWED:I = -0x4

.field public static final HANDOVER_STATUS_IN_PROGRESS:I = -0x5

.field public static final HANDOVER_STATUS_NO_NETWORKS:I = -0x2

.field public static final HANDOVER_STATUS_NO_SCAN_RESULTS:I = -0x1

.field public static final HANDOVER_STATUS_OK:I = 0x0

.field public static final HANDOVER_STATUS_UNKNOWN_FAILURE:I = -0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupPoorRssiNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 27
    return-void
.end method

.method public candidateUpdatedByWifiPro(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 34
    return-object p1
.end method

.method public handleAutoJoinCompleted()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public isWifiProEnabled()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiSwitchOnGoing()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByBssid(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByInetAccess(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByInetAccessAndTry(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByPortal(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByStatus(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public networkIgnoredByWifiPro(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public resetBoostByNetworkQuality(I)I
    .locals 0
    .param p1, "oldBoost"    # I

    .prologue
    .line 24
    return p1
.end method

.method public resetLastSelectedConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "lastSelected"    # Ljava/lang/String;

    .prologue
    .line 25
    return-object p1
.end method

.method public resetWifiHandoverFilter()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public setWifiHandoverFilter(ILjava/util/ArrayList;IZ)V
    .locals 0
    .param p1, "threshold"    # I
    .param p3, "qosLevel"    # I
    .param p4, "handover"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiSwitchStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 26
    return-void
.end method

.method public updateNetworkDeltaInWifiPro(ILandroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 0
    .param p1, "delta"    # I
    .param p2, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "lastSelected"    # Ljava/lang/String;

    .prologue
    .line 35
    return p1
.end method

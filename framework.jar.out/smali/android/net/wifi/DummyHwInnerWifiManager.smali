.class public Landroid/net/wifi/DummyHwInnerWifiManager;
.super Ljava/lang/Object;
.source "DummyHwInnerWifiManager.java"

# interfaces
.implements Landroid/net/wifi/HwInnerWifiManager;


# static fields
.field private static mInstance:Landroid/net/wifi/HwInnerWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/net/wifi/DummyHwInnerWifiManager;

    invoke-direct {v0}, Landroid/net/wifi/DummyHwInnerWifiManager;-><init>()V

    sput-object v0, Landroid/net/wifi/DummyHwInnerWifiManager;->mInstance:Landroid/net/wifi/HwInnerWifiManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateSignalLevelHW(I)I
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 43
    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public getApLinkedStaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppendSsidWithRandomUuid(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public getChannelListFor5G()[I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefault()Landroid/net/wifi/HwInnerWifiManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/net/wifi/DummyHwInnerWifiManager;->mInstance:Landroid/net/wifi/HwInnerWifiManager;

    return-object v0
.end method

.method public getHwMeteredHint(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWpaSuppConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method

.method public setSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public setSoftapMacFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "macFilter"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public setWifiApEvaluateEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public setWifiEnterpriseConfigEapMethod(ILjava/util/HashMap;)Z
    .locals 1
    .param p1, "eapMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 65
    return-void
.end method

.method public stopPPPOE()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public userHandoverWifi()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

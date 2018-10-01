.class public interface abstract Landroid/net/wifi/HwInnerWifiManager;
.super Ljava/lang/Object;
.source "HwInnerWifiManager.java"


# virtual methods
.method public abstract calculateSignalLevelHW(I)I
.end method

.method public abstract getApLinkedStaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppendSsidWithRandomUuid(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getChannelListFor5G()[I
.end method

.method public abstract getHwMeteredHint(Landroid/content/Context;)Z
.end method

.method public abstract getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
.end method

.method public abstract getWpaSuppConfig()Ljava/lang/String;
.end method

.method public abstract setSoftapDisassociateSta(Ljava/lang/String;)V
.end method

.method public abstract setSoftapMacFilter(Ljava/lang/String;)V
.end method

.method public abstract setWifiApEvaluateEnabled(Z)V
.end method

.method public abstract setWifiEnterpriseConfigEapMethod(ILjava/util/HashMap;)Z
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
.end method

.method public abstract startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
.end method

.method public abstract stopPPPOE()V
.end method

.method public abstract userHandoverWifi()V
.end method

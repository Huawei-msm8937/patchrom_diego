.class public interface abstract Landroid/net/wifi/HwInnerNetworkManager;
.super Ljava/lang/Object;
.source "HwInnerNetworkManager.java"


# virtual methods
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

.method public abstract getWiFiDnsStats(I)Ljava/lang/String;
.end method

.method public abstract setAccessPointHw(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSoftapDisassociateSta(Ljava/lang/String;)V
.end method

.method public abstract setSoftapMacFilter(Ljava/lang/String;)V
.end method

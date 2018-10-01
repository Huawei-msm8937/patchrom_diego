.class public abstract Lcom/android/internal/telephony/dataconnection/AbsDctController;
.super Landroid/os/Handler;
.source "AbsDctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/AbsDctController$HwTelephonyNetworkFactory;,
        Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwDataConnectionManager()Lcom/android/internal/telephony/HwDataConnectionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwDataConnectionManager;->createHwDctControllerReference(Lcom/android/internal/telephony/dataconnection/AbsDctController;)Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    .line 59
    return-void
.end method


# virtual methods
.method public beforeHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->beforeHandleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public createHwTelephonyNetworkFactory(Lcom/android/internal/telephony/dataconnection/AbsDctController;Landroid/net/NetworkFactory;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)Lcom/android/internal/telephony/dataconnection/AbsDctController$HwTelephonyNetworkFactory;
    .locals 1
    .param p1, "dctController"    # Lcom/android/internal/telephony/dataconnection/AbsDctController;
    .param p2, "nf"    # Landroid/net/NetworkFactory;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->createHwTelephonyNetworkFactory(Lcom/android/internal/telephony/dataconnection/AbsDctController;Landroid/net/NetworkFactory;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)Lcom/android/internal/telephony/dataconnection/AbsDctController$HwTelephonyNetworkFactory;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->dispose()V

    .line 100
    return-void
.end method

.method public doPsAttach(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->doPsAttach(Landroid/net/NetworkRequest;)V

    .line 67
    return-void
.end method

.method public doPsDetach()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->doPsDetach()V

    .line 71
    return-void
.end method

.method public getTopPriorityRequestPhoneIdHw(ILjava/util/HashMap;I)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p3, "activePhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "requestInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->getTopPriorityRequestPhoneIdHw(ILjava/util/HashMap;I)I

    move-result v0

    return v0
.end method

.method protected initHw([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V
    .locals 1
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->initHw([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V

    .line 97
    return-void
.end method

.method public registerDdsSwitchPropService(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->registerDdsSwitchPropService(Landroid/os/Messenger;)V

    .line 92
    return-void
.end method

.method public registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public registerForOnDemandDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->registerForOnDemandDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public registerForOnDemandPsAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->registerForOnDemandPsAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public setDefaultDataSubId(I)V
    .locals 1
    .param p1, "reqSubId"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->setDefaultDataSubId(I)V

    .line 63
    return-void
.end method

.method public setOnDemandDataSubId(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->setOnDemandDataSubId(Landroid/net/NetworkRequest;)V

    .line 76
    return-void
.end method

.method public supportHwDualDataSwitch()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public update(I)V
    .locals 1
    .param p1, "currentDds"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbsDctController;->mReference:Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;->update(I)V

    .line 115
    return-void
.end method

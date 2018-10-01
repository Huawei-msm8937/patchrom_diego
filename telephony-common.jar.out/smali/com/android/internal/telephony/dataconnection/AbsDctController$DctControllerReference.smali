.class public interface abstract Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;
.super Ljava/lang/Object;
.source "AbsDctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AbsDctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DctControllerReference"
.end annotation


# virtual methods
.method public abstract beforeHandleMessage(Landroid/os/Message;)Z
.end method

.method public abstract createHwTelephonyNetworkFactory(Lcom/android/internal/telephony/dataconnection/AbsDctController;Landroid/net/NetworkFactory;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)Lcom/android/internal/telephony/dataconnection/AbsDctController$HwTelephonyNetworkFactory;
.end method

.method public abstract dispose()V
.end method

.method public abstract doPsAttach(Landroid/net/NetworkRequest;)V
.end method

.method public abstract doPsDetach()V
.end method

.method public abstract getTopPriorityRequestPhoneIdHw(ILjava/util/HashMap;I)I
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
.end method

.method public abstract initHw([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V
.end method

.method public abstract registerDdsSwitchPropService(Landroid/os/Messenger;)V
.end method

.method public abstract registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnDemandDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnDemandPsAttach(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setDefaultDataSubId(I)V
.end method

.method public abstract setOnDemandDataSubId(Landroid/net/NetworkRequest;)V
.end method

.method public abstract update(I)V
.end method

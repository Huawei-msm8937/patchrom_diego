.class public interface abstract Lcom/android/internal/telephony/dataconnection/AbsDctController$HwTelephonyNetworkFactory;
.super Ljava/lang/Object;
.source "AbsDctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AbsDctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwTelephonyNetworkFactory"
.end annotation


# virtual methods
.method public abstract addNonDdsInternetCap()V
.end method

.method public abstract evalPendingRequest()V
.end method

.method public abstract getFirstMMSRequest()Landroid/net/NetworkRequest;
.end method

.method public abstract getTopPriorityRequest()Landroid/net/NetworkRequest;
.end method

.method public abstract needNetworkFor(Landroid/net/NetworkRequest;I)V
.end method

.method public abstract releaseAllNetworkRequests()V
.end method

.method public abstract releaseNetworkFor(Landroid/net/NetworkRequest;)V
.end method

.method public abstract updateNetworkCapability()V
.end method

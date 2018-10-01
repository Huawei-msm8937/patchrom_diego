.class public Lcom/android/internal/telephony/uicc/AbstractUiccController;
.super Landroid/os/Handler;
.source "AbstractUiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwUiccControllerReference(Lcom/android/internal/telephony/uicc/AbstractUiccController;)Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    .line 14
    return-void
.end method


# virtual methods
.method public getCardType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->getCardType(I)I

    move-result v0

    return v0
.end method

.method public getUiccCardStatus(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->getUiccCardStatus(Landroid/os/Message;I)V

    .line 64
    return-void
.end method

.method public notifyFdnStatusChange()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->notifyFdnStatusChange()V

    .line 59
    return-void
.end method

.method public processRadioPowerDownIfNoCard([Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 1
    .param p1, "uiccCards"    # [Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->processRadioPowerDownIfNoCard([Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 41
    return-void
.end method

.method public registerForFdnStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->registerForFdnStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public unregisterForFdnStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccController;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;->unregisterForFdnStatusChange(Landroid/os/Handler;)V

    .line 55
    return-void
.end method

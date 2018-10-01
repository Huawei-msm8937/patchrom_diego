.class public abstract Lcom/android/internal/telephony/AbstractSubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "AbstractSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractSubscriptionController$OnDemandDdsLockNotifier;,
        Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwSubscriptionControllerReference(Lcom/android/internal/telephony/AbstractSubscriptionController;)Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    .line 45
    return-void
.end method


# virtual methods
.method public activateSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->activateSubId(I)V

    .line 71
    return-void
.end method

.method public deactivateSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->deactivateSubId(I)V

    .line 75
    return-void
.end method

.method public getCurrentDds()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getCurrentDds()I

    move-result v0

    return v0
.end method

.method public getDdsSwitchFlag()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getDdsSwitchFlag()Z

    move-result v0

    return v0
.end method

.method public getHwPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getHwPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getHwSlotId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getHwSlotId(I)I

    move-result v0

    return v0
.end method

.method public getHwSubId(I)[I
    .locals 1
    .param p1, "slotIdx"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getHwSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNwMode(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getNwMode(I)I

    move-result v0

    return v0
.end method

.method public getOnDemandDataSubId()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getOnDemandDataSubId()I

    move-result v0

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/AbstractSubscriptionController;->getOnDemandDataSubId()I

    move-result v0

    return v0
.end method

.method public getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method public getSubState(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->getSubState(I)I

    move-result v0

    return v0
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoicePromptEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->isVoicePromptEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyOnDemandDataSubIdChanged(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->notifyOnDemandDataSubIdChanged(Landroid/net/NetworkRequest;)V

    .line 131
    return-void
.end method

.method public registerForOnDemandDdsLockNotification(ILcom/android/internal/telephony/AbstractSubscriptionController$OnDemandDdsLockNotifier;)V
    .locals 1
    .param p1, "clientSubId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/AbstractSubscriptionController$OnDemandDdsLockNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->registerForOnDemandDdsLockNotification(ILcom/android/internal/telephony/AbstractSubscriptionController$OnDemandDdsLockNotifier;)V

    .line 127
    return-void
.end method

.method public setDataSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setDataSubId(I)V

    .line 119
    return-void
.end method

.method public setDdsSwitchFlag(Z)V
    .locals 1
    .param p1, "DdsSwitch"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setDdsSwitchFlag(Z)V

    .line 162
    return-void
.end method

.method public setDefaultDataSubIdHw(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setDefaultDataSubIdHw(I)V

    .line 139
    return-void
.end method

.method public setNwMode(II)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setNwMode(II)V

    .line 79
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setSMSPromptEnabled(Z)V

    .line 67
    return-void
.end method

.method public setSubState(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "subStatus"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setSubState(II)I

    move-result v0

    return v0
.end method

.method public setVoicePromptEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->setVoicePromptEnabled(Z)V

    .line 103
    return-void
.end method

.method public startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 107
    return-void
.end method

.method public stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 111
    return-void
.end method

.method public supportHwDualDataSwitch()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->supportHwDualDataSwitch()Z

    move-result v0

    return v0
.end method

.method public updateCurrentDds(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionController;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 152
    return-void
.end method

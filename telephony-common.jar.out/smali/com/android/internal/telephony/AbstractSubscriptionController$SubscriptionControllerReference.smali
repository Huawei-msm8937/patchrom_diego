.class public interface abstract Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;
.super Ljava/lang/Object;
.source "AbstractSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscriptionControllerReference"
.end annotation


# virtual methods
.method public abstract activateSubId(I)V
.end method

.method public abstract deactivateSubId(I)V
.end method

.method public abstract getCurrentDds()I
.end method

.method public abstract getDdsSwitchFlag()Z
.end method

.method public abstract getHwPhoneId(I)I
.end method

.method public abstract getHwSlotId(I)I
.end method

.method public abstract getHwSubId(I)[I
.end method

.method public abstract getNwMode(I)I
.end method

.method public abstract getOnDemandDataSubId()I
.end method

.method public abstract getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I
.end method

.method public abstract getSubState(I)I
.end method

.method public abstract isSMSPromptEnabled()Z
.end method

.method public abstract isVoicePromptEnabled()Z
.end method

.method public abstract notifyOnDemandDataSubIdChanged(Landroid/net/NetworkRequest;)V
.end method

.method public abstract registerForOnDemandDdsLockNotification(ILcom/android/internal/telephony/AbstractSubscriptionController$OnDemandDdsLockNotifier;)V
.end method

.method public abstract setDataSubId(I)V
.end method

.method public abstract setDdsSwitchFlag(Z)V
.end method

.method public abstract setDefaultDataSubIdHw(I)V
.end method

.method public abstract setNwMode(II)V
.end method

.method public abstract setSMSPromptEnabled(Z)V
.end method

.method public abstract setSubState(II)I
.end method

.method public abstract setVoicePromptEnabled(Z)V
.end method

.method public abstract startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
.end method

.method public abstract stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
.end method

.method public abstract supportHwDualDataSwitch()Z
.end method

.method public abstract updateCurrentDds(Landroid/net/NetworkRequest;)V
.end method

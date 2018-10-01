.class public interface abstract Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;
.super Ljava/lang/Object;
.source "AbstractSubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscriptionInfoUpdaterReference"
.end annotation


# virtual methods
.method public abstract broadcastSubinfoRecordUpdated([Ljava/lang/String;[Ljava/lang/String;III)V
.end method

.method public abstract handleMessageExtend(Landroid/os/Message;)V
.end method

.method public abstract queryIccId(I)V
.end method

.method public abstract resetIccid(I)V
.end method

.method public abstract setNeedUpdateIfNeed(ILjava/lang/String;)V
.end method

.method public abstract subscriptionInfoInit(Landroid/os/Handler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract updateIccAvailability(I)V
.end method

.method public abstract updateSubActivation([IZ)V
.end method

.method public abstract updateSubIdForNV(I)V
.end method

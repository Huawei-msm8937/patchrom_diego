.class public interface abstract Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;
.super Ljava/lang/Object;
.source "AbstractCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallManagerReference"
.end annotation


# virtual methods
.method public abstract calllNotifierDisconnectNotify(Landroid/os/AsyncResult;)V
.end method

.method public abstract cmdForEncryptedCall(Lcom/android/internal/telephony/Phone;I[B)V
.end method

.method public abstract disconnectNotify(Landroid/os/Message;)V
.end method

.method public abstract getActiveSubscription()I
.end method

.method public abstract inCallScreenDisconnectNotify(Landroid/os/AsyncResult;)V
.end method

.method public abstract onSwitchToOtherActiveSub(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract registerForEncryptedCall(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract resultForKMCRemoteCmd(Lcom/android/internal/telephony/Phone;II)V
.end method

.method public abstract setActiveSubscription(I)V
.end method

.method public abstract setCallNotifierDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V
.end method

.method public abstract setConnEncryptCallByNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)V
.end method

.method public abstract setInCallScreenDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V
.end method

.method public abstract unregisterForEncryptedCall(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract unregisterForSubscriptionChange(Landroid/os/Handler;)V
.end method

.class public abstract Lcom/android/internal/telephony/AbstractCallManager;
.super Ljava/lang/Object;
.source "AbstractCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;,
        Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCallManagerReference(Lcom/android/internal/telephony/AbstractCallManager;)Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    .line 37
    return-void
.end method


# virtual methods
.method public calllNotifierDisconnectNotify(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->calllNotifierDisconnectNotify(Landroid/os/AsyncResult;)V

    .line 77
    return-void
.end method

.method public cmdForEncryptedCall(Lcom/android/internal/telephony/Phone;I[B)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # I
    .param p3, "reqData"    # [B

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->cmdForEncryptedCall(Lcom/android/internal/telephony/Phone;I[B)V

    .line 119
    return-void
.end method

.method public disconnectNotify(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->disconnectNotify(Landroid/os/Message;)V

    .line 81
    return-void
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->getActiveSubscription()I

    move-result v0

    return v0
.end method

.method public inCallScreenDisconnectNotify(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->inCallScreenDisconnectNotify(Landroid/os/AsyncResult;)V

    .line 73
    return-void
.end method

.method public onSwitchToOtherActiveSub(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "currentPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->onSwitchToOtherActiveSub(Lcom/android/internal/telephony/Phone;)V

    .line 98
    return-void
.end method

.method public registerForEncryptedCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->registerForEncryptedCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method protected registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 92
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public resultForKMCRemoteCmd(Lcom/android/internal/telephony/Phone;II)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # I
    .param p3, "reqData"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->resultForKMCRemoteCmd(Lcom/android/internal/telephony/Phone;II)V

    .line 113
    return-void
.end method

.method public setActiveSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->setActiveSubscription(I)V

    .line 85
    return-void
.end method

.method public setCallNotifierDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->setCallNotifierDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V

    .line 69
    return-void
.end method

.method public setConnEncryptCallByNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "val"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->setConnEncryptCallByNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public setInCallScreenDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->setInCallScreenDisconnectCallback(Lcom/android/internal/telephony/AbstractCallManager$disconnectCallback;)V

    .line 65
    return-void
.end method

.method public unregisterForEncryptedCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->unregisterForEncryptedCall(Landroid/os/Handler;)V

    .line 125
    return-void
.end method

.method protected unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 95
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractCallManager;->mReference:Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;->unregisterForSubscriptionChange(Landroid/os/Handler;)V

    .line 107
    return-void
.end method

.class public abstract Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "AbstractCDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbstractCDMAPhone"


# instance fields
.field mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 68
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCDMAPhoneReference(Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;)Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCDMAPhoneReference(Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;)Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCDMAPhoneReference(Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;)Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    .line 101
    return-void
.end method


# virtual methods
.method public afterHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->afterHandleMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method public beforeHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->beforeHandleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public closeRrc()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->closeRrc()V

    .line 130
    return-void
.end method

.method public getLteReleaseVersion()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->getLteReleaseVersion()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->getPesn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCTSimCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->isCTSimCard(I)Z

    move-result v0

    return v0
.end method

.method public isChinaTelecom(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->isChinaTelecom(I)Z

    move-result v0

    return v0
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public riseCdmaCutoffFreq(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->riseCdmaCutoffFreq(Z)V

    .line 135
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->isChinaTelecom(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "AbstractCDMAPhone"

    const-string v1, "selectNetworkManually: It can run in ChinaTelecom"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->setLTEReleaseVersion(ZLandroid/os/Message;)V

    .line 147
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->isChinaTelecom(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "AbstractCDMAPhone"

    const-string v1, "setNetworkSelectionModeAutomatic: It can run in ChinaTelecom"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->switchVoiceCallBackgroundState(I)V

    .line 141
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;->mReference:Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 125
    return-void
.end method

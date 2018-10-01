.class public Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;
.super Landroid/os/Handler;
.source "AbstractIccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;
    }
.end annotation


# instance fields
.field protected IS_CHINA_TELECOM:Z

.field mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwIccCardProxyReference(Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;)Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    .line 21
    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->IS_CHINA_TELECOM:Z

    .line 23
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public custRegisterForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->custRegisterForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public custResetExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "s"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->custResetExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 190
    return-void
.end method

.method public custSetExternalState(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)V
    .locals 1
    .param p1, "ps"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->custSetExternalState(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)V

    .line 99
    return-void
.end method

.method public custUnregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->custUnregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 119
    return-void
.end method

.method public custUpdateExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "s"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->custUpdateExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 169
    return-void
.end method

.method public getIccCardStateHW()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->getIccCardStateHW()Z

    move-result v0

    return v0
.end method

.method public getTwoSimNwUnlockStatus(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->getTwoSimNwUnlockStatus(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method protected getUiccIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->getUiccIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleCustMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->handleCustMessage(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public handleMessageExtend(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->handleMessageExtend(Landroid/os/Message;)V

    .line 74
    return-void
.end method

.method public isSimAbsent(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "radioOn"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->isSimAbsent(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    move-result v0

    return v0
.end method

.method protected processCurrentAppType(Lcom/android/internal/telephony/uicc/UiccCard;II)I
    .locals 1
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "defaultValue"    # I
    .param p3, "cardIndex"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->processCurrentAppType(Lcom/android/internal/telephony/uicc/UiccCard;II)I

    move-result v0

    return v0
.end method

.method public processSimLockStateForCT()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->processSimLockStateForCT()V

    .line 185
    return-void
.end method

.method protected queryFdn()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->queryFdn()V

    .line 156
    return-void
.end method

.method protected registerForFdnStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->registerForFdnStatusChange(Landroid/os/Handler;)V

    .line 142
    return-void
.end method

.method public registerUiccCardEventsExtend()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->registerUiccCardEventsExtend()V

    .line 89
    return-void
.end method

.method public resetSimNwLockRetryCount(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->resetSimNwLockRetryCount(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method protected setUiccApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1
    .param p1, "uiccCardApplication"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->setUiccApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 138
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 102
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin1"    # Ljava/lang/String;
    .param p2, "pin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method protected unregisterForFdnStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->unregisterForFdnStatusChange(Landroid/os/Handler;)V

    .line 149
    return-void
.end method

.method public unregisterUiccCardEventsExtend()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->unregisterUiccCardEventsExtend()V

    .line 93
    return-void
.end method

.method protected updateExternalStateDeactived()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;->updateExternalStateDeactived()Z

    move-result v0

    return v0
.end method

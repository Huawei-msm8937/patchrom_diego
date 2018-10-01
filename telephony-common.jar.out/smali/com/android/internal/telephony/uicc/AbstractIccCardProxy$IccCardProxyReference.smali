.class public interface abstract Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;
.super Ljava/lang/Object;
.source "AbstractIccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IccCardProxyReference"
.end annotation


# virtual methods
.method public abstract custRegisterForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract custResetExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
.end method

.method public abstract custSetExternalState(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)V
.end method

.method public abstract custUnregisterForNetworkLocked(Landroid/os/Handler;)V
.end method

.method public abstract custUpdateExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
.end method

.method public abstract getIccCardStateHW()Z
.end method

.method public abstract getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
.end method

.method public abstract getTwoSimNwUnlockStatus(Landroid/os/Message;)V
.end method

.method public abstract getUiccIndex(Landroid/os/Message;)Ljava/lang/Integer;
.end method

.method public abstract handleCustMessage(Landroid/os/Message;)V
.end method

.method public abstract handleMessageExtend(Landroid/os/Message;)V
.end method

.method public abstract isSimAbsent(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
.end method

.method public abstract processCurrentAppType(Lcom/android/internal/telephony/uicc/UiccCard;II)I
.end method

.method public abstract processSimLockStateForCT()V
.end method

.method public abstract queryFdn()V
.end method

.method public abstract registerForFdnStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract registerUiccCardEventsExtend()V
.end method

.method public abstract resetSimNwLockRetryCount(Landroid/os/Message;)V
.end method

.method public abstract setUiccApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForFdnStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterUiccCardEventsExtend()V
.end method

.method public abstract updateExternalStateDeactived()Z
.end method

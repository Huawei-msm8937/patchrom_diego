.class public interface abstract Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;
.super Ljava/lang/Object;
.source "AbstractGSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/AbstractGSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GSMPhoneReference"
.end annotation


# virtual methods
.method public abstract afterHandleMessage(Landroid/os/Message;)V
.end method

.method public abstract beforeHandleMessage(Landroid/os/Message;)Z
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeRrc()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getCustAvailableNetworksMessage(Landroid/os/Message;)Landroid/os/Message;
.end method

.method public abstract getDefaultVoiceMailAlphaTagText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHwCdmaEsn()Ljava/lang/String;
.end method

.method public abstract getHwCdmaPrlVersion()Ljava/lang/String;
.end method

.method public abstract getImsSwitch()Z
.end method

.method public abstract getLteReleaseVersion()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getPesn()Ljava/lang/String;
.end method

.method public abstract getPreferedOperatorList(Landroid/os/Message;)V
.end method

.method public abstract getVMNumberWhenIMSIChange()Ljava/lang/String;
.end method

.method public abstract globalEccCustom(Ljava/lang/String;)V
.end method

.method public abstract isCTSimCard(I)Z
.end method

.method public abstract isMmiCode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
.end method

.method public abstract isSupportCFT()Z
.end method

.method public abstract launchOrCancelCsgPeriodicSearchTimer()V
.end method

.method public abstract processEccNunmber(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
.end method

.method public abstract processPlusSymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerForCsgRecordsLoadedEvent()V
.end method

.method public abstract selectCsgNetworkManually(Landroid/os/Message;)V
.end method

.method public abstract setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setISMCOEX(Ljava/lang/String;)Z
.end method

.method public abstract setImsSwitch(Z)V
.end method

.method public abstract setLTEReleaseVersion(ZLandroid/os/Message;)V
.end method

.method public abstract setMeid(Ljava/lang/String;)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract switchVoiceCallBackgroundState(I)V
.end method

.method public abstract unregisterForCsgRecordsLoadedEvent()V
.end method

.method public abstract updateReduceSARState()V
.end method

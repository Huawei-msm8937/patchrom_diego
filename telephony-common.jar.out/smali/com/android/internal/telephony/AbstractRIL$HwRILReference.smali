.class public interface abstract Lcom/android/internal/telephony/AbstractRIL$HwRILReference;
.super Ljava/lang/Object;
.source "AbstractRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwRILReference"
.end annotation


# virtual methods
.method public abstract correctApnAuth(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dataConnectionAttach(ILandroid/os/Message;)V
.end method

.method public abstract dataConnectionDetach(ILandroid/os/Message;)V
.end method

.method public abstract getCdmaChrInfo(Landroid/os/Message;)V
.end method

.method public abstract getCdmaGsmImsi(Landroid/os/Message;)V
.end method

.method public abstract getCdmaModeSide(Landroid/os/Message;)V
.end method

.method public abstract getCurrentPOLList(Landroid/os/Message;)V
.end method

.method public abstract getHwRatCombineMode(Landroid/os/Message;)V
.end method

.method public abstract getImsSwitch()Z
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getTwoSimNwUnlockStatus(Landroid/os/Message;)V
.end method

.method public abstract handleRequestGetImsiMessage(Lcom/android/internal/telephony/RILRequest;Ljava/lang/Object;Landroid/content/Context;)V
.end method

.method public abstract handleUnsolicitedDefaultMessage(ILjava/lang/Object;Landroid/content/Context;)V
.end method

.method public abstract handleUnsolicitedDefaultMessagePara(ILandroid/os/Parcel;)Ljava/lang/Object;
.end method

.method public abstract handleUnsolicitedRadioStateChanged(ZLandroid/content/Context;)V
.end method

.method public abstract iccCloseChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccGetATR(Landroid/os/Message;)V
.end method

.method public abstract iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract notifyAntOrMaxTxPowerInfo([B)V
.end method

.method public abstract notifyBandClassInfo([B)V
.end method

.method public abstract notifyCModemStatus(ILandroid/os/Message;)V
.end method

.method public abstract notifyIccUimLockRegistrants()V
.end method

.method public abstract processHWBufferUnsolicited([B)V
.end method

.method public abstract processSolicitedEx(ILandroid/os/Parcel;)Ljava/lang/Object;
.end method

.method public abstract queryEmergencyNumbers()V
.end method

.method public abstract registerForUimLockcard(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSarRegistrant(ILandroid/os/Message;)Z
.end method

.method public abstract requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetAllConnections()V
.end method

.method public abstract resetSimNwLockRetryCount(Landroid/os/Message;)V
.end method

.method public abstract restartRild(Landroid/os/Message;)V
.end method

.method public abstract riseCdmaCutoffFreq(ZLandroid/os/Message;)V
.end method

.method public abstract sendHWBufferSolicited(Landroid/os/Message;I[B)V
.end method

.method public abstract sendRILTimeoutBroadcast()V
.end method

.method public abstract sendRacChangeBroadcast([B)V
.end method

.method public abstract sendResponseToTarget(Landroid/os/Message;I)V
.end method

.method public abstract sendSMSSetLong(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaModeSide(ILandroid/os/Message;)V
.end method

.method public abstract setHwRFChannelSwitch(ILandroid/os/Message;)V
.end method

.method public abstract setHwRILReferenceInstanceId(I)V
.end method

.method public abstract setHwRatCombineMode(ILandroid/os/Message;)V
.end method

.method public abstract setImsSwitch(Z)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setPowerGrade(ILandroid/os/Message;)V
.end method

.method public abstract setShouldReportRoamingPlusInfo(Z)V
.end method

.method public abstract setVpMask(ILandroid/os/Message;)V
.end method

.method public abstract setWifiTxPowerGrade(ILandroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract testVoiceLoopBack(I)V
.end method

.method public abstract unregisterForUimLockcard(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSarRegistrant(ILandroid/os/Message;)Z
.end method

.method public abstract writeContent(Lcom/android/internal/telephony/RILRequestReference;Ljava/lang/String;)V
.end method

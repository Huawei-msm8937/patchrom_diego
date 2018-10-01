.class public interface abstract Lcom/android/internal/telephony/AbstractCommandsInterface;
.super Ljava/lang/Object;
.source "AbstractCommandsInterface.java"


# virtual methods
.method public abstract clearTrafficData(Landroid/os/Message;)V
.end method

.method public abstract closeRrc()V
.end method

.method public abstract closeSwitchOfUploadAntOrMaxTxPower(I)Z
.end method

.method public abstract closeSwitchOfUploadBandClass(Landroid/os/Message;)V
.end method

.method public abstract cmdForECInfo(II[B)Z
.end method

.method public abstract dataConnectionAttach(ILandroid/os/Message;)V
.end method

.method public abstract dataConnectionDetach(ILandroid/os/Message;)V
.end method

.method public abstract fastSwitchBalongSim(IILandroid/os/Message;)V
.end method

.method public abstract getAvailableCSGNetworks([BLandroid/os/Message;)V
.end method

.method public abstract getBalongSim(Landroid/os/Message;)V
.end method

.method public abstract getCdmaChrInfo(Landroid/os/Message;)V
.end method

.method public abstract getCdmaModeSide(Landroid/os/Message;)V
.end method

.method public abstract getCurrentPOLList(Landroid/os/Message;)V
.end method

.method public abstract getDevSubMode(Landroid/os/Message;)V
.end method

.method public abstract getHwCDMAMlplVersion()Ljava/lang/String;
.end method

.method public abstract getHwCDMAMsplVersion()Ljava/lang/String;
.end method

.method public abstract getHwPrlVersion()Ljava/lang/String;
.end method

.method public abstract getHwRatCombineMode(Landroid/os/Message;)V
.end method

.method public abstract getHwUimid()Ljava/lang/String;
.end method

.method public abstract getICCID(Landroid/os/Message;)V
.end method

.method public abstract getImsSwitch()Z
.end method

.method public abstract getLocationInfo(Landroid/os/Message;)V
.end method

.method public abstract getLteReleaseVersion(Landroid/os/Message;)V
.end method

.method public abstract getModemCapability(Landroid/os/Message;)V
.end method

.method public abstract getNVESN()Ljava/lang/String;
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getRILid()I
.end method

.method public abstract getRegPlmn(Landroid/os/Message;)V
.end method

.method public abstract getSimHotPlugState(Landroid/os/Message;)V
.end method

.method public abstract getSimMode(Landroid/os/Message;)V
.end method

.method public abstract getSimState(Landroid/os/Message;)V
.end method

.method public abstract getSimStateViaSysinfoEx(Landroid/os/Message;)V
.end method

.method public abstract getTrafficData(Landroid/os/Message;)V
.end method

.method public abstract getTwoSimNwUnlockStatus(Landroid/os/Message;)V
.end method

.method public abstract hotSwitchSimSlot(IIILandroid/os/Message;)V
.end method

.method public abstract hotSwitchSimSlotFor2Modem(IIILandroid/os/Message;)V
.end method

.method public abstract hvCheckCard(Landroid/os/Message;)V
.end method

.method public abstract iccCloseChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccGetATR(Landroid/os/Message;)V
.end method

.method public abstract iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isFastSwitchInProcess()Z
.end method

.method public abstract isRadioAvailable()Z
.end method

.method public abstract notifyAntOrMaxTxPowerInfo([B)V
.end method

.method public abstract notifyBandClassInfo([B)V
.end method

.method public abstract notifyCModemStatus(ILandroid/os/Message;)V
.end method

.method public abstract openSwitchOfUploadAntOrMaxTxPower(I)Z
.end method

.method public abstract openSwitchOfUploadBandClass(Landroid/os/Message;)V
.end method

.method public abstract processHWBufferUnsolicited([B)V
.end method

.method public abstract queryCardType(Landroid/os/Message;)V
.end method

.method public abstract queryEmergencyNumbers()V
.end method

.method public abstract registerForCaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForReportVpStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRplmnsStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimHotPlug(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimSwitchStart(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimSwitchStop(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUimLockcard(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSarRegistrant(ILandroid/os/Message;)Z
.end method

.method public abstract requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetAllConnections()V
.end method

.method public abstract resetProfile(Landroid/os/Message;)V
.end method

.method public abstract resetSimNwLockRetryCount(Landroid/os/Message;)V
.end method

.method public abstract restartRild(Landroid/os/Message;)V
.end method

.method public abstract riseCdmaCutoffFreq(ZLandroid/os/Message;)V
.end method

.method public abstract sendCloudMessageToModem(I)V
.end method

.method public abstract sendHWBufferSolicited(Landroid/os/Message;I[B)V
.end method

.method public abstract sendSMSSetLong(ILandroid/os/Message;)V
.end method

.method public abstract setActiveModemMode(ILandroid/os/Message;)V
.end method

.method public abstract setApDsFlowCfg(IIIILandroid/os/Message;)V
.end method

.method public abstract setCSGNetworkSelectionModeManual([BLandroid/os/Message;)V
.end method

.method public abstract setCdmaModeSide(ILandroid/os/Message;)V
.end method

.method public abstract setDsFlowNvCfg(IILandroid/os/Message;)V
.end method

.method public abstract setEhrpdByQMI(Z)Z
.end method

.method public abstract setFastSimSwitchInProcess(ZLandroid/os/Message;)V
.end method

.method public abstract setHwRFChannelSwitch(ILandroid/os/Message;)V
.end method

.method public abstract setHwRatCombineMode(ILandroid/os/Message;)V
.end method

.method public abstract setHwVSimPower(ILandroid/os/Message;)V
.end method

.method public abstract setISMCOEX(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setImsSwitch(Z)V
.end method

.method public abstract setLTEReleaseVersion(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkRatAndSrvDomainCfg(IILandroid/os/Message;)V
.end method

.method public abstract setOnECCNum(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNetReject(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVsimApDsFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVsimDsFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVsimRDH(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVsimRegPLMNSelInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVsimTimerTaskExpired(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setPowerGrade(ILandroid/os/Message;)V
.end method

.method public abstract setSimMode(IIILandroid/os/Message;)V
.end method

.method public abstract setSimState(IILandroid/os/Message;)V
.end method

.method public abstract setTEEDataReady(IIILandroid/os/Message;)V
.end method

.method public abstract setUEOperationMode(ILandroid/os/Message;)V
.end method

.method public abstract setVpMask(ILandroid/os/Message;)V
.end method

.method public abstract setWifiTxPowerGrade(ILandroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchBalongSim(IIILandroid/os/Message;)V
.end method

.method public abstract switchBalongSim(IILandroid/os/Message;)V
.end method

.method public abstract switchVoiceCallBackgroundState(ILandroid/os/Message;)V
.end method

.method public abstract unSetOnECCNum(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNetReject(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVsimApDsFlowInfo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVsimDsFlowInfo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVsimRDH(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVsimRegPLMNSelInfo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVsimTimerTaskExpired(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCaStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHWBuffer(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModemCapEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForReportVpStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRplmnsStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimHotPlug(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimSwitchStart(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimSwitchStop(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUimLockcard(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSarRegistrant(ILandroid/os/Message;)Z
.end method

.method public abstract updateSocketMapForSlaveSub(III)Z
.end method

.method public abstract updateStackBinding(IILandroid/os/Message;)V
.end method

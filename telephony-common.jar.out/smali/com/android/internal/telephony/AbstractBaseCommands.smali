.class public abstract Lcom/android/internal/telephony/AbstractBaseCommands;
.super Ljava/lang/Object;
.source "AbstractBaseCommands.java"


# instance fields
.field protected mCaStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mECCNumRegistrant:Landroid/os/Registrant;

.field protected final mHWBufferRegistrants:Landroid/os/RegistrantList;

.field protected mIccSimSwitchStartRegistrant:Landroid/os/Registrant;

.field protected mIccSimSwitchStopRegistrant:Landroid/os/Registrant;

.field protected mMtStatusReportRegistrants:Landroid/os/RegistrantList;

.field protected mNetRejectRegistrant:Landroid/os/Registrant;

.field protected mReportVpStatusRegistrants:Landroid/os/RegistrantList;

.field protected mSimHotPlugRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected mUnsolRplmnsStateRegistrant:Landroid/os/RegistrantList;

.field protected mVsimApDsFlowInfoRegistrant:Landroid/os/Registrant;

.field protected mVsimDsFlowInfoRegistrant:Landroid/os/Registrant;

.field protected mVsimRDHRegistrant:Landroid/os/Registrant;

.field protected mVsimRegPLMNSelInfoRegistrant:Landroid/os/Registrant;

.field protected mVsimTimerTaskExpiredRegistrant:Landroid/os/Registrant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mReportVpStatusRegistrants:Landroid/os/RegistrantList;

    .line 194
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mUnsolRplmnsStateRegistrant:Landroid/os/RegistrantList;

    .line 376
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 389
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mCaStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 403
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSimHotPlugRegistrants:Landroid/os/RegistrantList;

    .line 494
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mHWBufferRegistrants:Landroid/os/RegistrantList;

    return-void
.end method


# virtual methods
.method public clearTrafficData(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 256
    return-void
.end method

.method public closeRrc()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public closeSwitchOfUploadAntOrMaxTxPower(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public closeSwitchOfUploadBandClass(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 546
    return-void
.end method

.method public cmdForECInfo(II[B)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "action"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public dataConnectionAttach(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 103
    return-void
.end method

.method public dataConnectionDetach(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 101
    return-void
.end method

.method public fastSwitchBalongSim(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 238
    return-void
.end method

.method public getAvailableCSGNetworks([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 521
    return-void
.end method

.method public getBalongSim(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 153
    return-void
.end method

.method public getCdmaChrInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 108
    return-void
.end method

.method public getCdmaModeSide(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 175
    return-void
.end method

.method public getCurrentPOLList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 95
    return-void
.end method

.method public getDevSubMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 268
    return-void
.end method

.method public getHwCDMAMlplVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwCDMAMsplVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwRatCombineMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 165
    return-void
.end method

.method public getHwUimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public getICCID(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 219
    return-void
.end method

.method public getImsSwitch()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 426
    return-void
.end method

.method public getLteReleaseVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 140
    return-void
.end method

.method public getModemCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 145
    return-void
.end method

.method public getNVESN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 93
    return-void
.end method

.method public getRILid()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getRegPlmn(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 250
    return-void
.end method

.method public getSimHotPlugState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 156
    return-void
.end method

.method public getSimMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 247
    return-void
.end method

.method public getSimState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 340
    return-void
.end method

.method public getSimStateViaSysinfoEx(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 265
    return-void
.end method

.method public getTrafficData(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 253
    return-void
.end method

.method public getTwoSimNwUnlockStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 128
    return-void
.end method

.method public hotSwitchSimSlot(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "modem0"    # I
    .param p2, "modem1"    # I
    .param p3, "modem2"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 346
    return-void
.end method

.method public hotSwitchSimSlotFor2Modem(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "modem0"    # I
    .param p2, "modem1"    # I
    .param p3, "modem2"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 351
    return-void
.end method

.method public hvCheckCard(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 278
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 28
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 22
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 33
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 25
    return-void
.end method

.method public isFastSwitchInProcess()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public notifyAntOrMaxTxPowerInfo([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 537
    return-void
.end method

.method public notifyBandClassInfo([B)V
    .locals 0
    .param p1, "resultData"    # [B

    .prologue
    .line 538
    return-void
.end method

.method public notifyCModemStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 490
    return-void
.end method

.method public openSwitchOfUploadAntOrMaxTxPower(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public openSwitchOfUploadBandClass(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 545
    return-void
.end method

.method public processHWBufferUnsolicited([B)V
    .locals 0
    .param p1, "respData"    # [B

    .prologue
    .line 507
    return-void
.end method

.method public queryCardType(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    return-void
.end method

.method public queryEmergencyNumbers()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public registerForCaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 392
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mCaStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 395
    return-void
.end method

.method public registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mHWBufferRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method public registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 146
    return-void
.end method

.method public registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 379
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 381
    return-void
.end method

.method public registerForReportVpStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mReportVpStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public registerForRplmnsStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 207
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mUnsolRplmnsStateRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 210
    return-void
.end method

.method public registerForSimHotPlug(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 406
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSimHotPlugRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 409
    return-void
.end method

.method public registerForSimSwitchStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 321
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mIccSimSwitchStartRegistrant:Landroid/os/Registrant;

    .line 322
    return-void
.end method

.method public registerForSimSwitchStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 329
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mIccSimSwitchStopRegistrant:Landroid/os/Registrant;

    .line 330
    return-void
.end method

.method public registerForUimLockcard(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 179
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 64
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 66
    return-void
.end method

.method public registerSarRegistrant(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ecclist_withcard"    # Ljava/lang/String;
    .param p2, "ecclist_nocard"    # Ljava/lang/String;

    .prologue
    .line 190
    return-void
.end method

.method public resetAllConnections()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public resetProfile(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 37
    return-void
.end method

.method public resetSimNwLockRetryCount(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 131
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 112
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    return-void
.end method

.method public sendCloudMessageToModem(I)V
    .locals 0
    .param p1, "event_id"    # I

    .prologue
    .line 41
    return-void
.end method

.method public sendHWBufferSolicited(Landroid/os/Message;I[B)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "event"    # I
    .param p3, "reqData"    # [B

    .prologue
    .line 504
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 54
    return-void
.end method

.method public setActiveModemMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 223
    return-void
.end method

.method public setApDsFlowCfg(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "config"    # I
    .param p2, "threshold"    # I
    .param p3, "total_threshold"    # I
    .param p4, "oper"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 259
    return-void
.end method

.method public setCSGNetworkSelectionModeManual([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 528
    return-void
.end method

.method public setCdmaModeSide(ILandroid/os/Message;)V
    .locals 0
    .param p1, "modemID"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 171
    return-void
.end method

.method public setDsFlowNvCfg(IILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # I
    .param p2, "interval"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 262
    return-void
.end method

.method public setEhrpdByQMI(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public setFastSimSwitchInProcess(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 241
    return-void
.end method

.method public setHwRFChannelSwitch(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rfChannel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 167
    return-void
.end method

.method public setHwRatCombineMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "combineMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 163
    return-void
.end method

.method public setHwVSimPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "power"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 474
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "setISMCoex"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 479
    return-void
.end method

.method public setImsSwitch(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 13
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 137
    return-void
.end method

.method public setNetworkRatAndSrvDomainCfg(IILandroid/os/Message;)V
    .locals 0
    .param p1, "rat"    # I
    .param p2, "srvDomain"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 418
    return-void
.end method

.method public setOnECCNum(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 199
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mECCNumRegistrant:Landroid/os/Registrant;

    .line 200
    return-void
.end method

.method public setOnNetReject(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 362
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mNetRejectRegistrant:Landroid/os/Registrant;

    .line 363
    return-void
.end method

.method public setOnVsimApDsFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 305
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimApDsFlowInfoRegistrant:Landroid/os/Registrant;

    .line 306
    return-void
.end method

.method public setOnVsimDsFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 297
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimDsFlowInfoRegistrant:Landroid/os/Registrant;

    .line 298
    return-void
.end method

.method public setOnVsimRDH(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 281
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimRDHRegistrant:Landroid/os/Registrant;

    .line 282
    return-void
.end method

.method public setOnVsimRegPLMNSelInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 289
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimRegPLMNSelInfoRegistrant:Landroid/os/Registrant;

    .line 290
    return-void
.end method

.method public setOnVsimTimerTaskExpired(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 313
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimTimerTaskExpiredRegistrant:Landroid/os/Registrant;

    .line 314
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 97
    return-void
.end method

.method public setPowerGrade(ILandroid/os/Message;)V
    .locals 0
    .param p1, "powerGrade"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 45
    return-void
.end method

.method public setSimMode(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "enable"    # I
    .param p3, "slotID"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 244
    return-void
.end method

.method public setSimState(IILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 343
    return-void
.end method

.method public setTEEDataReady(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # I
    .param p2, "dh"    # I
    .param p3, "sim"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 271
    return-void
.end method

.method public setUEOperationMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 372
    return-void
.end method

.method public setVpMask(ILandroid/os/Message;)V
    .locals 0
    .param p1, "vpMask"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 84
    return-void
.end method

.method public setWifiTxPowerGrade(ILandroid/os/Message;)V
    .locals 0
    .param p1, "powerGrade"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 50
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 117
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin1"    # Ljava/lang/String;
    .param p2, "netpin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 123
    return-void
.end method

.method public switchBalongSim(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "modem3ToSlot"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 149
    return-void
.end method

.method public switchBalongSim(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 147
    return-void
.end method

.method public switchVoiceCallBackgroundState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 72
    return-void
.end method

.method public unSetOnECCNum(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mECCNumRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 204
    return-void
.end method

.method public unSetOnNetReject(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mNetRejectRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 367
    return-void
.end method

.method public unSetOnVsimApDsFlowInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimApDsFlowInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 310
    return-void
.end method

.method public unSetOnVsimDsFlowInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimDsFlowInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 302
    return-void
.end method

.method public unSetOnVsimRDH(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimRDHRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 286
    return-void
.end method

.method public unSetOnVsimRegPLMNSelInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimRegPLMNSelInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 294
    return-void
.end method

.method public unSetOnVsimTimerTaskExpired(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mVsimTimerTaskExpiredRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 318
    return-void
.end method

.method public unregisterForCaStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mCaStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 399
    return-void
.end method

.method public unregisterForHWBuffer(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mHWBufferRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 501
    return-void
.end method

.method public unregisterForModemCapEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 159
    return-void
.end method

.method public unregisterForMtStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 385
    return-void
.end method

.method public unregisterForReportVpStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mReportVpStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 81
    return-void
.end method

.method public unregisterForRplmnsStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mUnsolRplmnsStateRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 214
    return-void
.end method

.method public unregisterForSimHotPlug(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSimHotPlugRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 413
    return-void
.end method

.method public unregisterForSimSwitchStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mIccSimSwitchStartRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 326
    return-void
.end method

.method public unregisterForSimSwitchStop(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mIccSimSwitchStopRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 334
    return-void
.end method

.method public unregisterForUimLockcard(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 181
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractBaseCommands;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 70
    return-void
.end method

.method public unregisterSarRegistrant(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public updateSocketMapForSlaveSub(III)Z
    .locals 1
    .param p1, "modem0"    # I
    .param p2, "modem1"    # I
    .param p3, "modem2"    # I

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public updateStackBinding(IILandroid/os/Message;)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 144
    return-void
.end method

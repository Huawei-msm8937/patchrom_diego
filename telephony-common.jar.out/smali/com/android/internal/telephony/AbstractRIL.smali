.class public abstract Lcom/android/internal/telephony/AbstractRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "AbstractRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractRIL$HwRILReference;
    }
.end annotation


# static fields
.field protected static final HW_VOLTE_USER_SWITCH:Ljava/lang/String; = "hw_volte_user_switch"

.field protected static final RIL_HW_BUFFER_MAX:I = 0x78

.field protected static final RIL_HW_QCRIL_EVT_HOOK_SEND_BUFFER:I = 0x9201b


# instance fields
.field private mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwTelephonyBaseManager()Lcom/android/internal/telephony/HwTelephonyBaseManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwTelephonyBaseManager;->createHwRILReference(Lcom/android/internal/telephony/AbstractRIL;)Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    .line 24
    return-void
.end method


# virtual methods
.method public correctApnAuth(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "authType"    # I
    .param p3, "password"    # Ljava/lang/String;
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

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->correctApnAuth(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dataConnectionAttach(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->dataConnectionAttach(ILandroid/os/Message;)V

    .line 306
    return-void
.end method

.method public dataConnectionDetach(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->dataConnectionDetach(ILandroid/os/Message;)V

    .line 302
    return-void
.end method

.method public getCdmaChrInfo(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getCdmaChrInfo(Landroid/os/Message;)V

    .line 315
    return-void
.end method

.method public getCdmaGsmImsi(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getCdmaGsmImsi(Landroid/os/Message;)V

    .line 346
    return-void
.end method

.method public getCdmaModeSide(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getCdmaModeSide(Landroid/os/Message;)V

    .line 375
    return-void
.end method

.method public getCurrentPOLList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getCurrentPOLList(Landroid/os/Message;)V

    .line 254
    return-void
.end method

.method public getHwRatCombineMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getHwRatCombineMode(Landroid/os/Message;)V

    .line 361
    return-void
.end method

.method public getImsSwitch()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getImsSwitch()Z

    move-result v0

    return v0
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getPOLCapabilty(Landroid/os/Message;)V

    .line 251
    return-void
.end method

.method public getTwoSimNwUnlockStatus(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->getTwoSimNwUnlockStatus(Landroid/os/Message;)V

    .line 276
    return-void
.end method

.method protected handleRequestGetImsiMessage(Lcom/android/internal/telephony/RILRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 188
    return-void
.end method

.method protected handleRequestGetImsiMessage(Lcom/android/internal/telephony/RILRequest;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->handleRequestGetImsiMessage(Lcom/android/internal/telephony/RILRequest;Ljava/lang/Object;Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method protected handleUnsolicitedDefaultMessage(ILjava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->handleUnsolicitedDefaultMessage(ILjava/lang/Object;Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method protected handleUnsolicitedDefaultMessagePara(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->handleUnsolicitedDefaultMessagePara(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleUnsolicitedRadioStateChanged(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->handleUnsolicitedRadioStateChanged(ZLandroid/content/Context;)V

    .line 209
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->iccCloseChannel(ILandroid/os/Message;)V

    .line 224
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->iccGetATR(Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public notifyAntOrMaxTxPowerInfo([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->notifyAntOrMaxTxPowerInfo([B)V

    .line 440
    return-void
.end method

.method public notifyBandClassInfo([B)V
    .locals 1
    .param p1, "resultData"    # [B

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->notifyBandClassInfo([B)V

    .line 443
    return-void
.end method

.method public notifyCModemStatus(ILandroid/os/Message;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->notifyCModemStatus(ILandroid/os/Message;)V

    .line 414
    return-void
.end method

.method public notifyIccUimLockRegistrants()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->notifyIccUimLockRegistrants()V

    .line 291
    return-void
.end method

.method public processHWBufferUnsolicited([B)V
    .locals 1
    .param p1, "respData"    # [B

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->processHWBufferUnsolicited([B)V

    .line 422
    return-void
.end method

.method protected processSolicitedEx(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "rilRequest"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->processSolicitedEx(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryEmergencyNumbers()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->queryEmergencyNumbers()V

    .line 340
    return-void
.end method

.method public registerForUimLockcard(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->registerForUimLockcard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    return-void
.end method

.method public registerSarRegistrant(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->registerSarRegistrant(ILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ecclist_withcard"    # Ljava/lang/String;
    .param p2, "ecclist_nocard"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public resetAllConnections()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->resetAllConnections()V

    .line 387
    return-void
.end method

.method public resetProfile(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 310
    return-void
.end method

.method public resetSimNwLockRetryCount(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->resetSimNwLockRetryCount(Landroid/os/Message;)V

    .line 280
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->restartRild(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->riseCdmaCutoffFreq(ZLandroid/os/Message;)V

    .line 246
    return-void
.end method

.method public send(Lcom/android/internal/telephony/RILRequestReference;)V
    .locals 0
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequestReference;

    .prologue
    .line 174
    return-void
.end method

.method public sendHWBufferSolicited(Landroid/os/Message;I[B)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "event"    # I
    .param p3, "reqData"    # [B

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->sendHWBufferSolicited(Landroid/os/Message;I[B)V

    .line 419
    return-void
.end method

.method public sendRILTimeoutBroadcast()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->sendRILTimeoutBroadcast()V

    .line 428
    return-void
.end method

.method public sendRacChangeBroadcast([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->sendRacChangeBroadcast([B)V

    .line 397
    return-void
.end method

.method public sendResponseToTarget(Landroid/os/Message;I)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 327
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->sendSMSSetLong(ILandroid/os/Message;)V

    .line 296
    return-void
.end method

.method public setCdmaModeSide(ILandroid/os/Message;)V
    .locals 1
    .param p1, "modemID"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setCdmaModeSide(ILandroid/os/Message;)V

    .line 370
    return-void
.end method

.method public setHwRFChannelSwitch(ILandroid/os/Message;)V
    .locals 1
    .param p1, "rfChannel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setHwRFChannelSwitch(ILandroid/os/Message;)V

    .line 364
    return-void
.end method

.method public setHwRILReferenceInstanceId(I)V
    .locals 1
    .param p1, "instanceId"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setHwRILReferenceInstanceId(I)V

    .line 402
    return-void
.end method

.method public setHwRatCombineMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "combineMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setHwRatCombineMode(ILandroid/os/Message;)V

    .line 358
    return-void
.end method

.method public setImsSwitch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setImsSwitch(Z)V

    .line 203
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 257
    return-void
.end method

.method public setPowerGrade(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerGrade"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setPowerGrade(ILandroid/os/Message;)V

    .line 236
    return-void
.end method

.method protected setShouldReportRoamingPlusInfo(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setShouldReportRoamingPlusInfo(Z)V

    .line 182
    return-void
.end method

.method public setVpMask(ILandroid/os/Message;)V
    .locals 1
    .param p1, "vpMask"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setVpMask(ILandroid/os/Message;)V

    .line 381
    return-void
.end method

.method public setWifiTxPowerGrade(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerGrade"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->setWifiTxPowerGrade(ILandroid/os/Message;)V

    .line 241
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 263
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "netpin1"    # Ljava/lang/String;
    .param p2, "netpin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public testVoiceLoopBack(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->testVoiceLoopBack(I)V

    .line 352
    return-void
.end method

.method public unregisterForUimLockcard(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->unregisterForUimLockcard(Landroid/os/Handler;)V

    .line 288
    return-void
.end method

.method public unregisterSarRegistrant(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->unregisterSarRegistrant(ILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected writeContent(Lcom/android/internal/telephony/RILRequestReference;Ljava/lang/String;)V
    .locals 1
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequestReference;
    .param p2, "pdu"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractRIL;->mReference:Lcom/android/internal/telephony/AbstractRIL$HwRILReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractRIL$HwRILReference;->writeContent(Lcom/android/internal/telephony/RILRequestReference;Ljava/lang/String;)V

    .line 228
    return-void
.end method

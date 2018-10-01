.class public abstract Lcom/android/internal/telephony/gsm/AbstractGSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "AbstractGSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "AbstractGSMPhone"


# instance fields
.field private mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 122
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwGSMPhoneReference(Lcom/android/internal/telephony/gsm/AbstractGSMPhone;)Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    .line 123
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
    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwGSMPhoneReference(Lcom/android/internal/telephony/gsm/AbstractGSMPhone;)Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    .line 139
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
    .line 155
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwGSMPhoneReference(Lcom/android/internal/telephony/gsm/AbstractGSMPhone;)Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    .line 157
    return-void
.end method


# virtual methods
.method public afterHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->afterHandleMessage(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public beforeHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->beforeHandleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public cleanDeviceId()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "AbstractGSMPhone"

    const-string v1, "clean device id"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setMeid(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public closeRrc()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->closeRrc()V

    .line 226
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 243
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->dispose()V

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getHwCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustAvailableNetworksMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getCustAvailableNetworksMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultVoiceMailAlphaTagText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "ret"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getDefaultVoiceMailAlphaTagText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwCdmaEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getHwCdmaEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSwitch()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getImsSwitch()Z

    move-result v0

    return v0
.end method

.method public getLteReleaseVersion()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getLteReleaseVersion()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getPOLCapabilty(Landroid/os/Message;)V

    .line 262
    return-void
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getPesn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public getVMNumberWhenIMSIChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->getVMNumberWhenIMSIChange()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public globalEccCustom(Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->globalEccCustom(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public isCTSimCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->isCTSimCard(I)Z

    move-result v0

    return v0
.end method

.method public isMmiCode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->isMmiCode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v0

    return v0
.end method

.method public isSupportCFT()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->isSupportCFT()Z

    move-result v0

    return v0
.end method

.method public launchOrCancelCsgPeriodicSearchTimer()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->launchOrCancelCsgPeriodicSearchTimer()V

    .line 326
    return-void
.end method

.method public processEccNunmber(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 1
    .param p1, "gSST"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->processEccNunmber(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 294
    return-void
.end method

.method public processPlusSymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialNumber"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->processPlusSymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerForCsgRecordsLoadedEvent()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->registerForCsgRecordsLoadedEvent()V

    .line 330
    return-void
.end method

.method public selectCsgNetworkManually(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->selectCsgNetworkManually(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "commandInterfaceCFAction"    # I
    .param p6, "commandInterfaceCFReason"    # I
    .param p7, "dialingNumber"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isActivate"    # Z
    .param p4, "serviceClass"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;)Z
    .locals 1
    .param p1, "setISMCoex"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setISMCOEX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setImsSwitch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setImsSwitch(Z)V

    .line 198
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setLTEReleaseVersion(ZLandroid/os/Message;)V

    .line 281
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 270
    return-void
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->switchVoiceCallBackgroundState(I)V

    .line 252
    return-void
.end method

.method public unregisterForCsgRecordsLoadedEvent()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->unregisterForCsgRecordsLoadedEvent()V

    .line 334
    return-void
.end method

.method public updateReduceSARState()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGSMPhone;->mReference:Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;->updateReduceSARState()V

    .line 237
    return-void
.end method

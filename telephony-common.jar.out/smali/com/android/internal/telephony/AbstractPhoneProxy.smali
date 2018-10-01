.class public Lcom/android/internal/telephony/AbstractPhoneProxy;
.super Landroid/os/Handler;
.source "AbstractPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;
    }
.end annotation


# instance fields
.field private mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwPhoneProxyReference(Lcom/android/internal/telephony/AbstractPhoneProxy;)Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    .line 11
    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 100
    return-void
.end method

.method public closeRrc()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->closeRrc()V

    .line 138
    return-void
.end method

.method public cmdForECInfo(II[B)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "action"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->cmdForECInfo(II[B)Z

    move-result v0

    return v0
.end method

.method public getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 92
    return-void
.end method

.method public getDataRoamingScope()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getDataRoamingScope()I

    move-result v0

    return v0
.end method

.method public getImsSwitch()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getImsSwitch()Z

    move-result v0

    return v0
.end method

.method public getLteReleaseVersion()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getLteReleaseVersion()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNVESN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getNVESN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getPOLCapabilty(Landroid/os/Message;)V

    .line 181
    return-void
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getPesn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method public getSpeechInfoCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->getSpeechInfoCodec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMmiCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->isMmiCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportCFT()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->isSupportCFT()Z

    move-result v0

    return v0
.end method

.method public notifyMultiSimConfigurationChanged()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->notifyMultiSimConfigurationChanged()V

    .line 214
    return-void
.end method

.method public registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public riseCdmaCutoffFreq(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->riseCdmaCutoffFreq(Z)V

    .line 194
    return-void
.end method

.method public selectCsgNetworkManually(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->selectCsgNetworkManually(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public sendHWSolicited(Landroid/os/Message;I[B)V
    .locals 1
    .param p1, "reqMsg"    # Landroid/os/Message;
    .param p2, "event"    # I
    .param p3, "reqData"    # [B

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->sendHWSolicited(Landroid/os/Message;I[B)V

    .line 228
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
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 120
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
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method public setDataRoamingScope(I)Z
    .locals 1
    .param p1, "scope"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setDataRoamingScope(I)Z

    move-result v0

    return v0
.end method

.method public setISMCOEX(Ljava/lang/String;)Z
    .locals 1
    .param p1, "strings"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setISMCOEX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setImsSwitch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setImsSwitch(Z)V

    .line 123
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setLTEReleaseVersion(ZLandroid/os/Message;)V

    .line 199
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 189
    return-void
.end method

.method public setSpeechInfoCodec(I)V
    .locals 1
    .param p1, "speechinfocodec"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->setSpeechInfoCodec(I)V

    .line 162
    return-void
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->switchVoiceCallBackgroundState(I)V

    .line 171
    return-void
.end method

.method public unregisterForHWBuffer(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->unregisterForHWBuffer(Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneProxy;->mReference:Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;->unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V

    .line 158
    return-void
.end method

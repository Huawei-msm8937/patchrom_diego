.class public interface abstract Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;
.super Ljava/lang/Object;
.source "AbstractPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwPhoneProxyReference"
.end annotation


# virtual methods
.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeRrc()V
.end method

.method public abstract cmdForECInfo(II[B)Z
.end method

.method public abstract getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getDataRoamingScope()I
.end method

.method public abstract getImsSwitch()Z
.end method

.method public abstract getLteReleaseVersion()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getNVESN()Ljava/lang/String;
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getPesn()Ljava/lang/String;
.end method

.method public abstract getPreferedOperatorList(Landroid/os/Message;)V
.end method

.method public abstract getSpeechInfoCodec()Ljava/lang/String;
.end method

.method public abstract isMmiCode(Ljava/lang/String;)Z
.end method

.method public abstract isSupportCFT()Z
.end method

.method public abstract notifyMultiSimConfigurationChanged()V
.end method

.method public abstract registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract riseCdmaCutoffFreq(Z)V
.end method

.method public abstract selectCsgNetworkManually(Landroid/os/Message;)V
.end method

.method public abstract sendHWSolicited(Landroid/os/Message;I[B)V
.end method

.method public abstract setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setDataRoamingScope(I)Z
.end method

.method public abstract setISMCOEX(Ljava/lang/String;)Z
.end method

.method public abstract setImsSwitch(Z)V
.end method

.method public abstract setLTEReleaseVersion(ZLandroid/os/Message;)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setSpeechInfoCodec(I)V
.end method

.method public abstract switchVoiceCallBackgroundState(I)V
.end method

.method public abstract unregisterForHWBuffer(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
.end method

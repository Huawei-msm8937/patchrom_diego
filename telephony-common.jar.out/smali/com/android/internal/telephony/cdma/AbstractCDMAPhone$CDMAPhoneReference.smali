.class public interface abstract Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;
.super Ljava/lang/Object;
.source "AbstractCDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CDMAPhoneReference"
.end annotation


# virtual methods
.method public abstract afterHandleMessage(Landroid/os/Message;)V
.end method

.method public abstract beforeHandleMessage(Landroid/os/Message;)Z
.end method

.method public abstract closeRrc()V
.end method

.method public abstract getLteReleaseVersion()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getPesn()Ljava/lang/String;
.end method

.method public abstract isCTSimCard(I)Z
.end method

.method public abstract isChinaTelecom(I)Z
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract riseCdmaCutoffFreq(Z)V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract setLTEReleaseVersion(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract switchVoiceCallBackgroundState(I)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

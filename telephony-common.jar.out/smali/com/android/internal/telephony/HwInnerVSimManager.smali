.class public interface abstract Lcom/android/internal/telephony/HwInnerVSimManager;
.super Ljava/lang/Object;
.source "HwInnerVSimManager.java"


# virtual methods
.method public abstract checkMmsForVSim(II)V
.end method

.method public abstract createHwVSimService(Landroid/content/Context;)V
.end method

.method public abstract dumpVSimPhoneFactory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract fetchVSimIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract getPendingDeviceInfoFromSP(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVSimPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract isVSimInStatus(II)Z
.end method

.method public abstract isVSimPhone(Lcom/android/internal/telephony/PhoneBase;)Z
.end method

.method public abstract makeVSimPhoneFactory(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;[Lcom/android/internal/telephony/PhoneProxy;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setLastRilFailCause(I)V
.end method

.method public abstract setMarkForCardReload(IZ)V
.end method

.method public abstract unregisterForIccChanged(Landroid/os/Handler;)V
.end method

.class public interface abstract Lcom/android/internal/telephony/HwDataServiceChrManager;
.super Ljava/lang/Object;
.source "HwDataServiceChrManager.java"


# virtual methods
.method public abstract SendIntentDNSfailure([Ljava/lang/String;)V
.end method

.method public abstract getAnyDataEnabledFalseReason()Ljava/lang/String;
.end method

.method public abstract getBringUp()Z
.end method

.method public abstract getDataNotAllowedReason()Ljava/lang/String;
.end method

.method public abstract getModemParamsWhenCdmaPdpActFail(Lcom/android/internal/telephony/PhoneBase;I)V
.end method

.method public abstract getPdpActiveIpType()Ljava/lang/String;
.end method

.method public abstract getReceivedSimloadedMsg()Z
.end method

.method public abstract getRecordsLoadedRegistered()Z
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract removeMonitorWifiSwitchToMobileMessage()V
.end method

.method public abstract sendIntentApnContextDisabledWhenWifiDisconnected(Lcom/android/internal/telephony/PhoneBase;ZZLcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract sendIntentApnListEmpty(I)V
.end method

.method public abstract sendIntentWhenDataConnected(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V
.end method

.method public abstract sendIntentWhenDorecovery(Lcom/android/internal/telephony/PhoneBase;I)V
.end method

.method public abstract sendIntentWhenSetDataSubFail(I)V
.end method

.method public abstract sendMonitorWifiSwitchToMobileMessage(I)V
.end method

.method public abstract setAnyDataEnabledFalseReason(ZZZZ)V
.end method

.method public abstract setAnyDataEnabledFalseReasonToNull()V
.end method

.method public abstract setBringUp(Z)V
.end method

.method public abstract setCheckApnContextState(Z)V
.end method

.method public abstract setDataNotAllowedReason(Lcom/android/internal/telephony/PhoneBase;ZZZZZZ)V
.end method

.method public abstract setDataNotAllowedReasonToNull()V
.end method

.method public abstract setPdpActiveIpType(Ljava/lang/String;I)V
.end method

.method public abstract setReceivedSimloadedMsg(Lcom/android/internal/telephony/PhoneBase;ZLjava/util/concurrent/ConcurrentHashMap;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setRecordsLoadedRegistered(ZI)V
.end method

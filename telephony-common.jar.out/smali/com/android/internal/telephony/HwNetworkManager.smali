.class public interface abstract Lcom/android/internal/telephony/HwNetworkManager;
.super Ljava/lang/Object;
.source "HwNetworkManager.java"


# static fields
.field public static final C1:Ljava/lang/String; = "549745B0D948DD443BAB82155D017B24"


# virtual methods
.method public abstract checkAndSetNetworkType(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBase;)V
.end method

.method public abstract delaySendDetachAfterDataOff()V
.end method

.method public abstract delaySendDetachAfterDataOff(Lcom/android/internal/telephony/PhoneBase;)V
.end method

.method public abstract dispose(Lcom/android/internal/telephony/ServiceStateTracker;)V
.end method

.method public abstract getCARilRadioType(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;I)I
.end method

.method public abstract getCARilRadioType(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;I)I
.end method

.method public abstract getCdmaCombinedRegState(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/ServiceState;)I
.end method

.method public abstract getCdmaPlmn(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)Ljava/lang/String;
.end method

.method public abstract getCdmaRplmn(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)Ljava/lang/String;
.end method

.method public abstract getGsmCombinedRegState(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/telephony/ServiceState;)I
.end method

.method public abstract getGsmOnsDisplayParams(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;ZZILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/OnsDisplayParams;
.end method

.method public abstract getGsmPlmn(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
.end method

.method public abstract getGsmRoamingState(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z
.end method

.method public abstract getGsmRplmn(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
.end method

.method public abstract getLocationInfo(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GSMPhone;)V
.end method

.method public abstract hasOperatorNumericChanged(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
.end method

.method public abstract isCustScreenOff(Lcom/android/internal/telephony/PhoneBase;)Z
.end method

.method public abstract isUpdateLacAndCid(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;I)Z
.end method

.method public abstract needGsmUpdateNITZTime(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
.end method

.method public abstract notifyCdmaSignalStrength(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z
.end method

.method public abstract notifyGsmSignalStrength(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z
.end method

.method public abstract proccessCdmaLteDelayUpdateRegisterStateDone(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
.end method

.method public abstract proccessGsmDelayUpdateRegisterStateDone(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
.end method

.method public abstract processCdmaCTNumMatch(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;ZLcom/android/internal/telephony/uicc/UiccCardApplication;)V
.end method

.method public abstract processGsmCTNumMatch(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;ZLcom/android/internal/telephony/uicc/UiccCardApplication;)V
.end method

.method public abstract registerForSimRecordsEvents(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/IccRecords;)V
.end method

.method public abstract saveNitzTimeZoneToDB(Landroid/content/ContentResolver;Ljava/lang/String;)V
.end method

.method public abstract sendCdmaDualSimUpdateSpnIntent(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;ZLjava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract sendGsmDualSimUpdateSpnIntent(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;ZLjava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract sendGsmRoamingIntentIfDenied(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;I[Ljava/lang/String;)V
.end method

.method public abstract setAutoTimeAndZoneForCdma(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;I)V
.end method

.method public abstract setCdmaOOSFlag(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;Z)V
.end method

.method public abstract setGsmOOSFlag(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Z)V
.end method

.method public abstract setPreferredNetworkTypeSafely(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/ServiceStateTracker;ILandroid/os/Message;)V
.end method

.method public abstract unregisterForSimRecordsEvents(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/IccRecords;)V
.end method

.method public abstract updateCAStatus(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;I)I
.end method

.method public abstract updateCAStatus(Ljava/lang/Object;Lcom/android/internal/telephony/gsm/GSMPhone;I)I
.end method

.method public abstract updateCTRoaming(Ljava/lang/Object;Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/ServiceState;Z)Z
.end method

.method public abstract updateHwnff(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/telephony/SignalStrength;)V
.end method

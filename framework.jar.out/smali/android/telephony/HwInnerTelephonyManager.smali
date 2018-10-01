.class public interface abstract Landroid/telephony/HwInnerTelephonyManager;
.super Ljava/lang/Object;
.source "HwInnerTelephonyManager.java"


# virtual methods
.method public abstract custExtraEmergencyNumbers(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
.end method

.method public abstract getCallingAppName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getCardType(I)I
.end method

.method public abstract getCdmaLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getDefault4GSlotId()I
.end method

.method public abstract getDualCardMode()I
.end method

.method public abstract getEvdoLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getGsmAsuLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getGsmLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getLteLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getLteServiceAbility()I
.end method

.method public abstract getNewRememberedPos(ILjava/lang/String;)I
.end method

.method public abstract getOperatorNumeric()Ljava/lang/String;
.end method

.method public abstract getPesn()Ljava/lang/String;
.end method

.method public abstract getSingleShiftTable(Landroid/content/res/Resources;)[I
.end method

.method public abstract getUniqueDeviceId(I)Ljava/lang/String;
.end method

.method public abstract isCallerInfofixedIndexValid(Ljava/lang/String;Landroid/database/Cursor;)Z
.end method

.method public abstract isCustRemoveSep()Z
.end method

.method public abstract isCustomProcess()Z
.end method

.method public abstract isHwCustNotEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isLongVoiceMailNumber(ILjava/lang/String;)Z
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public abstract isRemoveSeparateOnSK()Z
.end method

.method public abstract isSms7BitEnabled()Z
.end method

.method public abstract isVoiceMailNumber(Ljava/lang/String;)Z
.end method

.method public abstract printCallingAppNameInfo(ZLandroid/content/Context;)V
.end method

.method public abstract removeAllSeparate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setDefaultDataSlotId(I)V
.end method

.method public abstract setDualCardMode(I)Z
.end method

.method public abstract setLteServiceAbility(I)V
.end method

.method public abstract skipHardcodeEmergencyNumbers()Z
.end method

.method public abstract stripBrackets(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateCrurrentPhone(I)V
.end method

.method public abstract updateSigCustInfoFromXML(Landroid/content/Context;)V
.end method

.method public abstract useHwSignalStrength()Z
.end method

.method public abstract useVoiceMailNumberFeature()Z
.end method

.method public abstract validateInput(Landroid/telephony/SignalStrength;)V
.end method

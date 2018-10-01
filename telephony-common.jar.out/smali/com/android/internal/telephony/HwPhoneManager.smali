.class public interface abstract Lcom/android/internal/telephony/HwPhoneManager;
.super Ljava/lang/Object;
.source "HwPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwPhoneManager$PhoneServiceInterface;
    }
.end annotation


# static fields
.field public static final C2:Ljava/lang/String; = "F79345FB999D4D9B8A1E1FDA9BFBAAF8"

.field public static final MATCH_GROUP_DIALING_NUMBER:I = 0x10

.field public static final MATCH_GROUP_PWD_CONFIRM:I = 0xf

.field public static final MATCH_GROUP_SIA:I = 0x6

.field public static final MATCH_GROUP_SIB:I = 0x9

.field public static final MATCH_GROUP_SIC:I = 0xc

.field public static final sPatternSuppService:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})((\\*#|\\*|#)([^*#]*)((\\*|#)([^*#]*)((\\*|#)([^*#]*)((\\*|#)([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HwPhoneManager;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public abstract addSpecialAPN(Lcom/android/internal/telephony/PhoneBase;)V
.end method

.method public abstract addVirtualNetSpecialFile(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract addVirtualNetSpecialFile(Ljava/lang/String;Ljava/lang/String;[BI)V
.end method

.method public abstract changeMMItoUSSD(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Z
.end method

.method public abstract changedDefaultTimezone()V
.end method

.method public abstract convertUssdMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract createHwCDMAPhoneReference(Lcom/android/internal/telephony/cdma/AbstractCDMAPhone;)Lcom/android/internal/telephony/cdma/AbstractCDMAPhone$CDMAPhoneReference;
.end method

.method public abstract createHwCallManagerReference(Lcom/android/internal/telephony/AbstractCallManager;)Lcom/android/internal/telephony/AbstractCallManager$CallManagerReference;
.end method

.method public abstract createHwCdmaCallTrackerReference(Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;)Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;
.end method

.method public abstract createHwCdmaConnectionReference(Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;)Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;
.end method

.method public abstract createHwGSMPhoneReference(Lcom/android/internal/telephony/gsm/AbstractGSMPhone;)Lcom/android/internal/telephony/gsm/AbstractGSMPhone$GSMPhoneReference;
.end method

.method public abstract createHwGsmCallTrackerReference(Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;)Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;
.end method

.method public abstract createHwImsPhoneCallTrackerReference(Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;
.end method

.method public abstract createHwPhoneBaseReference(Lcom/android/internal/telephony/AbstractPhoneBase;)Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;
.end method

.method public abstract createHwPhoneProxyReference(Lcom/android/internal/telephony/AbstractPhoneProxy;)Lcom/android/internal/telephony/AbstractPhoneProxy$HwPhoneProxyReference;
.end method

.method public abstract createHwRil(Landroid/content/Context;IILjava/lang/Integer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract custCountryCodeForMcc(I)Ljava/lang/String;
.end method

.method public abstract custLanguageForMcc(I)Ljava/lang/String;
.end method

.method public abstract custSmallestDigitsMccForMnc(I)I
.end method

.method public abstract custTimeZoneForMcc(I)Ljava/lang/String;
.end method

.method public abstract getBetterMatchLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCDMAVoiceMailNumberHwCust(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getCallForwardingString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract getPesn(Lcom/android/internal/telephony/AbstractPhoneSubInfo;)Ljava/lang/String;
.end method

.method public abstract getPesn(Lcom/android/internal/telephony/AbstractPhoneSubInfoProxy;)Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerImsi()Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerImsi(Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerOperatorNumeric()Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerOperatorNumeric(Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerVoicemail()Ljava/lang/String;
.end method

.method public abstract getRoamingBrokerVoicemail(I)Ljava/lang/String;
.end method

.method public abstract getSpecialLoacleConfig(Landroid/content/Context;I)Ljava/util/Locale;
.end method

.method public abstract getVirtualNetEccNoCard(I)Ljava/lang/String;
.end method

.method public abstract getVirtualNetEccWihCard(I)Ljava/lang/String;
.end method

.method public abstract getVirtualNetNumeric()Ljava/lang/String;
.end method

.method public abstract getVirtualNetOperatorName(Ljava/lang/String;ZZILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVirtualNetVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVirtualNetVoicemailTag()Ljava/lang/String;
.end method

.method public abstract handleMessageGsmMmiCode(Lcom/android/internal/telephony/gsm/GsmMmiCode;Landroid/os/Message;)V
.end method

.method public abstract handlePasswordError(Ljava/lang/String;)I
.end method

.method public abstract initHwTimeZoneUpdater(Landroid/content/Context;)V
.end method

.method public abstract isDefaultTimezone()Z
.end method

.method public abstract isRoamingBrokerActivated()Z
.end method

.method public abstract isRoamingBrokerActivated(Ljava/lang/Integer;)Z
.end method

.method public abstract isShortCodeCustomization()Z
.end method

.method public abstract isStringHuaweiCustCode(Ljava/lang/String;)Z
.end method

.method public abstract isStringHuaweiIgnoreCode(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Z
.end method

.method public abstract isSupportEccFormVirtualNet()Z
.end method

.method public abstract isSupportOrangeApn(Lcom/android/internal/telephony/PhoneBase;)Z
.end method

.method public abstract isVirtualNet()Z
.end method

.method public abstract isVirtualNet(I)Z
.end method

.method public abstract loadHuaweiPhoneService(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
.end method

.method public abstract loadHuaweiPhoneService([Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
.end method

.method public abstract loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/uicc/SIMRecords;)V
.end method

.method public abstract loadVirtualNetSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/uicc/SIMRecords;)V
.end method

.method public abstract processBadPinString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract processImsPhoneMmiCode(Lcom/android/internal/telephony/gsm/GsmMmiCode;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
.end method

.method public abstract processgoodPinString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract setDefaultTimezone(Landroid/content/Context;)V
.end method

.method public abstract setMccTableIccId(Ljava/lang/String;)V
.end method

.method public abstract setMccTableImsi(Ljava/lang/String;)V
.end method

.method public abstract setMccTableMnc(I)V
.end method

.method public abstract setPhoneProxy(Lcom/android/internal/telephony/PhoneProxy;Landroid/content/Context;)V
.end method

.method public abstract setRoamingBrokerIccId(Ljava/lang/String;)V
.end method

.method public abstract setRoamingBrokerIccId(Ljava/lang/String;I)V
.end method

.method public abstract setRoamingBrokerImsi(Ljava/lang/String;)V
.end method

.method public abstract setRoamingBrokerImsi(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract setRoamingBrokerOperator(Ljava/lang/String;)V
.end method

.method public abstract setRoamingBrokerOperator(Ljava/lang/String;I)V
.end method

.method public abstract shouldSkipUpdateMccMnc(Ljava/lang/String;)Z
.end method

.method public abstract showMmiError(I)I
.end method

.method public abstract siToServiceClass(Ljava/lang/String;)I
.end method

.method public abstract triggerLogRadar(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateSelectionForRoamingBroker(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateSelectionForRoamingBroker(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract useAutoSimLan(Landroid/content/Context;)Z
.end method

.class public abstract Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "AbstractImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwImsPhoneCallTrackerReference(Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker;->mReference:Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;

    .line 12
    return-void
.end method


# virtual methods
.method public sendAnswerResultCheckMessage()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker;->mReference:Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/AbstractImsPhoneCallTracker$ImsPhoneCallTrackerReference;->sendAnswerResultCheckMessage()V

    .line 19
    return-void
.end method

.method public updateCallLog(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 22
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateCallLog(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 23
    return-void
.end method

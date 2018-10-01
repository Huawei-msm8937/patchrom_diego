.class public abstract Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "AbstractGsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwGsmCallTrackerReference(Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;)Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;->mReference:Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;

    .line 11
    return-void
.end method


# virtual methods
.method public notifyRegistrantsDelayed()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;->mReference:Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;->notifyRegistrantsDelayed()Z

    move-result v0

    return v0
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker;->mReference:Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/AbstractGsmCallTracker$GsmCallTrackerReference;->switchVoiceCallBackgroundState(I)V

    .line 24
    return-void
.end method

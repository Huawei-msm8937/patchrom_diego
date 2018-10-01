.class public abstract Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "AbstractCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCdmaCallTrackerReference(Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;)Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    .line 15
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->dispose()V

    .line 49
    return-void
.end method

.method public notifyRegistrantsDelayed()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->notifyRegistrantsDelayed()Z

    move-result v0

    return v0
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 35
    return-void
.end method

.method public setConnEncryptCallByNumber(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->setConnEncryptCallByNumber(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->switchVoiceCallBackgroundState(I)V

    .line 66
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 41
    return-void
.end method

.class public interface abstract Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker$CdmaCallTrackerReference;
.super Ljava/lang/Object;
.source "AbstractCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/AbstractCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CdmaCallTrackerReference"
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract notifyRegistrantsDelayed()Z
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setConnEncryptCallByNumber(Ljava/lang/String;Z)V
.end method

.method public abstract switchVoiceCallBackgroundState(I)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

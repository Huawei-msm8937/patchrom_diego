.class public Lcom/android/internal/telephony/dataconnection/DcTrackerUtils;
.super Ljava/lang/Object;
.source "DcTrackerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DcTrackerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpAllConnections(Lcom/android/internal/telephony/dataconnection/DcTracker;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "cleanUpAllConnections !"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerUtils;->log(Ljava/lang/String;)V

    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    move-result v0

    .line 15
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cleanUpConnection(Lcom/android/internal/telephony/dataconnection/DcTracker;ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 25
    const-string v0, "cleanUpConnection!"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerUtils;->log(Ljava/lang/String;)V

    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 29
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "DcTrackerUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static onTrySetupData(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "onTrySetupData !"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerUtils;->log(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

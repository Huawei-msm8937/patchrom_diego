.class public Landroid/app/HwCustAlarmManager;
.super Ljava/lang/Object;
.source "HwCustAlarmManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustAlarmManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeGcmHeartbeat(JLandroid/app/PendingIntent;)J
    .locals 1
    .param p1, "triggerAtMillis"    # J
    .param p3, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 41
    return-wide p1
.end method

.method public isHeartbeatSpeedupEnanbled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

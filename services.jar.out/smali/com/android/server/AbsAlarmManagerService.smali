.class public abstract Lcom/android/server/AbsAlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AbsAlarmManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected adjustAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 44
    return-void
.end method

.method protected adjustHwRTCAlarmLock(ZZI)V
    .locals 0
    .param p1, "deskClockTime"    # Z
    .param p2, "bootOnTime"    # Z
    .param p3, "typeState"    # I

    .prologue
    .line 54
    return-void
.end method

.method protected checkHasHwRTCAlarmLock(Ljava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 47
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected findFirstNonWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasWakeups(Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 1
    .param p1, "b"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method protected hwAddFirstFlagForRtcAlarm(Lcom/android/server/AlarmManagerService$Alarm;Landroid/content/Intent;)V
    .locals 0
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "backgroundIntent"    # Landroid/content/Intent;

    .prologue
    .line 69
    return-void
.end method

.method protected hwRecordFirstTime()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected hwRecordTimeChangeRTC(JJJJ)V
    .locals 0
    .param p1, "nowRTC"    # J
    .param p3, "nowELAPSED"    # J
    .param p5, "lastTimeChangeClockTime"    # J
    .param p7, "expectedClockTime"    # J

    .prologue
    .line 78
    return-void
.end method

.method protected hwRemoveAnywayRtcAlarm(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 66
    return-void
.end method

.method protected hwRemoveRtcAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 60
    return-void
.end method

.method protected hwSetRtcAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 63
    return-void
.end method

.method protected printHwWakeupBoot(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 57
    return-void
.end method

.method public removeAllPendingAlarms()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected resetPendingAlarmsLocked(J)V
    .locals 0
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 33
    return-void
.end method

.method public setAlarmsPending(Ljava/util/List;ZI)V
    .locals 0
    .param p2, "pending"    # Z
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method protected setHwAirPlaneStatePropLock()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected setSmartAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 22
    return-void
.end method

.method protected uniteBatchLocked(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "standalone"    # Z

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

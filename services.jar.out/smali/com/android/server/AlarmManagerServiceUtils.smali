.class public Lcom/android/server/AlarmManagerServiceUtils;
.super Ljava/lang/Object;
.source "AlarmManagerServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "batch"    # Lcom/android/server/AlarmManagerService$Batch;
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method public static get(Lcom/android/server/AlarmManagerService$Batch;I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p0, "batch"    # Lcom/android/server/AlarmManagerService$Batch;
    .param p1, "index"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v0

    return-object v0
.end method

.method public static maxTriggerTime(JJJ)J
    .locals 2
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 6
    invoke-static/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static rebatchAllAlarms(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "service"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 31
    return-void
.end method

.method public static size(Lcom/android/server/AlarmManagerService$Batch;)I
    .locals 1
    .param p0, "batch"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    return v0
.end method

.method public static standalone(Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 1
    .param p0, "batch"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    return v0
.end method

.method public static start(Lcom/android/server/AlarmManagerService$Batch;)J
    .locals 2
    .param p0, "batch"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    return-wide v0
.end method

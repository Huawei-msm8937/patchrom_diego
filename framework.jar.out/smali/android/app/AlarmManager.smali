.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private mCust:Landroid/app/HwCustAlarmManager;

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const-class v0, Landroid/app/HwCustAlarmManager;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HwCustAlarmManager;

    iput-object v0, p0, Landroid/app/AlarmManager;->mCust:Landroid/app/HwCustAlarmManager;

    .line 176
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 178
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 179
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 180
    return-void

    :cond_0
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 457
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    .line 465
    const-wide/16 p2, 0x0

    .line 468
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/AlarmManager;->mCust:Landroid/app/HwCustAlarmManager;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/AlarmManager;->mCust:Landroid/app/HwCustAlarmManager;

    invoke-virtual {v4}, Landroid/app/HwCustAlarmManager;->isHeartbeatSpeedupEnanbled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/AlarmManager;->mCust:Landroid/app/HwCustAlarmManager;

    move-wide/from16 v0, p2

    move-object/from16 v2, p9

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/HwCustAlarmManager;->changeGcmHeartbeat(JLandroid/app/PendingIntent;)J

    move-result-wide p2

    .line 473
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-interface/range {v4 .. v15}, Landroid/app/IAlarmManager;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public adjustHwRTCAlarm(ZZI)V
    .locals 1
    .param p1, "deskClockTime"    # Z
    .param p2, "bootOnTime"    # Z
    .param p3, "typeState"    # I

    .prologue
    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IAlarmManager;->adjustHwRTCAlarm(ZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkHasHwRTCAlarm(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 808
    const-wide/16 v0, -0x1

    .line 810
    .local v0, "time":J
    :try_start_0
    iget-object v2, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v2, p1}, Landroid/app/IAlarmManager;->checkHasHwRTCAlarm(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 813
    :goto_0
    return-wide v0

    .line 811
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 787
    :goto_0
    return-object v1

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    .prologue
    .line 753
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 755
    :goto_0
    return-wide v2

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "ex":Landroid/os/RemoteException;
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getWakeUpNum(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "num":I
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->getWakeUpNum(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 802
    :goto_0
    return v0

    .line 800
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 451
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 453
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 258
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 444
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v6, v4

    move v8, v1

    move-object v9, p2

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 445
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 623
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 625
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 407
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 408
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 677
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 679
    return-void
.end method

.method public setHwAirPlaneStateProp()V
    .locals 1

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->setHwAirPlaneStateProp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIdleUntil(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 416
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 417
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 574
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 575
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 320
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 732
    :cond_0
    iget v1, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 733
    const/4 v0, 0x0

    .line 735
    .local v0, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 739
    :goto_1
    if-nez v0, :cond_1

    .line 740
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an Olson ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    .end local v0    # "hasTimeZone":Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    goto :goto_0

    .line 736
    .restart local v0    # "hasTimeZone":Z
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 369
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 370
    return-void
.end method

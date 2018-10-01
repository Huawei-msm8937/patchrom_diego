.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2551
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2552
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 2556
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2559
    .local v13, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->hwRecordFirstTime()V

    .line 2564
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v12, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v3, v14, v15}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;J)I

    move-result v19

    .line 2566
    .local v19, "result":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2569
    .local v4, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2571
    .local v6, "nowELAPSED":J
    const/high16 v3, 0x10000

    and-int v3, v3, v19

    if-eqz v3, :cond_2

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v8, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2578
    .local v8, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v14, v6, v14

    add-long v10, v8, v14

    .line 2580
    .local v10, "expectedClockTime":J
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2581
    const-wide/16 v14, 0x0

    cmp-long v3, v8, v14

    if-eqz v3, :cond_1

    const-wide/16 v14, 0x1f4

    sub-long v14, v10, v14

    cmp-long v3, v4, v14

    if-ltz v3, :cond_1

    const-wide/16 v14, 0x1f4

    add-long/2addr v14, v10

    cmp-long v3, v4, v14

    if-lez v3, :cond_2

    .line 2587
    :cond_1
    const/16 v3, 0x1f4

    const-string v12, "Time changed notification from kernel; rebatching"

    invoke-static {v3, v12}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 2590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v12}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 2592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2594
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 2595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 2597
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2598
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_SET"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2600
    .local v18, "intent":Landroid/content/Intent;
    const/high16 v3, 0x34000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/AlarmManagerService;->hwRecordTimeChangeRTC(JJJJ)V

    .line 2611
    or-int/lit8 v19, v19, 0x5

    .line 2615
    .end local v8    # "lastTimeChangeClockTime":J
    .end local v10    # "expectedClockTime":J
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v3, 0x10000

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 2618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2639
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide v14, v6

    move-wide/from16 v16, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v2

    .line 2640
    .local v2, "hasWakeup":Z
    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v6, v7}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2644
    const/16 v3, 0x1f4

    const-string v12, "there are no wakeup alarms and the screen is off, we can delay what we have so far until the future"

    invoke-static {v3, v12}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 2646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v3, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 2648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v6, v7}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v14

    const-wide/16 v16, 0x3

    mul-long v14, v14, v16

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    add-long/2addr v14, v6

    iput-wide v14, v3, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2651
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v12, v3, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v3, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 2653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)V

    .line 2675
    :goto_1
    monitor-exit v22

    goto/16 :goto_0

    .end local v2    # "hasWakeup":Z
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2580
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2597
    .restart local v8    # "lastTimeChangeClockTime":J
    .restart local v10    # "expectedClockTime":J
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 2660
    .end local v8    # "lastTimeChangeClockTime":J
    .end local v10    # "expectedClockTime":J
    .restart local v2    # "hasWakeup":Z
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v13, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v20, v6, v14

    .line 2667
    .local v20, "thisDelayTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long v14, v14, v20

    iput-wide v14, v3, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v3, v14, v20

    if-gez v3, :cond_5

    .line 2669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2671
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2673
    .end local v20    # "thisDelayTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v13, v6, v7}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

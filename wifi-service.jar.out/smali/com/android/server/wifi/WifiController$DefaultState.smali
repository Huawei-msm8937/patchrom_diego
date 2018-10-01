.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 412
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 417
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$DefaultState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiController;->processDefaultState(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    :cond_1
    :goto_0
    :sswitch_0
    return v9

    .line 424
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController.handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDelayIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 430
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->access$1102(Lcom/android/server/wifi/WifiController;Z)Z

    .line 431
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->access$1202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 432
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 435
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->access$1102(Lcom/android/server/wifi/WifiController;Z)Z

    .line 442
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_4

    .line 446
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set idle timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 451
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "WifiController"

    const-string v4, "set delay idle timer: 60000"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDelayIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 461
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_7

    .line 463
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set idle timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 467
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26005

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto/16 :goto_0

    .line 471
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->access$1202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 472
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)V

    goto/16 :goto_0

    .line 482
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 483
    .local v0, "pluggedType":I
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battery changed pluggedType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 487
    .local v2, "triggerTime":J
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set idle timer for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 491
    .end local v2    # "triggerTime":J
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->access$1402(Lcom/android/server/wifi/WifiController;I)I

    goto/16 :goto_0

    .line 502
    .end local v0    # "pluggedType":I
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->access$1702(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 505
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE ignored due to state change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "CMD_WIFI_START_FAILURE ..."

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_0
        0x26002 -> :sswitch_1
        0x26003 -> :sswitch_2
        0x26004 -> :sswitch_5
        0x26005 -> :sswitch_4
        0x26006 -> :sswitch_0
        0x26007 -> :sswitch_0
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_0
        0x2600a -> :sswitch_0
        0x2600b -> :sswitch_7
        0x2600c -> :sswitch_6
        0x2600d -> :sswitch_3
        0x2600e -> :sswitch_0
        0x26032 -> :sswitch_8
    .end sparse-switch
.end method

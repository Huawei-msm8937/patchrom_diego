.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4282
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4283
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 4284
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4285
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4286
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4287
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4288
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4289
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4290
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 4607
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 4609
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4610
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4611
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4612
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 4613
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 4598
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4599
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4600
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4601
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4602
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 4603
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .prologue
    .line 4304
    if-nez p5, :cond_1

    .line 4305
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4306
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    const/16 v2, 0x13

    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 4307
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4308
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4309
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4320
    :goto_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 4321
    if-eqz p5, :cond_0

    .line 4322
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4324
    :cond_0
    const-string v0, "START"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4325
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4595
    :goto_1
    return-void

    .line 4311
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4312
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4313
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 4314
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4318
    :goto_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    goto :goto_0

    .line 4316
    :cond_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    .line 4326
    :cond_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 4328
    :cond_4
    if-eqz p5, :cond_5

    .line 4329
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4331
    :cond_5
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 4332
    const-string v0, "RESET:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4333
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4335
    :cond_6
    const-string v0, "TIME:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4336
    if-eqz p5, :cond_7

    .line 4337
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    .line 4339
    :cond_7
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4340
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4343
    :cond_8
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 4344
    if-eqz p5, :cond_9

    .line 4345
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4347
    :cond_9
    const-string v0, "SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4348
    :cond_a
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 4349
    if-eqz p5, :cond_b

    .line 4350
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4352
    :cond_b
    const-string v0, "*OVERFLOW*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4354
    :cond_c
    if-nez p5, :cond_25

    .line 4355
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4357
    :cond_d
    :goto_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4358
    if-eqz p6, :cond_f

    .line 4359
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4360
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v0, :cond_1e

    .line 4368
    :cond_e
    :goto_4
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4376
    :cond_f
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v0, v1, :cond_10

    .line 4377
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4378
    if-eqz p5, :cond_26

    const-string v0, ",Bs="

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4379
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v0, :pswitch_data_0

    .line 4396
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4400
    :cond_10
    :goto_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v0, v1, :cond_11

    .line 4401
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4402
    if-eqz p5, :cond_2c

    const-string v0, ",Bh="

    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4403
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v0, :pswitch_data_1

    .line 4426
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4430
    :cond_11
    :goto_9
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v0, v1, :cond_12

    .line 4431
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4432
    if-eqz p5, :cond_34

    const-string v0, ",Bp="

    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v0, :pswitch_data_2

    .line 4447
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4451
    :cond_12
    :goto_b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v0, v1, :cond_13

    .line 4452
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4453
    if-eqz p5, :cond_39

    const-string v0, ",Bt="

    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4454
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4456
    :cond_13
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v0, v1, :cond_14

    .line 4457
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4458
    if-eqz p5, :cond_3a

    const-string v0, ",Bv="

    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4461
    :cond_14
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-nez p5, :cond_3b

    const/4 v5, 0x1

    :goto_e
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4463
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v3, 0x0

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-nez p5, :cond_3c

    const/4 v5, 0x1

    :goto_f
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4465
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_15

    .line 4466
    if-eqz p5, :cond_3d

    .line 4467
    const-string v0, ",wr="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4477
    :cond_15
    :goto_10
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_17

    .line 4478
    if-eqz p5, :cond_3e

    const-string v0, ","

    :goto_11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4479
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3f

    .line 4480
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4484
    :cond_16
    :goto_12
    if-eqz p5, :cond_40

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 4486
    .local v6, "eventNames":[Ljava/lang/String;
    :goto_13
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, -0xc001

    and-int v7, v0, v1

    .line 4488
    .local v7, "idx":I
    if-ltz v7, :cond_41

    array-length v0, v6

    if-ge v7, v0, :cond_41

    .line 4489
    aget-object v0, v6, v7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    :goto_14
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    if-eqz p5, :cond_43

    .line 4496
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4504
    .end local v6    # "eventNames":[Ljava/lang/String;
    .end local v7    # "idx":I
    :cond_17
    :goto_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4505
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v0, :cond_1c

    .line 4506
    if-nez p5, :cond_44

    .line 4507
    const-string v0, "                 Details: cpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4509
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4510
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4511
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4512
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_1a

    .line 4513
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4514
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4516
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_18

    .line 4517
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4518
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4521
    :cond_18
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_19

    .line 4522
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4523
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4526
    :cond_19
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4528
    :cond_1a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4529
    const-string v0, "                          /proc/stat="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4531
    const-string v0, " usr, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4533
    const-string v0, " sys, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4534
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4535
    const-string v0, " io, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4536
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4537
    const-string v0, " irq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4538
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4539
    const-string v0, " sirq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4540
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4541
    const-string v0, " idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4542
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int v11, v0, v1

    .line 4545
    .local v11, "totalRun":I
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int v10, v11, v0

    .line 4546
    .local v10, "total":I
    if-lez v10, :cond_1b

    .line 4547
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4548
    int-to-float v0, v11

    int-to-float v1, v10

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v8, v0, v1

    .line 4549
    .local v8, "perc":F
    const-string v0, "%.1f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4550
    const-string v0, " of "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4552
    .local v9, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v0, v10, 0xa

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4553
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4554
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    .end local v8    # "perc":F
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4592
    .end local v10    # "total":I
    .end local v11    # "totalRun":I
    :cond_1c
    :goto_16
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4593
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto/16 :goto_1

    .line 4356
    :cond_1d
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4361
    :cond_1e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1f

    const-string v0, "0000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4362
    :cond_1f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_20

    const-string v0, "000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4363
    :cond_20
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_21

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4364
    :cond_21
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_22

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4365
    :cond_22
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_23

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4366
    :cond_23
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_24

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4367
    :cond_24
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_e

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4371
    :cond_25
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v0, v1, :cond_f

    .line 4372
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4373
    const-string v0, ",Bl="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_5

    .line 4378
    :cond_26
    const-string v0, " status="

    goto/16 :goto_6

    .line 4381
    :pswitch_1
    if-eqz p5, :cond_27

    const-string v0, "?"

    :goto_17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_27
    const-string/jumbo v0, "unknown"

    goto :goto_17

    .line 4384
    :pswitch_2
    if-eqz p5, :cond_28

    const-string v0, "c"

    :goto_18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    const-string v0, "charging"

    goto :goto_18

    .line 4387
    :pswitch_3
    if-eqz p5, :cond_29

    const-string v0, "d"

    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    const-string v0, "discharging"

    goto :goto_19

    .line 4390
    :pswitch_4
    if-eqz p5, :cond_2a

    const-string/jumbo v0, "n"

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2a
    const-string/jumbo v0, "not-charging"

    goto :goto_1a

    .line 4393
    :pswitch_5
    if-eqz p5, :cond_2b

    const-string v0, "f"

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2b
    const-string v0, "full"

    goto :goto_1b

    .line 4402
    :cond_2c
    const-string v0, " health="

    goto/16 :goto_8

    .line 4405
    :pswitch_6
    if-eqz p5, :cond_2d

    const-string v0, "?"

    :goto_1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2d
    const-string/jumbo v0, "unknown"

    goto :goto_1c

    .line 4408
    :pswitch_7
    if-eqz p5, :cond_2e

    const-string v0, "g"

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2e
    const-string v0, "good"

    goto :goto_1d

    .line 4411
    :pswitch_8
    if-eqz p5, :cond_2f

    const-string v0, "h"

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2f
    const-string/jumbo v0, "overheat"

    goto :goto_1e

    .line 4414
    :pswitch_9
    if-eqz p5, :cond_30

    const-string v0, "d"

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_30
    const-string v0, "dead"

    goto :goto_1f

    .line 4417
    :pswitch_a
    if-eqz p5, :cond_31

    const-string/jumbo v0, "v"

    :goto_20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_31
    const-string/jumbo v0, "over-voltage"

    goto :goto_20

    .line 4420
    :pswitch_b
    if-eqz p5, :cond_32

    const-string v0, "f"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_32
    const-string v0, "failure"

    goto :goto_21

    .line 4423
    :pswitch_c
    if-eqz p5, :cond_33

    const-string v0, "c"

    :goto_22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_33
    const-string v0, "cold"

    goto :goto_22

    .line 4432
    :cond_34
    const-string v0, " plug="

    goto/16 :goto_a

    .line 4435
    :pswitch_d
    if-eqz p5, :cond_35

    const-string/jumbo v0, "n"

    :goto_23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_35
    const-string/jumbo v0, "none"

    goto :goto_23

    .line 4438
    :pswitch_e
    if-eqz p5, :cond_36

    const-string v0, "a"

    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_36
    const-string v0, "ac"

    goto :goto_24

    .line 4441
    :pswitch_f
    if-eqz p5, :cond_37

    const-string/jumbo v0, "u"

    :goto_25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_37
    const-string/jumbo v0, "usb"

    goto :goto_25

    .line 4444
    :pswitch_10
    if-eqz p5, :cond_38

    const-string/jumbo v0, "w"

    :goto_26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_38
    const-string/jumbo v0, "wireless"

    goto :goto_26

    .line 4453
    :cond_39
    const-string v0, " temp="

    goto/16 :goto_c

    .line 4458
    :cond_3a
    const-string v0, " volt="

    goto/16 :goto_d

    .line 4461
    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 4463
    :cond_3c
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 4470
    :cond_3d
    const-string v0, " wake_reason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4471
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4472
    const-string v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4473
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 4478
    :cond_3e
    const-string v0, " "

    goto/16 :goto_11

    .line 4481
    :cond_3f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_16

    .line 4482
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4484
    :cond_40
    sget-object v6, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    goto/16 :goto_13

    .line 4491
    .restart local v6    # "eventNames":[Ljava/lang/String;
    .restart local v7    # "idx":I
    :cond_41
    if-eqz p5, :cond_42

    const-string v0, "Ev"

    :goto_27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_14

    .line 4491
    :cond_42
    const-string v0, "event"

    goto :goto_27

    .line 4498
    :cond_43
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4499
    const-string v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4500
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 4558
    .end local v6    # "eventNames":[Ljava/lang/String;
    .end local v7    # "idx":I
    :cond_44
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4559
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ",0,Dcpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4560
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4561
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4562
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4563
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_46

    .line 4564
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 4566
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_45

    .line 4567
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 4570
    :cond_45
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_46

    .line 4571
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 4575
    :cond_46
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4576
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4577
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ",0,Dpst="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4579
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4580
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4581
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4582
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4583
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4584
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4585
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4586
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4587
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4588
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4589
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_16

    .line 4379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4403
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4433
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4293
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4294
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4295
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4296
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4297
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4298
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4299
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4300
    return-void
.end method

.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRestarting:Z

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStarted:Z

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    const/4 v0, -0x1

    .line 3481
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 3462
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3468
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3472
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3476
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3482
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3483
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    .line 3484
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3485
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # J

    .prologue
    .line 3448
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration(IIJIJ)J
    .locals 6
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .prologue
    .line 3709
    mul-int/lit8 v1, p5, 0x4

    add-int v0, p1, v1

    .line 3710
    .local v0, "state":I
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IJ)J

    move-result-wide v2

    .line 3711
    .local v2, "time":J
    if-ne p2, p5, :cond_0

    .line 3712
    sub-long v4, p6, p3

    add-long/2addr v2, v4

    .line 3714
    :cond_0
    return-wide v2
.end method

.method private updateRunning(IJ)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3620
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_3

    :cond_0
    move v0, p1

    .line 3622
    .local v0, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v0, :cond_2

    .line 3623
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v1, :cond_4

    .line 3624
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3629
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3630
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3632
    :cond_2
    return-void

    .end local v0    # "state":I
    :cond_3
    move v0, v1

    .line 3620
    goto :goto_0

    .line 3626
    .restart local v0    # "state":I
    :cond_4
    if-eq v0, v1, :cond_1

    .line 3627
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    .line 3564
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 3565
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3566
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3567
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3568
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3569
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newOwner"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3488
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    .line 3489
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 3490
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3491
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3495
    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3496
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    .line 3497
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3498
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_3

    .line 3502
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3504
    :cond_3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_4

    .line 3508
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3510
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    .line 3514
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_0
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3522
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_7

    .line 3523
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3524
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v6, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    .line 3525
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3526
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_2

    .line 3527
    if-nez p2, :cond_1

    .line 3528
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while started: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_1
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3534
    :cond_2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_4

    .line 3535
    if-nez p2, :cond_3

    .line 3536
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while bound: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_3
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3542
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    .line 3543
    if-nez p2, :cond_5

    .line 3544
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while exec: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_5
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 3551
    .end local v0    # "now":J
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3553
    :cond_7
    return-void
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3600
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v1, :cond_0

    .line 3601
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3602
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3604
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_1

    .line 3605
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3607
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3609
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_2

    .line 3610
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3611
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3613
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v1, :cond_3

    .line 3614
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3615
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3617
    :cond_3
    return-void
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 3556
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestarting()Z
    .locals 1

    .prologue
    .line 3560
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3589
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3590
    const/4 v0, 0x0

    .line 3596
    :goto_0
    return v0

    .line 3592
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3596
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3572
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetDurationsSafely()V

    .line 3573
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3574
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3575
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3576
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3577
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3578
    return-void

    :cond_0
    move v0, v2

    .line 3573
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3574
    goto :goto_1

    :cond_2
    move v0, v2

    .line 3575
    goto :goto_2

    :cond_3
    move v1, v2

    .line 3576
    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 5
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3673
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 3674
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3677
    .local v0, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_2

    .line 3678
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_4

    .line 3679
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3684
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3685
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3686
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3688
    :cond_2
    return-void

    .end local v0    # "state":I
    :cond_3
    move v0, v1

    .line 3676
    goto :goto_0

    .line 3681
    .restart local v0    # "state":I
    :cond_4
    if-eqz p1, :cond_1

    .line 3682
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 5
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3691
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 3692
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3695
    .local v0, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v0, :cond_2

    .line 3696
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_4

    .line 3697
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3701
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3702
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3703
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3705
    :cond_2
    return-void

    .end local v0    # "state":I
    :cond_3
    move v0, v1

    .line 3694
    goto :goto_0

    .line 3698
    .restart local v0    # "state":I
    :cond_4
    if-eqz p1, :cond_1

    .line 3699
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    goto :goto_1
.end method

.method public setRestarting(ZIJ)V
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3643
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    .line 3644
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3645
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3636
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    .line 3639
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStartedState(IJ)V
    .locals 8
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3648
    iget v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v6, v5, :cond_4

    move v2, v3

    .line 3649
    .local v2, "wasStarted":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v6, :cond_5

    :cond_0
    move v0, v3

    .line 3650
    .local v0, "started":Z
    :goto_1
    if-eqz v0, :cond_6

    move v1, p1

    .line 3651
    .local v1, "state":I
    :goto_2
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v1, :cond_3

    .line 3652
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v5, :cond_7

    .line 3653
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v4, p2, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3658
    :cond_1
    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3659
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3660
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3661
    if-eq v2, v0, :cond_2

    .line 3662
    if-eqz v0, :cond_8

    .line 3663
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3668
    :cond_2
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3670
    :cond_3
    return-void

    .end local v0    # "started":Z
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_4
    move v2, v4

    .line 3648
    goto :goto_0

    .restart local v2    # "wasStarted":Z
    :cond_5
    move v0, v4

    .line 3649
    goto :goto_1

    .restart local v0    # "started":Z
    :cond_6
    move v1, v5

    .line 3650
    goto :goto_2

    .line 3655
    .restart local v1    # "state":I
    :cond_7
    if-eqz v0, :cond_1

    .line 3656
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    goto :goto_3

    .line 3665
    :cond_8
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    goto :goto_4
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 3581
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3582
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3583
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3585
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3586
    return-void
.end method

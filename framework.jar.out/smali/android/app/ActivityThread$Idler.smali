.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    .line 1626
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 1626
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1629
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1630
    .local v0, "a":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    .line 1631
    .local v3, "stopProfiling":Z
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v4, v4, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v4, :cond_0

    .line 1633
    const/4 v3, 0x1

    .line 1635
    :cond_0
    if-eqz v0, :cond_3

    .line 1636
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iput-object v8, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1637
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1640
    .local v1, "am":Landroid/app/IActivityManager;
    :cond_1
    const/16 v6, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting idle of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " finished="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1643
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_2

    .line 1645
    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v4, v6, v3}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 1646
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :cond_2
    :goto_1
    move-object v2, v0

    .line 1652
    .local v2, "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1653
    iput-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1654
    if-nez v0, :cond_1

    .line 1656
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    if-eqz v3, :cond_4

    .line 1657
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v4}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 1659
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 1660
    return v5

    .restart local v1    # "am":Landroid/app/IActivityManager;
    :cond_5
    move v4, v5

    .line 1640
    goto :goto_0

    .line 1647
    :catch_0
    move-exception v4

    goto :goto_1
.end method

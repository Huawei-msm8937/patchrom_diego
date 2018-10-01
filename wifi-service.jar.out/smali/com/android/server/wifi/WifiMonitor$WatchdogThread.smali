.class Lcom/android/server/wifi/WifiMonitor$WatchdogThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchdogThread"
.end annotation


# instance fields
.field private backupThreadId:J

.field private preEventToken:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 855
    const-string v0, "WifiMonitorWatchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method private waitMonent(J)V
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    .line 859
    monitor-enter p0

    .line 860
    move-wide v4, p1

    .line 861
    .local v4, "waitTime":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 862
    .local v2, "start":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-lez v1, :cond_0

    .line 864
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long p1, v4, v6

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WifiMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 870
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "start":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v2    # "start":J
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 871
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 873
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadId:J
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$900()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->backupThreadId:J

    .line 874
    const/4 v6, 0x0

    .line 875
    .local v6, "wait_state_counter":I
    const/4 v4, 0x0

    .line 878
    .local v4, "pretoken":I
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1000()I

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->backupThreadId:J

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadId:J
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$900()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 879
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1000()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 880
    const-wide/16 v8, 0x3a98

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->waitMonent(J)V

    .line 881
    add-int/lit8 v6, v6, 0x1

    .line 882
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1100()I

    move-result v7

    if-eq v4, v7, :cond_1

    .line 883
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1100()I

    move-result v4

    .line 884
    const/4 v6, 0x0

    .line 886
    :cond_1
    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 887
    const/4 v6, 0x0

    .line 888
    const-string v7, "WifiMonitor"

    const-string v8, "WatchdogThread wait state."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1100()I

    move-result v7

    iput v7, p0, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->preEventToken:I

    .line 893
    const-wide/16 v8, 0x7530

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->waitMonent(J)V

    .line 894
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1000()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/android/server/wifi/WifiMonitor$WatchdogThread;->preEventToken:I

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1100()I

    move-result v8

    if-ne v7, v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThread:Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$400()Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 895
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThread:Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$400()Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 896
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    const-string v7, "WifiMonitor"

    const-string v8, "WatchdogThread mMonitorThread statckTrace:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 899
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 904
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_3
    return-void
.end method

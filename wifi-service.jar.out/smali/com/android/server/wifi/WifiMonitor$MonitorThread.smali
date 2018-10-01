.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 914
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    .line 915
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 916
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 917
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 920
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MonitorThread start with mConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$1200(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_0
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$1102(I)I

    .line 926
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadId:J
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->access$902(J)J

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$1200(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 932
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThread:Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    invoke-static {v7}, Lcom/android/server/wifi/WifiMonitor;->access$402(Lcom/android/server/wifi/WifiMonitor$MonitorThread;)Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    .line 933
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadId:J
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiMonitor;->access$902(J)J

    .line 934
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$1002(I)I

    .line 936
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiMonitor"

    const-string v3, "MonitorThread exit because mConnected is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_2
    :goto_0
    return-void

    .line 940
    :cond_3
    const/4 v2, 0x1

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$1002(I)I

    .line 942
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "eventStr":Ljava/lang/String;
    const/4 v2, 0x2

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$1002(I)I

    .line 945
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1100()I

    move-result v2

    const v3, 0xffff

    if-lt v2, v3, :cond_4

    .line 946
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$1102(I)I

    .line 948
    :cond_4
    # operator++ for: Lcom/android/server/wifi/WifiMonitor;->mEventToken:I
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$1108()I

    .line 951
    const-string v2, "BSS-ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_8

    const-string v2, "BSS-REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 954
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 955
    const-string v2, "passphrase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "psk="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 956
    :cond_5
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "event":Ljava/lang/String;
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contains password hide it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .end local v0    # "event":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v2, "passphrase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "psk="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 964
    :cond_7
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 965
    .restart local v0    # "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contains password hide it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 972
    .end local v0    # "event":Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$1300(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThread:Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    invoke-static {v7}, Lcom/android/server/wifi/WifiMonitor;->access$402(Lcom/android/server/wifi/WifiMonitor$MonitorThread;)Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    .line 975
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadId:J
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiMonitor;->access$902(J)J

    .line 976
    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitorThreadState:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$1002(I)I

    .line 978
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiMonitor"

    const-string v3, "Disconnecting from the supplicant, no more events"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 958
    :cond_9
    const-string v2, "SCAN-STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 959
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 967
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

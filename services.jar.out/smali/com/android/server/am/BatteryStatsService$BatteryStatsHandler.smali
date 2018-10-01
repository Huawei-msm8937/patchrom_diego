.class Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
.super Landroid/os/Handler;
.source "BatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryStatsHandler"
.end annotation


# static fields
.field public static final MSG_SYNC_EXTERNAL_STATS:I = 0x1

.field public static final MSG_WRITE_TO_DISK:I = 0x2


# instance fields
.field private mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 103
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    .line 107
    return-void
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 167
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    :cond_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 171
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 114
    :pswitch_0
    monitor-enter p0

    .line 115
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->removeMessages(I)V

    .line 116
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 117
    .local v2, "updateFlags":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 124
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 125
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 127
    .local v1, "numUidsToRemove":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 130
    .restart local v0    # "i":I
    .restart local v1    # "numUidsToRemove":I
    .restart local v2    # "updateFlags":I
    :cond_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 132
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 130
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 136
    .end local v2    # "updateFlags":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v4, "write"

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 137
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 138
    :try_start_8
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 139
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scheduleCpuSyncDueToRemovedUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    const-string v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleWifiSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

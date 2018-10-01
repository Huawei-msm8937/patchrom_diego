.class public Landroid/os/BlockMonitor;
.super Ljava/lang/Object;
.source "BlockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BlockMonitor$MessageInfo;,
        Landroid/os/BlockMonitor$BlockRadar;
    }
.end annotation


# static fields
.field private static final BUG_TYPE:I = 0x68

.field private static final DEBUG_MAIN_THREAD_BLOCK:Z

.field private static final HALF_MAIN_THREAD_MESSAGE_LIMIT:J = 0x96L

.field private static final MAIN_THREAD_BLOCK_TIMEOUT:J = 0xfa0L

.field private static final MAIN_THREAD_MESSAGE_CALLBACK:Ljava/lang/String; = "android.app.LoadedApk$ReceiverDispatcher$Args"

.field private static final MAIN_THREAD_MESSAGE_LIMIT:J = 0x12cL

.field private static final SCENE_TYPE_BINDER_BLOCK:I = 0xb57

.field private static final SCENE_TYPE_INPUT_BLOCK:I = 0xb58

.field private static final SCENE_TYPE_MESSAGE_BLOCK:I = 0xb55

.field private static final SCENE_TYPE_MESSAGE_COUNT_BLOCK:I = 0xb56

.field private static final TAG:Ljava/lang/String; = "BlockMonitor"

.field private static final TOP_MESSAGE_TO_REPORT:I = 0x3

.field private static volatile sMainThread:Ljava/lang/Thread;

.field private static sReportMessageCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    const-string/jumbo v2, "ro.logsystem.usertype"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Landroid/os/BlockMonitor;->DEBUG_MAIN_THREAD_BLOCK:Z

    .line 49
    sput-boolean v1, Landroid/os/BlockMonitor;->sReportMessageCount:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BlockMonitor;->sMainThread:Ljava/lang/Thread;

    return-void

    :cond_0
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/BlockMonitor;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkBinderTime(J)V
    .locals 12
    .param p0, "startTime"    # J

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v6, v8, p0

    .line 141
    .local v6, "processTime":J
    const-wide/16 v8, 0xfa0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v8, "Package name: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v8, "The binder calling took "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v8, "ms."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 151
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 152
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    const/16 v8, 0x68

    const/16 v9, 0xb57

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/BlockMonitor$BlockRadar;->upload(IILjava/lang/String;)V

    .line 158
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static checkInputTime(J)V
    .locals 6
    .param p0, "startTime"    # J

    .prologue
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p0

    .line 118
    .local v0, "processTime":J
    const-wide/16 v4, 0xfa0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "The input took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v3, 0x68

    const/16 v4, 0xb58

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/BlockMonitor$BlockRadar;->upload(IILjava/lang/String;)V

    .line 129
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static checkMessageCount(Landroid/os/MessageQueue;)V
    .locals 14
    .param p0, "messageQueue"    # Landroid/os/MessageQueue;

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    const/4 v8, 0x0

    .line 169
    .local v8, "sb":Ljava/lang/StringBuilder;
    monitor-enter p0

    .line 173
    :try_start_0
    sget-boolean v10, Landroid/os/BlockMonitor;->sReportMessageCount:Z

    if-nez v10, :cond_1

    .line 174
    iget v10, p0, Landroid/os/MessageQueue;->mMessageCount:I

    int-to-long v10, v10

    const-wide/16 v12, 0x12c

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 175
    const-string v10, "BlockMonitor"

    const-string v11, "Message queue size is too large!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v10, 0x1

    sput-boolean v10, Landroid/os/BlockMonitor;->sReportMessageCount:Z

    .line 188
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v9, "sb":Ljava/lang/StringBuilder;
    :try_start_1
    const-string v10, "Package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v10, "Message queue size is too large: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v10, p0, Landroid/os/MessageQueue;->mMessageCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "n":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 200
    .end local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .local v6, "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    :try_start_2
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v3, :cond_4

    .line 201
    invoke-static {v3}, Landroid/os/BlockMonitor;->dumpMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BlockMonitor$MessageInfo;

    .line 203
    .local v1, "info":Landroid/os/BlockMonitor$MessageInfo;
    if-eqz v1, :cond_3

    .line 204
    iget v10, v1, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    .line 209
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 200
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 178
    .end local v1    # "info":Landroid/os/BlockMonitor$MessageInfo;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .end local v7    # "n":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    monitor-exit p0

    .line 239
    :goto_2
    return-void

    .line 181
    :cond_1
    iget v10, p0, Landroid/os/MessageQueue;->mMessageCount:I

    int-to-long v10, v10

    const-wide/16 v12, 0x96

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 182
    const-string v10, "BlockMonitor"

    const-string v11, "Message queue size is below 150"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v10, 0x0

    sput-boolean v10, Landroid/os/BlockMonitor;->sReportMessageCount:Z

    .line 185
    :cond_2
    monitor-exit p0

    goto :goto_2

    .line 216
    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 206
    .end local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "info":Landroid/os/BlockMonitor$MessageInfo;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .restart local v7    # "n":I
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_4
    new-instance v10, Landroid/os/BlockMonitor$MessageInfo;

    const/4 v11, 0x1

    invoke-direct {v10, v2, v11}, Landroid/os/BlockMonitor$MessageInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 216
    .end local v1    # "info":Landroid/os/BlockMonitor$MessageInfo;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .end local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .restart local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    goto :goto_3

    .line 212
    .end local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget v10, p0, Landroid/os/MessageQueue;->mMessageCount:I

    if-eq v7, v10, :cond_5

    .line 213
    const-string v10, "BlockMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message queue size is not correct, count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/os/MessageQueue;->mMessageCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", real size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v4, "msgList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BlockMonitor$MessageInfo;>;"
    new-instance v10, Landroid/os/BlockMonitor$1;

    invoke-direct {v10}, Landroid/os/BlockMonitor$1;-><init>()V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_6

    const/4 v10, 0x3

    if-ge v0, v10, :cond_6

    .line 234
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BlockMonitor$MessageInfo;

    .line 235
    .restart local v1    # "info":Landroid/os/BlockMonitor$MessageInfo;
    iget-object v10, v1, Landroid/os/BlockMonitor$MessageInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 238
    .end local v1    # "info":Landroid/os/BlockMonitor$MessageInfo;
    :cond_6
    const/16 v10, 0x68

    const/16 v11, 0xb56

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/os/BlockMonitor$BlockRadar;->upload(IILjava/lang/String;)V

    move-object v8, v9

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .line 239
    .end local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    .restart local v5    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/BlockMonitor$MessageInfo;>;"
    goto/16 :goto_2

    .line 216
    .end local v0    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BlockMonitor$MessageInfo;>;"
    .end local v7    # "n":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_3
.end method

.method public static checkMessageTime(JLandroid/os/Message;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p0

    .line 93
    .local v0, "processTime":J
    const-wide/16 v4, 0xfa0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "The Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p2}, Landroid/os/BlockMonitor;->dumpMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v3, 0x68

    const/16 v4, 0xb55

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/BlockMonitor$BlockRadar;->upload(IILjava/lang/String;)V

    .line 106
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private static dumpMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Landroid/os/Message;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v3, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 246
    iget-object v3, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 249
    :try_start_0
    iget-object v3, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "callbackClass":Ljava/lang/String;
    const-string v3, " callback="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, "android.app.LoadedApk$ReceiverDispatcher$Args"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "callbackClass":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    .line 265
    const-string v3, " arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    iget v3, p0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    .line 270
    const-string v3, " arg2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v3, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    :cond_2
    iget-object v3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 275
    const-string v3, " obj="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    const-string v3, " target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v3, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :goto_1
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BlockMonitor"

    const-string v4, "Could not get Class Name"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v3, " what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_5
    const-string v3, " barrier="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    const-string/jumbo v0, "system_server"

    .line 296
    :cond_0
    return-object v0
.end method

.method private static getVersionCode()I
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "versionCode":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 305
    :cond_0
    return v0
.end method

.method private static getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 312
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 316
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "BlockMonitor"

    const-string v5, "Could not get package info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/BlockMonitor;->getVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static isDebugMainThreadBlock()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Landroid/os/BlockMonitor;->DEBUG_MAIN_THREAD_BLOCK:Z

    return v0
.end method

.method private static isInMainThread()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    sget-object v2, Landroid/os/BlockMonitor;->sMainThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Landroid/os/BlockMonitor;->sMainThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 77
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Landroid/os/BlockMonitor;->sMainThread:Ljava/lang/Thread;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public static isNeedMonitor()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Landroid/os/BlockMonitor;->isDebugMainThreadBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/BlockMonitor;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

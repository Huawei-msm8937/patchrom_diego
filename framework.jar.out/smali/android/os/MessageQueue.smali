.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessageCount:I

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 72
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 73
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 74
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 274
    .local v4, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v4, :cond_0

    .line 275
    const/4 v3, 0x0

    monitor-exit p0

    .line 311
    :goto_0
    return v3

    .line 278
    :cond_0
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 279
    .local v3, "oldWatchedEvents":I
    and-int/2addr p2, v3

    .line 280
    if-nez p2, :cond_1

    .line 281
    monitor-exit p0

    goto :goto_0

    .line 286
    .end local v3    # "oldWatchedEvents":I
    .end local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 284
    .restart local v3    # "oldWatchedEvents":I
    .restart local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_1
    :try_start_1
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 285
    .local v1, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 286
    .local v5, "seq":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v2

    .line 291
    .local v2, "newWatchedEvents":I
    if-eqz v2, :cond_2

    .line 292
    or-int/lit8 v2, v2, 0x4

    .line 297
    :cond_2
    if-eq v2, v3, :cond_4

    .line 298
    monitor-enter p0

    .line 299
    :try_start_2
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 300
    .local v0, "index":I
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v5, :cond_3

    .line 302
    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 303
    if-nez v2, :cond_3

    .line 304
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 307
    :cond_3
    monitor-exit p0

    .end local v0    # "index":I
    :cond_4
    move v3, v2

    .line 311
    goto :goto_0

    .line 307
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 90
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 96
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 477
    monitor-enter p0

    .line 478
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 479
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 481
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 482
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 486
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 487
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 488
    move-object v2, v1

    .line 489
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 492
    :cond_0
    if-eqz v2, :cond_1

    .line 493
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 494
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 501
    :goto_1
    iget v4, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 504
    monitor-exit p0

    return v3

    .line 496
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 497
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 505
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .prologue
    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 780
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 781
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 782
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 783
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 794
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    .line 787
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 788
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 791
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 796
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 798
    :cond_3
    move-object v1, v0

    .line 799
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 800
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 802
    iget v4, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 804
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    .line 766
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 767
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 768
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 769
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 770
    move-object v1, v0

    .line 771
    goto :goto_0

    .line 772
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 774
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 776
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 233
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 234
    .local v1, "index":I
    const/4 v2, 0x0

    .line 235
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 237
    if-ltz v1, :cond_1

    .line 238
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 239
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-eqz p2, :cond_4

    .line 246
    or-int/lit8 p2, p2, 0x4

    .line 247
    if-nez v2, :cond_3

    .line 248
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 249
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 251
    :cond_2
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 252
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    :goto_1
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_0

    .line 254
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 255
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 256
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    goto :goto_1

    .line 259
    :cond_4
    if-eqz v2, :cond_0

    .line 260
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 261
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-nez p3, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 204
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 810
    monitor-enter p0

    .line 811
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 812
    .local v2, "now":J
    const/4 v1, 0x0

    .line 813
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 815
    add-int/lit8 v1, v1, 0x1

    .line 813
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 817
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 819
    monitor-exit p0

    .line 820
    return-void

    .line 819
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 556
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 562
    :cond_1
    monitor-enter p0

    .line 563
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_2

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 568
    monitor-exit p0

    .line 609
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return v1

    .line 571
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 572
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 573
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 575
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-eqz v5, :cond_3

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_5

    .line 577
    :cond_3
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 578
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 579
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 601
    .local v1, "needWake":Z
    :goto_1
    iget v5, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 605
    if-eqz v1, :cond_4

    .line 606
    iget-wide v6, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v6, v7}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 608
    :cond_4
    monitor-exit p0

    move v1, v4

    .line 609
    goto :goto_0

    .line 584
    .end local v1    # "needWake":Z
    :cond_5
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .line 587
    .restart local v1    # "needWake":Z
    :cond_6
    :goto_2
    move-object v3, v2

    .line 588
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 589
    if-eqz v2, :cond_7

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_8

    .line 596
    :cond_7
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 597
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 608
    .end local v1    # "needWake":Z
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 592
    .restart local v1    # "needWake":Z
    .restart local v2    # "p":Landroid/os/Message;
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_8
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 593
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 613
    if-nez p1, :cond_0

    .line 625
    :goto_0
    return v1

    .line 617
    :cond_0
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 619
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 620
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 621
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 626
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 623
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 625
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 630
    if-nez p1, :cond_0

    .line 642
    :goto_0
    return v1

    .line 634
    :cond_0
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 636
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 637
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 638
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 643
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 640
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 642
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 109
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPolling()Z
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 18

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    .line 319
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_0

    .line 320
    const/4 v5, 0x0

    .line 374
    :goto_0
    return-object v5

    .line 323
    :cond_0
    const/4 v7, -0x1

    .line 324
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    .line 326
    .local v6, "nextPollTimeoutMillis":I
    :goto_1
    if-eqz v6, :cond_1

    .line 327
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 330
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 332
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 335
    .local v8, "now":J
    const/4 v10, 0x0

    .line 336
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 337
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_3

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_3

    .line 340
    :cond_2
    move-object v10, v5

    .line 341
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 342
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 344
    :cond_3
    if-eqz v5, :cond_6

    .line 345
    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 347
    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    .line 372
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_7

    .line 373
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V

    .line 374
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 394
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    .end local v10    # "prevMsg":Landroid/os/Message;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 350
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    .restart local v10    # "prevMsg":Landroid/os/Message;
    :cond_4
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 351
    if-eqz v10, :cond_5

    .line 352
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 356
    :goto_3
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 358
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 361
    move-object/from16 v0, p0

    iget v14, v0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 364
    monitor-exit p0

    goto :goto_0

    .line 354
    :cond_5
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 368
    :cond_6
    const/4 v6, -0x1

    goto :goto_2

    .line 380
    :cond_7
    if-gez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_9

    .line 382
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 384
    :cond_9
    if-gtz v7, :cond_a

    .line 386
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 387
    monitor-exit p0

    goto/16 :goto_1

    .line 390
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_b

    .line 391
    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 393
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 394
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v7, :cond_d

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    .line 400
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 402
    const/4 v4, 0x0

    .line 404
    .local v4, "keep":Z
    :try_start_2
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 409
    :goto_5
    if-nez v4, :cond_c

    .line 410
    monitor-enter p0

    .line 411
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 405
    :catch_0
    move-exception v11

    .line 406
    .local v11, "t":Ljava/lang/Throwable;
    const-string v14, "MessageQueue"

    const-string v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 412
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v14

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .line 417
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v4    # "keep":Z
    :cond_d
    const/4 v7, 0x0

    .line 421
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public postSyncBarrier()I
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    monitor-enter p0

    .line 431
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_1

    .line 432
    monitor-exit p0

    .line 445
    :goto_0
    return-void

    .line 434
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 436
    if-eqz p1, :cond_2

    .line 437
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 443
    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 444
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 439
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 763
    :goto_0
    return-void

    .line 731
    :cond_0
    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 736
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 737
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 738
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 739
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 740
    move-object v2, v0

    .line 742
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_1

    .line 762
    .end local v0    # "n":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 747
    .restart local v2    # "p":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 748
    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 749
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 750
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 751
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 752
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 753
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 755
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_2

    .line 760
    .end local v1    # "nn":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 761
    goto :goto_2

    .line 762
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 651
    :cond_0
    monitor-enter p0

    .line 652
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 656
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 657
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 658
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 659
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 660
    move-object v2, v0

    .line 662
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_1

    .line 683
    .end local v0    # "n":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 667
    .restart local v2    # "p":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 668
    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 669
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 670
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 672
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 673
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 674
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 676
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_2

    .line 681
    .end local v1    # "nn":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 682
    goto :goto_2

    .line 683
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 687
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 696
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 697
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 698
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 699
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 700
    move-object v2, v0

    .line 702
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_1

    .line 723
    .end local v0    # "n":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 707
    .restart local v2    # "p":Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 708
    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 709
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 710
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 712
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 713
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 714
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 716
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    goto :goto_2

    .line 721
    .end local v1    # "nn":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 722
    goto :goto_2

    .line 723
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    monitor-enter p0

    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 226
    monitor-exit p0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 521
    monitor-enter p0

    .line 522
    const/4 v2, 0x0

    .line 523
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 524
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 525
    :cond_0
    move-object v2, v1

    .line 526
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 528
    :cond_1
    if-nez v1, :cond_2

    .line 529
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 533
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 534
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 535
    const/4 v0, 0x0

    .line 540
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 543
    iget v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mMessageCount:I

    .line 548
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_3

    .line 549
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 551
    :cond_3
    monitor-exit p0

    .line 552
    return-void

    .line 537
    .end local v0    # "needWake":Z
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 538
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_2
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

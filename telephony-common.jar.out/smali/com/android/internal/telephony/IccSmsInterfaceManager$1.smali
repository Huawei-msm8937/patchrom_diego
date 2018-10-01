.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 217
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v7, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 219
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    :goto_1
    iput-boolean v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    move v5, v6

    .line 219
    goto :goto_1

    .line 224
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 226
    :try_start_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 227
    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 229
    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 237
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 231
    :cond_2
    :try_start_2
    const-string v4, "SMS"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v6, "Cannot load Sms records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 234
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 242
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v7, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 244
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    :goto_3
    iput-boolean v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 245
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 246
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    :cond_4
    move v5, v6

    .line 244
    goto :goto_3

    .line 250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v7, "EVENT_GET_UIM_SUPPORT_MEID_DONE entry"

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    move v1, v5

    .line 253
    .local v1, "bResult":Z
    :goto_4
    if-nez v1, :cond_7

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsUimSupportMeid:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 269
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsUimSupportMeid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsUimSupportMeid:Z
    invoke-static {v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 271
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-boolean v1, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 272
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .end local v1    # "bResult":Z
    :cond_6
    move v1, v6

    .line 252
    goto :goto_4

    .line 256
    .restart local v1    # "bResult":Z
    :cond_7
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 257
    .local v2, "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 258
    iget-object v3, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 259
    .local v3, "uimDeviceId":[B
    array-length v4, v3

    if-ne v8, v4, :cond_8

    .line 260
    const/4 v4, 0x2

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3

    if-ne v8, v4, :cond_5

    .line 262
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsUimSupportMeid:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    goto :goto_5

    .line 265
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsUimSupportMeid:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    goto :goto_5

    .line 276
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "bResult":Z
    .end local v2    # "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v3    # "uimDeviceId":[B
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v7, "EVENT_GET_MEID_OR_PESN_DONE entry"

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 278
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    move v1, v5

    .line 279
    .restart local v1    # "bResult":Z
    :goto_6
    if-nez v1, :cond_b

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mMeidOrEsn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    :cond_9
    :goto_7
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 296
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-boolean v1, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 297
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .end local v1    # "bResult":Z
    :cond_a
    move v1, v6

    .line 278
    goto :goto_6

    .line 282
    .restart local v1    # "bResult":Z
    :cond_b
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 283
    .restart local v2    # "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 284
    iget-object v3, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 285
    .restart local v3    # "uimDeviceId":[B
    aget-byte v4, v3, v6

    and-int/lit8 v4, v4, 0xf

    if-ne v9, v4, :cond_c

    .line 286
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManager;->bytesToHexString([BII)Ljava/lang/String;
    invoke-static {v6, v3, v5, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;[BII)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mMeidOrEsn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 287
    :cond_c
    aget-byte v4, v3, v6

    and-int/lit8 v4, v4, 0xf

    if-ne v10, v4, :cond_9

    .line 288
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManager;->bytesToHexString([BII)Ljava/lang/String;
    invoke-static {v6, v3, v5, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;[BII)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mMeidOrEsn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 291
    .end local v3    # "uimDeviceId":[B
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v5, "else can not get meid or pesn"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    goto :goto_7

    .line 301
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "bResult":Z
    .end local v2    # "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v7, "EVENT_SET_MEID_OR_PESN_DONE entry"

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 303
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v7, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 304
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_e

    move v4, v5

    :goto_8
    iput-boolean v4, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 305
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v4

    :cond_e
    move v4, v6

    .line 304
    goto :goto_8

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_3
    .end sparse-switch
.end method

.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 87
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConnection;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 97
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :sswitch_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 108
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/DisconnectCause;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 116
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 118
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v6, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnectedWithSsNotification(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 128
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :sswitch_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 134
    :sswitch_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 137
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 139
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 141
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 146
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 148
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConference;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 151
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 156
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :sswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 161
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 163
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 168
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 170
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v2, v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 172
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 177
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/RemoteServiceCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto/16 :goto_0

    .line 180
    :sswitch_f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    :sswitch_10
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 185
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 188
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 193
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_11
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 196
    :sswitch_12
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 198
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/StatusHints;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 200
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 205
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_13
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 207
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget v3, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 209
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 214
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 216
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 219
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 224
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 226
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 229
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 234
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_16
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 236
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConnection;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 239
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 244
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_17
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 246
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 248
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 253
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_18
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 255
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 257
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 265
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_19
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 267
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPhoneAccountHandle(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 270
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_f
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_d
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x65 -> :sswitch_5
        0x66 -> :sswitch_19
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/huawei/pgmng/PGPlug;
.super Ljava/lang/Object;
.source "PGPlug.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_DISPATCH_MESSAGE:I = 0x3e8

.field private static final MAX_TRY_COUNT:I = 0xa


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

.field private mSocket:Ljava/lang/String;

.field private retries:I


# direct methods
.method public constructor <init>(Lcom/huawei/pgmng/IPGPlugCallbacks;Ljava/lang/String;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/huawei/pgmng/IPGPlugCallbacks;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "PGPlug"

    iput-object v0, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "pg-socket"

    iput-object v0, p0, Lcom/huawei/pgmng/PGPlug;->mSocket:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    .line 33
    iput-object p1, p0, Lcom/huawei/pgmng/PGPlug;->mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

    .line 34
    if-eqz p2, :cond_0

    .line 35
    iput-object p2, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method private listenToSocket()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 85
    .local v1, "content":Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v5    # "socket":Landroid/net/LocalSocket;
    .local v6, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->mSocket:Ljava/lang/String;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 92
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 94
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_2
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

    invoke-interface {v7}, Lcom/huawei/pgmng/IPGPlugCallbacks;->onDaemonConnected()V

    .line 99
    const/16 v7, 0xa

    iput v7, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 103
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->mCallbackHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/huawei/pgmng/PGPlug;->mCallbackHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 108
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "socket":Landroid/net/LocalSocket;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :goto_1
    :try_start_3
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    const-string v8, "Communications to PG-server error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 112
    :goto_2
    if-eqz v3, :cond_1

    .line 113
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 115
    :cond_1
    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 120
    :cond_2
    throw v7

    .line 112
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :cond_3
    if-eqz v4, :cond_4

    .line 113
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 115
    :cond_4
    if-eqz v6, :cond_5

    .line 116
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 123
    :cond_5
    return-void

    .line 118
    :catch_1
    move-exception v2

    .line 119
    .restart local v2    # "ex":Ljava/io/IOException;
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    const-string v8, "Failed closing socket"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    throw v2

    .line 118
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v2

    .line 119
    .restart local v2    # "ex":Ljava/io/IOException;
    iget-object v7, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    const-string v8, "Failed closing socket"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    throw v2

    .line 111
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "socket":Landroid/net/LocalSocket;
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    goto :goto_2

    .line 107
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_3
    move-exception v2

    goto :goto_1

    .end local v5    # "socket":Landroid/net/LocalSocket;
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 64
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return v6

    .line 66
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "event":Ljava/lang/String;
    :try_start_0
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "token":[Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/pgmng/PGPlug;->mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/huawei/pgmng/IPGPlugCallbacks;->onEvent(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v2    # "token":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 5

    .prologue
    .line 41
    iget-object v2, p0, Lcom/huawei/pgmng/PGPlug;->mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    const-string v3, "client callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/huawei/pgmng/PGPlug;->mCallbackHandler:Landroid/os/Handler;

    .line 50
    const/16 v2, 0xa

    iput v2, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    :goto_1
    iget v2, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    if-lez v2, :cond_1

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/pgmng/PGPlug;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_2
    iget v2, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/huawei/pgmng/PGPlug;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in connect to PG, sleep 5s try again, retries ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/pgmng/PGPlug;->retries:I

    rsub-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/huawei/pgmng/PGPlug;->mCallbacks:Lcom/huawei/pgmng/IPGPlugCallbacks;

    invoke-interface {v2}, Lcom/huawei/pgmng/IPGPlugCallbacks;->onConnectedTimeout()V

    goto :goto_0
.end method

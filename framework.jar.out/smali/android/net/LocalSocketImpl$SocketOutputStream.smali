.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 117
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 158
    .local v2, "myFd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_0
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I
    invoke-static {v3, v2}, Landroid/net/LocalSocketImpl;->access$800(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    .line 161
    .local v1, "left":I
    :goto_0
    if-lez v1, :cond_2

    .line 163
    const/16 v3, 0x3e8

    if-gt v1, v3, :cond_1

    .line 164
    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    :try_start_0
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I
    invoke-static {v3, v2}, Landroid/net/LocalSocketImpl;->access$800(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    goto :goto_0

    .line 165
    :cond_1
    const/16 v3, 0x1388

    if-gt v1, v3, :cond_3

    .line 166
    const-wide/16 v4, 0x0

    const/16 v3, 0x1f4

    :try_start_1
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 175
    :cond_2
    return-void

    .line 168
    :cond_3
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 144
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V
    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V

    .line 146
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    .line 123
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 130
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 132
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    :try_start_1
    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 135
    :cond_2
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V
    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V

    .line 136
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    return-void
.end method

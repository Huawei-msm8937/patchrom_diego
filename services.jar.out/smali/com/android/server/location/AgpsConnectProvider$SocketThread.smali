.class Lcom/android/server/location/AgpsConnectProvider$SocketThread;
.super Ljava/lang/Thread;
.source "AgpsConnectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AgpsConnectProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field mBytes:[B

.field mServer:I

.field private mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/location/AgpsConnectProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/AgpsConnectProvider;Ljava/net/Socket;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mSocket:Ljava/net/Socket;

    .line 136
    const-string v0, "server"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mServer:I

    .line 137
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mBytes:[B

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 144
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mSocket:Ljava/net/Socket;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 145
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 146
    .local v3, "ops":Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mBytes:[B

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 148
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 149
    .local v1, "ips":Ljava/io/InputStream;
    const/16 v5, 0x5b4

    new-array v2, v5, [B

    .line 150
    .local v2, "oBytes":[B
    const/4 v4, 0x1

    .line 151
    .local v4, "readlen":I
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    .line 152
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 154
    const-string v5, "AgpsConnectProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readlen is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,oBytes.length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-lez v4, :cond_0

    .line 157
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    iget v6, p0, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->mServer:I

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_data(I[BI)I
    invoke-static {v5, v6, v2, v4}, Lcom/android/server/location/AgpsConnectProvider;->access$000(Lcom/android/server/location/AgpsConnectProvider;I[BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "ips":Ljava/io/InputStream;
    .end local v2    # "oBytes":[B
    .end local v3    # "ops":Ljava/io/OutputStream;
    .end local v4    # "readlen":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AgpsConnectProvider"

    const-string v6, "read/write time out,force to close socket,not exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

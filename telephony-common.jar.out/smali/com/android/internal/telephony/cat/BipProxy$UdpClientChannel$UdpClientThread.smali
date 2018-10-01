.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1956
    const/4 v6, 0x0

    .line 1959
    .local v6, "addr":Ljava/net/InetAddress;
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-ne v0, v1, :cond_2

    .line 1960
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 1964
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-ne v0, v2, :cond_3

    const-string v0, "remote"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " client socket to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1971
    const-string v0, "UdpClientThread bindSocket"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v8, v0, v1

    .line 1973
    .local v8, "curInfo":Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, v8, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 1982
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected UDP client socket to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const v1, 0x8000

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1987
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1989
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_9

    .line 2011
    const/4 v11, 0x0

    .line 2012
    .local v11, "packet":Ljava/net/DatagramPacket;
    const/4 v12, 0x0

    .line 2015
    .local v12, "success":Z
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UDP Client listening on port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    new-instance v10, Ljava/net/DatagramPacket;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    array-length v1, v1

    invoke-direct {v10, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2017
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .local v10, "packet":Ljava/net/DatagramPacket;
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2018
    const/4 v12, 0x1

    .line 2026
    :goto_3
    if-eqz v12, :cond_6

    .line 2027
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 2049
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->access$1200(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2051
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-gtz v0, :cond_7

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data read. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2070
    :goto_5
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1962
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v8    # "curInfo":Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    .end local v10    # "packet":Ljava/net/DatagramPacket;
    .end local v12    # "success":Z
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v6

    goto/16 :goto_0

    .line 1964
    :cond_3
    const-string v0, "local"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1991
    :catch_0
    move-exception v9

    .line 1992
    .local v9, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPEN_CHANNEL - UDP Client connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-eqz v0, :cond_5

    .line 1994
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1996
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v14

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2001
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 2076
    .end local v9    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    return-void

    .line 1998
    .restart local v9    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iput-boolean v14, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    goto :goto_6

    .line 2019
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v8    # "curInfo":Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    .restart local v12    # "success":Z
    :catch_1
    move-exception v9

    move-object v10, v11

    .line 2020
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "packet":Ljava/net/DatagramPacket;
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read on No: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2022
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "packet":Ljava/net/DatagramPacket;
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v9

    move-object v10, v11

    .line 2023
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "packet":Ljava/net/DatagramPacket;
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2029
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v13, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 2034
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v13, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v13, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 2036
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v13, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 2040
    const-string v0, "UdpClientThread Exception happened"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->checkSetStatusOrNot(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_4

    .line 2054
    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BipLog, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data read."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 2056
    const/16 v7, 0xff

    .line 2057
    .local v7, "available":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-ge v0, v7, :cond_8

    .line 2058
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v7, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 2062
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    and-int/lit16 v3, v7, 0xff

    int-to-byte v3, v3

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2065
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->access$1200(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 2066
    :catch_3
    move-exception v9

    .line 2067
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 2072
    .end local v7    # "available":I
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "packet":Ljava/net/DatagramPacket;
    .end local v12    # "success":Z
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UDP Client thread end on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2022
    .restart local v10    # "packet":Ljava/net/DatagramPacket;
    .restart local v12    # "success":Z
    :catch_4
    move-exception v9

    goto/16 :goto_9

    .line 2019
    :catch_5
    move-exception v9

    goto/16 :goto_8
.end method

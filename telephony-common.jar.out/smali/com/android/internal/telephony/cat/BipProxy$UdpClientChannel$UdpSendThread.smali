.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdpSendThread"
.end annotation


# instance fields
.field private cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p2, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2084
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2085
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2088
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v8

    .line 2089
    .local v8, "dataSettings":Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2092
    const-string v0, "Transfer data into tx buffer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2093
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v2, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    add-int/lit8 v12, v2, 0x1

    iput v12, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    iget-object v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    aget-byte v1, v1, v10

    aput-byte v1, v0, v2

    .line 2093
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    iget-object v2, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tx buffer now contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v4, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v11, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 2104
    .local v11, "len":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v4, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent data to socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    .line 2109
    const-string v0, "Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2110
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 2111
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2165
    .end local v11    # "len":I
    :goto_1
    return-void

    .line 2115
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v11    # "len":I
    :cond_1
    const/4 v6, 0x0

    .line 2117
    .local v6, "addr":Ljava/net/InetAddress;
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-ne v0, v1, :cond_5

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2136
    :cond_2
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    iget-object v12, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v12, v12, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v12, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-direct {v1, v2, v11, v6, v12}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sent to socket."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2151
    .end local v6    # "addr":Ljava/net/InetAddress;
    .end local v11    # "len":I
    :cond_3
    const/16 v7, 0xee

    .line 2152
    .local v7, "avail":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_4

    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    sub-int v7, v0, v1

    .line 2157
    const/16 v0, 0xff

    if-le v7, v0, :cond_4

    .line 2158
    const/16 v7, 0xff

    .line 2161
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TR with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes available in Tx Buffer on channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2163
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 2164
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2120
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v7    # "avail":I
    .restart local v6    # "addr":Ljava/net/InetAddress;
    .restart local v11    # "len":I
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto/16 :goto_2

    .line 2123
    :catch_0
    move-exception v9

    .line 2124
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

    .line 2125
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 2127
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    goto/16 :goto_2

    .line 2138
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 2139
    .restart local v9    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 2141
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2143
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 2144
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2145
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 2146
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1
.end method

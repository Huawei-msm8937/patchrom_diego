.class Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;
.super Ljava/lang/Object;
.source "BipProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/BipProxy$BipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpServerChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;
    }
.end annotation


# instance fields
.field catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field index:I

.field mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mChannelStatus:I

.field mRxBuf:[B

.field mRxLen:I

.field mRxPos:I

.field mSocket:Ljava/net/Socket;

.field mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

.field mTxBuf:[B

.field mTxLen:I

.field mTxPos:I

.field result:Lcom/android/internal/telephony/cat/ResultCode;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;

.field private token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;)V
    .locals 4

    .prologue
    const/16 v3, 0x4000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 976
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 979
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 981
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    .line 982
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;

    .line 986
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    .line 987
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 988
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 990
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    .line 991
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    .line 992
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    .line 993
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 994
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 995
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    .line 1240
    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close cmd qual = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1043
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1077
    :goto_1
    return-void

    .line 1046
    :cond_1
    const/4 v6, 0x0

    .line 1047
    .local v6, "i":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1049
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1054
    :cond_2
    :goto_2
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1055
    const/16 v0, 0xf

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1059
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1064
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v0, v0, v1

    iput-object v5, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aput-object v5, v0, v1

    .line 1067
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1068
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1069
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    .line 1070
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    goto/16 :goto_1

    .line 1060
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1050
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1039
    .end local v6    # "i":I
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-nez v0, :cond_1

    .line 1199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1204
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    return v0

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    goto :goto_0
.end method

.method public onSessionEnd()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1235
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->start()V

    .line 1238
    :cond_3
    return-void

    .line 1225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1026
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->start()V

    .line 1027
    const/4 v0, 0x1

    return v0
.end method

.method public preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4000

    .line 999
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1001
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preProcessOpen bufSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImmediateLinkEstablish = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-le v0, v2, :cond_1

    .line 1007
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 1016
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-nez v0, :cond_0

    .line 1017
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1019
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1021
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-lez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    goto :goto_0

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    goto :goto_0
.end method

.method public receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x0

    .line 1145
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1146
    .local v2, "result":Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

    .line 1148
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RECEIVE_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v8, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 1151
    .local v8, "requested":I
    const/16 v0, 0xec

    if-le v8, v0, :cond_0

    .line 1164
    const/16 v8, 0xec

    .line 1167
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-le v8, v0, :cond_1

    .line 1168
    iget v8, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1169
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1172
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1173
    const/16 v6, 0xff

    .line 1174
    .local v6, "available":I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-ge v0, v6, :cond_2

    .line 1175
    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1177
    :cond_2
    const/4 v7, 0x0

    .line 1179
    .local v7, "data":[B
    if-lez v8, :cond_3

    .line 1180
    new-array v7, v8, [B

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1182
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1185
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-nez v0, :cond_4

    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;

    monitor-enter v1

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1192
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1193
    return-void

    .line 1188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1082
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v7

    .line 1084
    .local v7, "dataSettings":Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    if-ge v9, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    iget-object v2, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    aget-byte v2, v2, v9

    aput-byte v2, v0, v1

    .line 1089
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tx buffer now contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1100
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    .line 1101
    iget v10, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    .line 1102
    .local v10, "len":I
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent data to socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_1

    .line 1108
    const-string v0, "Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1110
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1141
    .end local v10    # "len":I
    :goto_1
    return-void

    .line 1115
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v10    # "len":I
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sent to socket."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v10    # "len":I
    :cond_2
    const/16 v6, 0xee

    .line 1127
    .local v6, "avail":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    sub-int v6, v0, v1

    .line 1133
    const/16 v0, 0xff

    if-le v6, v0, :cond_3

    .line 1134
    const/16 v6, 0xff

    .line 1139
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1140
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 1117
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6    # "avail":I
    .restart local v10    # "len":I
    :catch_0
    move-exception v8

    .line 1118
    .local v8, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1120
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const v1, 0x8000

    .line 1209
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1210
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    and-int/lit16 v0, v0, 0x7f00

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1214
    :cond_0
    return-void
.end method

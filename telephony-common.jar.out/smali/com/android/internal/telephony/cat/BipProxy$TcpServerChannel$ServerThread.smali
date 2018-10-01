.class Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x8000

    const/4 v3, -0x1

    const/4 v2, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server thread start on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    const/4 v8, 0x0

    .line 1247
    .local v8, "i":I
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_1

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    aget-object v0, v0, v8

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v8, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find first null server channel index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    aget-object v0, v0, v8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    aget-object v0, v0, v8

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->port:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    if-ne v0, v1, :cond_7

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v8, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find same port server channel index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    if-ne v2, v8, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    if-ne v3, v0, :cond_8

    .line 1261
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1263
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1269
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open server socket on port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-eqz v0, :cond_a

    .line 1276
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1278
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1297
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1302
    :try_start_1
    const-string v0, "Wait for connection"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New connection mSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v11

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1318
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1326
    :try_start_2
    const-string v0, "Wait for connection"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New connection mSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v11

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1344
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading from input stream mSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1359
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->access$600(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1360
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-gtz v0, :cond_c

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data read. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1363
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1384
    :cond_6
    :goto_5
    :try_start_6
    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 1247
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_8
    if-ne v2, v8, :cond_2

    .line 1265
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;-><init>()V

    aput-object v2, v0, v1

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->index:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/net/ServerSocket;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 1282
    :catch_0
    move-exception v7

    .line 1283
    .local v7, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-eqz v0, :cond_b

    .line 1284
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1286
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1291
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9
    :goto_7
    return-void

    .line 1280
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 1288
    .restart local v7    # "e":Ljava/io/IOException;
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iput-boolean v10, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    goto :goto_6

    .line 1305
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 1306
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 1329
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 1330
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 1346
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 1347
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read on No: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v9, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v9, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v9, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v9, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    goto/16 :goto_4

    .line 1367
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BipLog, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data read. mChannelStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1369
    const/16 v6, 0xff

    .line 1370
    .local v6, "available":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-ge v0, v6, :cond_d

    .line 1371
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v6, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1375
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    and-int/lit16 v3, v6, 0xff

    int-to-byte v3, v3

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1377
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-lez v0, :cond_6

    .line 1378
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->token:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->access$600(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 1380
    :catch_4
    move-exception v7

    .line 1381
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 1364
    .end local v6    # "available":I
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v0

    goto/16 :goto_5
.end method

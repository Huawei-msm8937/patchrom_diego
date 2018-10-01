.class Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;
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
    name = "TcpClientChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;
    }
.end annotation


# instance fields
.field catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mChannelStatus:I

.field mRxBuf:[B

.field mRxLen:I

.field mRxPos:I

.field mSocket:Ljava/net/Socket;

.field mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

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

    .line 1395
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1398
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1400
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->token:Ljava/lang/Object;

    .line 1404
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1405
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1406
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1408
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    .line 1409
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1410
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1411
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1412
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1636
    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->token:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_0

    .line 1450
    const-string v0, "Update channel status to closed before close socket"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :cond_1
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1464
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1465
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1466
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1467
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-nez v0, :cond_3

    .line 1471
    const-string v0, "TcpClientChannel close BIP_ERROR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1488
    :cond_2
    :goto_1
    return-void

    .line 1478
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    goto :goto_1

    .line 1459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-nez v0, :cond_1

    .line 1612
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1617
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    return v0

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    goto :goto_0
.end method

.method public onSessionEnd()V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1631
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->start()V

    .line 1634
    :cond_1
    return-void
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1441
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->start()V

    .line 1443
    const/4 v0, 0x1

    return v0
.end method

.method public preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 1416
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1418
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preProcessOpen bufSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImmediateLinkEstablish = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-le v0, v2, :cond_1

    .line 1424
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 1431
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-nez v0, :cond_0

    .line 1432
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1434
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1436
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    goto :goto_0
.end method

.method public receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x0

    .line 1561
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1562
    .local v2, "result":Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

    .line 1564
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

    .line 1566
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v8, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 1567
    .local v8, "requested":I
    const/16 v0, 0xec

    if-le v8, v0, :cond_0

    .line 1578
    const/16 v8, 0xec

    .line 1580
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-le v8, v0, :cond_1

    .line 1581
    iget v8, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1582
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1585
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1586
    const/16 v6, 0xff

    .line 1587
    .local v6, "available":I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-ge v0, v6, :cond_2

    .line 1588
    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1591
    :cond_2
    const/4 v7, 0x0

    .line 1592
    .local v7, "data":[B
    if-lez v8, :cond_3

    .line 1593
    new-array v7, v8, [B

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1595
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1598
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1599
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive Data, available data is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1601
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-nez v0, :cond_4

    .line 1602
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->token:Ljava/lang/Object;

    monitor-enter v1

    .line 1603
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->token:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1604
    monitor-exit v1

    .line 1606
    :cond_4
    return-void

    .line 1604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    const-string v0, "Continue processing open channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$900(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$1000(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1557
    :goto_0
    return-void

    .line 1503
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v7

    .line 1504
    .local v7, "dataSettings":Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Transfer data into tx buffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    const/4 v9, 0x0

    .line 1507
    .local v9, "i":I
    :goto_1
    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    if-ge v9, v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    iget-object v2, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    aget-byte v2, v2, v9

    aput-byte v2, v0, v1

    .line 1509
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1512
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tx buffer now contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1518
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1519
    iget v10, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1520
    .local v10, "len":I
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1521
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

    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 1525
    const-string v0, "Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1527
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1532
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 1533
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

    .line 1543
    .end local v10    # "len":I
    :cond_3
    const/16 v6, 0xee

    .line 1544
    .local v6, "avail":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_4

    .line 1548
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    sub-int v6, v0, v1

    .line 1549
    const/16 v0, 0xff

    if-le v6, v0, :cond_4

    .line 1550
    const/16 v6, 0xff

    .line 1553
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TR with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes available in Tx Buffer on channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1556
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1535
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6    # "avail":I
    .restart local v10    # "len":I
    :catch_0
    move-exception v8

    .line 1536
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

    .line 1537
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1538
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const v1, 0x8000

    .line 1621
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1622
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    and-int/lit16 v0, v0, 0x7f00

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1626
    :cond_0
    return-void
.end method

.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
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
    name = "UdpClientChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;,
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;
    }
.end annotation


# instance fields
.field catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mChannelStatus:I

.field mDatagramSocket:Ljava/net/DatagramSocket;

.field mRxBuf:[B

.field mRxLen:I

.field mRxPos:I

.field mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

.field mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

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
    const/16 v3, 0x5dc

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1759
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1762
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1764
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    .line 1765
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    .line 1767
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;

    .line 1768
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    .line 1769
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1770
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1772
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    .line 1773
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 1774
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 1775
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1776
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2080
    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_0

    .line 1816
    const-string v0, "Update channel status to closed before close socket"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDatagramSocket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mChannelSettings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 1826
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1828
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1829
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1830
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 1831
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-nez v0, :cond_3

    .line 1835
    const-string v0, "UdpClientChannel close BIP_ERROR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1853
    :cond_2
    :goto_0
    return-void

    .line 1842
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1843
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1849
    const-string v0, "UdpClientChannel close"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-nez v0, :cond_1

    .line 1926
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1932
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    return v0

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    goto :goto_0
.end method

.method public onSessionEnd()V
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1947
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->start()V

    .line 1950
    :cond_1
    return-void
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1807
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->start()V

    .line 1809
    const/4 v0, 0x1

    return v0
.end method

.method public preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dc

    .line 1780
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1782
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->catCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preProcessOpen bufSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImmediateLinkEstablish = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-le v0, v2, :cond_1

    .line 1788
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->result:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 1797
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-nez v0, :cond_0

    .line 1798
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1800
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1802
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-lez v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    goto :goto_0

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    goto :goto_0
.end method

.method public receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x0

    .line 1876
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1877
    .local v2, "result":Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

    .line 1879
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

    .line 1881
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v8, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 1882
    .local v8, "requested":I
    const/16 v0, 0xec

    if-le v8, v0, :cond_0

    .line 1893
    const/16 v8, 0xec

    .line 1895
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-le v8, v0, :cond_1

    .line 1896
    iget v8, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1897
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1900
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1901
    const/16 v6, 0xff

    .line 1902
    .local v6, "available":I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-ge v0, v6, :cond_2

    .line 1903
    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1906
    :cond_2
    const/4 v7, 0x0

    .line 1907
    .local v7, "data":[B
    if-lez v8, :cond_3

    .line 1908
    new-array v7, v8, [B

    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1910
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1912
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1913
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1915
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-nez v0, :cond_4

    .line 1916
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;

    monitor-enter v1

    .line 1917
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->token:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1918
    monitor-exit v1

    .line 1920
    :cond_4
    return-void

    .line 1918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 2
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    const-string v0, "Continue processing open channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$900(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy;->openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$1000(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1870
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->start()V

    .line 1872
    return-void

    .line 1864
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    .line 1865
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mSendThread:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpSendThread;->start()V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const v1, 0x8000

    .line 1937
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1938
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    and-int/lit16 v0, v0, 0x7f00

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1942
    :cond_0
    return-void
.end method

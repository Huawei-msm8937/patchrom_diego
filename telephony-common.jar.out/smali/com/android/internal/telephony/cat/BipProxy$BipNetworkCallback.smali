.class Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BipNetworkCallback"
.end annotation


# instance fields
.field mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mCurrentNetwork:Landroid/net/Network;

.field private mNetworkType:I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;ILcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 1
    .param p2, "networkType"    # I
    .param p3, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 567
    iput p2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mNetworkType:I

    .line 568
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    .line 570
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 6
    .param p1, "rc"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v5, 0x0

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v5, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable got Network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    const-string v1, "MSG_ID_SETUP_DATA_CALL"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mNetworkType:I

    add-int/lit8 v4, v4, -0x26

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->bakCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v0, v5, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost Network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mCurrentNetwork:Landroid/net/Network;

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # getter for: Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->mNetworkType:I

    add-int/lit8 v2, v2, -0x26

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->bakCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 590
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    # invokes: Lcom/android/internal/telephony/cat/BipProxy;->checkSetStatusOrNot(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 595
    .end local v0    # "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .prologue
    .line 599
    const-string v0, "onUnavailable"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;->sendTerminalResponse(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 601
    return-void
.end method

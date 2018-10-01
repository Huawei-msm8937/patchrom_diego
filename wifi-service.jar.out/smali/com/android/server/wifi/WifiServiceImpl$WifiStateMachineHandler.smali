.class Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;
.super Landroid/os/Handler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateMachineHandler"
.end annotation


# instance fields
.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 353
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 355
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 360
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 395
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiStateMachineHandler.handleMessage ignoring msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 362
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$602(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 365
    :cond_0
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiStateMachine connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$602(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 371
    :sswitch_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiStateMachine channel lost, msg.arg1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$602(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 374
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    .line 379
    :sswitch_2
    const-string v3, "WifiService"

    const-string v4, "handleMessage CMD_CHANGE_TO_STA_P2P_CONNECT"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->showP2pToStaDialog()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)V

    goto :goto_0

    .line 384
    :sswitch_3
    const-string v3, "WifiService"

    const-string v4, "handleMessage CMD_CHANGE_TO_STA_AP_CONNECT"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, "data":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 388
    .local v1, "enabled":Z
    const-string v3, "isWifiApEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 389
    const-string v3, "wifiConfig"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 390
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->showP2pToAPDialog(Landroid/net/wifi/WifiConfiguration;Z)V
    invoke-static {v3, v2, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x200a0 -> :sswitch_2
        0x200a1 -> :sswitch_3
    .end sparse-switch
.end method

.class Lcom/android/server/wifi/WifiStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6245
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 6248
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6249
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHal()V

    .line 6250
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    .line 6251
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6252
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1402(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 6253
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 6257
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6258
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 6259
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4002(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;

    .line 6261
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 6262
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 6266
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6268
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6272
    :cond_3
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x50

    const/16 v10, 0x34

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 6275
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6276
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 6404
    :goto_0
    return v3

    .line 6278
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStatStore:Lcom/android/server/wifi/HwWifiStatStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiStatStore;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 6279
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStatStore:Lcom/android/server/wifi/HwWifiStatStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiStatStore;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/server/wifi/HwWifiStatStore;->updateWifiTriggerState(Z)V

    .line 6280
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6282
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "STA"

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6302
    :cond_1
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 6303
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 6306
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 6312
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6323
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 6325
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v7

    if-nez v7, :cond_2

    .line 6327
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to start HAL"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6330
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6331
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6332
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Supplicant start successful"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6335
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->uploader:Lcom/android/server/wifi/DataUploader;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DataUploader;

    move-result-object v7

    const-string v8, "{ACT:1,STATUS:success,DETAIL:start supplicant}"

    invoke-virtual {v7, v10, v8}, Lcom/android/server/wifi/DataUploader;->e(ILjava/lang/String;)Z

    .line 6338
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring()Z

    .line 6339
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_4
    :goto_3
    move v3, v6

    .line 6404
    goto/16 :goto_0

    .line 6283
    :catch_0
    move-exception v1

    .line 6286
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->uploader:Lcom/android/server/wifi/DataUploader;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DataUploader;

    move-result-object v7

    const-string v8, "{ACT:1,STATUS:failed,DETAIL:reload STA firmware}"

    invoke-virtual {v7, v10, v8}, Lcom/android/server/wifi/DataUploader;->e(ILjava/lang/String;)Z

    .line 6289
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to reload STA firmware "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6290
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6291
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    const-string v8, "FIRMWARE_FAILED"

    invoke-virtual {v7, v11, v8}, Lcom/android/server/wifi/HwWifiCHRStateManager;->updateWifiException(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 6313
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 6314
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6315
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 6316
    .local v2, "ie":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6343
    .end local v2    # "ie":Ljava/lang/IllegalStateException;
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->uploader:Lcom/android/server/wifi/DataUploader;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DataUploader;

    move-result-object v7

    const-string v8, "{ACT:1,STATUS:failed,DETAIL:start supplicant}"

    invoke-virtual {v7, v10, v8}, Lcom/android/server/wifi/DataUploader;->e(ILjava/lang/String;)Z

    .line 6346
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to start supplicant!"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6348
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startWifiFailed()V
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6350
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6351
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    const-string v8, "START_SUPPLICANT_FAILED"

    invoke-virtual {v7, v11, v8}, Lcom/android/server/wifi/HwWifiCHRStateManager;->updateWifiException(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 6357
    :cond_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->uploader:Lcom/android/server/wifi/DataUploader;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DataUploader;

    move-result-object v7

    const-string v8, "{ACT:1,STATUS:failed,DETAIL:load driver}"

    invoke-virtual {v7, v10, v8}, Lcom/android/server/wifi/DataUploader;->e(ILjava/lang/String;)Z

    .line 6360
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to load driver"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6362
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startWifiFailed()V
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6364
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6365
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWiFiCHRManager:Lcom/android/server/wifi/HwWifiCHRStateManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v7

    const-string v8, "DIRVER_FAILED"

    invoke-virtual {v7, v11, v8}, Lcom/android/server/wifi/HwWifiCHRStateManager;->updateWifiException(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 6371
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6372
    .local v0, "country":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v6, :cond_7

    move v3, v6

    .line 6373
    .local v3, "persist":Z
    :cond_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 6374
    .local v5, "sequence":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v5, v7, :cond_8

    .line 6375
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "InitialState: set country code ignored due to sequnce num"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6378
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InitialState: set country code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6379
    :cond_9
    if-eqz v3, :cond_4

    .line 6380
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6381
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_country_code"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 6388
    .end local v0    # "country":Ljava/lang/String;
    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v7

    if-nez v7, :cond_a

    .line 6389
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to load driver for softap"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6391
    :cond_a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->enableSoftAp()Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_b

    .line 6392
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v8, 0xc

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v7, v8, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 6393
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 6395
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v8, 0xe

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v7, v8, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 6397
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 6276
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_2
        0x20050 -> :sswitch_1
    .end sparse-switch
.end method

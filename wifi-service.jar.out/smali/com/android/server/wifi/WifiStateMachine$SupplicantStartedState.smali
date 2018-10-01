.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6532
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6535
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6537
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 6538
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 6540
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6543
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_supplicant_scan_interval_ms"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6547
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 6549
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    .line 6554
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    .line 6557
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6559
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 6560
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    .line 6562
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->setSupportWapiType()V

    .line 6565
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6566
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/HwSupplicantHeartBeat;->enterSupplicantStarted()V

    .line 6569
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 6692
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 6693
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 6695
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6696
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/HwSupplicantHeartBeat;->exitSupplicantStarted()V

    .line 6699
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6573
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6575
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 6687
    :goto_0
    return v7

    .line 6577
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStatStore:Lcom/android/server/wifi/HwWifiStatStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiStatStore;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 6578
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStatStore:Lcom/android/server/wifi/HwWifiStatStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwWifiStatStore;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/android/server/wifi/HwWifiStatStore;->updateWifiTriggerState(Z)V

    .line 6579
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6580
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_1
    :goto_1
    move v7, v8

    .line 6687
    goto :goto_0

    .line 6582
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6586
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Connection lost, restart supplicant"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6587
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6588
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    .line 6589
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v7

    const v9, 0x2006f

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6590
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6591
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6595
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x2000b

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 6593
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 6599
    :sswitch_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 6600
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->closeRadioScanStats()V

    .line 6601
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6602
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6606
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->isWifiProEvaluatingAP()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->isDualbandScanning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6609
    :cond_4
    iget v9, p1, Landroid/os/Message;->what:I

    const v10, 0x24005

    if-ne v9, v10, :cond_7

    move v4, v8

    .line 6610
    .local v4, "scanSucceeded":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 6611
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "******send sendScanResultsAvailableBroadcast*****"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6614
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    .line 6616
    .end local v4    # "scanSucceeded":Z
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z
    invoke-static {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$8902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6617
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6618
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z
    invoke-static {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$8802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6619
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 6620
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_7
    move v4, v7

    .line 6609
    goto :goto_3

    .line 6623
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->ping()Z

    move-result v2

    .line 6624
    .local v2, "ok":Z
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_8

    move v7, v8

    :goto_4
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v10, p1, v11, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_8
    move v7, v9

    goto :goto_4

    .line 6627
    .end local v2    # "ok":Z
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v1

    .line 6628
    .local v1, "freqs":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6632
    .end local v1    # "freqs":Ljava/lang/String;
    :sswitch_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Failed to start soft AP with a running supplicant"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6633
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v10, 0xe

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v9, v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_1

    .line 6636
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$9202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6637
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    .line 6642
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 6643
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 6647
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v6

    .line 6648
    .local v6, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v6, :cond_9

    .line 6650
    new-instance v6, Landroid/net/wifi/WifiLinkLayerStats;

    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v6}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .line 6652
    .restart local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6655
    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6657
    .local v0, "country":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v8, :cond_a

    move v3, v8

    .line 6658
    .local v3, "persist":Z
    :goto_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 6660
    .local v5, "sequence":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v5, v7, :cond_b

    .line 6661
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "set country code ignored due to sequnce num"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :cond_a
    move v3, v7

    .line 6657
    goto :goto_5

    .line 6664
    .restart local v3    # "persist":Z
    .restart local v5    # "sequence":I
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set country code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6665
    :cond_c
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 6667
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 6668
    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 6669
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6675
    :cond_e
    :goto_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v9, 0x23010

    invoke-virtual {v7, v9, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6671
    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set country code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 6679
    .end local v0    # "country":Ljava/lang/String;
    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :sswitch_a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6680
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHwSupplicantHeartBeat:Lcom/android/server/wifi/HwSupplicantHeartBeat;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/wifi/HwSupplicantHeartBeat;->handleHeartBeatAckEvent()V

    goto/16 :goto_1

    .line 6575
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_5
        0x20033 -> :sswitch_3
        0x2003c -> :sswitch_4
        0x2003f -> :sswitch_8
        0x20048 -> :sswitch_6
        0x20050 -> :sswitch_9
        0x2008d -> :sswitch_7
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_2
        0x24032 -> :sswitch_a
    .end sparse-switch
.end method

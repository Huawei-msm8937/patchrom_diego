.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10839
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 10842
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10845
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handleSetWifiApConfigurationHw()V

    .line 10847
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 10849
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v8, p1, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10851
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 10931
    :goto_0
    return v7

    .line 10853
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Stopping Soft AP"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10856
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10860
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v9, 0xb

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v8, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 10861
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$29300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10931
    :cond_1
    :goto_2
    :sswitch_1
    const/4 v7, 0x1

    goto :goto_0

    .line 10857
    :catch_0
    move-exception v1

    .line 10858
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Exception in stopAccessPoint()"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 10868
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Cannot start supplicant with a running soft AP"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10869
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 10872
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 10873
    .local v6, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$29400(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10874
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 10880
    .end local v6    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Get Soft AP current connected stations list"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10881
    :cond_2
    const/4 v3, 0x0

    .line 10884
    .local v3, "mStaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->handleGetApLinkedStaList()Ljava/util/List;

    move-result-object v3

    .line 10886
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, p1, v8, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_2

    .line 10889
    .end local v3    # "mStaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Set Soft AP MAC filter rule"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10890
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 10893
    .local v5, "macFilter":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->handleSetSoftapMacFilter(Ljava/lang/String;)V

    goto :goto_2

    .line 10897
    .end local v5    # "macFilter":Ljava/lang/String;
    :sswitch_6
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Set Soft AP disassociate a sta"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10898
    :cond_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 10901
    .local v4, "mac":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->handleSetSoftapDisassociateSta(Ljava/lang/String;)V

    goto :goto_2

    .line 10907
    .end local v4    # "mac":Ljava/lang/String;
    :sswitch_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 10908
    .local v0, "channel":[I
    if-eqz v0, :cond_5

    array-length v7, v0

    if-lez v7, :cond_5

    .line 10909
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, v0

    if-ge v2, v7, :cond_5

    .line 10910
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    aget v8, v0, v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->convertFrequencyToChannelNumber(I)I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v7

    aput v7, v0, v2

    .line 10909
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 10913
    .end local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 10918
    .end local v0    # "channel":[I
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10920
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 10921
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10922
    const-string v7, "WifiStateMachine"

    const-string v8, "setCountryCodeHal failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 10851
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
        0x20020 -> :sswitch_4
        0x20021 -> :sswitch_5
        0x20022 -> :sswitch_6
        0x20050 -> :sswitch_8
        0x201f4 -> :sswitch_7
    .end sparse-switch
.end method

.class Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10633
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 10638
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10639
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10640
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 10767
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 10768
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 10770
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10771
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 10772
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10775
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const v5, 0x2500c

    const v6, 0x200a3

    const/4 v1, 0x1

    .line 10643
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10645
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 10762
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 10648
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WpsResult;

    .line 10649
    .local v0, "wpsResult":Landroid/net/wifi/WpsResult;
    iget-object v2, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10650
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;)Z

    .line 10651
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v6, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 10660
    .end local v0    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10662
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v4, 0x2500d

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 10663
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 10664
    iput-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10665
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 10667
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->saveWpsNetIdInWifiPro(I)V

    .line 10669
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 10672
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 10674
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 10675
    iput-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10676
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 10680
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 10681
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 10682
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 10683
    iput-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10684
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 10686
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Ignore unspecified fail event during WPS connection"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10691
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10693
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 10695
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 10696
    iput-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10697
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 10700
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10704
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10706
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10707
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x25010

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 10711
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 10709
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x2500f

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 10731
    :sswitch_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$28600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 10735
    :sswitch_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2200()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2102(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10738
    :sswitch_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2200()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2102(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10741
    :sswitch_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Network connection lost"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10742
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    goto/16 :goto_0

    .line 10745
    :sswitch_c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Ignore Assoc reject event during WPS Connection"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10752
    :sswitch_d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Ignore auth failure during WPS connection"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10645
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_8
        0x2000e -> :sswitch_8
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_8
        0x20047 -> :sswitch_a
        0x20048 -> :sswitch_8
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x2008f -> :sswitch_9
        0x20091 -> :sswitch_9
        0x200a3 -> :sswitch_1
        0x24003 -> :sswitch_2
        0x24004 -> :sswitch_b
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_d
        0x24008 -> :sswitch_0
        0x24009 -> :sswitch_4
        0x2400a -> :sswitch_3
        0x2400b -> :sswitch_5
        0x2402b -> :sswitch_c
        0x25001 -> :sswitch_8
        0x2500a -> :sswitch_6
        0x2500e -> :sswitch_7
    .end sparse-switch
.end method

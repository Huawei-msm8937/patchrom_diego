.class Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$302(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 435
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1002(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 436
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$900(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1300(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$902(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthState:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 443
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SupplicantStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 474
    :goto_0
    return v2

    .line 449
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 450
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 452
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_2

    .line 453
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set mAuthState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthState:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to AUTH_DOING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthState:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 457
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v4

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 462
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :goto_1
    move v2, v3

    .line 474
    goto :goto_0

    .line 465
    .restart local v0    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto :goto_1

    .line 468
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    sget-object v5, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 469
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1400(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method

.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 605
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 606
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)V

    .line 607
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initInterface()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1300(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initSockets()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1502(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 609
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    .line 615
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v0, "dhcpclient initialize failed"

    # setter for: Landroid/net/dhcp/DhcpClient;->mDhcpError:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;)V

    .line 613
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1900(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)V

    .line 620
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    .line 622
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1502(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 624
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)V

    .line 625
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 629
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 630
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 644
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 632
    :sswitch_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 635
    :sswitch_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Timed out"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpAction:I
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$500(Landroid/net/dhcp/DhcpClient;)I

    move-result v1

    const v2, 0x30003

    if-ne v1, v2, :cond_0

    .line 637
    const-string v1, "dhcpclient renew Timed out"

    # setter for: Landroid/net/dhcp/DhcpClient;->mDhcpError:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    :goto_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;)V

    goto :goto_0

    .line 639
    :cond_0
    const-string v1, "dhcpclient Timed out"

    # setter for: Landroid/net/dhcp/DhcpClient;->mDhcpError:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_0
        0x30068 -> :sswitch_1
    .end sparse-switch
.end method

.class Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AgpsConnectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;Lcom/android/server/location/AgpsConnectProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    .param p2, "x1"    # Lcom/android/server/location/AgpsConnectProvider$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "action":Ljava/lang/String;
    const-string v4, "AgpsConnectProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const/4 v3, 0x0

    .line 515
    .local v3, "suplNetworkInfo":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    iget-object v4, v4, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 517
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 531
    if-nez v3, :cond_3

    .line 533
    const-string v4, "AgpsConnectProvider"

    const-string v5, "suplNetworkInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_2
    const-string v4, "AgpsConnectProvider"

    const-string v5, "ConnectivityManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_3
    const-string v4, "AgpsConnectProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ConnectivityBroadcastReceiver.onReceive()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 540
    const-string v4, "AgpsConnectProvider"

    const-string v5, "net not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v7, :cond_5

    .line 544
    const-string v4, "AgpsConnectProvider"

    const-string v5, "   type is not TYPE_MOBILE_SUPL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v4, "2GVoiceCallEnded"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    const-string v4, "AgpsConnectProvider"

    const-string v5, "   reason is 2GVoiceCallEnded, retrying SUPL connectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    # invokes: Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->renewSuplConnectivity()V
    invoke-static {v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->access$1000(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V

    goto :goto_0

    .line 561
    :cond_5
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_6

    .line 563
    const-string v4, "AgpsConnectProvider"

    const-string v5, "   TYPE_MOBILE_SUPL not connected"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    const-string v4, "AgpsConnectProvider"

    const-string v5, "   retrying  connectivity for it\'s available"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    # invokes: Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->renewSuplConnectivity()V
    invoke-static {v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->access$1000(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V

    goto/16 :goto_0

    .line 572
    :cond_6
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 573
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x69

    iput v4, v2, Landroid/os/Message;->what:I

    .line 574
    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    iget-object v4, v4, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    invoke-static {v4}, Lcom/android/server/location/AgpsConnectProvider;->access$800(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

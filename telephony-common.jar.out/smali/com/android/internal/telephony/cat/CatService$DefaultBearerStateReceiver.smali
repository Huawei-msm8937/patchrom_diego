.class Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBearerStateReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mIsRegistered:Z

    .line 1561
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    .line 1563
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1569
    if-nez p2, :cond_1

    .line 1570
    const-string v1, "Received broadcast: intent is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1575
    const-string v1, "Received broadcast: Action is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1579
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1584
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/android/internal/telephony/cat/CatService;->mIsWifiConnected:Z
    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->access$002(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiManager.NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 1599
    :goto_0
    return-void

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 1602
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method

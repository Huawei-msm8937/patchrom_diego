.class Lcom/android/server/ConnectivityService$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/HiSiWifiComm;->hisiWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    const-string v1, "android.net.wifi.p2p.WIFI_P2P_NETWORK_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    iget-object v2, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/ConnectivityService;->mP2pNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$302(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCust:Lcom/android/server/HwCustConnectivityService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Lcom/android/server/HwCustConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCust:Lcom/android/server/HwCustConnectivityService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Lcom/android/server/HwCustConnectivityService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/HwCustConnectivityService;->custProvisioningBroadcast(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pServiceHisiExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiP2pServiceHisiExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WifiP2pServiceHisiExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "android.net.wifi.p2p.hisi.SWITCH_TO_P2P_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pEnabled(I)Z

    .line 153
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # invokes: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->unregisterWifiStateReceiver()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$000(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    .line 155
    :cond_0
    return-void
.end method

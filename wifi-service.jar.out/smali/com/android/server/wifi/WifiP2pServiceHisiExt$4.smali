.class Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;
.super Ljava/lang/Object;
.source "WifiP2pServiceHisiExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiP2pServiceHisiExt;->showP2pEanbleDialog()V
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
    .line 298
    iput-object p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$302(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)Z

    .line 304
    const-string v0, "WifiP2pServiceHisiExt"

    const-string v1, "PositiveButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # getter for: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;
    invoke-static {v0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$400(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)Landroid/net/wifi/HiSiWifiComm;

    move-result-object v0

    const-string v1, "show_p2p_dialog_flag"

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # getter for: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsDialogNeedShow:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$200(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/HiSiWifiComm;->changeShowDialogFlag(Ljava/lang/String;Z)V

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pEnabled(I)Z

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # invokes: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pEnableChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$500(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    .line 308
    return-void
.end method

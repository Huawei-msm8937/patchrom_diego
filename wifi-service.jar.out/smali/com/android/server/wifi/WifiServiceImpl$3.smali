.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->showP2pToAPDialog(Landroid/net/wifi/WifiConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;

.field final synthetic val$enabled:Z

.field final synthetic val$wifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->val$enabled:Z

    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsP2pCloseDialogExist:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 796
    const-string v0, "WifiService"

    const-string v1, "PositiveButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiServiceHisiExt:Lcom/android/server/wifi/WifiServiceHisiExt;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceHisiExt;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "WifiService"

    const-string v1, "Cann\'t start AP with airPlaneMode on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/HiSiWifiComm;

    move-result-object v0

    const-string v1, "show_ap_dialog_flag"

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsApDialogNeedShow:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/HiSiWifiComm;->changeShowDialogFlag(Ljava/lang/String;Z)V

    .line 802
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->val$enabled:Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$900(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->setHisiWifiApEnabled(ZLandroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiController;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;ZLandroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiController;)V

    goto :goto_0
.end method

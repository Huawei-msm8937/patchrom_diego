.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->showP2pToStaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 864
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsP2pCloseDialogExist:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 865
    const-string v0, "WifiService"

    const-string v1, "PositiveButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiServiceHisiExt:Lcom/android/server/wifi/WifiServiceHisiExt;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceHisiExt;->isWifiP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v0

    if-eq v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "supplicant is closed ,enble wifi with start supplicant"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 878
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/HiSiWifiComm;

    move-result-object v0

    const-string v1, "show_sta_dialog_flag"

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsDialogNeedShow:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/HiSiWifiComm;->changeShowDialogFlag(Ljava/lang/String;Z)V

    .line 874
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiStateByManual(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiServiceHisiExt:Lcom/android/server/wifi/WifiServiceHisiExt;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceHisiExt;->setWifiP2pEnabled(I)V

    goto :goto_0
.end method

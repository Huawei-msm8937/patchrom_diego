.class Lcom/android/server/wifi/WifiServiceImpl$4;
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


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsP2pCloseDialogExist:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 787
    const-string v0, "WifiService"

    const-string v1, "NegativeButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApStateByManual(Z)V

    .line 789
    return-void
.end method

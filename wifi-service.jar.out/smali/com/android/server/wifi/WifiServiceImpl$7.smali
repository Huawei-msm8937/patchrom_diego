.class Lcom/android/server/wifi/WifiServiceImpl$7;
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
    .line 848
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsP2pCloseDialogExist:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 854
    const-string v0, "WifiService"

    const-string v1, "NegativeButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiServiceHisiExt:Lcom/android/server/wifi/WifiServiceHisiExt;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiStateMachineHisiExt:Lcom/android/server/wifi/WifiStateMachineHisiExt;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachineHisiExt;->sendWifiStateDisabledBroadcast()V

    .line 858
    return-void
.end method

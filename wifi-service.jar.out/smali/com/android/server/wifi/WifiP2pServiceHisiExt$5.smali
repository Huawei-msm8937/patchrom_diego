.class Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;
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
    .line 288
    iput-object p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

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

    .line 292
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # setter for: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$302(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)Z

    .line 293
    const-string v0, "WifiP2pServiceHisiExt"

    const-string v1, "NegativeButton is click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # invokes: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$600(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)V

    .line 296
    return-void
.end method

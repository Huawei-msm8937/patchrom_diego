.class Lcom/android/server/wifi/WifiP2pServiceHisiExt$3;
.super Ljava/lang/Object;
.source "WifiP2pServiceHisiExt.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 274
    iput-object p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$3;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$3;->this$0:Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    # setter for: Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsDialogNeedShow:Z
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->access$202(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)Z

    .line 278
    return-void
.end method

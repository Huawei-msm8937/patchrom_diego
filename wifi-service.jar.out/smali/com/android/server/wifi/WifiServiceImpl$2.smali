.class Lcom/android/server/wifi/WifiServiceImpl$2;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 768
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIsApDialogNeedShow:Z
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1002(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 772
    return-void
.end method

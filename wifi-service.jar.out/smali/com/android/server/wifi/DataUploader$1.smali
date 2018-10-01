.class Lcom/android/server/wifi/DataUploader$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/DataUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/DataUploader;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/DataUploader;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/wifi/DataUploader$1;->this$0:Lcom/android/server/wifi/DataUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "DataUploader"

    const-string v2, "receive BOOT_COMPLETED action and begin upload data and set up timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/server/wifi/DataUploader$1;->this$0:Lcom/android/server/wifi/DataUploader;

    # invokes: Lcom/android/server/wifi/DataUploader;->uploadData()V
    invoke-static {v1}, Lcom/android/server/wifi/DataUploader;->access$100(Lcom/android/server/wifi/DataUploader;)V

    .line 43
    iget-object v1, p0, Lcom/android/server/wifi/DataUploader$1;->this$0:Lcom/android/server/wifi/DataUploader;

    # invokes: Lcom/android/server/wifi/DataUploader;->executePerDay()V
    invoke-static {v1}, Lcom/android/server/wifi/DataUploader;->access$200(Lcom/android/server/wifi/DataUploader;)V

    .line 45
    :cond_0
    return-void
.end method

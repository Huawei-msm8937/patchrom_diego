.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->bootCompleteToVold()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)V

    .line 1476
    :cond_0
    return-void
.end method

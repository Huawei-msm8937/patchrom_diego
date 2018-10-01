.class Lcom/android/server/TrustedUIService$2;
.super Landroid/content/BroadcastReceiver;
.source "TrustedUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TrustedUIService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TrustedUIService;


# direct methods
.method constructor <init>(Lcom/android/server/TrustedUIService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/TrustedUIService$2;->this$0:Lcom/android/server/TrustedUIService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "TrustedUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Broadcast Receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "TrustedUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ALARM_ALERT_ACTION received, mTUIStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/TrustedUIService;->mTUIStatus:Z
    invoke-static {}, Lcom/android/server/TrustedUIService;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    # getter for: Lcom/android/server/TrustedUIService;->mTUIStatus:Z
    invoke-static {}, Lcom/android/server/TrustedUIService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/server/TrustedUIService$2;->this$0:Lcom/android/server/TrustedUIService;

    # invokes: Lcom/android/server/TrustedUIService;->nativeSendTUIExitCmd()V
    invoke-static {v1}, Lcom/android/server/TrustedUIService;->access$100(Lcom/android/server/TrustedUIService;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/TrustedUIService$2;->this$0:Lcom/android/server/TrustedUIService;

    # getter for: Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/TrustedUIService;->access$200(Lcom/android/server/TrustedUIService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.secime.HIDE_WINDOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    :cond_0
    return-void
.end method

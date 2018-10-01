.class Lcom/android/server/TrustedUIService$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 66
    iput-object p1, p0, Lcom/android/server/TrustedUIService$1;->this$0:Lcom/android/server/TrustedUIService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 70
    const-string v0, "TrustedUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PhoneStateListener: CALL_STATE_RINGING, mTUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/TrustedUIService;->mTUIStatus:Z
    invoke-static {}, Lcom/android/server/TrustedUIService;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    # getter for: Lcom/android/server/TrustedUIService;->mTUIStatus:Z
    invoke-static {}, Lcom/android/server/TrustedUIService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/TrustedUIService$1;->this$0:Lcom/android/server/TrustedUIService;

    # invokes: Lcom/android/server/TrustedUIService;->nativeSendTUIExitCmd()V
    invoke-static {v0}, Lcom/android/server/TrustedUIService;->access$100(Lcom/android/server/TrustedUIService;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/TrustedUIService$1;->this$0:Lcom/android/server/TrustedUIService;

    # getter for: Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/TrustedUIService;->access$200(Lcom/android/server/TrustedUIService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.secime.HIDE_WINDOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method

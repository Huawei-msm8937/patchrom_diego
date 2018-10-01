.class Lcom/android/server/policy/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .prologue
    .line 3629
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    .line 3632
    if-eqz p1, :cond_0

    .line 3634
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3638
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3640
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3641
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$9;->val$awakenFromDreams:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3647
    .end local v0    # "origId":J
    :cond_0
    return-void

    .line 3643
    .restart local v0    # "origId":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3635
    .end local v0    # "origId":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method

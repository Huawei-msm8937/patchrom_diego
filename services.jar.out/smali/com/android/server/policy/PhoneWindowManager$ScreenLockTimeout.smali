.class Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenLockTimeout"
.end annotation


# instance fields
.field options:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 7113
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7118
    monitor-enter p0

    .line 7120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7121
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 7123
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 7124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 7125
    monitor-exit p0

    .line 7126
    return-void

    .line 7125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLockOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 7129
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 7130
    return-void
.end method

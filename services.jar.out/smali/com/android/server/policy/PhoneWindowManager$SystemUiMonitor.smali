.class Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;
.super Landroid/app/IProcessObserver$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUiMonitor"
.end annotation


# instance fields
.field private final targetUid:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 4

    .prologue
    .line 6872
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 6873
    const/4 v0, 0x0

    .line 6875
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6879
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->targetUid:I

    .line 6880
    return-void

    .line 6879
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 6876
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 6894
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 6897
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 6884
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->targetUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    .line 6891
    :cond_0
    :goto_0
    return-void

    .line 6887
    :cond_1
    const/16 v0, 0x131

    const-string v1, "SystemUi started! Bind KeyguardService now."

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 6888
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6889
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SystemUiMonitor;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2302(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0
.end method

.method onSystemBooted()V
    .locals 2

    .prologue
    .line 6910
    const/16 v0, 0x131

    :try_start_0
    const-string v1, "Unregister SystemUi monitor."

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 6911
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6915
    :goto_0
    return-void

    .line 6912
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onSystemReady()V
    .locals 2

    .prologue
    .line 6901
    const/16 v0, 0x131

    :try_start_0
    const-string v1, "Register SystemUi monitor."

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6906
    :goto_0
    return-void

    .line 6903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

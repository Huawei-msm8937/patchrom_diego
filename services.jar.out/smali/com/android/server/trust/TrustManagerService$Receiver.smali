.class Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p2, "x1"    # Lcom/android/server/trust/TrustManagerService$1;

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    return-void
.end method

.method private getUserId(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, -0x64

    .line 943
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 944
    .local v0, "userId":I
    if-lez v0, :cond_0

    .line 948
    .end local v0    # "userId":I
    :goto_0
    return v0

    .line 947
    .restart local v0    # "userId":I
    :cond_0
    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_USER_HANDLE missing or invalid, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 948
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 918
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 920
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/trust/TrustManagerService;->updateUserHasAuthenticated(I)V
    invoke-static {v2, v3}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    .line 921
    :cond_2
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result v1

    .line 923
    .local v1, "userId":I
    if-lez v1, :cond_0

    .line 924
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    # invokes: Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0

    .line 926
    .end local v1    # "userId":I
    :cond_3
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result v1

    .line 928
    .restart local v1    # "userId":I
    if-lez v1, :cond_0

    .line 929
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 930
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    .line 931
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 932
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2500(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    .line 934
    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2500(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 935
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 936
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 937
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    .line 932
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 935
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 953
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 954
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 963
    return-void
.end method

.class Lcom/android/server/ServiceWatcher$1;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mRetryCount:I
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebind count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mRetryCount:I
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # operator++ for: Lcom/android/server/ServiceWatcher;->mRetryCount:I
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$108(Lcom/android/server/ServiceWatcher;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$400(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 99
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$600(Lcom/android/server/ServiceWatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, v1, Lcom/android/server/ServiceWatcher;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "max rebind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

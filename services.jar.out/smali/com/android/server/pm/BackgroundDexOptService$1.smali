.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 103
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v4, v4, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->performDex2oat(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 105
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v3, v3, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v3, v8, v9}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v3, v3, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v3, v8, v9}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    goto :goto_0

    .line 116
    :cond_3
    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 130
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getDexOptTotalTime()J

    move-result-wide v4

    long-to-int v3, v4

    div-int/lit16 v0, v3, 0x3e8

    .line 132
    .local v0, "dexOptTotalTime":I
    div-int/lit16 v3, v0, 0x12c

    mul-int/lit16 v3, v3, 0x3e8

    rem-int/lit16 v4, v0, 0x12c

    add-int v0, v3, v4

    .line 134
    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->isUploadtoJank:Z
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->access$000(Lcom/android/server/pm/BackgroundDexOptService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const/16 v3, 0x138

    const-string v4, "dexOptTotalTime"

    const-string v5, ""

    invoke-static {v3, v4, v0, v5}, Landroid/util/Jlog;->d(ILjava/lang/String;ILjava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    # setter for: Lcom/android/server/pm/BackgroundDexOptService;->isUploadtoJank:Z
    invoke-static {v3, v6}, Lcom/android/server/pm/BackgroundDexOptService;->access$002(Lcom/android/server/pm/BackgroundDexOptService;Z)Z

    goto :goto_0
.end method

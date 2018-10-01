.class Lcom/android/server/pm/PackageManagerService$19;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .prologue
    .line 14823
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 14825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14827
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 14828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;I)Z
    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v4

    .line 14829
    .local v4, "succeded":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14831
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesExec(Ljava/lang/String;IZZLandroid/content/pm/IPackageDataObserver;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZLandroid/content/pm/IPackageDataObserver;)V

    .line 14833
    return-void

    .line 14829
    .end local v4    # "succeded":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

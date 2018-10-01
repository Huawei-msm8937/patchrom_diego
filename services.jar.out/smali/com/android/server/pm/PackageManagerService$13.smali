.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$info:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)V
    .locals 0

    .prologue
    .line 13930
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$info:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13932
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 13933
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->val$info:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 13934
    monitor-exit v1

    .line 13935
    return-void

    .line 13934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

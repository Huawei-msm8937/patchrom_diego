.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesExec(Ljava/lang/String;IZZLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$allData:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$succeeded:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZLandroid/content/pm/IPackageDataObserver;Z)V
    .locals 0

    .prologue
    .line 14519
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$allData:Z

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$succeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 14522
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$allData:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 14523
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$succeeded:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->removeCompletedExec(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;Z)V

    .line 14524
    return-void
.end method

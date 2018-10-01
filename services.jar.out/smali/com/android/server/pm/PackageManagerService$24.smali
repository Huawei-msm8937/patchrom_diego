.class Lcom/android/server/pm/PackageManagerService$24;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$mediaStatus:Z

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZZ)V
    .locals 0

    .prologue
    .line 16711
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$24;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16714
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mCustPms:Lcom/android/server/pm/HwCustPackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/HwCustPackageManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mCustPms:Lcom/android/server/pm/HwCustPackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/HwCustPackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/HwCustPackageManagerService;->isSdInstallEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16715
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$24;->val$mediaStatus:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$reportStatus:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInnerAsync(ZZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;ZZZ)V

    .line 16720
    :goto_0
    return-void

    .line 16717
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$24;->val$mediaStatus:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$reportStatus:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInner(ZZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;ZZZ)V

    goto :goto_0
.end method

.class Lcom/android/server/pm/PackageManagerService$25;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInnerAsync(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$externalStorage:Z

.field final synthetic val$isMounted:Z

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZZZ)V
    .locals 0

    .prologue
    .line 16743
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$25;->val$isMounted:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$25;->val$reportStatus:Z

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$25;->val$externalStorage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 16746
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$25;->val$isMounted:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$25;->val$reportStatus:Z

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$25;->val$externalStorage:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInner(ZZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;ZZZ)V

    .line 16747
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mShouldRestoreconSdAppData:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$6602(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 16748
    return-void
.end method

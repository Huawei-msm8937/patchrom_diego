.class Lcom/android/server/dreams/DreamManagerService$3;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$canDoze:Z

.field final synthetic val$isTest:Z

.field final synthetic val$name:Landroid/content/ComponentName;

.field final synthetic val$newToken:Landroid/os/Binder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZIZ)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$newToken:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$name:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$isTest:Z

    iput p5, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$userId:I

    iput-boolean p6, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$canDoze:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCust:Lcom/android/server/dreams/HwCustDreamManagerService;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/HwCustDreamManagerService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCust:Lcom/android/server/dreams/HwCustDreamManagerService;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/HwCustDreamManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/dreams/HwCustDreamManagerService;->isChargingAlbumEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->getCust()Lcom/android/server/dreams/HwCustDreamController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->getCust()Lcom/android/server/dreams/HwCustDreamController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$newToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$name:Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$isTest:Z

    iget v4, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/dreams/HwCustDreamController;->startChargingAlbumDream(Landroid/os/Binder;Landroid/content/ComponentName;ZI)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$newToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$name:Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$isTest:Z

    iget-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$canDoze:Z

    iget v5, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$userId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    goto :goto_0
.end method

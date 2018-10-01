.class final Landroid/view/ViewRootImpl$TraversalRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TraversalRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 6258
    iput-object p1, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6261
    iget-object v3, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v3, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 6262
    .local v1, "viewScrollChanged":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doTraversal()V

    .line 6263
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6264
    iget-object v3, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6265
    .local v2, "windowtype":I
    const/16 v3, 0x7cf

    if-le v2, v3, :cond_1

    const/16 v3, 0x7d4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 6269
    .local v0, "not_care_window":Z
    :goto_0
    if-nez v0, :cond_0

    .line 6270
    iget-object v3, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl;->jank_processAfterTraversal(Z)V

    .line 6273
    .end local v0    # "not_care_window":Z
    .end local v2    # "windowtype":I
    :cond_0
    return-void

    .line 6265
    .restart local v2    # "windowtype":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

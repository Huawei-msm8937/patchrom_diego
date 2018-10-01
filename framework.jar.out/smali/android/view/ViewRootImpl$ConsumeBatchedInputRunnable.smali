.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;
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
    name = "ConsumeBatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 6310
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6313
    const-wide/16 v0, 0x0

    .line 6314
    .local v0, "runstart":J
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6315
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 6317
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)V

    .line 6318
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6319
    iget-object v2, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    # setter for: Landroid/view/ViewRootImpl;->mDeliverInputTime:J
    invoke-static {v2, v4, v5}, Landroid/view/ViewRootImpl;->access$2002(Landroid/view/ViewRootImpl;J)J

    .line 6321
    :cond_1
    return-void
.end method

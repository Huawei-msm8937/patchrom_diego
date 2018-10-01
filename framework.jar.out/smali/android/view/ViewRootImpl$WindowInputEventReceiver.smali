.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 6278
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 6279
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6280
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 6304
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6305
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 6306
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 1

    .prologue
    .line 6295
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    .line 6296
    invoke-super {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 6300
    :goto_0
    return-void

    .line 6298
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    goto :goto_0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v3, 0x0

    .line 6285
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwViewRootImpl()Landroid/view/IHwViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-interface {v0, p1, v1, v2}, Landroid/view/IHwViewRootImpl;->shouldQueueInputEvent(Landroid/view/InputEvent;Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6286
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v3, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6291
    :goto_0
    return-void

    .line 6288
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0
.end method

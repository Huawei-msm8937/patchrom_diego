.class final Landroid/view/ViewRootImpl$SyntheticInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticInputStage"
.end annotation


# instance fields
.field private final mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

.field private final mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2

    .prologue
    .line 4511
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4505
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    .line 4506
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 4507
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 4509
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    .line 4513
    return-void
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/high16 v3, 0x200000

    .line 4542
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    .line 4544
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 4545
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4546
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 4547
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 4548
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel(Landroid/view/MotionEvent;)V

    .line 4557
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4558
    return-void

    .line 4549
    .restart local v0    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "source":I
    :cond_1
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 4550
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    # invokes: Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->access$1000(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4551
    :cond_2
    and-int v2, v1, v3

    if-ne v2, v3, :cond_0

    .line 4553
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancel(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v3, 0x1

    .line 4517
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 4518
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    .line 4519
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4520
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 4521
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    .line 4522
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    move v2, v3

    .line 4537
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :goto_0
    return v2

    .line 4524
    .restart local v0    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "source":I
    :cond_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    .line 4525
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    move v2, v3

    .line 4526
    goto :goto_0

    .line 4527
    :cond_1
    and-int v2, v1, v4

    if-ne v2, v4, :cond_3

    .line 4529
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    move v2, v3

    .line 4530
    goto :goto_0

    .line 4532
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_2
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 4533
    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->process(Landroid/view/KeyEvent;)V

    move v2, v3

    .line 4534
    goto :goto_0

    .line 4537
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.class final Landroid/view/ViewRootImpl$EarlyPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EarlyPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 4216
    iput-object p1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4217
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4218
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4234
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4238
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4239
    const/4 v1, 0x1

    .line 4245
    :goto_0
    return v1

    .line 4244
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 4245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v6, 0x1

    .line 4249
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 4252
    .local v2, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    .line 4253
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 4257
    :cond_0
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IHwNsdImpl;->isSupportAps()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IHwNsdImpl;->isGameProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4259
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-interface {v0, v1, v4, v5}, Landroid/view/IHwNsdImpl;->initAPS(Landroid/content/Context;II)V

    .line 4260
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/IHwNsdImpl;->adaptPowerSave(Landroid/view/MotionEvent;)V

    .line 4264
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 4267
    .local v3, "action":I
    # getter for: Landroid/view/ViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$900()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwViewRootImpl()Landroid/view/IHwViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-interface/range {v0 .. v5}, Landroid/view/IHwViewRootImpl;->filterDecorPointerEvent(Landroid/content/Context;Landroid/view/MotionEvent;ILandroid/view/WindowManager$LayoutParams;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 4286
    :goto_0
    return v0

    .line 4272
    :cond_2
    if-eqz v3, :cond_3

    const/16 v0, 0x8

    if-ne v3, v0, :cond_4

    .line 4273
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 4277
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_5

    .line 4278
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4282
    :cond_5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4283
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 4284
    iget-object v0, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 4286
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4222
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 4223
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    .line 4230
    :goto_0
    return v1

    .line 4225
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 4226
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 4227
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 4230
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

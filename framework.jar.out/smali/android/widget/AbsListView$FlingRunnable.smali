.class public Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private mLastSDRRatio:F

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 4533
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4497
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    .line 4500
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4534
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4535
    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 4483
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method adjustDeltaIn2DSDR(II)I
    .locals 6
    .param p1, "ratioBase"    # I
    .param p2, "origDelta"    # I

    .prologue
    const/4 v5, 0x0

    .line 4669
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v2, v3, v4

    .line 4670
    .local v2, "visibleHeight":I
    add-int v3, v2, p2

    rem-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 4671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 4672
    if-lez p2, :cond_0

    add-int v1, p2, v0

    .line 4673
    .local v1, "newDelta":I
    :goto_1
    add-int v3, v2, v1

    rem-int/2addr v3, p1

    if-nez v3, :cond_1

    .line 4679
    .end local v0    # "i":I
    .end local v1    # "newDelta":I
    :goto_2
    return v1

    .line 4672
    .restart local v0    # "i":I
    :cond_0
    sub-int v1, p2, v0

    goto :goto_1

    .line 4671
    .restart local v1    # "newDelta":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "newDelta":I
    :cond_2
    move v1, p2

    .line 4679
    goto :goto_2
.end method

.method dealWith2DSDR(ILandroid/widget/OverScroller;)I
    .locals 12
    .param p1, "delta"    # I
    .param p2, "scroller"    # Landroid/widget/OverScroller;

    .prologue
    const/4 v11, 0x2

    const/high16 v10, -0x40800000    # -1.0f

    .line 4691
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    .line 4692
    .local v9, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Landroid/view/IHwNsdImpl;->checkIs2DSDRCase(Landroid/content/Context;Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4695
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IHwNsdImpl;->computeSDRRatioBase(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)I

    move-result v6

    .line 4696
    .local v6, "ratioBase":I
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMaximumVelocity:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    invoke-interface/range {v0 .. v6}, Landroid/view/IHwNsdImpl;->computeSDRRatio(Landroid/content/Context;Landroid/view/View;Landroid/view/View;FFI)F

    move-result v8

    .line 4700
    .local v8, "ratioToSet":F
    const/4 v0, 0x0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_5

    .line 4701
    const/4 v7, 0x0

    .line 4703
    .local v7, "isNearEdge":Z
    if-gez p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lt v0, v11, :cond_1

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-ge v0, v11, :cond_3

    .line 4705
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_2

    .line 4706
    invoke-virtual {v9, v10}, Landroid/view/ViewRootImpl;->setSDRRatio(F)V

    .line 4707
    iput v10, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    .line 4709
    :cond_2
    const/4 v7, 0x1

    .line 4712
    :cond_3
    if-nez v7, :cond_5

    .line 4713
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    sub-float v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 4714
    const-string v0, "2DSDR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APS: 2DSDR: AbsListView.FlingRunnable.run(), SDR ratio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layer height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scroll view height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    invoke-virtual {v9, v8}, Landroid/view/ViewRootImpl;->setSDRRatio(F)V

    .line 4717
    iput v8, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    .line 4721
    :cond_4
    invoke-virtual {p0, v6, p1}, Landroid/widget/AbsListView$FlingRunnable;->adjustDeltaIn2DSDR(II)I

    move-result p1

    .line 4725
    .end local v6    # "ratioBase":I
    .end local v7    # "isNearEdge":Z
    .end local v8    # "ratioToSet":F
    :cond_5
    return p1
.end method

.method edgeReached(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 4585
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 4586
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/view/IHwNsdImpl;->checkIs2DSDRCase(Landroid/content/Context;Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4587
    const-string v3, "2DSDR"

    const-string v4, "APS: 2DSDR: AbsListView.edgeReached, we will clear SDR ratio"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->setSDRRatio(F)V

    .line 4589
    iput v5, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    .line 4595
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->hasSpringAnimatorMask()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4596
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4604
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4605
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4607
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x6

    iput v4, v3, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4608
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 4611
    .local v1, "vel":I
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4612
    if-lez p1, :cond_4

    .line 4613
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4625
    .end local v1    # "vel":I
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 4626
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4627
    return-void

    .line 4600
    .end local v0    # "overscrollMode":I
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 4615
    .restart local v0    # "overscrollMode":I
    .restart local v1    # "vel":I
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 4620
    .end local v1    # "vel":I
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4621
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_2

    .line 4622
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_1
.end method

.method endFling()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 4640
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4641
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IHwNsdImpl;->checkIs2DSDRCase(Landroid/content/Context;Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4642
    const-string v1, "2DSDR"

    const-string v2, "APS: 2DSDR: AbsListView.FlingRunnable.endFling, we will clear SDR ratio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->setSDRRatio(F)V

    .line 4644
    iput v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastSDRRatio:F

    .line 4648
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4650
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4651
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4653
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4654
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)V

    .line 4655
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4657
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4658
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4659
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$2002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4661
    :cond_1
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4664
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4665
    return-void
.end method

.method public run()V
    .locals 31

    .prologue
    .line 4731
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v3, :pswitch_data_0

    .line 4733
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4870
    :cond_0
    :goto_0
    return-void

    .line 4737
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4742
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 4743
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4746
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 4747
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4751
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v28, v0

    .line 4752
    .local v28, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v24

    .line 4753
    .local v24, "more":Z
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v30

    .line 4757
    .local v30, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v21, v3, v30

    .line 4760
    .local v21, "delta":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->dealWith2DSDR(ILandroid/widget/OverScroller;)I

    move-result v21

    .line 4764
    if-lez v21, :cond_6

    .line 4766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4767
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4768
    .local v22, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4773
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->adjustFlingDistance(I)I

    move-result v21

    .line 4791
    .end local v22    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4792
    .local v25, "motionView":Landroid/view/View;
    const/16 v27, 0x0

    .line 4793
    .local v27, "oldTop":I
    if-eqz v25, :cond_4

    .line 4794
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4798
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 4799
    .local v16, "atEdge":Z
    if-eqz v16, :cond_7

    if-eqz v21, :cond_7

    const/16 v17, 0x1

    .line 4800
    .local v17, "atEnd":Z
    :goto_2
    if-eqz v17, :cond_8

    .line 4801
    if-eqz v25, :cond_5

    .line 4803
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v3, v27

    sub-int v3, v21, v3

    neg-int v5, v3

    .line 4806
    .local v5, "overshoot":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->hasSpringAnimatorMask()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4807
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v3 .. v12}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 4812
    .end local v5    # "overshoot":I
    :cond_5
    if-eqz v24, :cond_0

    .line 4813
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4777
    .end local v16    # "atEdge":Z
    .end local v17    # "atEnd":Z
    .end local v25    # "motionView":Landroid/view/View;
    .end local v27    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    .line 4778
    .local v26, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v4, v4, v26

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4780
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4781
    .local v23, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4786
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->adjustFlingDistance(I)I

    move-result v21

    goto/16 :goto_1

    .line 4799
    .end local v23    # "lastView":Landroid/view/View;
    .end local v26    # "offsetToLast":I
    .restart local v16    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v27    # "oldTop":I
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 4818
    .restart local v17    # "atEnd":Z
    :cond_8
    if-eqz v24, :cond_a

    if-nez v17, :cond_a

    .line 4819
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 4820
    :cond_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4821
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4823
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4841
    .end local v16    # "atEdge":Z
    .end local v17    # "atEnd":Z
    .end local v21    # "delta":I
    .end local v24    # "more":Z
    .end local v25    # "motionView":Landroid/view/View;
    .end local v27    # "oldTop":I
    .end local v28    # "scroller":Landroid/widget/OverScroller;
    .end local v30    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v28, v0

    .line 4842
    .restart local v28    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4843
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v10

    .line 4844
    .local v10, "scrollY":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v20

    .line 4845
    .local v20, "currY":I
    sub-int v8, v20, v10

    .line 4846
    .local v8, "deltaY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v14, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v15, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v6 .. v15}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4848
    if-gtz v10, :cond_d

    if-lez v20, :cond_d

    const/16 v18, 0x1

    .line 4849
    .local v18, "crossDown":Z
    :goto_3
    if-ltz v10, :cond_e

    if-gez v20, :cond_e

    const/16 v19, 0x1

    .line 4850
    .local v19, "crossUp":Z
    :goto_4
    if-nez v18, :cond_b

    if-eqz v19, :cond_f

    .line 4851
    :cond_b
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v0, v3

    move/from16 v29, v0

    .line 4852
    .local v29, "velocity":I
    if-eqz v19, :cond_c

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    .line 4855
    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4856
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4848
    .end local v18    # "crossDown":Z
    .end local v19    # "crossUp":Z
    .end local v29    # "velocity":I
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 4849
    .restart local v18    # "crossDown":Z
    :cond_e
    const/16 v19, 0x0

    goto :goto_4

    .line 4858
    .restart local v19    # "crossUp":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4861
    .end local v18    # "crossDown":Z
    .end local v19    # "crossUp":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 4862
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4865
    .end local v8    # "deltaY":I
    .end local v10    # "scrollY":I
    .end local v20    # "currY":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4731
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4538
    if-gez p1, :cond_1

    move v2, v6

    .line 4539
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4540
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4543
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/AbsListView;->setStableItemHeight(Landroid/widget/OverScroller;Landroid/widget/AbsListView$FlingRunnable;)V

    .line 4545
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4547
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4548
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4557
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4558
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4560
    :cond_0
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 4538
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 4574
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4575
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4577
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4578
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4579
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4580
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4630
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4631
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4632
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4633
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4634
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4635
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4636
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 4630
    goto :goto_0

    .line 4632
    .restart local v2    # "initialY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4563
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4564
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4565
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4566
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4571
    :goto_0
    return-void

    .line 4568
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4569
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

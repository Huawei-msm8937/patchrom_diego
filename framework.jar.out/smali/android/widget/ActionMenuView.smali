.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 80
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 81
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 82
    iput v2, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 83
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method protected static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 423
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 425
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 426
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 428
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 430
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 432
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 433
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 434
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 436
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 439
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 440
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 441
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 444
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 445
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 447
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 448
    mul-int v10, v0, p1

    .line 449
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 451
    return v0

    .line 428
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 430
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 444
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 640
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 746
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 613
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 615
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 616
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 621
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 626
    if-eqz p1, :cond_2

    .line 627
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 630
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 631
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 635
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 627
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 646
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 647
    return-object v0
.end method

.method protected getFormatItems()Z
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method protected getGeneratedItemPadding()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 676
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 677
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 678
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 679
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 680
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 682
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 683
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 686
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 680
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 598
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method protected getPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 753
    if-nez p1, :cond_1

    .line 754
    const/4 v2, 0x0

    .line 765
    :cond_0
    :goto_0
    return v2

    .line 756
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 757
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 759
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 760
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 762
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 763
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 662
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 663
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 652
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 128
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 130
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 133
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 576
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 577
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 578
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 457
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 462
    .local v6, "childCount":I
    sub-int v31, p5, p3

    div-int/lit8 v16, v31, 0x2

    .line 463
    .local v16, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 464
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 465
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 466
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 467
    .local v17, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 468
    .local v30, "widthRemaining":I
    const/4 v9, 0x0

    .line 469
    .local v9, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v12

    .line 471
    .local v12, "isLayoutRtl":Z
    const/4 v8, 0x0

    .line 473
    .local v8, "elimOverflowWidth":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_7

    .line 474
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 475
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 473
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/ActionMenuView$LayoutParams;

    .line 480
    .local v20, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 481
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 483
    add-int v19, v19, v7

    .line 486
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 489
    .local v10, "height":I
    if-eqz v12, :cond_4

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v13, v31, v32

    .line 491
    .local v13, "l":I
    add-int v21, v13, v19

    .line 496
    .local v21, "r":I
    :goto_3
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 497
    .local v27, "t":I
    add-int v5, v27, v10

    .line 498
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 500
    sub-int v30, v30, v19

    .line 501
    const/4 v9, 0x1

    .line 503
    move/from16 v8, v19

    .line 505
    goto :goto_2

    .line 493
    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v21, v31, v32

    .line 494
    .restart local v21    # "r":I
    sub-int v13, v21, v19

    .restart local v13    # "l":I
    goto :goto_3

    .line 506
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    :cond_5
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v22, v31, v32

    .line 507
    .local v22, "size":I
    add-int v18, v18, v22

    .line 508
    sub-int v30, v30, v22

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 510
    add-int v18, v18, v7

    .line 512
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 516
    .end local v20    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_8

    if-nez v9, :cond_8

    .line 518
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 519
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 520
    .local v29, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 521
    .restart local v10    # "height":I
    sub-int v31, p4, p2

    div-int/lit8 v15, v31, 0x2

    .line 522
    .local v15, "midHorizontal":I
    div-int/lit8 v31, v29, 0x2

    sub-int v13, v15, v31

    .line 523
    .restart local v13    # "l":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 524
    .restart local v27    # "t":I
    add-int v31, v13, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 528
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v15    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_8
    if-eqz v9, :cond_a

    const/16 v31, 0x0

    :goto_4
    sub-int v23, v17, v31

    .line 529
    .local v23, "spacerCount":I
    const/16 v32, 0x0

    if-lez v23, :cond_b

    div-int v31, v30, v23

    :goto_5
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 531
    .local v24, "spacerSize":I
    if-eqz v12, :cond_d

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v26, v31, v32

    .line 533
    .local v26, "startRight":I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_0

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 535
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 536
    .local v14, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    iget-boolean v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 533
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 528
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_a
    const/16 v31, 0x1

    goto :goto_4

    .line 529
    .restart local v23    # "spacerCount":I
    :cond_b
    const/16 v31, 0x0

    goto :goto_5

    .line 540
    .restart local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_c
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 541
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 542
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 543
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 544
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 545
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    sub-int v26, v26, v31

    goto :goto_7

    .line 548
    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 549
    .local v25, "startLeft":I
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_0

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 551
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 552
    .restart local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    iget-boolean v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 549
    :cond_e
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 556
    :cond_f
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 557
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 558
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 559
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 562
    .restart local v27    # "t":I
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v0, v6, :cond_10

    if-eqz v9, :cond_10

    iget-boolean v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 563
    sub-int v31, p4, v8

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 564
    const/4 v8, 0x0

    .line 569
    :goto_a
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    add-int v25, v25, v31

    goto :goto_9

    .line 566
    :cond_10
    add-int v31, v25, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 142
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 143
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 145
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 146
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 151
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 152
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 153
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 154
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 158
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 159
    invoke-virtual {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 169
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 143
    goto :goto_0

    .line 162
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 165
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 167
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method protected onMeasureExactFormat(II)V
    .locals 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 175
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 176
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    .line 177
    .local v39, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 179
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v41

    add-int v38, v40, v41

    .line 180
    .local v38, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v41

    add-int v18, v40, v41

    .line 182
    .local v18, "heightPadding":I
    const/16 v40, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 185
    .local v22, "itemHeightSpec":I
    sub-int v39, v39, v38

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    div-int v4, v39, v40

    .line 189
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    rem-int v6, v39, v40

    .line 191
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 193
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 402
    :goto_0
    return-void

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    div-int v41, v6, v4

    add-int v5, v40, v41

    .line 199
    .local v5, "cellSize":I
    move v8, v4

    .line 200
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 201
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 202
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 203
    .local v14, "expandableItemCount":I
    const/16 v36, 0x0

    .line 204
    .local v36, "visibleItemCount":I
    const/16 v16, 0x0

    .line 207
    .local v16, "hasOverflow":Z
    const-wide/16 v34, 0x0

    .line 209
    .local v34, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 213
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_3

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 215
    .local v33, "v":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 213
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/ActionMenuView$LayoutParams;

    .line 220
    .local v31, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1

    .line 221
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 225
    .end local v31    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v33    # "v":Landroid/view/View;
    :cond_3
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v12, :cond_c

    .line 226
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 227
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    .line 225
    :cond_4
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 229
    :cond_5
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 230
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v36, v36, 0x1

    .line 232
    if-eqz v21, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    :cond_6
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 239
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 240
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 241
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 242
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 243
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 244
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 245
    if-eqz v21, :cond_a

    move-object/from16 v40, v11

    check-cast v40, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v40

    if-eqz v40, :cond_a

    const/16 v40, 0x1

    :goto_5
    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 248
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_b

    const/4 v7, 0x1

    .line 250
    .local v7, "cellsAvailable":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 253
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 254
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v40, v0

    if-eqz v40, :cond_7

    add-int/lit8 v14, v14, 0x1

    .line 255
    :cond_7
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_8

    const/16 v16, 0x1

    .line 257
    :cond_8
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-nez v40, :cond_9

    .line 258
    sub-int/2addr v8, v9

    .line 261
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    move/from16 v0, v25

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 262
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v9, v0, :cond_4

    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v34, v34, v40

    goto/16 :goto_4

    .line 245
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_a
    const/16 v40, 0x0

    goto :goto_5

    :cond_b
    move v7, v8

    .line 248
    goto :goto_6

    .line 267
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_c
    if-eqz v16, :cond_e

    const/16 v40, 0x2

    move/from16 v0, v36

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/4 v10, 0x1

    .line 272
    .local v10, "centerSingleExpandedItem":Z
    :goto_7
    const/16 v30, 0x0

    .line 273
    .local v30, "needsExpansion":Z
    :goto_8
    if-lez v14, :cond_12

    if-lez v8, :cond_12

    .line 274
    const v26, 0x7fffffff

    .line 275
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 276
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 277
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v0, v12, :cond_11

    .line 278
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 279
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 282
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v40, v0

    if-nez v40, :cond_f

    .line 277
    :cond_d
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 267
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    .line 285
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_f
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 286
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 287
    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 288
    const/16 v27, 0x1

    goto :goto_a

    .line 289
    :cond_10
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 290
    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v28, v28, v40

    .line 291
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .line 296
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_11
    or-long v34, v34, v28

    .line 298
    move/from16 v0, v27

    if-le v0, v8, :cond_17

    .line 327
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_12
    if-nez v16, :cond_1c

    const/16 v40, 0x1

    move/from16 v0, v36

    move/from16 v1, v40

    if-ne v0, v1, :cond_1c

    const/16 v32, 0x1

    .line 328
    .local v32, "singleItem":Z
    :goto_b
    if-lez v8, :cond_24

    const-wide/16 v40, 0x0

    cmp-long v40, v34, v40

    if-eqz v40, :cond_24

    add-int/lit8 v40, v36, -0x1

    move/from16 v0, v40

    if-lt v8, v0, :cond_13

    if-nez v32, :cond_13

    const/16 v40, 0x1

    move/from16 v0, v24

    move/from16 v1, v40

    if-le v0, v1, :cond_24

    .line 330
    :cond_13
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->bitCount(J)I

    move-result v40

    move/from16 v0, v40

    int-to-float v13, v0

    .line 332
    .local v13, "expandCount":F
    if-nez v32, :cond_15

    .line 334
    const-wide/16 v40, 0x1

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_14

    .line 335
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 336
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_14

    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v13, v13, v40

    .line 338
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v40, 0x1

    add-int/lit8 v41, v12, -0x1

    shl-int v40, v40, v41

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_15

    .line 339
    add-int/lit8 v40, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 340
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_15

    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v13, v13, v40

    .line 344
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v40, 0x0

    cmpl-float v40, v13, v40

    if-lez v40, :cond_1d

    mul-int v40, v8, v5

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v40, v40, v13

    move/from16 v0, v40

    float-to-int v15, v0

    .line 347
    .local v15, "extraPixels":I
    :goto_c
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    .line 348
    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_1e

    .line 347
    :cond_16
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 301
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v32    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_17
    add-int/lit8 v26, v26, 0x1

    .line 303
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_1b

    .line 304
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 305
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 306
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v28

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_19

    .line 308
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    const/16 v40, 0x1

    shl-int v40, v40, v20

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v34, v34, v40

    .line 303
    :cond_18
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 312
    :cond_19
    if-eqz v10, :cond_1a

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1a

    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v8, v0, :cond_1a

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    add-int v40, v40, v5

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 316
    :cond_1a
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 317
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 318
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    .line 321
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1b
    const/16 v30, 0x1

    .line 322
    goto/16 :goto_8

    .line 327
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_1c
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 344
    .restart local v13    # "expandCount":F
    .restart local v32    # "singleItem":Z
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 350
    .restart local v15    # "extraPixels":I
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 351
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 352
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v40, v0

    if-eqz v40, :cond_20

    .line 354
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 355
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 356
    if-nez v20, :cond_1f

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_1f

    .line 359
    neg-int v0, v15

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 361
    :cond_1f
    const/16 v30, 0x1

    goto/16 :goto_e

    .line 362
    :cond_20
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_21

    .line 363
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 364
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 365
    neg-int v0, v15

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 366
    const/16 v30, 0x1

    goto/16 :goto_e

    .line 371
    :cond_21
    if-eqz v20, :cond_22

    .line 372
    div-int/lit8 v40, v15, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 374
    :cond_22
    add-int/lit8 v40, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v40

    if-eq v0, v1, :cond_16

    .line 375
    div-int/lit8 v40, v15, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_e

    .line 380
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_23
    const/4 v8, 0x0

    .line 384
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_24
    if-eqz v30, :cond_26

    .line 385
    const/16 v20, 0x0

    :goto_11
    move/from16 v0, v20

    if-ge v0, v12, :cond_26

    .line 386
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 387
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 389
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v40, v0

    if-nez v40, :cond_25

    .line 385
    :goto_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    .line 391
    :cond_25
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    mul-int v40, v40, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v41, v0

    add-int v37, v40, v41

    .line 392
    .local v37, "width":I
    const/high16 v40, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_12

    .line 397
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v37    # "width":I
    :cond_26
    const/high16 v40, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v40

    if-eq v0, v1, :cond_27

    .line 398
    move/from16 v19, v25

    .line 401
    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 775
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 776
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 694
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 695
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 696
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 137
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 587
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 588
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 609
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 94
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 118
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 119
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public abstract Landroid/widget/HwAbsListView;
.super Landroid/widget/AbsListView;
.source "HwAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HwAbsListView$LeveledView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LISTVIEW_STUB_MASK_HIGH_SPEED_STABLE_ANIMATOR:I = 0x4

.field public static final LISTVIEW_STUB_MASK_SCROLL_MULTI_SELECT:I = 0x1

.field public static final LISTVIEW_STUB_MASK_SPRING_ANIMATOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field public static final TOUCH_MODE_SCROLL_MULTI_SELECT:I = 0x7


# instance fields
.field private mCheckedIdOnMove:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChildPositionOnLevel:[I

.field private mCurItemView:Landroid/widget/CheckBox;

.field private mFirstChecked:Z

.field private mFirstHasChangedOnMove:Z

.field private mIsHwTheme:Z

.field private mItemHeight:I

.field private mLevel:I

.field private mMarkWidthOfCheckedTextView:I

.field private mMask:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    .line 39
    iput v1, p0, Landroid/widget/HwAbsListView;->mLevel:I

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/HwAbsListView;->mCheckedIdOnMove:Ljava/util/HashSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HwAbsListView;->checkIsHwTheme(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    .line 56
    iget-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    invoke-direct {p0, v0}, Landroid/widget/HwAbsListView;->initMask(Z)V

    .line 58
    iget-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Landroid/widget/HwAbsListView;->setOverScrollMode(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    .line 39
    iput v1, p0, Landroid/widget/HwAbsListView;->mLevel:I

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/HwAbsListView;->mCheckedIdOnMove:Ljava/util/HashSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/HwAbsListView;->checkIsHwTheme(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    .line 77
    iget-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    invoke-direct {p0, v0}, Landroid/widget/HwAbsListView;->initMask(Z)V

    .line 79
    iget-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Landroid/widget/HwAbsListView;->setOverScrollMode(I)V

    .line 83
    :cond_0
    invoke-direct {p0}, Landroid/widget/HwAbsListView;->initSpringBackEffect()V

    .line 84
    return-void
.end method

.method private checkIsHwTheme(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-static {p1, p2}, Landroid/hwcontrol/HwWidgetFactory;->checkIsHwTheme(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method private clickItemIfNeeded(II)V
    .locals 4
    .param p1, "motionPosition"    # I
    .param p2, "x"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 333
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/widget/HwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 341
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/HwAbsListView;->mCheckedIdOnMove:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Landroid/widget/HwAbsListView;->findCheckbleView(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Landroid/widget/HwAbsListView;->performItemClickInner(Landroid/view/View;IJ)Z

    .line 344
    iget-object v2, p0, Landroid/widget/HwAbsListView;->mCheckedIdOnMove:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private eatTouchUpForMultiSelect(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 475
    .local v1, "lastX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 476
    .local v2, "lastY":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/HwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 477
    .local v0, "lastMotionPosition":I
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getMotionPosition()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/HwAbsListView;->mFirstHasChangedOnMove:Z

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    const/4 v3, 0x1

    .line 481
    .end local v0    # "lastMotionPosition":I
    .end local v1    # "lastX":I
    .end local v2    # "lastY":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findCheckbleView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "needResearch":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactListItemView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 395
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/widget/HwAbsListView;->inCheckableViewOnDown(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/widget/HwAbsListView;->inCheckableViewOnMove(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 439
    iget v4, p0, Landroid/widget/HwAbsListView;->mLevel:I

    if-lez v4, :cond_1

    .line 441
    move-object v0, p1

    .line 442
    .local v0, "check":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Landroid/widget/HwAbsListView;->mLevel:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 443
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "check":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    .restart local v0    # "check":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "check":Landroid/view/View;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 451
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method

.method private getElasticInterpolation(II)I
    .locals 12
    .param p1, "delta"    # I
    .param p2, "currentPos"    # I

    .prologue
    .line 177
    const/16 v0, 0xfa

    .line 178
    .local v0, "COEFFICIENT":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 179
    .local v1, "d":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v2, v5

    .line 180
    .local v2, "len":F
    int-to-float v5, p1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 183
    .local v4, "sign":F
    const/high16 v5, 0x437a0000    # 250.0f

    mul-float/2addr v5, v1

    float-to-double v6, v5

    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    float-to-double v8, v2

    sub-double/2addr v6, v8

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 184
    .local v3, "newDeltaY":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 185
    move v3, p1

    .line 187
    :cond_0
    return v3
.end method

.method private getItemCheckedState(Z)Z
    .locals 2
    .param p1, "curChecked"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 138
    iget-boolean p1, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    .line 140
    .end local p1    # "curChecked":Z
    :cond_0
    return p1
.end method

.method private inCheckBox(Landroid/view/View;I)Z
    .locals 4
    .param p1, "cb"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 422
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 426
    aget v2, v0, v1

    if-le p2, v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private inCheckableViewOnDown(Landroid/view/View;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v1, 0x0

    .line 229
    instance-of v2, p1, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 230
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 231
    .local v0, "ctView":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/HwAbsListView;->mMarkWidthOfCheckedTextView:I

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Landroid/widget/HwAbsListView;->mMarkWidthOfCheckedTextView:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 239
    .end local v0    # "ctView":Landroid/widget/CheckedTextView;
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 235
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 237
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/widget/HwAbsListView;->searchCheckableView(Landroid/view/ViewGroup;I)Z

    move-result v1

    goto :goto_0
.end method

.method private inCheckableViewOnMove(Landroid/view/View;I)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v5, 0x0

    .line 400
    instance-of v4, p1, Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 401
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 402
    .local v2, "ctView":Landroid/widget/CheckedTextView;
    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v6, p0, Landroid/widget/HwAbsListView;->mMarkWidthOfCheckedTextView:I

    sub-int/2addr v4, v6

    if-le p2, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge p2, v4, :cond_0

    const/4 v4, 0x1

    .line 417
    .end local v2    # "ctView":Landroid/widget/CheckedTextView;
    :goto_0
    return v4

    .restart local v2    # "ctView":Landroid/widget/CheckedTextView;
    :cond_0
    move v4, v5

    .line 403
    goto :goto_0

    .line 405
    .end local v2    # "ctView":Landroid/widget/CheckedTextView;
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 406
    invoke-direct {p0, p1}, Landroid/widget/HwAbsListView;->getCheckableView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, "cbView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 409
    :try_start_0
    move-object v0, v1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v4, v0

    iput-object v4, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    .line 410
    invoke-direct {p0, v1, p2}, Landroid/widget/HwAbsListView;->inCheckBox(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 411
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v4, "AbsListView"

    const-string v6, "Judge in checkbox view on move cast fialue."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "cbView":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_2
    move v4, v5

    .line 417
    goto :goto_0
.end method

.method private inMultiSelectMoveMode(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initMask(Z)V
    .locals 1
    .param p1, "isHwTheme"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 93
    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    goto :goto_0
.end method

.method private initSpringBackEffect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasSpringAnimatorMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v1, v1}, Landroid/widget/HwAbsListView;->setEdgeGlowTopBottom(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HwAbsListView;->mOverflingDistance:I

    .line 112
    :cond_0
    return-void
.end method

.method private onMultiSelectUp()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 488
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/HwAbsListView;->setTouchMode(I)V

    .line 490
    :cond_0
    return-void
.end method

.method private performItemClickInner(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 350
    const/4 v6, 0x0

    .line 351
    .local v6, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getMotionPosition()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/HwAbsListView;->mFirstHasChangedOnMove:Z

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    const/4 v6, 0x1

    .line 359
    iget-boolean v1, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 360
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v6

    .line 383
    :cond_1
    :goto_0
    return v6

    .line 363
    :cond_2
    iget-object v1, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    iget-object v2, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 364
    const/4 v6, 0x1

    .line 365
    iget-object v1, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-nez v1, :cond_3

    .line 370
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 371
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 372
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 378
    .end local v0    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_3
    iget-object v1, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private searchCheckableView(Landroid/view/ViewGroup;I)Z
    .locals 17
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I

    .prologue
    .line 244
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 245
    .local v12, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/widget/HwAbsListView$LeveledView;>;"
    const/4 v9, 0x0

    .line 246
    .local v9, "level":I
    const-string v11, ""

    .line 247
    .local v11, "path":Ljava/lang/String;
    const-string v3, ""

    .line 248
    .local v3, "childPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 249
    .local v7, "found":Z
    const/4 v13, 0x0

    .line 250
    .local v13, "vg":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 251
    .local v4, "childView":Landroid/view/View;
    new-instance v14, Landroid/widget/HwAbsListView$LeveledView;

    const/4 v15, 0x0

    const-string v16, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Landroid/widget/HwAbsListView$LeveledView;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    invoke-virtual {v12}, Ljava/util/Stack;->empty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 256
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/HwAbsListView$LeveledView;

    .line 260
    .local v5, "curView":Landroid/widget/HwAbsListView$LeveledView;
    iget-object v14, v5, Landroid/widget/HwAbsListView$LeveledView;->view:Landroid/view/View;

    instance-of v14, v14, Landroid/view/ViewGroup;

    if-eqz v14, :cond_0

    .line 261
    iget-object v13, v5, Landroid/widget/HwAbsListView$LeveledView;->view:Landroid/view/View;

    .end local v13    # "vg":Landroid/view/ViewGroup;
    check-cast v13, Landroid/view/ViewGroup;

    .line 262
    .restart local v13    # "vg":Landroid/view/ViewGroup;
    iget v14, v5, Landroid/widget/HwAbsListView$LeveledView;->level:I

    add-int/lit8 v9, v14, 0x1

    .line 263
    iget-object v11, v5, Landroid/widget/HwAbsListView$LeveledView;->path:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    array-length v14, v14

    if-le v9, v14, :cond_2

    .line 288
    .end local v5    # "curView":Landroid/widget/HwAbsListView$LeveledView;
    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/HwAbsListView$LeveledView;

    iget-object v14, v14, Landroid/widget/HwAbsListView$LeveledView;->view:Landroid/view/View;

    instance-of v14, v14, Landroid/widget/CheckBox;

    if-eqz v14, :cond_5

    .line 289
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/HwAbsListView$LeveledView;

    .line 290
    .local v2, "check":Landroid/widget/HwAbsListView$LeveledView;
    iget-object v14, v2, Landroid/widget/HwAbsListView$LeveledView;->path:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v2, Landroid/widget/HwAbsListView$LeveledView;->path:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 291
    iget-object v14, v2, Landroid/widget/HwAbsListView$LeveledView;->path:Ljava/lang/String;

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "leveledPath":[Ljava/lang/String;
    if-eqz v10, :cond_5

    array-length v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    array-length v15, v15

    if-gt v14, v15, :cond_5

    .line 296
    array-length v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/HwAbsListView;->mLevel:I

    .line 298
    iget-object v14, v2, Landroid/widget/HwAbsListView$LeveledView;->view:Landroid/view/View;

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    .line 299
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v10

    if-ge v8, v14, :cond_5

    .line 301
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HwAbsListView;->mChildPositionOnLevel:[I

    aget-object v15, v10, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, v14, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "check":Landroid/widget/HwAbsListView$LeveledView;
    .end local v8    # "i":I
    .end local v10    # "leveledPath":[Ljava/lang/String;
    .restart local v5    # "curView":Landroid/widget/HwAbsListView$LeveledView;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 268
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 269
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    instance-of v14, v4, Landroid/widget/CheckBox;

    if-eqz v14, :cond_3

    .line 274
    new-instance v14, Landroid/widget/HwAbsListView$LeveledView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v9, v15}, Landroid/widget/HwAbsListView$LeveledView;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Landroid/widget/HwAbsListView;->inCheckBox(Landroid/view/View;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 276
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 279
    :cond_3
    instance-of v14, v4, Landroid/view/ViewGroup;

    if-eqz v14, :cond_4

    .line 283
    new-instance v14, Landroid/widget/HwAbsListView$LeveledView;

    invoke-direct {v14, v4, v9, v3}, Landroid/widget/HwAbsListView$LeveledView;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 302
    .end local v5    # "curView":Landroid/widget/HwAbsListView$LeveledView;
    .restart local v2    # "check":Landroid/widget/HwAbsListView$LeveledView;
    .restart local v10    # "leveledPath":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 303
    .local v6, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/HwAbsListView;->mLevel:I

    .line 304
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    .line 305
    const/4 v14, 0x0

    .line 312
    .end local v2    # "check":Landroid/widget/HwAbsListView$LeveledView;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v10    # "leveledPath":[Ljava/lang/String;
    :goto_3
    return v14

    :cond_5
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HwAbsListView;->mLevel:I

    if-lez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected adjustFlingDistance(I)I
    .locals 5
    .param p1, "delta"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 546
    if-lez p1, :cond_2

    .line 547
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/HwAbsListView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HwAbsListView;->mPaddingTop:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 548
    .local v1, "screen":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 549
    .local v0, "isMore":Z
    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 550
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    if-lez v2, :cond_0

    .line 551
    iget v2, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    div-int v2, p1, v2

    iget v3, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    mul-int p1, v2, v3

    .line 561
    :cond_0
    :goto_1
    return p1

    .end local v0    # "isMore":Z
    :cond_1
    move v0, v2

    .line 548
    goto :goto_0

    .line 554
    .end local v1    # "screen":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/HwAbsListView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HwAbsListView;->mPaddingTop:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v1, v3

    .line 555
    .restart local v1    # "screen":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 556
    .restart local v0    # "isMore":Z
    :goto_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 557
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    if-lez v2, :cond_0

    .line 558
    iget v2, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    div-int v2, p1, v2

    iget v3, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    mul-int p1, v2, v3

    goto :goto_1

    .end local v0    # "isMore":Z
    :cond_3
    move v0, v2

    .line 555
    goto :goto_2
.end method

.method protected checkIsEnabled(Landroid/widget/ListAdapter;I)Z
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "position"    # I

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/widget/HwAbsListView;->mIsHwTheme:Z

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected dismissCurrentPressed()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getMotionPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/HwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method protected enterMultiSelectModeIfNeeded(II)V
    .locals 5
    .param p1, "motionPosition"    # I
    .param p2, "x"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0, v3}, Landroid/widget/HwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/HwAbsListView;->inCheckableViewOnDown(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p0, v4}, Landroid/widget/HwAbsListView;->setTouchMode(I)V

    .line 216
    iget-object v3, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 217
    iget-object v3, p0, Landroid/widget/HwAbsListView;->mCurItemView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    .line 222
    :cond_0
    :goto_1
    iput-boolean v2, p0, Landroid/widget/HwAbsListView;->mFirstHasChangedOnMove:Z

    .line 223
    iget-object v1, p0, Landroid/widget/HwAbsListView;->mCheckedIdOnMove:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 226
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    move v1, v2

    .line 217
    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    iput-boolean v1, p0, Landroid/widget/HwAbsListView;->mFirstChecked:Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected getCheckedStateForMultiSelect(Z)Z
    .locals 1
    .param p1, "curState"    # Z

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/HwAbsListView;->getItemCheckedState(Z)Z

    move-result p1

    .line 133
    .end local p1    # "curState":Z
    :cond_0
    return p1
.end method

.method protected hasHighSpeedStableMask()Z
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasScrollMultiSelectMask()Z
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasSpringAnimatorMask()Z
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Landroid/widget/HwAbsListView;->inMultiSelectMoveMode(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMultiSelectMove(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v1, v3

    .line 324
    .local v1, "x":I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v2, v3

    .line 325
    .local v2, "y":I
    invoke-virtual {p0, v2}, Landroid/widget/HwAbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 326
    .local v0, "motionPosition":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HwAbsListView;->clickItemIfNeeded(II)V

    .line 329
    .end local v0    # "motionPosition":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasScrollMultiSelectMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getTouchMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/HwAbsListView;->eatTouchUpForMultiSelect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HwAbsListView;->setTouchMode(I)V

    .line 465
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 468
    invoke-direct {p0}, Landroid/widget/HwAbsListView;->onMultiSelectUp()V

    .line 470
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasSpringAnimatorMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-super/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 158
    :cond_0
    move v2, p2

    .line 159
    .local v2, "newDeltaY":I
    if-eqz p9, :cond_1

    .line 160
    invoke-direct {p0, p2, p4}, Landroid/widget/HwAbsListView;->getElasticInterpolation(II)I

    move-result v2

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getHeight()I

    move-result v8

    .line 165
    .local v8, "maxOverScrollYDistance":I
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->invalidate()V

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    .line 167
    invoke-super/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected setIgnoreScrollMultiSelectStub()V
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/widget/HwAbsListView;->mMask:I

    .line 518
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 120
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasSpringAnimatorMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v1, v1}, Landroid/widget/HwAbsListView;->setEdgeGlowTopBottom(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected setStableItemHeight(Landroid/widget/OverScroller;Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/OverScroller;
    .param p2, "fr"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->hasHighSpeedStableMask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HwAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    .line 532
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getIHwSplineOverScroller()Landroid/widget/IHwSplineOverScroller;

    move-result-object v0

    iget v1, p0, Landroid/widget/HwAbsListView;->mItemHeight:I

    invoke-interface {v0, v1}, Landroid/widget/IHwSplineOverScroller;->setStableItemHeight(I)V

    .line 537
    :cond_2
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0, p2}, Landroid/widget/HwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

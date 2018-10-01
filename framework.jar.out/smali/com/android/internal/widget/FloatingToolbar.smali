.class public final Lcom/android/internal/widget/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$ViewFader;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private static final mHwFloatingToolbarFlag:[Z


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mOrientation:I

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$1;

    invoke-direct {v0}, Lcom/android/internal/widget/FloatingToolbar$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 100
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    .line 105
    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    .line 106
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$2;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    .line 136
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    aput-boolean p3, v0, v1

    .line 139
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/FloatingToolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/FloatingToolbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/FloatingToolbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->setOverflowListViewDivider(Landroid/content/Context;Landroid/widget/ListView;)V

    return-void
.end method

.method protected static adjustWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v5, 0x2710

    const/4 v4, 0x0

    const/16 v3, -0x2710

    .line 1664
    sget-object v2, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    .line 1665
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1666
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1668
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1673
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private static applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "originalContext"    # Landroid/content/Context;

    .prologue
    .line 1600
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getThemeId(Landroid/content/Context;)I

    move-result v0

    .line 1602
    .local v0, "themeId":I
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1525
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1528
    .local v0, "vg":Landroid/view/ViewGroup;
    sget-object v1, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 1529
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 1533
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/hwcontrol/HwWidgetFactory;->setEditorWindowColorful(Landroid/content/Context;Landroid/view/View;Z)V

    .line 1535
    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1561
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1562
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1572
    return-object v0

    .line 1562
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1584
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1585
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1590
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1591
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1592
    return-object v0

    .line 1585
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 1492
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109005a

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1495
    .local v0, "imageMenuItemButton":Landroid/view/View;
    const v2, 0x1020054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1508
    .end local v0    # "imageMenuItemButton":Landroid/view/View;
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090059

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1504
    .local v1, "menuItemButton":Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->setMenuItemButtonInputType(Landroid/widget/TextView;)V

    .line 1506
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1508
    goto :goto_0
.end method

.method private static createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1516
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1518
    .local v0, "textview":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->setMenuItemButtonInputType(Landroid/widget/TextView;)V

    .line 1519
    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 5
    .param p0, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1540
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1541
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 1544
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1545
    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1547
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1548
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1549
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1552
    return-object v1
.end method

.method private static getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1610
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getEstimatedToolbarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1606
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected static getPanelLayoutWithDividers(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1616
    sget-object v1, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 1617
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1618
    .local v0, "contentview":Landroid/widget/LinearLayout;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1619
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20300cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1622
    .end local v0    # "contentview":Landroid/widget/LinearLayout;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 291
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    return-object v2
.end method

.method protected static getThemeId(Landroid/content/Context;)I
    .locals 8
    .param p0, "originalContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1639
    sget-object v3, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_0

    .line 1640
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "androidhwext:style/Theme.Emui"

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1646
    :goto_0
    return v2

    .line 1642
    :cond_0
    new-array v3, v6, [I

    const/high16 v4, 0x1160000

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1643
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1644
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_1

    const v2, 0x1030237

    .line 1645
    .local v2, "themeId":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1644
    .end local v2    # "themeId":I
    :cond_1
    const v2, 0x1030224

    goto :goto_1
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 275
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 276
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 278
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    .line 279
    invoke-direct {p0, v3}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1482
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1483
    const/4 v0, 0x1

    .line 1485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setMenuItemButtonInputType(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 1627
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 1628
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1629
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1631
    sget-object v0, Landroid/graphics/Typeface;->CHNFZSLIM:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1636
    :cond_0
    return-void
.end method

.method private static setOverflowListViewDivider(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    .line 1652
    sget-object v1, Lcom/android/internal/widget/FloatingToolbar;->mHwFloatingToolbarFlag:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 1653
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1654
    .local v0, "color":I
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1660
    .end local v0    # "color":I
    :goto_0
    return-void

    .line 1657
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 237
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hide()V

    .line 245
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    .line 154
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 167
    :goto_0
    return-object p0

    .line 165
    :cond_0
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/FloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 190
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 191
    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    .line 193
    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    .line 194
    return-object p0

    .line 191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/android/internal/widget/FloatingToolbar;
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 206
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 207
    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    .line 214
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    .line 215
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 216
    return-object p0

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateLayout()Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar;->show()Lcom/android/internal/widget/FloatingToolbar;

    .line 228
    :cond_0
    return-object p0
.end method

.class public Lcom/android/internal/app/WindowDecorActionBar;
.super Landroid/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WindowDecorActionBar$TabImpl;,
        Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final GALLERY3DNAME:Ljava/lang/String; = "com.android.gallery3d.app.Gallery"

.field private static final HWCAMERANAME:Ljava/lang/String; = "com.android.hwcamera.Camera"

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mIsGalleryActiviy:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 115
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 117
    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 122
    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 128
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 148
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 156
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1393
    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mIsGalleryActiviy:Z

    .line 166
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 170
    .local v2, "window":Landroid/view/Window;
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->checkGalleryActivity(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mIsGalleryActiviy:Z

    .line 172
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .line 174
    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 175
    if-nez v1, :cond_0

    .line 176
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 178
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 128
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 148
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 156
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1393
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mIsGalleryActiviy:Z

    .line 181
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 182
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 128
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 148
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 156
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1393
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mIsGalleryActiviy:Z

    .line 190
    sget-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/WindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private checkGalleryActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "hostName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.android.hwcamera.Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1401
    :cond_0
    const/4 v1, 0x1

    .line 1403
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 750
    if-eqz p2, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 753
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 449
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 450
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 543
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 544
    .local v3, "tabi":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 546
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 547
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 550
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 551
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 553
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 555
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 557
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->initScrollingTabContainerView()Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    .line 314
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 328
    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 319
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 326
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 324
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 252
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 253
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 255
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 254
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 255
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 257
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 704
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 705
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 708
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 710
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    const v5, 0x10203a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 200
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->initCustomPanel(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->initActionBarOverlayLayout(Landroid/view/View;)V

    .line 203
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->initContextView(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->initContainerView(Landroid/view/View;)V

    .line 213
    const v5, 0x10203a8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 216
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v5, :cond_2

    .line 217
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 228
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 229
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_8

    move v4, v6

    .line 230
    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 231
    iput-boolean v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 234
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 235
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_9

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 236
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 238
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v10, 0x10102ce

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 242
    invoke-virtual {p0, v6}, Lcom/android/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 244
    :cond_5
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 245
    .local v3, "elevation":I
    if-eqz v3, :cond_6

    .line 246
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 248
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v5, v7

    .line 224
    goto :goto_0

    .restart local v2    # "current":I
    :cond_8
    move v4, v7

    .line 229
    goto :goto_1

    .restart local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_9
    move v5, v7

    .line 235
    goto :goto_2
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 282
    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 284
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 290
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 293
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 300
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 302
    return-void

    .line 286
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 287
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 289
    goto :goto_1

    .line 297
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 300
    goto :goto_3

    :cond_5
    move v1, v2

    .line 301
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 678
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 679
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 683
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 685
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 761
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 764
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 765
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 766
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 771
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 772
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 562
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 567
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 582
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 584
    if-eqz p3, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 587
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 572
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 574
    if-eqz p2, :cond_0

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 577
    :cond_0
    return-void
.end method

.method protected animateToMode(Z)V
    .locals 10
    .param p1, "toActionMode"    # Z

    .prologue
    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 891
    if-eqz p1, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 898
    :goto_0
    if-eqz p1, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v5, v6, v7}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .line 901
    .local v1, "fadeOut":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 909
    .local v0, "fadeIn":Landroid/animation/Animator;
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 910
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 911
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 913
    return-void

    .line 894
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeOut":Landroid/animation/Animator;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    .line 904
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v4, v8, v9}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 906
    .restart local v0    # "fadeIn":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "fadeOut":Landroid/animation/Animator;
    goto :goto_1
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    .line 973
    const/4 v0, 0x1

    .line 975
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 334
    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 335
    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 337
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 366
    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 375
    :cond_0
    return-void

    .line 369
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 371
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 372
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 844
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 845
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 848
    :cond_0
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_5

    .line 850
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 851
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 852
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 853
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 854
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    .line 855
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 856
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 857
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 859
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 860
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 861
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 862
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 863
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 866
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 867
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 868
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 871
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10c0002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 874
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 875
    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 876
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 880
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 878
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 855
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 778
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 779
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 781
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 783
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_7

    .line 785
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 786
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 787
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    .line 788
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 789
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 790
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 794
    .end local v4    # "topLeft":[I
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mIsGalleryActiviy:Z

    if-eqz v5, :cond_3

    .line 795
    const/4 v3, 0x0

    .line 798
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 799
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 800
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 801
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 802
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 803
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 804
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 807
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_5

    .line 808
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 809
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 810
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 812
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10c0003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 814
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 822
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 823
    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 824
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 838
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_6

    .line 839
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 841
    :cond_6
    return-void

    .line 826
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 827
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 828
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 829
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 831
    :cond_8
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_9

    .line 832
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 833
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 834
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 836
    :cond_9
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 788
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 667
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getContainerView()Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextDisplayMode()I
    .locals 1

    .prologue
    .line 1462
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method protected getContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getDecorToolbar()Lcom/android/internal/widget/DecorToolbar;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1313
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1309
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1311
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method protected getOverlayLayout()Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1295
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1297
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1299
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method protected getSplitView()Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTabScrollView()Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 916
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 917
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 918
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 919
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 921
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 923
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 924
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 929
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 926
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 700
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 713
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 714
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 715
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 717
    :cond_0
    return-void
.end method

.method protected initActionBarOverlayLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 1468
    const v0, 0x10203a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 1470
    return-void
.end method

.method protected initContainerView(Landroid/view/View;)V
    .locals 2
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 1408
    const v1, 0x10203a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1409
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 1410
    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 1412
    :cond_0
    return-void
.end method

.method protected initContextView(Landroid/view/View;)V
    .locals 2
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 1415
    const v1, 0x10203a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1416
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    .line 1417
    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1419
    :cond_0
    return-void
.end method

.method protected initCustomPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 1466
    return-void
.end method

.method protected initScrollingTabContainerView()Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 2

    .prologue
    .line 1422
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 885
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 277
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 963
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 341
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 439
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 596
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 597
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 601
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 608
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 609
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 610
    .local v2, "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 611
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 614
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 615
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 616
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 606
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 619
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 620
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 627
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 653
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 631
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 634
    .local v0, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_5

    .line 635
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 637
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 650
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 631
    .end local v0    # "trans":Landroid/app/FragmentTransaction;
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    goto :goto_1

    .line 640
    .restart local v0    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 641
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_7

    .line 642
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 644
    :cond_7
    check-cast p1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 645
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 482
    return-void
.end method

.method protected setContainerView(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 1447
    return-void
.end method

.method protected setContextDisplayMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1475
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 1476
    return-void
.end method

.method protected setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1427
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1280
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1284
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1286
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1387
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1390
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 395
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 396
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 466
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 470
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 474
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 478
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 405
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 390
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 391
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 400
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 401
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 385
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 268
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 741
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 746
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 721
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 726
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 727
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 955
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 950
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 945
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 940
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 411
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1361
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1291
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1375
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1324
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1325
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1332
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1338
    packed-switch p1, :pswitch_data_1

    .line 1348
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1349
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1350
    return-void

    .line 1327
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1328
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1329
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1340
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1341
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1342
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1343
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1344
    iput v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1348
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1349
    goto :goto_3

    .line 1325
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1338
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected setOverlayLayout(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "overlayLayout"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 1473
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 435
    :goto_0
    return-void

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 352
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 355
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 486
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 421
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 672
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 673
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 690
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 515
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 520
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 521
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 522
    .local v0, "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 524
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 525
    invoke-virtual {p0, v3}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 526
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 536
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 539
    .end local v0    # "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

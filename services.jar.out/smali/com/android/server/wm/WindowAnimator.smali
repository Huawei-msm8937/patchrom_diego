.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field private mKeyguardExitTimeOutAnimation:Landroid/view/animation/Animation;

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field offsetLayer:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 90
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 96
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 109
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 111
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->offsetLayer:I

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 128
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 130
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method private animateLocked(J)V
    .locals 23
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const-wide/32 v20, 0xf4240

    div-long v20, p1, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 741
    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 742
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    .line 743
    .local v18, "wasAnimating":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 744
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 746
    const/4 v13, 0x0

    .line 754
    .local v13, "isLazying":Z
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 755
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 757
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 758
    .local v15, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_9

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 760
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 763
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    .line 765
    .local v17, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 766
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 767
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 786
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 787
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v19

    .line 790
    .local v19, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 791
    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v4, :cond_8

    .line 792
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 794
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLazyIsExiting:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLazyIsEntering:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 795
    :cond_3
    const/4 v13, 0x1

    .line 791
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 769
    .end local v4    # "N":I
    .end local v14    # "j":I
    .end local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 770
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 771
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    if-nez v7, :cond_2

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 831
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v15    # "numDisplays":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    .line 832
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v20, "WindowAnimator"

    const-string v21, "Unhandled exception in Window Manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 839
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_4
    const/4 v11, 0x0

    .line 840
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 841
    .restart local v15    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_5
    if-ge v8, v15, :cond_10

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 843
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v16

    .line 844
    .local v16, "pendingChanges":I
    and-int/lit8 v20, v16, 0x4

    if-eqz v20, :cond_6

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 847
    :cond_6
    if-eqz v16, :cond_7

    .line 848
    const/4 v11, 0x1

    .line 841
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 758
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v16    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v14    # "j":I
    .restart local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 800
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v14    # "j":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v15, :cond_c

    .line 801
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 803
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    .line 807
    .restart local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v17, :cond_a

    .line 808
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 811
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v21

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    if-nez v7, :cond_b

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 800
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 821
    .end local v7    # "displayId":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    if-eqz v13, :cond_e

    .line 823
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 826
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    :cond_f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    .end local v12    # "i":I
    .end local v15    # "numDisplays":I
    :catchall_0
    move-exception v20

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v20

    .line 852
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v15    # "numDisplays":I
    :cond_10
    const/4 v9, 0x0

    .line 853
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 857
    :cond_11
    if-nez v11, :cond_12

    if-eqz v9, :cond_13

    .line 858
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 861
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    if-eqz v18, :cond_0

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 874
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 875
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 878
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 881
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 884
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 887
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 119
    :pswitch_1
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 975
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 976
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 977
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v10, 0x80000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 203
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 204
    .local v2, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v2, v9}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_0
    move v4, v6

    .line 208
    .local v4, "showImeOverKeyguard":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 209
    .local v5, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_7

    const/4 v1, 0x0

    .line 212
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    const/4 v0, 0x0

    .line 214
    .local v0, "allowWhenLocked":Z
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_1

    if-ne v2, p1, :cond_8

    :cond_1
    if-eqz v4, :cond_8

    move v8, v6

    :goto_2
    or-int/2addr v0, v8

    .line 216
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_9

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v8, :cond_9

    move v8, v6

    :goto_3
    or-int/2addr v0, v8

    .line 217
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getGradualLockSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-eqz v8, :cond_a

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v8, :cond_a

    move v8, v6

    :goto_4
    or-int/2addr v0, v8

    .line 222
    :cond_2
    if-eqz v1, :cond_5

    .line 223
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v8, :cond_4

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_b

    :cond_4
    move v8, v6

    :goto_5
    or-int/2addr v0, v8

    .line 233
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_c

    move v3, v6

    .line 237
    .local v3, "keyguardOn":Z
    :goto_6
    if-eqz v3, :cond_d

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_d

    :goto_7
    return v6

    .end local v0    # "allowWhenLocked":Z
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "keyguardOn":Z
    .end local v4    # "showImeOverKeyguard":Z
    .end local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_6
    move v4, v7

    .line 204
    goto :goto_0

    .line 209
    .restart local v4    # "showImeOverKeyguard":Z
    .restart local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v1, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .restart local v0    # "allowWhenLocked":Z
    .restart local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move v8, v7

    .line 214
    goto :goto_2

    :cond_9
    move v8, v7

    .line 216
    goto :goto_3

    :cond_a
    move v8, v7

    .line 218
    goto :goto_4

    :cond_b
    move v8, v7

    .line 223
    goto :goto_5

    :cond_c
    move v3, v7

    .line 233
    goto :goto_6

    .restart local v3    # "keyguardOn":Z
    :cond_d
    move v6, v7

    .line 237
    goto :goto_7
.end method

.method private startKeyguardExitAnimation(Lcom/android/server/wm/WindowState;JJ)V
    .locals 2
    .param p1, "keyguard"    # Lcom/android/server/wm/WindowState;
    .param p2, "startTime"    # J
    .param p4, "fadeoutDuration"    # J

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    .line 1002
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mKeyguardExitTimeOutAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_1

    .line 1003
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    .line 1008
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mKeyguardExitTimeOutAnimation:Landroid/view/animation/Animation;

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 1010
    return-void

    .line 1005
    :cond_1
    const-string v0, "WindowAnimator"

    const-string v1, "keyguard window\'s current animation is not keyguard-exit-timeout animaion, so we need\'t clear it"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 692
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 693
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 694
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 695
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 696
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 697
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 698
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 699
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 700
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 701
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_0

    .line 702
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 703
    if-eqz v0, :cond_0

    .line 706
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_1

    .line 707
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 708
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 714
    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 697
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 718
    :cond_1
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 723
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 724
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 694
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 731
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    .line 161
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 162
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    .line 163
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 164
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 165
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 166
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 167
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    .line 168
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 169
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 170
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 171
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 172
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 167
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 173
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    .line 175
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_3

    .line 165
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 184
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 185
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 186
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 187
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 188
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 189
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 190
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 186
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 191
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    .line 193
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exiting appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_5

    .line 162
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 200
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/high16 v10, 0x100000

    .line 623
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 625
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 626
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 628
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 629
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 630
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 631
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v9, :cond_1

    .line 628
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 640
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v9, :cond_4

    .line 641
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_3

    .line 642
    and-int v9, v3, v10

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 644
    move-object v2, v6

    .line 646
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 647
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 648
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 649
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_3

    .line 650
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 654
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 660
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 661
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_0

    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v9, :cond_0

    .line 663
    and-int v9, v3, v10

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 665
    move-object v2, v6

    .line 668
    :cond_5
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 669
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 671
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_0

    .line 672
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    .line 678
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_7

    .line 682
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 683
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 685
    :cond_7
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 42
    .param p1, "displayId"    # I

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v41

    .line 245
    .local v41, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .local v22, "i":I
    :goto_0
    if-ltz v22, :cond_1

    .line 247
    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wm/WindowState;

    .line 248
    .local v39, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    add-int/lit8 v22, v22, -0x1

    goto :goto_0

    .line 251
    :cond_0
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    .line 256
    .local v40, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 257
    move-object/from16 v0, v40

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_1

    .line 262
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardExitTimeOutAnimation:Landroid/view/animation/Animation;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardExitTimeOutAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 264
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, v40

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 266
    const-wide/16 v4, -0x1

    move-object/from16 v0, v40

    iput-wide v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, v40

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 279
    .end local v22    # "i":I
    .end local v39    # "win":Lcom/android/server/wm/WindowState;
    .end local v40    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 281
    const/16 v36, 0x0

    .line 282
    .local v36, "wallpaperInUnForceHiding":Z
    const/16 v30, 0x0

    .line 283
    .local v30, "startingInUnForceHiding":Z
    const/16 v33, 0x0

    .line 284
    .local v33, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v35, 0x0

    .line 285
    .local v35, "wallpaper":Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 286
    .local v21, "hwlauncherInForcHiding":Lcom/android/server/wm/WindowState;
    const/16 v25, 0x0

    .line 287
    .local v25, "navigationBar":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 288
    .local v3, "keyguard":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .restart local v22    # "i":I
    :goto_2
    if-ltz v22, :cond_2a

    .line 289
    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wm/WindowState;

    .line 290
    .restart local v39    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    .line 291
    .restart local v40    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .line 292
    .local v20, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v39

    invoke-interface {v2, v0, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v16

    .line 293
    .local v16, "canBeForceHidden":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v29

    .line 294
    .local v29, "shouldBeForceHidden":Z
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_28

    .line 295
    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v37, v0

    .line 296
    .local v37, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v27

    .line 297
    .local v27, "nowAnimating":Z
    move/from16 v0, v27

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 298
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int v2, v2, v27

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 300
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v2, :cond_10

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v2, :cond_10

    const/4 v13, 0x1

    .line 302
    .local v13, "appWindowAnimating":Z
    :goto_3
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v2, :cond_11

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v2, :cond_11

    const/16 v38, 0x1

    .line 304
    .local v38, "wasAppWindowAnimating":Z
    :goto_4
    if-nez v13, :cond_2

    if-eqz v27, :cond_12

    :cond_2
    const/4 v10, 0x1

    .line 305
    .local v10, "anyAnimating":Z
    :goto_5
    if-nez v38, :cond_3

    if-eqz v37, :cond_13

    :cond_3
    const/4 v11, 0x1

    .line 308
    .local v11, "anyWasAnimating":Z
    :goto_6
    if-eqz v10, :cond_16

    if-nez v11, :cond_16

    .line 309
    :try_start_0
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v40

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    :goto_7
    invoke-interface {v4, v2}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_4
    :goto_8
    if-eqz v37, :cond_5

    move-object/from16 v0, v40

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v39

    if-ne v2, v0, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 326
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 2"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 334
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 335
    if-nez v37, :cond_17

    if-eqz v27, :cond_17

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 340
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 353
    :cond_6
    :goto_9
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    if-eqz v27, :cond_18

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v2, :cond_18

    .line 355
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 483
    .end local v10    # "anyAnimating":Z
    .end local v11    # "anyWasAnimating":Z
    .end local v13    # "appWindowAnimating":Z
    .end local v27    # "nowAnimating":Z
    .end local v37    # "wasAnimating":Z
    .end local v38    # "wasAppWindowAnimating":Z
    :cond_7
    :goto_a
    move-object/from16 v0, v39

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 484
    .local v15, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v40

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 485
    if-eqz v15, :cond_8

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_9

    .line 486
    :cond_8
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 487
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 496
    :cond_9
    move-object/from16 v0, v40

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 497
    .local v12, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v12, :cond_b

    iget-object v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b

    .line 498
    iget v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_a

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 500
    const/4 v2, 0x0

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 502
    :cond_a
    iget v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_b

    .line 503
    move-object/from16 v0, v40

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 506
    :cond_b
    move-object/from16 v0, v39

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_c

    .line 507
    move-object/from16 v35, v39

    .line 509
    :cond_c
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e3

    if-ne v2, v4, :cond_d

    .line 510
    move-object/from16 v25, v39

    .line 512
    :cond_d
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_e

    .line 513
    move-object/from16 v3, v39

    .line 288
    .end local v12    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v15    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_e
    :goto_b
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_2

    .line 272
    .end local v3    # "keyguard":Lcom/android/server/wm/WindowState;
    .end local v16    # "canBeForceHidden":Z
    .end local v20    # "flags":I
    .end local v21    # "hwlauncherInForcHiding":Lcom/android/server/wm/WindowState;
    .end local v25    # "navigationBar":Lcom/android/server/wm/WindowState;
    .end local v29    # "shouldBeForceHidden":Z
    .end local v30    # "startingInUnForceHiding":Z
    .end local v33    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v35    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v36    # "wallpaperInUnForceHiding":Z
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 273
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    .line 300
    .restart local v3    # "keyguard":Lcom/android/server/wm/WindowState;
    .restart local v16    # "canBeForceHidden":Z
    .restart local v20    # "flags":I
    .restart local v21    # "hwlauncherInForcHiding":Lcom/android/server/wm/WindowState;
    .restart local v25    # "navigationBar":Lcom/android/server/wm/WindowState;
    .restart local v27    # "nowAnimating":Z
    .restart local v29    # "shouldBeForceHidden":Z
    .restart local v30    # "startingInUnForceHiding":Z
    .restart local v33    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v35    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v36    # "wallpaperInUnForceHiding":Z
    .restart local v37    # "wasAnimating":Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 302
    .restart local v13    # "appWindowAnimating":Z
    :cond_11
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 304
    .restart local v38    # "wasAppWindowAnimating":Z
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 305
    .restart local v10    # "anyAnimating":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 309
    .restart local v11    # "anyWasAnimating":Z
    :cond_14
    :try_start_1
    move-object/from16 v0, v40

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 312
    :cond_16
    if-nez v10, :cond_4

    if-eqz v11, :cond_4

    .line 313
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 315
    :catch_0
    move-exception v18

    .line 316
    .local v18, "e":Landroid/os/RemoteException;
    const-string v2, "WindowAnimator"

    const-string v4, "Failed to dispatch window animation state change."

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 347
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_6

    if-nez v27, :cond_6

    .line 349
    const-string v2, "WindowAnimator"

    const-string v4, "Timeout waiting for animation to startup"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowAnimator;->startKeyguardExitAnimation(Lcom/android/server/wm/WindowState;JJ)V

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_9

    .line 357
    :cond_18
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_a

    :cond_19
    const/4 v2, 0x0

    goto :goto_c

    .line 369
    :cond_1a
    if-eqz v16, :cond_7

    .line 370
    if-eqz v29, :cond_1c

    .line 371
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 461
    :cond_1b
    :goto_d
    const/high16 v2, 0x100000

    and-int v2, v2, v20

    if-eqz v2, :cond_7

    .line 462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 463
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 4"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 378
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, v40

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-nez v2, :cond_1e

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1e

    move-object/from16 v0, v39

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v2, :cond_1e

    if-nez p1, :cond_1e

    const/4 v14, 0x1

    .line 388
    .local v14, "applyExistingExitAnimation":Z
    :goto_e
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz v14, :cond_e

    .line 391
    :cond_1d
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v34

    .line 392
    .local v34, "visibleNow":Z
    if-nez v34, :cond_1f

    .line 394
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_b

    .line 378
    .end local v14    # "applyExistingExitAnimation":Z
    .end local v34    # "visibleNow":Z
    :cond_1e
    const/4 v14, 0x0

    goto :goto_e

    .line 399
    .restart local v14    # "applyExistingExitAnimation":Z
    .restart local v34    # "visibleNow":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_27

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_27

    .line 412
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 413
    .local v28, "packageName":Ljava/lang/String;
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    .line 414
    .local v32, "type":I
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    .line 415
    .local v31, "title":Ljava/lang/CharSequence;
    const/16 v23, 0x0

    .line 416
    .local v23, "isHwLauncher":Z
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 418
    const-string v2, "com.huawei.android.launcher/com.huawei.android.launcher.Launcher"

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    .line 423
    :goto_f
    const/16 v2, 0x63

    move/from16 v0, v32

    if-le v0, v2, :cond_25

    const/16 v2, 0x7e3

    move/from16 v0, v32

    if-eq v0, v2, :cond_25

    const/16 v24, 0x1

    .line 425
    .local v24, "isIngoreType":Z
    :goto_10
    if-nez v23, :cond_26

    if-nez v24, :cond_26

    .line 426
    if-nez v33, :cond_20

    .line 427
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .restart local v33    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_20
    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/high16 v2, 0x100000

    and-int v2, v2, v20

    if-eqz v2, :cond_21

    .line 431
    const/16 v36, 0x1

    .line 433
    :cond_21
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_22

    .line 434
    const/16 v30, 0x1

    .line 451
    .end local v23    # "isHwLauncher":Z
    .end local v24    # "isIngoreType":Z
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v31    # "title":Ljava/lang/CharSequence;
    .end local v32    # "type":I
    :cond_22
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    .line 452
    .local v17, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v17, :cond_23

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_1b

    .line 458
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_d

    .line 421
    .end local v17    # "currentFocus":Lcom/android/server/wm/WindowState;
    .restart local v23    # "isHwLauncher":Z
    .restart local v28    # "packageName":Ljava/lang/String;
    .restart local v31    # "title":Ljava/lang/CharSequence;
    .restart local v32    # "type":I
    :cond_24
    const-string v2, "com.huawei.android.launcher"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    goto :goto_f

    .line 423
    :cond_25
    const/16 v24, 0x0

    goto :goto_10

    .line 436
    .restart local v24    # "isIngoreType":Z
    :cond_26
    if-eqz v23, :cond_22

    .line 437
    move-object/from16 v21, v39

    goto :goto_11

    .line 440
    .end local v23    # "isHwLauncher":Z
    .end local v24    # "isIngoreType":Z
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v31    # "title":Ljava/lang/CharSequence;
    .end local v32    # "type":I
    :cond_27
    if-eqz v14, :cond_22

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v8

    .line 448
    .local v8, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 449
    const/4 v2, 0x1

    move-object/from16 v0, v40

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto :goto_11

    .line 475
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v10    # "anyAnimating":Z
    .end local v11    # "anyWasAnimating":Z
    .end local v13    # "appWindowAnimating":Z
    .end local v14    # "applyExistingExitAnimation":Z
    .end local v27    # "nowAnimating":Z
    .end local v34    # "visibleNow":Z
    .end local v37    # "wasAnimating":Z
    .end local v38    # "wasAppWindowAnimating":Z
    :cond_28
    if-eqz v16, :cond_7

    .line 476
    if-eqz v29, :cond_29

    .line 477
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_a

    .line 479
    :cond_29
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_a

    .line 520
    .end local v16    # "canBeForceHidden":Z
    .end local v20    # "flags":I
    .end local v29    # "shouldBeForceHidden":Z
    .end local v39    # "win":Lcom/android/server/wm/WindowState;
    .end local v40    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2a
    if-eqz v33, :cond_31

    .line 521
    const/16 v26, 0x0

    .line 522
    .local v26, "navigationBarTranslucent":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_2e

    .line 523
    const/16 v19, 0x1

    .line 524
    .local v19, "first":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    :goto_12
    if-ltz v22, :cond_2f

    .line 525
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/wm/WindowStateAnimator;

    .line 526
    .restart local v40    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    :goto_13
    or-int v26, v26, v2

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v36, :cond_2d

    if-nez v30, :cond_2d

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v4, v2, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v8

    .line 530
    .restart local v8    # "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_2b

    .line 533
    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 534
    const/4 v2, 0x1

    move-object/from16 v0, v40

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 535
    if-eqz v19, :cond_2b

    .line 536
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 538
    const/16 v19, 0x0

    .line 524
    :cond_2b
    add-int/lit8 v22, v22, -0x1

    goto :goto_12

    .line 526
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_2c
    const/4 v2, 0x0

    goto :goto_13

    .line 527
    :cond_2d
    const/4 v2, 0x0

    goto :goto_14

    .line 542
    .end local v19    # "first":Z
    .end local v40    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_2f

    .line 543
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowAnimator;->startKeyguardExitAnimation(Lcom/android/server/wm/WindowState;JJ)V

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 549
    :cond_2f
    if-nez v36, :cond_30

    if-eqz v35, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_30

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v8

    .line 554
    .restart local v8    # "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_30

    .line 555
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 568
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_30
    if-eqz v25, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_31

    .line 569
    if-nez v26, :cond_35

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->createForceHideNavigationBarEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    .line 571
    .restart local v8    # "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_31

    .line 572
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 580
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v26    # "navigationBarTranslucent":Z
    :cond_31
    :goto_15
    if-eqz v21, :cond_33

    .line 586
    if-eqz v25, :cond_32

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_32

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->createForceHideNavigationBarEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    .line 588
    .restart local v8    # "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_32

    .line 589
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 593
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_32
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 594
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 595
    const-wide/16 v4, 0x64

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 596
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 597
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowAnimator;->startKeyguardExitAnimation(Lcom/android/server/wm/WindowState;JJ)V

    .line 598
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 601
    .end local v9    # "alpha":Landroid/view/animation/Animation;
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_34

    .line 603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_36

    .line 604
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowAnimator;->startKeyguardExitAnimation(Lcom/android/server/wm/WindowState;JJ)V

    .line 607
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 620
    :cond_34
    :goto_16
    return-void

    .line 575
    .restart local v26    # "navigationBarTranslucent":Z
    :cond_35
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_15

    .line 612
    .end local v26    # "navigationBarTranslucent":Z
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_34

    .line 617
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_16
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 146
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 896
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 897
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 899
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 901
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 903
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 904
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 906
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "hwSingleMode_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 904
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 908
    :cond_0
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 909
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 910
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 912
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_3

    .line 913
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 918
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    :cond_3
    if-eqz p3, :cond_2

    .line 916
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 921
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 923
    if-eqz p3, :cond_5

    .line 924
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 926
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    :cond_5
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_6

    .line 931
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_7

    .line 936
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 939
    :cond_7
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 942
    if-gez p1, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v1

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 946
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 989
    if-gez p1, :cond_0

    .line 990
    const/4 v0, 0x0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 150
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 153
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 158
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 4
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 961
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 962
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 963
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    .line 964
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 966
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 971
    :cond_0
    return-void

    .line 962
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 950
    if-gez p1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 954
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 955
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 983
    if-ltz p1, :cond_0

    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 986
    :cond_0
    return-void
.end method

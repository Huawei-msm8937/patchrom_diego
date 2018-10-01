.class public abstract Lcom/android/server/wm/AbsWindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "AbsWindowManagerService.java"


# static fields
.field protected static final MULTIWINDOW_FLAG:Z

.field public static final TOP_LAYER:I = 0x61a80

.field protected static mUsingHwNavibar:Z


# instance fields
.field mCurNaviConfiguration:Landroid/content/res/Configuration;

.field protected mIgnoreFrozen:Z

.field public mLazyModeOn:I

.field protected mMultiWinService:Landroid/os/IMultiWinService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    sget-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    sput-boolean v0, Lcom/android/server/wm/AbsWindowManagerService;->MULTIWINDOW_FLAG:Z

    .line 115
    const-string v0, "ro.config.hw_navigationbar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/AbsWindowManagerService;->mUsingHwNavibar:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AbsWindowManagerService;->mIgnoreFrozen:Z

    return-void
.end method


# virtual methods
.method protected addMultiWinWindow()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected applyAnimationLockedMultiWin(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "transit"    # I
    .param p4, "enter"    # Z
    .param p5, "appWidth"    # I
    .param p6, "appHeight"    # I
    .param p7, "orientation"    # I
    .param p8, "containingFrame"    # Landroid/graphics/Rect;
    .param p9, "contentInsets"    # Landroid/graphics/Rect;
    .param p10, "appFrame"    # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"    # Z

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method protected checkKeyguardDismissDoneLocked()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public freezeOrThawRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 82
    return-void
.end method

.method public getCurNaviConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImeDockShownFrame(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "outRectF"    # Landroid/graphics/RectF;

    .prologue
    .line 208
    return-void
.end method

.method public getLazyMode()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected getMWAppWindowScreenShotRect(IIILandroid/view/DisplayInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "rotation"    # I
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p5, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMWOrientationLocked(Lcom/android/server/wm/AppWindowToken;ILjava/util/ArrayList;I)I
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "reqAppOrien"    # I
    .param p4, "iterativeTaskNdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, -0x1

    return v0
.end method

.method protected getMultiWinService()Landroid/os/IMultiWinService;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNsdWindowInfo(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getNsdWindowTitle(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleMultiWinLayoutLockedInner(Lcom/android/server/wm/WindowState;Z)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "aMwSpecial"    # Z

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected hwProcessOnMatrix(IIILandroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 72
    return-void
.end method

.method public isCoverOpen()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected isMWAppWindowExclude(Lcom/android/server/wm/WindowState;Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "ws"    # Lcom/android/server/wm/WindowState;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appIsImTarget"    # Z

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected isMultiWinAppWindow(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected isMultiWinPortraitOrientationLocked(Lcom/android/server/wm/AppWindowToken;ILjava/util/ArrayList;I)Z
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "reqAppOrien"    # I
    .param p4, "iterativeTaskNdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public moveMwTask(II)V
    .locals 0
    .param p1, "aTaskId"    # I
    .param p2, "aIndex"    # I

    .prologue
    .line 157
    return-void
.end method

.method public moveMwTaskToTop(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 161
    return-void
.end method

.method public reevaluateStatusBarSize(Z)V
    .locals 0
    .param p1, "layoutNaviBar"    # Z

    .prologue
    .line 119
    return-void
.end method

.method protected removeMultiWinWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 171
    return-void
.end method

.method protected sendUpdateAppOpsState()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public sendUpdateStateSuspensionWindow(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 225
    return-void
.end method

.method protected setAppOpHideHook(Lcom/android/server/wm/WindowState;Z)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    .prologue
    .line 91
    return-void
.end method

.method protected setAppOpVisibilityLwHook(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "mode"    # I

    .prologue
    .line 94
    return-void
.end method

.method public setCoverManagerState(Z)V
    .locals 0
    .param p1, "isCoverOpen"    # Z

    .prologue
    .line 79
    return-void
.end method

.method protected setCropOnSingleHandMode(IZIILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "singleHandleMode"    # I
    .param p2, "isMultiWindowApp"    # Z
    .param p3, "dw"    # I
    .param p4, "dh"    # I
    .param p5, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    return-void
.end method

.method public setFocusedAppForNavi(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 107
    return-void
.end method

.method public setForcedDisplayDensityAndSize(IIII)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 217
    return-void
.end method

.method protected setImeDockShownFrame(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "newRectF"    # Landroid/graphics/RectF;

    .prologue
    .line 205
    return-void
.end method

.method public setLazyMode(I)V
    .locals 0
    .param p1, "lazyMode"    # I

    .prologue
    .line 61
    return-void
.end method

.method public setNaviBarFlag()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected setVisibleFromParent(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 99
    return-void
.end method

.method protected updateInputImmersiveMode()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public updateResourceConfiguration(IIII)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 220
    return-void
.end method

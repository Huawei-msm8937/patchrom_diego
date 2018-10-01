.class public abstract Lcom/android/server/policy/AbsPhoneWindowManager;
.super Ljava/lang/Object;
.source "AbsPhoneWindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsPhoneWindowManager"


# instance fields
.field public fingersense_enable:Ljava/lang/String;

.field public fingersense_letters_enable:Ljava/lang/String;

.field public isNavibarHide:Z

.field public line_gesture_enable:Ljava/lang/String;

.field public navibar_enable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/AbsPhoneWindowManager;->fingersense_enable:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/AbsPhoneWindowManager;->fingersense_letters_enable:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/AbsPhoneWindowManager;->line_gesture_enable:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/AbsPhoneWindowManager;->navibar_enable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adjustlayoutWindowLw_IME(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "mCurBottom"    # I

    .prologue
    .line 183
    return-void
.end method

.method public cancelWaitKeyguardDismissDone()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method protected computeNaviBarFlag()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected disableFingerPrintActions()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected disableSystemWideActions()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected enableFingerPrintActions()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method protected enableFingerPrintActionsAfterBoot(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    return-void
.end method

.method protected enableSystemWideActions()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method protected enableSystemWideAfterBoot(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    return-void
.end method

.method protected finishKeyguardDismissDone()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public freezeOrThawRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 69
    return-void
.end method

.method public getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImmersiveMode()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getInterceptInputForWaitBrightness()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWinVisibleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 155
    return-void
.end method

.method public getNaviBarHeightForRotationMax(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getNaviBarHeightForRotationMin(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getNaviBarWidthForRotationMax(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getNaviBarWidthForRotationMin(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getRestrictedScreenHeight()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public hwAdjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 179
    return-void
.end method

.method public hwlayoutWindowLw_multiwindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "pf"    # Landroid/graphics/Rect;
    .param p4, "df"    # Landroid/graphics/Rect;
    .param p5, "of"    # Landroid/graphics/Rect;
    .param p6, "cf"    # Landroid/graphics/Rect;
    .param p7, "vf"    # Landroid/graphics/Rect;
    .param p8, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 194
    return-void
.end method

.method public hwlayoutWindowLw_multiwindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "pf"    # Landroid/graphics/Rect;
    .param p4, "df"    # Landroid/graphics/Rect;
    .param p5, "of"    # Landroid/graphics/Rect;
    .param p6, "cf"    # Landroid/graphics/Rect;
    .param p7, "vf"    # Landroid/graphics/Rect;
    .param p8, "dcf"    # Landroid/graphics/Rect;
    .param p9, "compute"    # Z

    .prologue
    .line 189
    return-void
.end method

.method public isGestureIsolated()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWin(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWin(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isNaviBarMini()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isTopIsFullscreen()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isWakeKeyFun(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public needTurnOff(I)Z
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public needTurnOffWithDismissFlag()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public okToShowTransientBar()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected regitsterFingerObserver(Landroid/content/ContentResolver;ZLandroid/database/ContentObserver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 226
    return-void
.end method

.method public requestTransientStatusBars()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected setFingerSenseState(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 230
    return-void
.end method

.method protected setHasAcitionBar(Z)V
    .locals 0
    .param p1, "hasActionBar"    # Z

    .prologue
    .line 149
    return-void
.end method

.method public setInputMethodWindowVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 107
    return-void
.end method

.method public setInterceptInputForWaitBrightness(Z)V
    .locals 0
    .param p1, "intercept"    # Z

    .prologue
    .line 244
    return-void
.end method

.method public setMultiWinSoftKeyBoardInvisible(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 174
    return-void
.end method

.method public setMultiWinSoftKeyBoardVisible(Landroid/os/IBinder;I)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public setNaviBarFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 110
    return-void
.end method

.method protected setNaviBarState()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public setNaviImmersiveMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public showHwTransientBars()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public swipFromTop()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public swipeFromBottom()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public swipeFromRight()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public swipeFromTop()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public updateNavigationBar(Z)V
    .locals 0
    .param p1, "minNaviBar"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public waitKeyguardDismissDone(Landroid/view/WindowManagerPolicy$KeyguardDismissDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/WindowManagerPolicy$KeyguardDismissDoneListener;

    .prologue
    .line 235
    return-void
.end method

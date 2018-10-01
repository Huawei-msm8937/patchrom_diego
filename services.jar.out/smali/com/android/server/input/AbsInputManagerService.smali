.class public abstract Lcom/android/server/input/AbsInputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "AbsInputManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setCurFocusWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "focus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 13
    return-void
.end method

.method public setDisplayWidthAndHeight(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 10
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 20
    return-void
.end method

.method public setIsTopFullScreen(Z)V
    .locals 0
    .param p1, "isTopFullScreen"    # Z

    .prologue
    .line 16
    return-void
.end method

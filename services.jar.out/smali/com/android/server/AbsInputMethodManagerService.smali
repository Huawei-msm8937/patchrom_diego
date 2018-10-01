.class public abstract Lcom/android/server/AbsInputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "AbsInputMethodManagerService.java"


# instance fields
.field public bFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AbsInputMethodManagerService;->bFlag:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected createFlagIfNecessary()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected ensureEnableSystemIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    return-void
.end method

.method protected isFlagExists()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method protected isSecureIME(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldBuildInputMethodList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected switchUserExtra(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 52
    return-void
.end method

.method protected updateSecureIMEStatus()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

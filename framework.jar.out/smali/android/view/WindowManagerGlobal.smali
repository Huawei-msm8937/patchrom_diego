.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_INVALID_TYPE:I = -0xa

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 121
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doTrimForeground()V
    .locals 5

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "hasVisibleWindows":Z
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 512
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 513
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 514
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 512
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    goto :goto_1

    .line 521
    .end local v1    # "i":I
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    if-nez v0, :cond_2

    .line 523
    const/16 v3, 0x50

    invoke-static {v3}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 526
    :cond_2
    return-void
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .prologue
    .line 460
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 461
    .local v0, "index":I
    if-eqz p2, :cond_0

    if-gez v0, :cond_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_0
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    .prologue
    .line 128
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 132
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 4

    .prologue
    .line 137
    const-class v2, Landroid/view/WindowManagerGlobal;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 143
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v2

    return-object v1

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 145
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v3, "Failed to get WindowManagerService, cannot set animator scale"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .locals 7

    .prologue
    .line 153
    const-class v4, Landroid/view/WindowManagerGlobal;

    monitor-enter v4

    .line 154
    :try_start_0
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 156
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 157
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 158
    .local v2, "windowManager":Landroid/view/IWindowManager;
    new-instance v3, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v3}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v2, v3, v5, v6}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v3

    sput-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v4

    return-object v3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "Failed to open window session"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 124
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 125
    return-void
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    .prologue
    .line 175
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeViewLocked(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 420
    if-ltz p1, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_0

    .line 422
    const/16 v5, 0x98

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 427
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 429
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 430
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 431
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 432
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 435
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v0

    .line 436
    .local v0, "deferred":Z
    if-eqz v3, :cond_2

    .line 437
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 438
    if-eqz v0, :cond_2

    .line 439
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_2
    return-void
.end method

.method public static shouldDestroyEglContext(I)Z
    .locals 2
    .param p0, "trimLevel"    # I

    .prologue
    const/4 v0, 0x1

    .line 470
    const/16 v1, 0x50

    if-lt p0, v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trimForeground()V
    .locals 2

    .prologue
    .line 503
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 505
    .local v0, "wm":Landroid/view/WindowManagerGlobal;
    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 507
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "view must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 240
    :cond_0
    if-nez p3, :cond_1

    .line 241
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "display must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    :cond_1
    instance-of v9, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v9, :cond_2

    .line 244
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Params must be WindowManager.LayoutParams"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    move-object v8, p2

    .line 247
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 249
    .local v8, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7d0

    if-lt v9, v10, :cond_3

    .line 250
    const/16 v9, 0x97

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_4

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 259
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 261
    :try_start_0
    const-string v9, "huawei.android.permission.MULTIWINDOW_SERVICE"

    const-string v10, "Requires MULTIWINDOW SERVICE permission"

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    :goto_0
    if-eqz p4, :cond_9

    .line 274
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 289
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 291
    .local v6, "panelParentView":Landroid/view/View;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 293
    :try_start_1
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v9, :cond_6

    .line 294
    new-instance v9, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v9, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 303
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v9}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 306
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 307
    .local v5, "index":I
    if-ltz v5, :cond_7

    .line 308
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v9, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 310
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->doDie()V

    .line 320
    :cond_7
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3e8

    if-lt v9, v11, :cond_b

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7cf

    if-gt v9, v11, :cond_b

    .line 322
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 323
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_b

    .line 324
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, v11, :cond_8

    .line 325
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    move-object v6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 264
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "panelParentView":Landroid/view/View;
    .restart local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v9, "WindowManager"

    const-string v10, "addView : Security Exception : "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, -0x1001

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 278
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_5

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    .line 283
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x1000000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    .line 312
    .end local v1    # "context":Landroid/content/Context;
    .restart local v5    # "index":I
    .restart local v6    # "panelParentView":Landroid/view/View;
    :cond_a
    :try_start_2
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has already been added to the window manager."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 337
    .end local v5    # "index":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 330
    .restart local v5    # "index":I
    :cond_b
    :try_start_3
    new-instance v7, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-direct {v7, v9, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 332
    .local v7, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :try_start_4
    invoke-virtual {v7, p1, v8, v6}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 352
    return-void

    .line 342
    :catch_1
    move-exception v3

    .line 344
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 345
    const/4 v9, 0x0

    :try_start_5
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 346
    if-ltz v5, :cond_c

    .line 347
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 349
    :cond_c
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 350
    throw v3

    .line 349
    :catchall_1
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 618
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 612
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 613
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 614
    monitor-exit v2

    goto :goto_0

    .line 617
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 611
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 617
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 395
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 400
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_2

    .line 401
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 404
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_1

    .line 405
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 409
    const-string v4, "WindowManager"

    const-string v6, ""

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v2    # "leak":Landroid/view/WindowLeaked;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 397
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_3
    monitor-exit v5

    .line 416
    return-void

    .line 415
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 445
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 446
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 447
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 448
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 450
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 451
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 453
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    sget-boolean v2, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 457
    :cond_1
    return-void

    .line 453
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 529
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 530
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v8, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 532
    .local v8, "pw":Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 535
    .local v2, "count":I
    const-string v12, "Profile data in ms:"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 539
    .local v10, "root":Landroid/view/ViewRootImpl;
    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "name":Ljava/lang/String;
    const-string v12, "\n\t%s (visibility=%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 542
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v12, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 544
    .local v9, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v9, :cond_0

    .line 545
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v8, v0, v1}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 537
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "renderer":Landroid/view/HardwareRenderer;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    const-string v12, "\nView hierarchy:\n"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const/4 v11, 0x0

    .line 552
    .local v11, "viewsCount":I
    const/4 v3, 0x0

    .line 553
    .local v3, "displayListsSize":I
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 555
    .local v6, "info":[I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 557
    .restart local v10    # "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v10, v6}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 559
    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    .line 560
    .restart local v7    # "name":Ljava/lang/String;
    const-string v12, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x1

    aget v16, v6, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x44800000    # 1024.0f

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 562
    const-string v12, "\n\n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 564
    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v11, v12

    .line 565
    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v3, v12

    .line 555
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 568
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    const-string v12, "\nTotal ViewRootImpl: %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 569
    const-string v12, "Total Views:        %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 570
    const-string v12, "Total DisplayList:  %.2f kB\n\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    const/high16 v17, 0x44800000    # 1024.0f

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 571
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 575
    return-void

    .line 571
    .end local v2    # "count":I
    .end local v3    # "displayListsSize":I
    .end local v5    # "i":I
    .end local v6    # "info":[I
    .end local v11    # "viewsCount":I
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 573
    :catchall_1
    move-exception v12

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    throw v12
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 227
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 228
    .local v1, "root":Landroid/view/ViewRootImpl;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    monitor-exit v3

    .line 232
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :goto_1
    return-object v2

    .line 226
    .restart local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    monitor-exit v3

    .line 232
    const/4 v2, 0x0

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 194
    :try_start_0
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 195
    .local v3, "numRoots":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 196
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 197
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v8, :cond_1

    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v8, p1, :cond_3

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "isChild":Z
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e8

    if-lt v8, v10, :cond_2

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7cf

    if-gt v8, v10, :cond_2

    .line 204
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 205
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 206
    .local v6, "viewj":Landroid/view/View;
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 207
    .local v5, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_4

    iget-object v8, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, p1, :cond_4

    .line 209
    const/4 v1, 0x1

    .line 214
    .end local v2    # "j":I
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    .line 218
    .end local v1    # "isChild":Z
    :cond_3
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    .end local v3    # "numRoots":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 204
    .restart local v0    # "i":I
    .restart local v1    # "isChild":Z
    .restart local v2    # "j":I
    .restart local v3    # "numRoots":I
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "viewj":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 220
    .end local v1    # "isChild":Z
    .end local v2    # "j":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    return-object v7
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .local v2, "numRoots":I
    new-array v1, v2, [Ljava/lang/String;

    .line 184
    .local v1, "mViewRoots":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 185
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    monitor-exit v4

    return-object v1

    .line 188
    .end local v0    # "i":I
    .end local v1    # "mViewRoots":[Ljava/lang/String;
    .end local v2    # "numRoots":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 381
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 382
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 384
    if-ne v0, p1, :cond_1

    .line 385
    monitor-exit v3

    return-void

    .line 388
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v0    # "curView":Landroid/view/View;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 595
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 596
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 597
    .local v1, "count":I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 599
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 600
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 603
    return-void

    .line 602
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :catchall_1
    move-exception v4

    move-object p1, v0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .prologue
    .line 583
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 584
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 585
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 586
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    .line 587
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 588
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    .line 585
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_2
    monitor-exit v4

    .line 592
    return-void

    .line 591
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 481
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 487
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 489
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/16 p1, 0x50

    .line 494
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 496
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_2

    .line 497
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 500
    :cond_2
    return-void

    .line 489
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_1

    .line 359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, p2

    .line 362
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 364
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 367
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 368
    .local v0, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 369
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 371
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 372
    monitor-exit v4

    .line 373
    return-void

    .line 372
    .end local v0    # "index":I
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

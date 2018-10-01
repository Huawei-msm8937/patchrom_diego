.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplay:Landroid/view/Display;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mFlags:I

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 73
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 74
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 75
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .locals 11
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 453
    const/4 v5, 0x0

    .line 454
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    .line 455
    .local v7, "x":I
    float-to-int v8, p2

    .line 457
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v6

    .line 458
    .local v6, "windows":Lcom/android/server/wm/WindowList;
    if-nez v6, :cond_0

    .line 459
    const/4 v9, 0x0

    .line 500
    :goto_0
    return-object v9

    .line 461
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 462
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 463
    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 466
    .local v1, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "hwSingleMode_windowbg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 472
    :cond_2
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 473
    .local v2, "flags":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 477
    and-int/lit8 v9, v2, 0x10

    if-nez v9, :cond_1

    .line 482
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 483
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 488
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 490
    and-int/lit8 v4, v2, 0x28

    .line 493
    .local v4, "touchFlags":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v4, :cond_1

    .line 495
    :cond_3
    move-object v5, v1

    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "flags":I
    .end local v4    # "touchFlags":I
    :cond_4
    move-object v9, v5

    .line 500
    goto :goto_0
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "result"    # Z

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    .line 507
    .local v1, "winX":F
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    .line 508
    .local v2, "winY":F
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 509
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v0

    .line 510
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v0

    :cond_0
    move v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 512
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 11
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .prologue
    const/4 v4, 0x0

    .line 218
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 220
    .local v10, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v10, v0, :cond_1

    .line 244
    .end local v10    # "winBinder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 232
    .local v9, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_0

    .line 240
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v8

    .line 236
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-start window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_0

    .line 240
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 239
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_2

    .line 240
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    :cond_2
    throw v0
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 282
    .local v10, "ws":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x4

    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 285
    .local v8, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_0

    .line 291
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v7

    .line 287
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-end window "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_0

    .line 291
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 290
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    .line 291
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    :cond_1
    throw v0

    .line 296
    .end local v8    # "evt":Landroid/view/DragEvent;
    .end local v10    # "ws":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 301
    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .locals 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 197
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 198
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 200
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 201
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 204
    .restart local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    return-void
.end method

.method endDragLw()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 313
    return-void
.end method

.method getDragLayerLw()I
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method notifyDropLw(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 418
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 422
    const/4 v1, 0x1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 429
    .local v11, "myPid":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 430
    .local v12, "token":Landroid/os/IBinder;
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 433
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 438
    .local v10, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v1, :cond_2

    .line 444
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 447
    :cond_2
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 448
    const/4 v1, 0x0

    goto :goto_0

    .line 439
    .end local v10    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 440
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send drop notification to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    const/4 v1, 0x1

    .line 443
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_0

    .line 444
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 443
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_3

    .line 444
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    :cond_3
    throw v1
.end method

.method notifyMoveLw(FF)V
    .locals 23
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 320
    .local v18, "myPid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getLazyMode()I

    move-result v14

    .line 321
    .local v14, "lazyMode":I
    if-nez v14, :cond_1

    .line 323
    move/from16 v21, p1

    .line 324
    .local v21, "x_processed":F
    move/from16 v22, p2

    .line 325
    .local v22, "y_processed":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    move/from16 v16, v0

    .line 326
    .local v16, "mThumbOffsetX_processed":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    move/from16 v17, v0

    .line 352
    .local v17, "mThumbOffsetY_processed":F
    :cond_0
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 356
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    sub-float v3, v21, v16

    sub-float v4, v22, v17

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 369
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v20

    .line 370
    .local v20, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v20, :cond_3

    .line 411
    :goto_1
    return-void

    .line 328
    .end local v16    # "mThumbOffsetX_processed":F
    .end local v17    # "mThumbOffsetY_processed":F
    .end local v20    # "touchedWin":Lcom/android/server/wm/WindowState;
    .end local v21    # "x_processed":F
    .end local v22    # "y_processed":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 329
    .local v11, "dw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 330
    .local v10, "dh":I
    const/high16 v15, 0x3f400000    # 0.75f

    .line 335
    .local v15, "lazyscale":F
    move/from16 v21, p1

    .line 336
    .restart local v21    # "x_processed":F
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, p2

    int-to-float v3, v10

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    add-float v22, v2, v3

    .line 337
    .restart local v22    # "y_processed":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v16, v2, v3

    .line 338
    .restart local v16    # "mThumbOffsetX_processed":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v17, v2, v3

    .line 339
    .restart local v17    # "mThumbOffsetY_processed":F
    const/4 v2, 0x1

    if-ne v2, v14, :cond_2

    .line 341
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v21, p1, v2

    goto :goto_0

    .line 342
    :cond_2
    const/4 v2, 0x2

    if-ne v2, v14, :cond_0

    .line 344
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, p1

    int-to-float v3, v11

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    add-float v21, v2, v3

    goto :goto_0

    .line 363
    .end local v10    # "dh":I
    .end local v11    # "dw":I
    .end local v15    # "lazyscale":F
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    .line 374
    .restart local v20    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 375
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 376
    .local v19, "touchedBinder":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_4

    .line 379
    const/16 v20, 0x0

    .line 384
    .end local v19    # "touchedBinder":Landroid/os/IBinder;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v13

    .line 391
    .local v13, "evt":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v13}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 393
    invoke-virtual {v13}, Landroid/view/DragEvent;->recycle()V

    .line 396
    .end local v13    # "evt":Landroid/view/DragEvent;
    :cond_5
    if-eqz v20, :cond_6

    .line 400
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, v20

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v13

    .line 402
    .restart local v13    # "evt":Landroid/view/DragEvent;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v13}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 403
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_6

    .line 404
    invoke-virtual {v13}, Landroid/view/DragEvent;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    .end local v13    # "evt":Landroid/view/DragEvent;
    :cond_6
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1

    .line 407
    :catch_0
    move-exception v12

    .line 408
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x12a05f200L

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    .line 98
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "WindowManager"

    const-string v3, "Duplicate register of drag input channel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v2, "drag"

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 102
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 103
    aget-object v2, v0, v7

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 104
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 105
    new-instance v2, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 108
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v8}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 109
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 113
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v8, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 120
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    .line 122
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 123
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 127
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 129
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 130
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 132
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 139
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 141
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 142
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 144
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 150
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 85
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 86
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 87
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 89
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 251
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 254
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_0

    .line 263
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    return-void

    .line 261
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    goto :goto_0
.end method

.method unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "WindowManager"

    const-string v1, "Unregister of nonexistent drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    .line 161
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 164
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 165
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 167
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 168
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    goto :goto_0
.end method

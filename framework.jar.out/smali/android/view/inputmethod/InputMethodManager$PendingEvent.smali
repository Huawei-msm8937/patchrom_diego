.class final Landroid/view/inputmethod/InputMethodManager$PendingEvent;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mHandled:Z

.field public mHandler:Landroid/os/Handler;

.field public mInputMethodId:Ljava/lang/String;

.field public mToken:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 2369
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "x1"    # Landroid/view/inputmethod/InputMethodManager$1;

    .prologue
    .line 2369
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2378
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 2379
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 2380
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 2381
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 2382
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 2383
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 2384
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2390
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2396
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2397
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # invokes: Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    invoke-static {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->access$400(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 2398
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2399
    return-void

    .line 2391
    :catch_0
    move-exception v0

    .line 2392
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "InputMethodManager"

    const-string v2, "Handle input Event in wrong state. Such as : parameter must be a descendant of this view. Ignore it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2398
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

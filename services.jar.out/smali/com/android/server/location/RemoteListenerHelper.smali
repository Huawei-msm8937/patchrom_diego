.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper",
            "<TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 58
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private calculateCurrentResultUnsafe()I
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 258
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v0, :cond_3

    .line 259
    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 262
    const/4 v0, 0x3

    goto :goto_0

    .line 264
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 218
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    invoke-static {}, Lcom/android/server/location/GpsFreezeProc;->getInstance()Lcom/android/server/location/GpsFreezeProc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsFreezeProc;->isFreeze(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_1
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Ljava/lang/String;)V
    .locals 2
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    return-void
.end method

.method private tryRegister()Z
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method private tryUnregister()V
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    const-string v6, "Attempted to register a \'null\' listener."

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    .line 82
    .local v1, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v6, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v6

    .line 83
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    return v4

    .line 88
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    const/4 v3, 0x1

    .line 117
    .local v3, "result":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v5

    const-string v7, ""

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Ljava/lang/String;)V

    .line 119
    monitor-exit v6

    goto :goto_0

    .end local v3    # "result":I
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 89
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    const-string v7, "Remote listener already died."

    invoke-static {v4, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 101
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v5, :cond_2

    .line 102
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_1

    .line 103
    .end local v3    # "result":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 104
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_1

    .line 105
    .end local v3    # "result":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v5

    if-nez v5, :cond_4

    .line 108
    const/4 v3, 0x4

    .restart local v3    # "result":I
    goto :goto_1

    .line 109
    .end local v3    # "result":I
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v5, :cond_5

    .line 110
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_1

    .line 114
    .end local v3    # "result":I
    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public addListener(Landroid/os/IInterface;Ljava/lang/String;)Z
    .locals 4
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    invoke-virtual {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 68
    .local v0, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->setPkgName(Ljava/lang/String;)V

    .line 71
    :cond_0
    monitor-exit v2

    .line 72
    const/4 v1, 0x1

    .line 74
    .end local v0    # "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :goto_0
    return v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected foreachDirect(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 158
    .local v2, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    invoke-static {}, Lcom/android/server/location/GpsFreezeProc;->getInstance()Lcom/android/server/location/GpsFreezeProc;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/GpsFreezeProc;->isFreeze(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    iget-object v3, v2, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mSkipCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 163
    iget-object v3, v2, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mSkipCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_0

    .line 174
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 168
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in monitored listener to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, v2, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mSkipCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    return-void
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method protected abstract registerWithService()Z
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v2, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 127
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 129
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 132
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v1, :cond_1

    .line 134
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 136
    :cond_1
    return-void

    .line 132
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected setSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 179
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 180
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 181
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected tryUpdateRegistrationWithService()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 189
    monitor-exit v2

    .line 200
    :goto_0
    return v1

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    monitor-exit v2

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    monitor-exit v2

    goto :goto_0

    .line 198
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v0

    .line 199
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 200
    const/4 v1, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .locals 3

    .prologue
    .line 205
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    move-result v0

    .line 207
    .local v0, "newResult":I
    iget v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    if-ne v1, v0, :cond_0

    .line 208
    monitor-exit v2

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 211
    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 212
    monitor-exit v2

    goto :goto_0

    .end local v0    # "newResult":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

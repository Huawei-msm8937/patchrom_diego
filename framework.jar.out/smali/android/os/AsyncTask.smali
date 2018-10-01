.class public abstract Landroid/os/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AsyncTask$4;,
        Landroid/os/AsyncTask$AsyncTaskResult;,
        Landroid/os/AsyncTask$WorkerRunnable;,
        Landroid/os/AsyncTask$InternalHandler;,
        Landroid/os/AsyncTask$Status;,
        Landroid/os/AsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final IS_ANTUTU:Z

.field private static final IS_EMU:Z

.field private static final IS_FPGA:Z

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static boardname:Ljava/lang/String;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Landroid/os/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Landroid/os/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Landroid/os/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    .line 184
    sget v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/AsyncTask;->CORE_POOL_SIZE:I

    .line 185
    sget v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/AsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 188
    new-instance v0, Landroid/os/AsyncTask$1;

    invoke-direct {v0}, Landroid/os/AsyncTask$1;-><init>()V

    sput-object v0, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 203
    const-string/jumbo v0, "ro.board.boardname"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/AsyncTask;->boardname:Ljava/lang/String;

    .line 204
    sget-object v0, Landroid/os/AsyncTask;->boardname:Ljava/lang/String;

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AsyncTask;->IS_EMU:Z

    .line 205
    sget-object v0, Landroid/os/AsyncTask;->boardname:Ljava/lang/String;

    const-string v1, "fpga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AsyncTask;->IS_FPGA:Z

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/AsyncTask;->getProNameForPid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AsyncTask;->IS_ANTUTU:Z

    .line 208
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 214
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Landroid/os/AsyncTask;->CORE_POOL_SIZE:I

    sget v3, Landroid/os/AsyncTask;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 222
    new-instance v0, Landroid/os/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/AsyncTask$SerialExecutor;-><init>(Landroid/os/AsyncTask$1;)V

    sput-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 227
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 235
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    new-instance v0, Landroid/os/AsyncTask$2;

    invoke-direct {v0, p0}, Landroid/os/AsyncTask$2;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    .line 313
    new-instance v0, Landroid/os/AsyncTask$3;

    iget-object v1, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Landroid/os/AsyncTask$3;-><init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 328
    return-void
.end method

.method static synthetic access$200(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/os/AsyncTask;

    .prologue
    .line 180
    iget-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/os/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 634
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 681
    :goto_0
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iput-object v1, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 682
    return-void

    .line 663
    :cond_0
    sget-boolean v1, Landroid/os/AsyncTask;->IS_EMU:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/os/AsyncTask;->IS_ANTUTU:Z

    if-eqz v1, :cond_1

    .line 666
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/os/AsyncTask;->IS_FPGA:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/os/AsyncTask;->IS_ANTUTU:Z

    if-eqz v1, :cond_2

    .line 674
    const-wide/16 v2, 0xbb8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 675
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 676
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 284
    const-class v1, Landroid/os/AsyncTask;

    monitor-enter v1

    .line 285
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Landroid/os/AsyncTask$InternalHandler;

    invoke-direct {v0}, Landroid/os/AsyncTask$InternalHandler;-><init>()V

    sput-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    .line 288
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    monitor-exit v1

    return-object v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static final getProNameForPid(I)Ljava/lang/String;
    .locals 6
    .param p0, "pid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 197
    new-array v0, v3, [Ljava/lang/String;

    .line 198
    .local v0, "outStrings":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [I

    const/16 v3, 0x1020

    aput v3, v2, v4

    invoke-static {v1, v2, v0, v5, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 200
    aget-object v1, v0, v4

    return-object v1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 339
    invoke-static {}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 332
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 294
    sput-object p0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 295
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 494
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 603
    sget-object v0, Landroid/os/AsyncTask$4;->$SwitchMap$android$os$AsyncTask$Status:[I

    iget-object v1, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 614
    :cond_0
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 616
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 618
    iget-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Landroid/os/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    return-object p0

    .line 605
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 461
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 448
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 432
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 381
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-static {}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/os/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    :cond_0
    return-void
.end method

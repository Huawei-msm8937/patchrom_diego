.class Lcom/android/internal/telephony/InboundSmsHandler$2;
.super Landroid/database/ContentObserver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mAlreadyReceivedSms:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mAlreadyReceivedSms:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mAlreadyReceivedSms:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1047
    :cond_0
    return-void
.end method

.class Lcom/android/internal/telephony/InboundSmsHandler$1;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x520

    .line 1028
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mAlreadyReceivedSms:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms receive fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->defaultSmsApplicationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1000(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "com.android.mms"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->defaultSmsApplicationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1000(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->subIdForReceivedSms:I
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v2

    invoke-static {v1, v3, v0, v2}, Lcom/huawei/internal/telephony/HwRadarUtils;->report(Landroid/content/Context;ILjava/lang/String;I)V

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->subIdForReceivedSms:I
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v2

    invoke-static {v1, v3, v0, v2}, Lcom/huawei/internal/telephony/HwRadarUtils;->reportChr(Landroid/content/Context;ILjava/lang/String;I)V

    .line 1036
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mAlreadyReceivedSms:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1037
    return-void
.end method

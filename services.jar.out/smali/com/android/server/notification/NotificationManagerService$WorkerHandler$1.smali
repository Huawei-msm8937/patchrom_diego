.class Lcom/android/server/notification/NotificationManagerService$WorkerHandler$1;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 0

    .prologue
    .line 3209
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler$1;->this$1:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler$1;->this$1:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3212
    return-void
.end method

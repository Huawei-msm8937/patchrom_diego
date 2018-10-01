.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2630
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2631
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2632
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2637
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2648
    const-string v0, "LocationManagerService"

    const-string v1, "receive unexpected message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    :goto_0
    return-void

    .line 2639
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2642
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mHwGpsActionReporter:Lcom/android/server/location/IHwGpsActionReporter;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/IHwGpsActionReporter;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/android/server/location/IHwGpsActionReporter;->uploadLocationAction(ILjava/lang/String;)Z

    goto :goto_0

    .line 2645
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mHwGpsActionReporter:Lcom/android/server/location/IHwGpsActionReporter;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/IHwGpsActionReporter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/server/location/IHwGpsActionReporter;->uploadLocationAction(ILjava/lang/String;)Z

    goto :goto_0

    .line 2637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

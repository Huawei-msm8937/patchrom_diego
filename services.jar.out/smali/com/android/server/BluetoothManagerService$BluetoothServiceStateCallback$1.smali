.class Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;->this$1:Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    new-array v2, v7, [I

    .line 227
    .local v2, "pids":[I
    iget v3, p1, Landroid/os/Message;->arg1:I

    aput v3, v2, v6

    .line 228
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 229
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKillPidHandler---pids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getAppName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;->this$1:Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;

    aget v5, v2, v6

    # invokes: Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->getAppName(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->access$100(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "logMsg":Ljava/lang/String;
    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v1}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    aget v4, v2, v6

    if-eq v3, v4, :cond_0

    .line 232
    const-string v3, "BluetoothManagerService callback timeout"

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 233
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;->this$1:Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->autoUpload(IILjava/lang/String;)V
    invoke-static {v3, v4, v6, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->access$200(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;IILjava/lang/String;)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

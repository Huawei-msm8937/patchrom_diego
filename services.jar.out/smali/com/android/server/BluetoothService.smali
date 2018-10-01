.class Lcom/android/server/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothService"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/android/server/BluetoothManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    .line 29
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 39
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 40
    const-string v0, "BluetoothService"

    const-string v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v0, v1}, Lcom/android/server/HwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->handleOnBootPhase()V

    .line 43
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "BluetoothService"

    const-string v1, "onStart: publishing BluetoothManagerService"

    invoke-static {v0, v1}, Lcom/android/server/HwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "bluetooth_manager"

    iget-object v1, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 47
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchUser: switching to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/HwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnSwitchUser(I)V

    .line 49
    return-void
.end method

.class Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullHighPerfLockHeldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 987
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$8000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiController;->setOperationalModeByMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    const-string v0, "HwWifiController"

    const-string v1, "DeviceActiveState enter setOperationalModeInDeviceActive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiController;->startWifiDataTrafficTrack()V

    .line 1002
    return-void

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiController;->stopWifiDataTrafficTrack()V

    .line 1008
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    .line 1009
    return-void
.end method
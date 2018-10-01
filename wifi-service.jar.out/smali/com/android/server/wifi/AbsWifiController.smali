.class public Lcom/android/server/wifi/AbsWifiController;
.super Lcom/android/internal/util/StateMachine;
.source "AbsWifiController.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 27
    return-void
.end method


# virtual methods
.method public createWifiProStateMachine(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 46
    return-void
.end method

.method public isWifiRepeaterStarted()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected processDefaultState(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected processStaEnabled(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public putConnectWifiAppPid(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    .line 48
    return-void
.end method

.method protected setOperationalModeByMode()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public startWifiDataTrafficTrack()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public stopWifiDataTrafficTrack()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

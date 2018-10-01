.class public Lcom/android/server/AbsNetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "AbsNetworkMonitor.java"


# static fields
.field private static final BASE:I = 0x82000

.field public static final CMD_NETWORK_ROAMING_CONNECTED:I = 0x82065


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public checkingCompletedByWifiPro(I)Z
    .locals 1
    .param p1, "respCode"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getReqTimestamp()J
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRespCodeByWifiPro()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x257

    return v0
.end method

.method public getRespTimestamp()J
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCheckCompletedByWifiPro()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiSmartEngineEnabled()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public releaseNetworkPropertyChecker()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public reportPortalNetwork(Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 27
    return-void
.end method

.method public resetNetworkMonitor()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public resetReevaluateDelayMs(I)I
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 23
    return p1
.end method

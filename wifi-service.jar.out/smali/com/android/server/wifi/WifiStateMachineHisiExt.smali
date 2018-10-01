.class public Lcom/android/server/wifi/WifiStateMachineHisiExt;
.super Ljava/lang/Object;
.source "WifiStateMachineHisiExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiStateMachineHisiExt"

.field public static final WIFI_STATE_DISABLE_HISI_ACTION:Ljava/lang/String; = "android.net.hisi.wifi.WIFI_STATE_DISABLE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDriverStopP2pDelayMs:I

.field private mStartWifiForP2p:Z

.field mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

.field mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigStore;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p3, "wifiState"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "wifiApState"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 54
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mStartWifiForP2p:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 68
    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    iput-object p4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x20e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mDriverStopP2pDelayMs:I

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 75
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    .line 76
    return-void
.end method

.method public static hisiWifiEnabled()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/net/wifi/HiSiWifiComm;->hisiWifiEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDriverStopP2pDelayMs()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mDriverStopP2pDelayMs:I

    return v0
.end method

.method public isP2pEnable()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->isWifiP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendSwitchToP2pBroadcast()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.hisi.SWITCH_TO_P2P_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 82
    const-string v1, "WifiStateMachineHisiExt"

    const-string v2, "sendSwitchToP2pBroadcast."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public sendWifiStateDisabledBroadcast()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "WifiStateMachineHisiExt"

    const-string v2, "sendBroadcast WIFI_STATE_DISABLE_HISI_ACTION."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.hisi.wifi.WIFI_STATE_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setRecoveryWifiFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->setRecoveryWifiFlag(Z)V

    .line 105
    return-void
.end method

.method public setWifiApEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->isWifiP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachineHisiExt;->setWifiApStateFlagByManual(Z)I

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachineHisiExt;->setRecoveryWifiFlag(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->setWifiP2pEnabled(I)Z

    .line 121
    :cond_1
    return-void
.end method

.method public setWifiApStateByManual(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 186
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 189
    .local v2, "previousWifiApState":I
    const-string v4, "WifiStateMachineHisiExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApStateByManual: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",previousWifiApState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachineHisiExt;->setWifiApStateFlagByManual(Z)I

    move-result v3

    .line 195
    .local v3, "wifiApState":I
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v4, "wifi_state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v4, "previous_wifi_state"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiStateMachineHisiExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApStateByManual exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApStateFlagByManual(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    const/16 v0, 0xd

    .line 180
    .local v0, "wifiApState":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 181
    return v0

    .line 177
    .end local v0    # "wifiApState":I
    :cond_0
    const/16 v0, 0xb

    .restart local v0    # "wifiApState":I
    goto :goto_0
.end method

.method public setWifiEnableForP2p(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 210
    const-string v0, "WifiStateMachineHisiExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnableForP2p: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mStartWifiForP2p:Z

    .line 212
    return-void
.end method

.method public setWifiStateByManual(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 144
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 146
    .local v2, "previousWifiState":I
    const-string v4, "WifiStateMachineHisiExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiStateByManual: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",previousWifiState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v3, 0x3

    .line 153
    .local v3, "wifiState":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v4, "wifi_state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v4, "previous_wifi_state"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    return-void

    .line 150
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "wifiState":I
    :cond_0
    const/4 v3, 0x1

    .restart local v3    # "wifiState":I
    goto :goto_0

    .line 164
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiStateMachineHisiExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiStateByManual exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startWifiForP2pCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mStartWifiForP2p:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 89
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachineHisiExt;->mStartWifiForP2p:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachineHisiExt;->sendSwitchToP2pBroadcast()V

    .line 94
    :cond_0
    return-void
.end method

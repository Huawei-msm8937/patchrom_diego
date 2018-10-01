.class public Lcom/android/server/wifi/WifiServiceHisiExt;
.super Ljava/lang/Object;
.source "WifiServiceHisiExt.java"


# static fields
.field public static final MIN_RSSI:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "WifiServiceHisiExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mIsReceiverRegistered:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

.field public mWifiStateMachineHisiExt:Lcom/android/server/wifi/WifiStateMachineHisiExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 46
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mIsReceiverRegistered:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    .line 54
    return-void
.end method

.method public static hisiWifiEnabled()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/net/wifi/HiSiWifiComm;->hisiWifiEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkBroadcastStickyPermission()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkInteractAcrossUsersFullPermission()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkInteractAcrossUsersPermission()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkUseNotCoexistPermission()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceHisiExt;->checkInteractAcrossUsersPermission()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 90
    const-string v1, "WifiServiceHisiExt"

    const-string v2, "permission \'INTERACT_ACROSS_USERS\' has not been granted,check continue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceHisiExt;->checkInteractAcrossUsersFullPermission()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 92
    const-string v1, "WifiServiceHisiExt"

    const-string v2, "permission \'INTERACT_ACROSS_USERS_FULL\' has not been granted,return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceHisiExt;->checkBroadcastStickyPermission()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 97
    const-string v1, "WifiServiceHisiExt"

    const-string v2, "permission \'BROADCAST_STICKY\' has not been granted,return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceHisiExt;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiP2pEnabled()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method public setWifiP2pEnabled(I)V
    .locals 2
    .param p1, "p2pFlag"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceHisiExt;->mWifiP2pManagerHisiExt:Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->setWifiP2pEnabled(I)Z

    .line 73
    return-void
.end method

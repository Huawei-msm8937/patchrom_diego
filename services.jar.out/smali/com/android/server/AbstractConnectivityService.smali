.class public abstract Lcom/android/server/AbstractConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "AbstractConnectivityService.java"


# static fields
.field protected static final DUAL_CARD_MMS_DELAY:I = 0x493e0

.field protected static final EVENT_RESTORE_DATA_SUB:I = 0x10

.field public static final EVENT_SET_EXPLICITLY_UNSELECTED:I = 0x810c9

.field public static final EVENT_TRIGGER_ROAMING_NETWORK_MONITOR:I = 0x810cb

.field public static final EVENT_UPDATE_NETWORK_CONCURRENTLY:I = 0x810ca

.field protected static final RESTORE_DATA_SUB_AFTER_MMS_DISCON_DELAY:I = 0x7d0

.field protected static final RESTORE_DATA_SUB_DELAY:I = 0x2710


# instance fields
.field protected dataSubRestoreRequested:Z

.field protected lastPrefDataSubscription:I

.field protected mmsNetConnectRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/android/server/AbstractConnectivityService;->dataSubRestoreRequested:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/AbstractConnectivityService;->mmsNetConnectRequested:Z

    .line 59
    iput v0, p0, Lcom/android/server/AbstractConnectivityService;->lastPrefDataSubscription:I

    return-void
.end method


# virtual methods
.method public checkLteConnectState()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, -0x1

    return v0
.end method

.method protected checkNetworkSupportBip(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected enableDefaultTypeApnWhenBlueToothTetheringStateChanged(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 172
    return-void
.end method

.method protected enableDefaultTypeApnWhenWifiConnectionStateChanged(Landroid/net/NetworkInfo$State;I)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$State;
    .param p2, "type"    # I

    .prologue
    .line 166
    return-void
.end method

.method public getLteTotalRxBytes()J
    .locals 2

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLteTotalTxBytes()J
    .locals 2

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getMmsFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkForTypeWifi()Landroid/net/Network;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfoForWifi()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleConnect(I)V
    .locals 0
    .param p1, "netType"    # I

    .prologue
    .line 79
    return-void
.end method

.method protected handleConnecting(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 89
    return-void
.end method

.method protected handleLteMobileDataStateChange(Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 208
    return-void
.end method

.method protected hintUserSwitchToMobileWhileWifiDisconnected(Landroid/net/NetworkInfo$State;I)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$State;
    .param p2, "type"    # I

    .prologue
    .line 161
    return-void
.end method

.method protected holdWifiNetworkMessenger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 188
    return-void
.end method

.method protected ignoreRemovedByWifiPro(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected isAlwaysAllowMMSforRoaming(ILjava/lang/String;)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected isMmsAutoSetSubDiffFromDataSub(ILjava/lang/String;)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected isMmsSubDiffFromDataSub(ILjava/lang/String;)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method protected isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method protected isNeedTearMmsAndRestoreData(ILjava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected isNetRequestersPidsContainCurrentPid([Ljava/util/List;ILjava/lang/Integer;)Z
    .locals 1
    .param p2, "usedNetworkType"    # I
    .param p3, "currentPid"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "mNetRequestersPids":[Ljava/util/List;, "[Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected isNetworkRequestBip(Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected makeDefaultAndHintUser(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 156
    return-void
.end method

.method protected needSetUserDataEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method protected reportPortalNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "result"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method protected setExplicitlyUnselected(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 184
    return-void
.end method

.method public setLteMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 206
    return-void
.end method

.method public setSmartKeyguardLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public setUseCtrlSocket(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 98
    return-void
.end method

.method protected setVpnSettingValue(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 191
    return-void
.end method

.method protected startBrowserForWifiPortal(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public triggerRoamingNetworkMonitor(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 193
    return-void
.end method

.method protected updateNetworkConcurrently(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 185
    return-void
.end method

.class public abstract Lcom/android/server/wifi/AbsWifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "AbsWifiStateMachine.java"


# static fields
.field public static final NETWORK_STATUS_UNWANTED_PORTAL:I = 0x3


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected enableAllNetworksByMode()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected enterConnectedStateByMode()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected enterDriverStartedStateByMode()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getConfiguredNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 131
    return-void
.end method

.method public getWifiCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 191
    return-object p2
.end method

.method public getWpaSuppConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public handleConnectedInWifiPro()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public handleDisconnectedInWifiPro()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public handleGetApLinkedStaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleHandoverConnectFailed(II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .prologue
    .line 142
    return-void
.end method

.method protected handleHwDefaultIPConfiguration()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected handleNetworkDisconnect()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public handleRxGoodInWifiPro(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 144
    return-void
.end method

.method public handleSetSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public handleSetSoftapMacFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "macFilter"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public handleSetWifiApConfigurationHw()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public handleStopWifiRepeater(Lcom/android/internal/util/AsyncChannel;)V
    .locals 0
    .param p1, "wifiP2pChannel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 198
    return-void
.end method

.method public handleUnwantedNetworkInWifiPro(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "unwantedType"    # I

    .prologue
    .line 139
    return-void
.end method

.method public handleValidNetworkInWifiPro(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 140
    return-void
.end method

.method public handleWapiFailureEvent(Landroid/os/Message;Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "mSupplicantStateTracker"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected hasMeteredHintForWi(Ljava/net/Inet4Address;)Z
    .locals 1
    .param p1, "ip"    # Ljava/net/Inet4Address;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreEnterConnectedState()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected isScanAndManualConnectMode()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiProEnabled()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiProEvaluatingAP()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiRepeaterStarted()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected loadAndEnableAllNetworksByMode()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected makeHwDefaultIPTable(Landroid/net/DhcpResults;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 110
    return-void
.end method

.method protected processConnectModeAutoConnectByMode()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected processConnectModeSetMode(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected processDisconnectedSetMode(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected processL2ConnectedSetMode(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected processScanModeSetMode(Landroid/os/Message;I)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "mLastOperationMode"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected processScreenOffScan(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected processSupplicantStartingSetMode(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected recordAssociationRejectStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 98
    return-void
.end method

.method public reportPortalNetworkStatus()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public resetScoreByInetAccess(I)I
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 129
    return p1
.end method

.method public saveConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 132
    return-void
.end method

.method public saveWpsNetIdInWifiPro(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 141
    return-void
.end method

.method public sendWifiHandoverCompletedBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public setLocalMacAddressFromMacfile()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public setSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public setSoftapMacFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "macFilter"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method public setWiFiProScanResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method

.method public setWifiRepeaterStoped()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected startScreenOffScan()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public syncGetApChannelListFor5G(Lcom/android/internal/util/AsyncChannel;)[I
    .locals 1
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public syncGetApLinkedStaList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 1
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public tryUseStaticIpForFastConnecting(I)V
    .locals 0
    .param p1, "lastNid"    # I

    .prologue
    .line 149
    return-void
.end method

.method public updateNetworkConcurrently()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public updateScanDetailByWifiPro(Lcom/android/server/wifi/ScanDetail;)V
    .locals 0
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    .line 148
    return-void
.end method

.method public updateWifiproWifiConfiguration(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 145
    return-void
.end method

.method public wifiNetworkExplicitlySelected()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public wifiNetworkExplicitlyUnselected()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

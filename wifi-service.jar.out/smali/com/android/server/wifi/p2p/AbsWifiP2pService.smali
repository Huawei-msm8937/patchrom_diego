.class public abstract Lcom/android/server/wifi/p2p/AbsWifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "AbsWifiP2pService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected autoAcceptConnection()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected clearValidDeivceList()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method protected getHwP2pStateMachine(Ljava/lang/String;Landroid/os/Looper;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "p2pSupported"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNetworkId(Landroid/net/wifi/p2p/WifiP2pGroupList;Ljava/lang/String;)I
    .locals 1
    .param p1, "mGroups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getNetworkId(Landroid/net/wifi/p2p/WifiP2pGroupList;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "mGroups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getOwnerAddr(Landroid/net/wifi/p2p/WifiP2pGroupList;I)Ljava/lang/String;
    .locals 1
    .param p1, "mGroups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "netId"    # I

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWifiRepeaterEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected handleClientHwMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected handleDefaultStateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInactiveStateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected handleP2pNotSupportedStateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected initWifiRepeaterConfig()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected processMessageForP2pCollision(Landroid/os/Message;Lcom/android/internal/util/State;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected sendP2pConnectedStateBroadcast()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected sendP2pConnectingStateBroadcast()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected sendP2pFailStateBroadcast()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected startWifiRepeater(Landroid/net/wifi/p2p/WifiP2pGroup;)Z
    .locals 1
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected stopWifiRepeater(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 100
    return-void
.end method

.method protected updateGroupCapability(Landroid/net/wifi/p2p/WifiP2pDeviceList;Ljava/lang/String;I)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "groupCapab"    # I

    .prologue
    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method protected updateStatus(Landroid/net/wifi/p2p/WifiP2pDeviceList;Ljava/lang/String;I)V
    .locals 0
    .param p1, "mPeers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "invited"    # I

    .prologue
    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

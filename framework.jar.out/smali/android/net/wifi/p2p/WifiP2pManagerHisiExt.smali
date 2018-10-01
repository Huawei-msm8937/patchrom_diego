.class public Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;
.super Ljava/lang/Object;
.source "WifiP2pManagerHisiExt.java"


# static fields
.field public static final SWITCH_TO_P2P_MODE:Ljava/lang/String; = "android.net.wifi.p2p.hisi.SWITCH_TO_P2P_MODE"

.field private static final TAG:Ljava/lang/String; = "WifiP2pManagerHisiExt"


# instance fields
.field private wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 20
    const-string/jumbo v0, "wifip2p"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 22
    return-void
.end method


# virtual methods
.method public isWifiP2pEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v2, "WifiP2pManagerHisiExt"

    const-string/jumbo v3, "isWifiP2pEnabled() is called!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v2}, Landroid/net/wifi/p2p/IWifiP2pManager;->isWifiP2pEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRecoveryWifiFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 50
    const-string v0, "WifiP2pManagerHisiExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecoveryWifiFlag() is called! flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setRecoveryWifiFlag(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiP2pEnabled(I)Z
    .locals 5
    .param p1, "p2pFlag"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v2, "WifiP2pManagerHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiP2pEnabled() is called! p2pFlag ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManagerHisiExt;->wifiP2pService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setWifiP2pEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

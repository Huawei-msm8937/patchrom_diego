.class public Landroid/net/wifi/p2p/DummyHwInnerWifiP2pManager;
.super Ljava/lang/Object;
.source "DummyHwInnerWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/HwInnerWifiP2pManager;


# static fields
.field private static mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/net/wifi/p2p/DummyHwInnerWifiP2pManager;

    invoke-direct {v0}, Landroid/net/wifi/p2p/DummyHwInnerWifiP2pManager;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/DummyHwInnerWifiP2pManager;->mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/net/wifi/p2p/DummyHwInnerWifiP2pManager;->mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    return-object v0
.end method

.method public getWifiRepeaterConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public setWifiRepeaterConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

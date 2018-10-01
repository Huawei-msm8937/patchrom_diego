.class public Landroid/net/wifi/DummyHwInnerNetworkManager;
.super Ljava/lang/Object;
.source "DummyHwInnerNetworkManager.java"

# interfaces
.implements Landroid/net/wifi/HwInnerNetworkManager;


# static fields
.field private static mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/DummyHwInnerNetworkManager;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/net/wifi/HwInnerNetworkManager;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Landroid/net/wifi/DummyHwInnerNetworkManager;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroid/net/wifi/DummyHwInnerNetworkManager;

    invoke-direct {v0}, Landroid/net/wifi/DummyHwInnerNetworkManager;-><init>()V

    sput-object v0, Landroid/net/wifi/DummyHwInnerNetworkManager;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    .line 14
    :cond_0
    sget-object v0, Landroid/net/wifi/DummyHwInnerNetworkManager;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    return-object v0
.end method


# virtual methods
.method public getApLinkedStaList()Ljava/util/List;
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
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWiFiDnsStats(I)Ljava/lang/String;
    .locals 1
    .param p1, "netid"    # I

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public setAccessPointHw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "softapIface"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public setSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 23
    return-void
.end method

.method public setSoftapMacFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "macFilter"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

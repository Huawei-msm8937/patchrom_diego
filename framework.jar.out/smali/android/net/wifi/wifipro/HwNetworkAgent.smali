.class public Landroid/net/wifi/wifipro/HwNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "HwNetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field public static final EVENT_SET_EXPLICITLY_UNSELECTED:I = 0x810c9

.field public static final EVENT_TRIGGER_ROAMING_NETWORK_MONITOR:I = 0x810cb

.field public static final EVENT_UPDATE_NETWORK_CONCURRENTLY:I = 0x810ca

.field public static final PORTAL_NETWORK:I = 0x3

.field private static networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Landroid/net/wifi/wifipro/NetworkAgentUtils;

    invoke-static {v0}, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->getInvokeUtils(Ljava/lang/Class;)Landroid/net/wifi/wifipro/WifiProInvokeUtils;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/wifipro/NetworkAgentUtils;

    sput-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    .prologue
    .line 28
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 34
    return-void
.end method


# virtual methods
.method public explicitlyUnselected()V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    const v1, 0x810c9

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/wifipro/NetworkAgentUtils;->queueOrSendMessage(Landroid/net/NetworkAgent;ILjava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method public triggerRoamingNetworkMonitor(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 49
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    const v1, 0x810cb

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/wifipro/NetworkAgentUtils;->queueOrSendMessage(Landroid/net/NetworkAgent;ILjava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected unwanted()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public updateNetworkConcurrently(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 43
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Landroid/net/wifi/wifipro/HwNetworkAgent;->networkAgentUtils:Landroid/net/wifi/wifipro/NetworkAgentUtils;

    const v1, 0x810ca

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/wifipro/NetworkAgentUtils;->queueOrSendMessage(Landroid/net/NetworkAgent;ILjava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

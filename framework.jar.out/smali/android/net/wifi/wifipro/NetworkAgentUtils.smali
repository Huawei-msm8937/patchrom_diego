.class public Landroid/net/wifi/wifipro/NetworkAgentUtils;
.super Landroid/net/wifi/wifipro/WifiProInvokeUtils;
.source "NetworkAgentUtils.java"


# instance fields
.field queueOrSendMessage:Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/net/wifi/wifipro/WifiProInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public queueOrSendMessage(Landroid/net/NetworkAgent;ILjava/lang/Object;)V
    .locals 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation runtime Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;
        methodObject = "queueOrSendMessage"
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Landroid/net/wifi/wifipro/NetworkAgentUtils;->queueOrSendMessage:Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/wifipro/NetworkAgentUtils;->invokeMethod(Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

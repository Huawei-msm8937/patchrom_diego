.class public final Lcom/android/server/wifi/WifiService;
.super Lcom/android/server/SystemService;
.source "WifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getHwWifiServiceManager()Lcom/android/server/wifi/HwWifiServiceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/HwWifiServiceManager;->createHwWifiService(Landroid/content/Context;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 48
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    .line 51
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "WifiService"

    const-string v1, "Registering wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    return-void
.end method

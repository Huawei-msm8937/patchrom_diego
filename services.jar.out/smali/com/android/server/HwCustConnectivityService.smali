.class public Lcom/android/server/HwCustConnectivityService;
.super Ljava/lang/Object;
.source "HwCustConnectivityService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public custAddAction(Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 42
    return-void
.end method

.method public custProvisioningBroadcast(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .locals 0
    .param p1, "mTethering"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    return-void
.end method

.method public initConnectivityService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    return-void
.end method

.method public isSupportWifiConnectMode()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbTetheringEnable(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

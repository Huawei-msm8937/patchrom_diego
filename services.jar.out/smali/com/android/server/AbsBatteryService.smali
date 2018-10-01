.class public abstract Lcom/android/server/AbsBatteryService;
.super Lcom/android/server/SystemService;
.source "AbsBatteryService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected newUpdateLightsLocked()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected playRing()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected printBatteryLog(Landroid/os/BatteryProperties;Landroid/os/BatteryProperties;IZ)V
    .locals 0
    .param p1, "oldProps"    # Landroid/os/BatteryProperties;
    .param p2, "newProps"    # Landroid/os/BatteryProperties;
    .param p3, "oldPlugType"    # I
    .param p4, "updatesStopped"    # Z

    .prologue
    .line 33
    return-void
.end method

.method protected stopRing()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method protected updateLight()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected updateLight(ZII)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "ledOnMS"    # I
    .param p3, "ledOffMS"    # I

    .prologue
    .line 16
    return-void
.end method

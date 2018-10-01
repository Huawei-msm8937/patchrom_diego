.class public Lcom/android/server/power/HwCustPowerManagerService;
.super Ljava/lang/Object;
.source "HwCustPowerManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustPowerManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public canDreamLocked()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public checkDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public handleDreamLocked()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    return-void
.end method

.method public isChargingAlbumEnabled()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isChargingAlbumSupported()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isDelayEnanbled()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isStartDreamFromUser()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public readConfigurationLocked(Z)Z
    .locals 0
    .param p1, "config"    # Z

    .prologue
    .line 84
    return p1
.end method

.method public setStartDreamFromUser(Z)V
    .locals 0
    .param p1, "buser"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public startDream(Z)Z
    .locals 1
    .param p1, "bfullscreen"    # Z

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public stopDream()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady(Landroid/os/BatteryManagerInternal;Landroid/service/dreams/DreamManagerInternal;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "batterymanager"    # Landroid/os/BatteryManagerInternal;
    .param p2, "dreammanager"    # Landroid/service/dreams/DreamManagerInternal;
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 126
    return-void
.end method

.method public updateSettingsLocked()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

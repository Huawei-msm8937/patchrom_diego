.class public abstract Lcom/android/server/power/AbsPowerManagerService;
.super Lcom/android/server/SystemService;
.source "AbsPowerManagerService.java"


# static fields
.field public static final MIN_COVER_SCREEN_OFF_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "AbsPowerManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected acquireProxyWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected disableBrightnessWaitLocked(Z)V
    .locals 0
    .param p1, "dismissKeyguard"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public forceReleaseWakeLockByPidUid(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 70
    return-void
.end method

.method public forceRestoreWakeLockByPidUid(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 73
    return-void
.end method

.method public getAdjustedMaxTimeout(II)I
    .locals 1
    .param p1, "oldtimeout"    # I
    .param p2, "maxv"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getWakeLockByUid(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "wakeflag"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected handleWaitBrightTimeout()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public isAppWakeLockFilterTag(ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isSkipWakeLockUsing(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public proxyWakeLockByPidUid(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "proxy"    # Z

    .prologue
    .line 54
    return-void
.end method

.method protected releaseProxyWakeLock(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected resetWaitBrightTimeoutLocked()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected setColorTemperatureAccordingToSetting()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "AbsPowerManagerService"

    const-string v1, "setColorTemperatureAccordingToSetting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public setColorTemperatureInternal(I)I
    .locals 2
    .param p1, "colorTemper"    # I

    .prologue
    .line 90
    const-string v0, "AbsPowerManagerService"

    const-string v1, "setColorTemperatureInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setLcdRatio(IZ)V
    .locals 0
    .param p1, "ratio"    # I
    .param p2, "autoAdjust"    # Z

    .prologue
    .line 80
    return-void
.end method

.method public startWakeUpReady(JLjava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method protected startWakeUpReadyInternal(JILjava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public stopWakeUpReady(JZLjava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # J
    .param p3, "enableBright"    # Z
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method protected stopWakeUpReadyInternal(JIZLjava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "enableBright"    # Z
    .param p5, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method protected updateProxyWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public updateRgbGammaInternal(FFF)I
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 99
    const-string v0, "AbsPowerManagerService"

    const-string v1, "updateRgbGammaInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

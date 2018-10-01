.class public Lcom/android/server/policy/HwCustPhoneWindowManager;
.super Ljava/lang/Object;
.source "HwCustPhoneWindowManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustPhoneWindowManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableHomeKey(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public dueKEYCODE_SOUNDTRIGGER_EVENT(ILandroid/content/Context;ZZZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isMusicOrFMActive"    # Z
    .param p4, "down"    # Z
    .param p5, "keyguardShow"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public interceptVolumeUpKey(Landroid/view/KeyEvent;Landroid/content/Context;ZZZZZ)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z
    .param p5, "isMusicOrFMOrVoiceCallActive"    # Z
    .param p6, "isInjected"    # Z
    .param p7, "down"    # Z

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isChargingAlbumSupported()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isSosAllowed()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public isVolumnkeyWakeup()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public processCustInterceptKey(IZLandroid/content/Context;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    return-void
.end method

.method public selectAnimationLw(I)I
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public volumnkeyWakeup(Landroid/content/Context;ZLandroid/os/PowerManager;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isScreenOn"    # Z
    .param p3, "mPowerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 87
    return-void
.end method

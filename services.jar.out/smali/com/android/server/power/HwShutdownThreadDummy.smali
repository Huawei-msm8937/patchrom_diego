.class public Lcom/android/server/power/HwShutdownThreadDummy;
.super Ljava/lang/Object;
.source "HwShutdownThreadDummy.java"

# interfaces
.implements Lcom/android/server/power/IHwShutdownThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDoShutdownAnimation()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public needRebootDialog(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "rebootReason"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public needRebootProgressDialog(ZLandroid/content/Context;)Z
    .locals 1
    .param p1, "reboot"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public waitShutdownAnimation()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

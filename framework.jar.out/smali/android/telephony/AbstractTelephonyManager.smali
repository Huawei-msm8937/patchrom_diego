.class public Landroid/telephony/AbstractTelephonyManager;
.super Ljava/lang/Object;
.source "AbstractTelephonyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSms7BitEnabled()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->isSms7BitEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDualCardMode()I
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDualCardMode()I

    move-result v0

    return v0
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getPesn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDualCardMode(I)Z
    .locals 1
    .param p1, "nMode"    # I

    .prologue
    .line 8
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/HwInnerTelephonyManager;->setDualCardMode(I)Z

    move-result v0

    return v0
.end method

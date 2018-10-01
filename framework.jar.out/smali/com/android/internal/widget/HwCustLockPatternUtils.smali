.class public Lcom/android/internal/widget/HwCustLockPatternUtils;
.super Ljava/lang/Object;
.source "HwCustLockPatternUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentpwdSimpleCheck(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public initHwCustLockPatternUtils(Landroid/app/admin/DevicePolicyManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "mDevicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    return-void
.end method

.method public isNotAllowSimplePwd()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public saveCurrentPwdStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 36
    return-void
.end method

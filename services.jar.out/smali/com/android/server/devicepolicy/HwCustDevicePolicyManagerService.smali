.class public Lcom/android/server/devicepolicy/HwCustDevicePolicyManagerService;
.super Ljava/lang/Object;
.source "HwCustDevicePolicyManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public isNewPwdSimpleCheck(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isNotAllowSimplePwd()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public wipeDataAndReset(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public wipeStorageData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    return-void
.end method

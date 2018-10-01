.class public abstract Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "AbsDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;
    }
.end annotation


# static fields
.field protected static final HWDBG:Z = false

.field protected static final HWFLOW:Z

.field private static final TAG:Ljava/lang/String; = "AbsDevicePolicyManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_1

    const-string v0, "AbsDevicePolicyManagerService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService;->HWFLOW:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getAllowSimplePassword(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public initHwCustAbs(Z)V
    .locals 0
    .param p1, "hasFeature"    # Z

    .prologue
    .line 488
    return-void
.end method

.method protected syncHwDeviceSettingsLocked(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 32
    return-void
.end method

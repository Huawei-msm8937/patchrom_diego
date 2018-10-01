.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-static {}, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->getHuaweiDevicePolicyManagerService()Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;

    move-result-object v0

    .line 310
    .local v0, "iwms":Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 325
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->systemReady()V

    .line 328
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "device_policy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    return-void
.end method

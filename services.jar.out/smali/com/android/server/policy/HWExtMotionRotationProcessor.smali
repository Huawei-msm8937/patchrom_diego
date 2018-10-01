.class public Lcom/android/server/policy/HWExtMotionRotationProcessor;
.super Ljava/lang/Object;
.source "HWExtMotionRotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;
    }
.end annotation


# static fields
.field private static final MOTION_VALUES_LEN:I = 0x2


# instance fields
.field private mHWEDListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

.field private mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

.field private mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

.field private mProposedRotation:I

.field private mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;)V
    .locals 1
    .param p1, "wolPxy"    # Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    .line 18
    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    .line 19
    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    .line 70
    new-instance v0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;-><init>(Lcom/android/server/policy/HWExtMotionRotationProcessor;)V

    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .line 23
    iput-object p1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    .line 24
    invoke-direct {p0}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->initProcessor()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/HWExtMotionRotationProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/HWExtMotionRotationProcessor;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/HWExtMotionRotationProcessor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/HWExtMotionRotationProcessor;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/HWExtMotionRotationProcessor;)Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/HWExtMotionRotationProcessor;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    return-object v0
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    if-nez v1, :cond_1

    .line 54
    iput-object v2, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    .line 58
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    invoke-virtual {v1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->dispose()V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initProcessor()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hwextdevice/HWExtDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    .line 67
    new-instance v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lcom/huawei/hwextdevice/devices/HWExtMotion;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    .line 68
    return-void
.end method


# virtual methods
.method public disableMotionRotation()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    iget-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    iget-object v2, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->unregisterDeviceListener(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "HWEMRP"

    const-string v1, "disableMotionRotation  mHWEDManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableMotionRotation(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDManager:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    iget-object v1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWEDListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    iget-object v2, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mHWExtMotion:Lcom/huawei/hwextdevice/devices/HWExtMotion;

    invoke-virtual {v0, v1, v2, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->registerDeviceListener(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Lcom/huawei/hwextdevice/devices/IHWExtDevice;Landroid/os/Handler;)Z

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "HWEMRP"

    const-string v1, "enableMotionRotation  mHWEDManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I

    return v0
.end method

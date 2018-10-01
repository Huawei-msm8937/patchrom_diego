.class public Landroid/vr/VrServiceManager;
.super Landroid/vr/IVrServiceManager$Stub;
.source "VrServiceManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/vr/IVRManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "VrServiceManager"

    sput-object v0, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/vr/IVRManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/vr/IVRManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/vr/IVrServiceManager$Stub;-><init>()V

    .line 17
    sget-object v0, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "VrServiceManager constructer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Landroid/vr/VrServiceManager;->mService:Landroid/vr/IVRManagerService;

    .line 19
    iput-object p2, p0, Landroid/vr/VrServiceManager;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getVsync()D
    .locals 4

    .prologue
    .line 23
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.android.permission.VR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :try_start_0
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mService:Landroid/vr/IVRManagerService;

    invoke-interface {v1}, Landroid/vr/IVRManagerService;->getVsync()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 28
    :goto_0
    return-wide v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "call service error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public setSchedFifo(II)I
    .locals 4
    .param p1, "tid"    # I
    .param p2, "rtPriority"    # I

    .prologue
    .line 54
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.android.permission.VR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mService:Landroid/vr/IVRManagerService;

    invoke-interface {v1, p1, p2}, Landroid/vr/IVRManagerService;->setSchedFifo(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "call service error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startFrontBufferDisplay()Z
    .locals 4

    .prologue
    .line 33
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.android.permission.VR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mService:Landroid/vr/IVRManagerService;

    invoke-interface {v1}, Landroid/vr/IVRManagerService;->startFrontBufferDisplay()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 39
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "call service error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopFrontBufferDisplay()Z
    .locals 4

    .prologue
    .line 43
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.android.permission.VR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    iget-object v1, p0, Landroid/vr/VrServiceManager;->mService:Landroid/vr/IVRManagerService;

    invoke-interface {v1}, Landroid/vr/IVRManagerService;->stopFrontBufferDisplay()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/vr/VrServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "call service error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lcom/android/server/devicepolicy/HwDevicePolicyFactory;
.super Ljava/lang/Object;
.source "HwDevicePolicyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;,
        Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwDevicePolicyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getHuaweiDevicePolicyManagerService()Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->getImplObject()Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    move-result-object v0

    .line 45
    .local v0, "obj":Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;->getHuaweiDevicePolicyManagerService()Lcom/android/server/devicepolicy/HwDevicePolicyFactory$IHwDevicePolicyManagerService;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;
    .locals 6

    .prologue
    .line 16
    sget-object v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    if-eqz v2, :cond_0

    .line 17
    sget-object v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    .line 32
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 19
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 21
    :try_start_0
    const-string v2, "com.android.server.devicepolicy.HwDevicePolicyFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    sput-object v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    sget-object v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    if-eqz v2, :cond_1

    .line 28
    const-string v2, "HwDevicePolicyFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v2, Lcom/android/server/devicepolicy/HwDevicePolicyFactory;->obj:Lcom/android/server/devicepolicy/HwDevicePolicyFactory$Factory;

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwDevicePolicyFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 26
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 31
    :cond_1
    const-string v2, "HwDevicePolicyFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v2, 0x0

    goto :goto_0
.end method

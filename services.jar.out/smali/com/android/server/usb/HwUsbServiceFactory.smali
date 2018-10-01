.class public Lcom/android/server/usb/HwUsbServiceFactory;
.super Ljava/lang/Object;
.source "HwUsbServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;,
        Lcom/android/server/usb/HwUsbServiceFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwUsbServiceFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/usb/HwUsbServiceFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getHuaweiUsbDeviceManager()Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/android/server/usb/HwUsbServiceFactory;->getImplObject()Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    move-result-object v0

    .line 66
    .local v0, "obj":Lcom/android/server/usb/HwUsbServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcom/android/server/usb/HwUsbServiceFactory$Factory;->getHuaweiUsbDeviceManager()Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/server/usb/HwUsbServiceFactory$Factory;
    .locals 6

    .prologue
    .line 38
    sget-object v2, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    if-eqz v2, :cond_0

    .line 39
    sget-object v2, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    .line 54
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 41
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/server/usb/HwUsbServiceFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 43
    :try_start_0
    const-string v2, "com.android.server.usb.HwUsbServiceFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    sput-object v2, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    sget-object v2, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "HwUsbServiceFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v2, Lcom/android/server/usb/HwUsbServiceFactory;->obj:Lcom/android/server/usb/HwUsbServiceFactory$Factory;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwUsbServiceFactory"

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

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 53
    :cond_1
    const-string v2, "HwUsbServiceFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x0

    goto :goto_0
.end method

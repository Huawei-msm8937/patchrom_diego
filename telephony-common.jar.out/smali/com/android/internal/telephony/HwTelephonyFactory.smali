.class public Lcom/android/internal/telephony/HwTelephonyFactory;
.super Ljava/lang/Object;
.source "HwTelephonyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwTelephonyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwTelephonyFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static getHwDataConnectionManager()Lcom/android/internal/telephony/HwDataConnectionManager;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwDataConnectionManager()Lcom/android/internal/telephony/HwDataConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwDataServiceChrManager()Lcom/android/internal/telephony/HwDataServiceChrManager;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwDataServiceChrManager()Lcom/android/internal/telephony/HwDataServiceChrManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwNetworkManager()Lcom/android/internal/telephony/HwNetworkManager;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwNetworkManager()Lcom/android/internal/telephony/HwNetworkManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwSubInfoProxy(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    .line 40
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    .line 41
    .local v0, "obj":Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwSubInfoProxy(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    goto :goto_0
.end method

.method public static getHwTelephonyBaseManager()Lcom/android/internal/telephony/HwTelephonyBaseManager;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwTelephonyBaseManager()Lcom/android/internal/telephony/HwTelephonyBaseManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    return-object v0
.end method

.method private static getImplObject()Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;
    .locals 6

    .prologue
    .line 16
    sget-object v2, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    if-eqz v2, :cond_0

    .line 17
    sget-object v2, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    .line 34
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 19
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/HwTelephonyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 22
    :try_start_0
    const-string v2, "com.android.internal.telephony.HwTelephonyFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    sput-object v2, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    sget-object v2, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "HwTelephonyFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v2, Lcom/android/internal/telephony/HwTelephonyFactory;->obj:Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwTelephonyFactory"

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

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 33
    :cond_1
    const-string v2, "HwTelephonyFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v2, 0x0

    goto :goto_0
.end method

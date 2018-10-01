.class public Lcom/android/internal/telephony/HwAddonTelephonyFactory;
.super Ljava/lang/Object;
.source "HwAddonTelephonyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwAddonTelephonyFactory$1;,
        Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;,
        Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyDefaultImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwAddonTelephonyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static getImplObject()Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;
    .locals 6

    .prologue
    .line 13
    sget-object v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    if-eqz v2, :cond_0

    .line 14
    sget-object v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    .line 29
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 16
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 18
    :try_start_0
    const-string v2, "com.huawei.android.telephony.HwAddonTelephonyImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    sput-object v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    sget-object v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    if-eqz v2, :cond_1

    .line 25
    const-string v2, "HwAddonTelephonyFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->obj:Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwAddonTelephonyFactory"

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

    .line 23
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 28
    :cond_1
    const-string v2, "HwAddonTelephonyFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v2, Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyDefaultImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyDefaultImpl;-><init>(Lcom/android/internal/telephony/HwAddonTelephonyFactory$1;)V

    goto :goto_0
.end method

.method public static getTelephony()Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/internal/telephony/HwAddonTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;

    move-result-object v0

    return-object v0
.end method

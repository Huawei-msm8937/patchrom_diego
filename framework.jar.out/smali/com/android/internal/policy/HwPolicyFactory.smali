.class public Lcom/android/internal/policy/HwPolicyFactory;
.super Ljava/lang/Object;
.source "HwPolicyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/HwPolicyFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPolicyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/HwPolicyFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {}, Lcom/android/internal/policy/HwPolicyFactory;->getImplObject()Lcom/android/internal/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 46
    .local v0, "obj":Lcom/android/internal/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0}, Lcom/android/internal/policy/HwPolicyFactory$Factory;->getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/policy/PhoneLayoutInflater;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/android/internal/policy/HwPolicyFactory;->getImplObject()Lcom/android/internal/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 35
    .local v0, "obj":Lcom/android/internal/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0}, Lcom/android/internal/policy/HwPolicyFactory$Factory;->getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/internal/policy/HwPolicyFactory$Factory;
    .locals 6

    .prologue
    .line 58
    sget-object v2, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;

    .line 76
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 61
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/internal/policy/HwPolicyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 64
    :try_start_0
    const-string v2, "com.android.internal.policy.HwPolicyFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/HwPolicyFactory$Factory;

    sput-object v2, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    sget-object v2, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "HwPolicyFactory"

    const-string v3, ": success to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v2, Lcom/android/internal/policy/HwPolicyFactory;->obj:Lcom/android/internal/policy/HwPolicyFactory$Factory;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwPolicyFactory"

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

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 75
    :cond_1
    const-string v2, "HwPolicyFactory"

    const-string v3, ": fail to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v2, 0x0

    goto :goto_0
.end method

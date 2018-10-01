.class public Landroid/support/v4/interfaces/HwControlFactory;
.super Ljava/lang/Object;
.source "HwControlFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/interfaces/HwControlFactory$HwViewPager;,
        Landroid/support/v4/interfaces/HwControlFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwControlFactory"

.field private static sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static getHwFactoryImpl()Landroid/support/v4/interfaces/HwControlFactory$Factory;
    .locals 6

    .prologue
    .line 49
    sget-object v2, Landroid/support/v4/interfaces/HwControlFactory;->sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Landroid/support/v4/interfaces/HwControlFactory;->sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;

    .line 71
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 53
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    const-class v3, Landroid/support/v4/interfaces/HwControlFactory;

    monitor-enter v3

    .line 55
    :try_start_0
    const-string v2, "huawei.support.v4.view.HwFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .restart local v0    # "allimpl":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/interfaces/HwControlFactory$Factory;

    sput-object v2, Landroid/support/v4/interfaces/HwControlFactory;->sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    sget-object v2, Landroid/support/v4/interfaces/HwControlFactory;->sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;

    if-nez v2, :cond_2

    .line 69
    const-string v2, "HwControlFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    sget-object v2, Landroid/support/v4/interfaces/HwControlFactory;->sFactory:Landroid/support/v4/interfaces/HwControlFactory$Factory;

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v2, "HwControlFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/InstantiationException;
    :try_start_3
    const-string v2, "HwControlFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwControlFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getHwViewPager(Landroid/content/Context;)Landroid/support/v4/interfaces/HwControlFactory$HwViewPager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {}, Landroid/support/v4/interfaces/HwControlFactory;->getHwFactoryImpl()Landroid/support/v4/interfaces/HwControlFactory$Factory;

    move-result-object v0

    .line 32
    .local v0, "factory":Landroid/support/v4/interfaces/HwControlFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Landroid/support/v4/interfaces/HwControlFactory$Factory;->newHwViewPager(Landroid/content/Context;)Landroid/support/v4/interfaces/HwControlFactory$HwViewPager;

    move-result-object v1

    goto :goto_0
.end method

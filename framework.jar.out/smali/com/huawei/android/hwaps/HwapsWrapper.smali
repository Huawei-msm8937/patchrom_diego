.class public Lcom/huawei/android/hwaps/HwapsWrapper;
.super Ljava/lang/Object;
.source "HwapsWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hwaps"

.field private static mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventAnalyzed()Lcom/huawei/android/hwaps/IEventAnalyzed;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/huawei/android/hwaps/HwapsWrapper;->getHwapsFactoryImpl()Lcom/huawei/android/hwaps/IHwapsFactory;

    move-result-object v0

    .line 93
    .local v0, "factory":Lcom/huawei/android/hwaps/IHwapsFactory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/android/hwaps/IHwapsFactory;->getEventAnalyzed()Lcom/huawei/android/hwaps/IEventAnalyzed;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFpsController()Lcom/huawei/android/hwaps/IFpsController;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/huawei/android/hwaps/HwapsWrapper;->getHwapsFactoryImpl()Lcom/huawei/android/hwaps/IHwapsFactory;

    move-result-object v0

    .line 79
    .local v0, "factory":Lcom/huawei/android/hwaps/IHwapsFactory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/android/hwaps/IHwapsFactory;->getFpsController()Lcom/huawei/android/hwaps/IFpsController;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFpsRequest()Lcom/huawei/android/hwaps/IFpsRequest;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/huawei/android/hwaps/HwapsWrapper;->getHwapsFactoryImpl()Lcom/huawei/android/hwaps/IHwapsFactory;

    move-result-object v0

    .line 65
    .local v0, "factory":Lcom/huawei/android/hwaps/IHwapsFactory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/android/hwaps/IHwapsFactory;->getFpsRequest()Lcom/huawei/android/hwaps/IFpsRequest;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getHwapsFactoryImpl()Lcom/huawei/android/hwaps/IHwapsFactory;
    .locals 6

    .prologue
    .line 33
    const-class v3, Lcom/huawei/android/hwaps/HwapsWrapper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 38
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    :try_start_1
    const-string v2, "com.huawei.android.hwaps.HwapsFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .restart local v0    # "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwaps/IHwapsFactory;

    sput-object v2, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_1
    :try_start_2
    sget-object v2, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;

    if-nez v2, :cond_1

    .line 49
    const-string v2, "Hwaps"

    const-string v4, "failes to get HwapsFactoryImpl"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    sget-object v2, Lcom/huawei/android/hwaps/HwapsWrapper;->mFactory:Lcom/huawei/android/hwaps/IHwapsFactory;

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Hwaps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 33
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 42
    :catch_1
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/InstantiationException;
    :try_start_3
    const-string v2, "Hwaps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Hwaps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

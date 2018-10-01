.class public Lcom/android/server/wifi/HwWifiServiceFactory;
.super Ljava/lang/Object;
.source "HwWifiServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwWifiServiceFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/HwWifiServiceFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getHwSupplicantHeartBeat(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwSupplicantHeartBeat;
    .locals 3
    .param p0, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 153
    const-string v1, "HwWifiServiceFactory"

    const-string v2, "getHwSupplicantHeartBeat() is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 155
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p0, p1}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwSupplicantHeartBeat(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwSupplicantHeartBeat;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWifiCHRConst()Lcom/android/server/wifi/HwWifiCHRConst;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 98
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiCHRConst()Lcom/android/server/wifi/HwWifiCHRConst;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWifiCHRService()Lcom/android/server/wifi/HwWifiCHRService;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 114
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiCHRService()Lcom/android/server/wifi/HwWifiCHRService;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWifiCHRStateManager()Lcom/android/server/wifi/HwWifiCHRStateManager;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 90
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiCHRStateManager()Lcom/android/server/wifi/HwWifiCHRStateManager;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWifiMonitor()Lcom/android/server/wifi/HwWifiMonitor;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 131
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiMonitor()Lcom/android/server/wifi/HwWifiMonitor;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWifiServiceManager()Lcom/android/server/wifi/HwWifiServiceManager;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 81
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiServiceManager()Lcom/android/server/wifi/HwWifiServiceManager;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/DummyHwWifiServiceManager;->getDefault()Lcom/android/server/wifi/HwWifiServiceManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwWifiStatStore()Lcom/android/server/wifi/HwWifiStatStore;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 106
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getHwWifiStatStore()Lcom/android/server/wifi/HwWifiStatStore;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    .locals 6

    .prologue
    .line 37
    sget-object v2, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    .line 55
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 40
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/server/wifi/HwWifiServiceFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 43
    :try_start_0
    const-string v2, "com.android.server.wifi.HwWifiServiceFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    sput-object v2, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    sget-object v2, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    if-eqz v2, :cond_1

    .line 51
    const-string v2, "HwWifiServiceFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v2, Lcom/android/server/wifi/HwWifiServiceFactory;->obj:Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwWifiServiceFactory"

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

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 54
    :cond_1
    const-string v2, "HwWifiServiceFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIsmCoexWifiStateTrack(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwIsmCoexWifiStateTrack;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 141
    const-string v1, "HwWifiServiceFactory"

    const-string v2, "getIsmCoexWifiStateTrack() is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 143
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->getIsmCoexWifiStateTrack(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HwIsmCoexWifiStateTrack;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initWifiCHRService(Landroid/content/Context;)V
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/huawei/connectivitylog/ConnectivityLogManager;->init(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/android/server/wifi/HwWifiServiceFactory;->getImplObject()Lcom/android/server/wifi/HwWifiServiceFactory$Factory;

    move-result-object v0

    .line 123
    .local v0, "obj":Lcom/android/server/wifi/HwWifiServiceFactory$Factory;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0}, Lcom/android/server/wifi/HwWifiServiceFactory$Factory;->initWifiCHRService(Landroid/content/Context;)V

    .line 126
    :cond_0
    return-void
.end method

.class public Lcom/huawei/pgmng/api/PGManager;
.super Ljava/lang/Object;
.source "PGManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PGManager"

.field private static sInstance:Lcom/huawei/pgmng/api/PGManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/huawei/pgmng/api/IPGManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/pgmng/api/PGManager;->sInstance:Lcom/huawei/pgmng/api/PGManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/huawei/pgmng/api/PGManager;->mContext:Landroid/content/Context;

    .line 25
    const-string v0, "pgservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/pgmng/api/IPGManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/pgmng/api/IPGManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/pgmng/api/PGManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/huawei/pgmng/api/PGManager;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/huawei/pgmng/api/PGManager;->sInstance:Lcom/huawei/pgmng/api/PGManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/huawei/pgmng/api/PGManager;

    invoke-direct {v0, p0}, Lcom/huawei/pgmng/api/PGManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/pgmng/api/PGManager;->sInstance:Lcom/huawei/pgmng/api/PGManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/huawei/pgmng/api/PGManager;->sInstance:Lcom/huawei/pgmng/api/PGManager;

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public forceReleaseWakeLockByPidUid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->forceReleaseWakeLockByPidUid(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "forceReleaseWakeLockByPidUid Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceRestoreWakeLockByPidUid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->forceRestoreWakeLockByPidUid(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "forceRestoreWakeLockByPidUid Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getWakeLockByUid(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "wakeflag"    # I

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "flag":Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v2, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->getWakeLockByUid(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "PGManager"

    const-string v3, "getWakeLockByUid Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public proxyApp(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proxy"    # Z

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/pgmng/api/IPGManager;->proxyApp(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "proxy app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public proxyBCConfig(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/pgmng/api/IPGManager;->proxyBCConfig(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "config proxy broadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public proxyBroadcast(Ljava/util/List;Z)J
    .locals 5
    .param p2, "proxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 46
    .local v0, "delay":J
    :try_start_0
    iget-object v3, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v3, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->proxyBroadcast(Ljava/util/List;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51
    :goto_0
    return-wide v0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    .line 49
    const-string v3, "PGManager"

    const-string v4, "proxy broadcast failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public proxyBroadcastByPid(Ljava/util/List;Z)J
    .locals 9
    .param p2, "proxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "delay":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v6, "spids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 65
    .local v4, "pid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "spid":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pid":Ljava/lang/Integer;
    .end local v5    # "spid":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 72
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v7, v6, p2}, Lcom/huawei/pgmng/api/IPGManager;->proxyBroadcastByPid(Ljava/util/List;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 77
    :goto_1
    return-wide v0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    .line 75
    const-string v7, "PGManager"

    const-string v8, "proxy broadcast by pid failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public proxyWakeLockByPidUid(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "proxy"    # Z

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/pgmng/api/IPGManager;->proxyWakeLockByPidUid(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "proxyWakeLockByPidUid Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActionExcludePkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->setActionExcludePkg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "set action exclude pkg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLcdRatio(IZ)V
    .locals 3
    .param p1, "ratio"    # I
    .param p2, "autoAdjust"    # Z

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1, p2}, Lcom/huawei/pgmng/api/IPGManager;->setLcdRatio(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "setLcdRatio Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProxyBCActions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/huawei/pgmng/api/PGManager;->mService:Lcom/huawei/pgmng/api/IPGManager;

    invoke-interface {v1, p1}, Lcom/huawei/pgmng/api/IPGManager;->setProxyBCActions(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PGManager"

    const-string v2, "set proxy broadcast actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

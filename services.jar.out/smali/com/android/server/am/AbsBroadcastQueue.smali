.class public abstract Lcom/android/server/am/AbsBroadcastQueue;
.super Ljava/lang/Object;
.source "AbsBroadcastQueue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueueProxyBroadcast(ZLcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isParallel"    # Z
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getMtmBRManager()Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMtmBRManagerEnabled()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public proxyBCConfig(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 64
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public proxyBroadcast(Ljava/util/List;Z)J
    .locals 2
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
    .line 30
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public proxyBroadcastByPid(Ljava/util/List;Z)J
    .locals 2
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
    .line 41
    .local p1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setActionExcludePkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public setProxyBCActions(Ljava/util/List;)V
    .locals 0
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
    .line 49
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public uploadRadarMessage(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "scene"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/server/HwCustMountService;
.super Ljava/lang/Object;
.source "HwCustMountService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSdInstallEnabled()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isSdVol(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPmsUpdate(Landroid/os/storage/VolumeInfo;I)V
    .locals 0
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"    # I

    .prologue
    .line 23
    return-void
.end method

.method public physicalWarnOnNotMounted(Landroid/util/ArrayMap;Lcom/android/server/NativeDaemonConnector;)V
    .locals 0
    .param p2, "Connector"    # Lcom/android/server/NativeDaemonConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;",
            "Lcom/android/server/NativeDaemonConnector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "Volumes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/storage/VolumeInfo;>;"
    return-void
.end method

.class public Landroid/app/HwCustApplicationPackageManager;
.super Ljava/lang/Object;
.source "HwCustApplicationPackageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwCustApplicationPackageManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getSDVolume(Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p1, "storage"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSdInstallEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isSdMoveabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isSdVol(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public removeMmsResolveInfo(Ljava/util/List;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

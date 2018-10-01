.class final Landroid/app/SystemServiceRegistry$43;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/WallpaperManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 501
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHuaweiWallpaperManager()Landroid/common/HwFrameworkFactory$IHwWallpaperManager;

    move-result-object v0

    .line 502
    .local v0, "iwm":Landroid/common/HwFrameworkFactory$IHwWallpaperManager;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/common/HwFrameworkFactory$IHwWallpaperManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$43;->createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

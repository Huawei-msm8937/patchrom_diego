.class final Landroid/app/SystemServiceRegistry$10;
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
        "Landroid/vr/VrServiceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/vr/VrServiceManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 224
    const-string/jumbo v2, "vr_display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 225
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/vr/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/vr/IVRManagerService;

    move-result-object v1

    .line 226
    .local v1, "service":Landroid/vr/IVRManagerService;
    new-instance v2, Landroid/vr/VrServiceManager;

    invoke-direct {v2, v1, p1}, Landroid/vr/VrServiceManager;-><init>(Landroid/vr/IVRManagerService;Landroid/content/Context;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$10;->createService(Landroid/app/ContextImpl;)Landroid/vr/VrServiceManager;

    move-result-object v0

    return-object v0
.end method

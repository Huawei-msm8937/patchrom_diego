.class Lcom/android/server/location/GpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 489
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "pkgName":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->addListener(Landroid/os/IInterface;Ljava/lang/String;)Z

    .line 492
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 497
    return-void
.end method

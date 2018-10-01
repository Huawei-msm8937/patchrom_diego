.class Lcom/android/server/location/GpsLocationProvider$7;
.super Lcom/android/server/location/GpsFreezeListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
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
    .line 860
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Lcom/android/server/location/GpsFreezeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreezeProChange()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    monitor-exit v1

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

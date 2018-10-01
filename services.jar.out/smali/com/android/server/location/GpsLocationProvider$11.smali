.class Lcom/android/server/location/GpsLocationProvider$11;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->startCacheThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2070
    const-string v2, "GpsLocationProvider"

    const-string v3, "mGpsDataThread begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mGpsDatas:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_0

    .line 2073
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGpsDatas too large :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mGpsDatas:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mGpsDatas:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 2078
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mGpsDatas:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider$GpsData;

    .line 2079
    .local v1, "gpsData":Lcom/android/server/location/GpsLocationProvider$GpsData;
    invoke-interface {v1}, Lcom/android/server/location/GpsLocationProvider$GpsData;->send()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2080
    .end local v1    # "gpsData":Lcom/android/server/location/GpsLocationProvider$GpsData;
    :catch_0
    move-exception v0

    .line 2081
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "mGpsDatas send error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

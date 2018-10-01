.class Lcom/android/server/location/GeofenceManager$1;
.super Lcom/android/server/location/GpsFreezeListener;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0}, Lcom/android/server/location/GpsFreezeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreezeProChange()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    # getter for: Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$000(Lcom/android/server/location/GeofenceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    # setter for: Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GeofenceManager;->access$002(Lcom/android/server/location/GeofenceManager;Z)Z

    .line 124
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    # getter for: Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$100(Lcom/android/server/location/GeofenceManager;)Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    .line 126
    :cond_0
    return-void
.end method

.class Lcom/android/server/location/AgpsConnectProvider$1;
.super Landroid/database/ContentObserver;
.source "AgpsConnectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/AgpsConnectProvider;->checkGpsEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/AgpsConnectProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/AgpsConnectProvider;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider$1;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$1;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "sys.gps_provider_enabled"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    const-string v0, "sys.gps_provider_enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

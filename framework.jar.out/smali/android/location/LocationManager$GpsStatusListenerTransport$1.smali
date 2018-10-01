.class Landroid/location/LocationManager$GpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1507
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_0

    .line 1508
    const/4 v5, 0x0

    .line 1509
    .local v5, "tempNmeaBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;>;"
    iget-object v6, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    # getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1510
    :try_start_0
    iget-object v6, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    # getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 1511
    iget-object v6, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    # getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1512
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    if-eqz v5, :cond_1

    .line 1514
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1515
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1516
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    .line 1517
    .local v4, "nmea":Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    iget-object v6, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    # getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;
    invoke-static {v6}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;

    move-result-object v6

    iget-wide v8, v4, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    iget-object v7, v4, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v7}, Landroid/location/GpsStatus$NmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1512
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "nmea":Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1523
    .end local v5    # "tempNmeaBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;>;"
    :cond_0
    iget-object v6, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    # getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v6}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$600(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-interface {v6, v7}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 1527
    :cond_1
    return-void
.end method

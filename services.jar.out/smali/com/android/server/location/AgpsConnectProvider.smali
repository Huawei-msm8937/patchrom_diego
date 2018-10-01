.class public Lcom/android/server/location/AgpsConnectProvider;
.super Ljava/lang/Object;
.source "AgpsConnectProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;,
        Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final CLOSE_SOCKET:I = 0x0

.field private static final CREATE_SOCKET:I = 0x1

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DATASTATUS:Ljava/lang/String; = "dataStatus"

.field private static final DEBUG:Z = true

.field private static final DEBUGE_OVER:Z = false

.field private static final DEFAULT_DATASTATUS:I = 0x1

.field private static final FINISH_DATA_CONNECT:I = 0x0

.field private static final GPSRPC_SERVER_MPC:I = 0x1

.field private static final GPSRPC_SERVER_NULL:I = 0x0

.field private static final GPSRPC_SERVER_PDE:I = 0x2

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final IS_CDMA_GSM:Z

.field private static final IS_HISI_CDMA_SUPPORTED:Z

.field private static final LEN:Ljava/lang/String; = "len"

.field private static final MPC_SERVICE_ID:I = 0x1

.field private static final PORT:Ljava/lang/String; = "port"

.field private static final SERVER:Ljava/lang/String; = "server"

.field private static final STATUS_CLOSE:I = 0x0

.field private static final STATUS_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AgpsConnectProvider"

.field private static final TRIGGERMODE:Ljava/lang/String; = "triggerMode"

.field private static final TRIGGERMODE_NI:I = 0x1

.field private static final delaytime:J = 0x1388L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

.field private mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "ro.config.dsds_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_CDMA_GSM:Z

    .line 70
    const-string v0, "ro.config.hisi_cdma_supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_HISI_CDMA_SUPPORTED:Z

    .line 98
    sget-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_HISI_CDMA_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "xmodemgpsrpc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    :goto_0
    const-string v0, "AgpsConnectProvider"

    const-string v1, "load library "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/android/server/location/AgpsConnectProvider;->class_init_native()V

    .line 106
    return-void

    .line 101
    :cond_0
    const-string v0, "huaweigpsrpc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v1, "AgpsConnectProvider"

    const-string v2, "AgpsConnectProvider init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider;->init_native_gpsrpc_object()V

    .line 113
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AgpsConnectProvider"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/AgpsConnectProvider;->mThread:Landroid/os/HandlerThread;

    .line 115
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v1, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;-><init>(Lcom/android/server/location/AgpsConnectProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    .line 117
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 118
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    const-string v1, "AgpsConnectProvider"

    const-string v2, "send msg to handle init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider;->checkGpsEnable()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/AgpsConnectProvider;I[BI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_data(I[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_HISI_CDMA_SUPPORTED:Z

    return v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/android/server/location/AgpsConnectProvider;->start_socket()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/AgpsConnectProvider;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider;->mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/location/AgpsConnectProvider;Lcom/android/server/location/AgpsConnectProvider$SocketThread;)Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;
    .param p1, "x1"    # Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider;->mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/AgpsConnectProvider;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    return-object v0
.end method

.method private checkDataConnect(II)V
    .locals 5
    .param p1, "triggerMode"    # I
    .param p2, "dataStatus"    # I

    .prologue
    .line 602
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 603
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 605
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "triggerMode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string v2, "dataStatus"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 608
    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    const-string v2, "AgpsConnectProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter checkDataConnect,triggerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,dataStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method

.method private checkGpsEnable()V
    .locals 5

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/location/AgpsConnectProvider$1;

    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/AgpsConnectProvider$1;-><init>(Lcom/android/server/location/AgpsConnectProvider;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 675
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "sys.gps_provider_enabled"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "sys.gps_provider_enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native class_init_native()V
.end method

.method private controlSocketConnect(IILjava/lang/String;I)V
    .locals 5
    .param p1, "server"    # I
    .param p2, "action"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 621
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 622
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v2, "address"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "port"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    const-string v2, "AgpsConnectProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlSocketConnect,server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method public static createAgpsConnectProvider(Landroid/content/Context;)Lcom/android/server/location/AgpsConnectProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 651
    sget-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_CDMA_GSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_HISI_CDMA_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    new-instance v0, Lcom/android/server/location/AgpsConnectProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/AgpsConnectProvider;-><init>(Landroid/content/Context;)V

    .line 656
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSocket(I[BI)V
    .locals 5
    .param p1, "server"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 638
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 639
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 640
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 641
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 643
    const-string v2, "len"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 645
    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    const-string v2, "AgpsConnectProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSocket,server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private native init_native_gpsrpc_object()V
.end method

.method private jnitest()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "AgpsConnectProvider"

    const-string v1, "jni test callback success!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private native native_agps_data_conn_status(I)I
.end method

.method private native native_agps_sock_data(I[BI)I
.end method

.method private native native_agps_sock_status(II)I
.end method

.method public static setPostionMode(ILandroid/content/Context;)I
    .locals 2
    .param p0, "oldPositionMode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    sget-boolean v0, Lcom/android/server/location/AgpsConnectProvider;->IS_CDMA_GSM:Z

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const-string v0, "AgpsConnectProvider"

    const-string v1, "set GPS_POSITION_MODE_STANDALONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 p0, 0x0

    .line 691
    .end local p0    # "oldPositionMode":I
    :cond_0
    return p0
.end method

.method private static native start_socket()V
.end method

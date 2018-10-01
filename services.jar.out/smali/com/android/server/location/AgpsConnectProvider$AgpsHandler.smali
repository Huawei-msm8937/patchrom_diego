.class Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
.super Landroid/os/Handler;
.source "AgpsConnectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AgpsConnectProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgpsHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CTWAP_INTERVAL:J = 0x6ddd00L

.field private static final FORBIDEN_AGPS_IN_2_HOURS_SWITCH:Ljava/lang/String; = "forbiden_agps_in_2_hours"

.field private static final FORBIDEN_OPEN:I = 0x1

.field private static final FORCE_START_DOING:I = 0x1

.field private static final FORCE_START_ERROR:I = 0x2

.field private static final FORCE_START_READY:I = 0x0

.field private static final FORE_OPEN:J = 0x0L

.field private static final FORE_OPEN_DATA_TIMEOUT:J = 0x2bf20L

.field private static final MSG_CHECK_CONNECT:I = 0x64

.field private static final MSG_CONTROL_SOCKET_CONNECT:I = 0x65

.field private static final MSG_FORE_OPEN_DATA_SUCCESS:I = 0x69

.field private static final MSG_FORE_OPEN_DATA_TIMEOUT:I = 0x68

.field private static final MSG_HANDLE_SOCKET:I = 0x66

.field private static final MSG_INIT:I = 0x67

.field private static final RESULT_CONNECTED:I = 0x1

.field private static final RESULT_IDLE:I = 0x0

.field private static final SOCKET_MODE:I = 0x1


# instance fields
.field private mLastMsgTime:J

.field private mLastSwitchTime:J

.field private mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

.field private mSocketMPC:Ljava/net/Socket;

.field private mSocketPDE:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/location/AgpsConnectProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/AgpsConnectProvider;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastSwitchTime:J

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastMsgTime:J

    .line 197
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->renewSuplConnectivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleInit()V

    return-void
.end method

.method private addRoute(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 369
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 370
    .local v2, "inetAddr":Ljava/net/InetAddress;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    const-string v3, "AgpsConnectProvider"

    const-string v4, "add roater, fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private forceOpenData(Landroid/net/ConnectivityManager;)I
    .locals 4
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    const-string v3, "enableSUPL"

    invoke-virtual {p1, v1, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 409
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 411
    const-string v2, "AgpsConnectProvider"

    const-string v3, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return v1

    .line 413
    :cond_0
    if-ne v0, v2, :cond_1

    .line 415
    const-string v1, "AgpsConnectProvider"

    const-string v3, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 416
    goto :goto_0

    .line 419
    :cond_1
    const-string v1, "AgpsConnectProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private handleCheckConnect(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 426
    const-string v9, "triggerMode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 427
    .local v8, "triggerMode":I
    const-string v9, "dataStatus"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 428
    .local v1, "dataStatus":I
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 430
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 433
    :cond_0
    if-nez v1, :cond_2

    .line 435
    const/4 v9, 0x0

    const-string v10, "enableSUPL"

    invoke-virtual {v0, v9, v10}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 437
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "forbiden_agps_in_2_hours"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastSwitchTime:J

    .line 441
    :cond_1
    const-string v9, "AgpsConnectProvider"

    const-string v10, "Close data call ,call stopUsingNetworkFeature"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_2
    const/4 v5, 0x0

    .line 446
    .local v5, "isConnect":Z
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 448
    const-string v9, "AgpsConnectProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isConnect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez v5, :cond_3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 450
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v9, v10}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto :goto_0

    .line 454
    :cond_3
    const/4 v4, 0x0

    .line 456
    .local v4, "isCdmaType":Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_sim_data_call"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 457
    .local v7, "subscription":I
    const/4 v9, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v4, 0x1

    .line 458
    :goto_1
    const-string v9, "AgpsConnectProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCdmaType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v7    # "subscription":I
    :goto_2
    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 463
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v9, v10}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto/16 :goto_0

    .line 457
    .restart local v7    # "subscription":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 459
    .end local v7    # "subscription":I
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 467
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "forbiden_agps_in_2_hours"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 469
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    iget-wide v10, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastSwitchTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastSwitchTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x6ddd00

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 471
    const-string v9, "AgpsConnectProvider"

    const-string v10, "forbidden"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v9, v10}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto/16 :goto_0

    .line 477
    :cond_6
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v9}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->forceOpenData(Landroid/net/ConnectivityManager;)I

    move-result v3

    .line 479
    .local v3, "feature":I
    if-nez v3, :cond_7

    .line 480
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v9, v10}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto/16 :goto_0

    .line 481
    :cond_7
    const/4 v9, 0x1

    if-ne v3, v9, :cond_8

    .line 482
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->startReceiver()V

    .line 483
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 484
    .local v6, "msg":Landroid/os/Message;
    const/16 v9, 0x68

    iput v9, v6, Landroid/os/Message;->what:I

    .line 485
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    invoke-static {v9}, Lcom/android/server/location/AgpsConnectProvider;->access$800(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    move-result-object v9

    const-wide/32 v10, 0x2bf20

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 487
    .end local v6    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v9, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v9, v10}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto/16 :goto_0
.end method

.method private handleControlSocketConnet(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 280
    const-string v5, "AgpsConnectProvider"

    const-string v6, "enter handleControlSocketConnet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v5, "server"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 282
    .local v4, "server":I
    const-string v5, "action"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "action":I
    const-string v5, "address"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "address":Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, "port":I
    if-ne v0, v9, :cond_1

    .line 287
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->startConnection(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    const-string v5, "AgpsConnectProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect success, address :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I
    invoke-static {v5, v4, v9}, Lcom/android/server/location/AgpsConnectProvider;->access$400(Lcom/android/server/location/AgpsConnectProvider;II)I

    .line 322
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I
    invoke-static {v5, v4, v8}, Lcom/android/server/location/AgpsConnectProvider;->access$400(Lcom/android/server/location/AgpsConnectProvider;II)I

    .line 295
    const-string v5, "AgpsConnectProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect fail, address :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_1
    if-nez v0, :cond_4

    .line 300
    if-ne v4, v9, :cond_3

    .line 301
    :try_start_0
    const-string v5, "AgpsConnectProvider"

    const-string v6, "Close MPC_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;

    if-eqz v5, :cond_2

    .line 303
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 304
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_2
    :goto_1
    const-string v5, "AgpsConnectProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "native_agps_sock_status, server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,status  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I
    invoke-static {v5, v4, v8}, Lcom/android/server/location/AgpsConnectProvider;->access$400(Lcom/android/server/location/AgpsConnectProvider;II)I

    goto :goto_0

    .line 307
    :cond_3
    :try_start_1
    const-string v5, "AgpsConnectProvider"

    const-string v6, "Close PDE_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;

    if-eqz v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 310
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "AgpsConnectProvider"

    const-string v6, "close socket IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    const-string v5, "AgpsConnectProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleForeOpenDataSuccess()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v0, v1}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    .line 403
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    invoke-static {v0}, Lcom/android/server/location/AgpsConnectProvider;->access$800(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->removeMessages(I)V

    .line 404
    return-void
.end method

.method private handleForeOpenDataTimeout()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v0, v1}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    .line 381
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    .line 385
    :cond_0
    return-void
.end method

.method private handleInit()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "AgpsConnectProvider"

    const-string v1, "handle init obj"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    # invokes: Lcom/android/server/location/AgpsConnectProvider;->start_socket()V
    invoke-static {}, Lcom/android/server/location/AgpsConnectProvider;->access$300()V

    .line 255
    return-void
.end method

.method private handleSocketCommunication(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 258
    const-string v1, "server"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "server":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "AgpsConnectProvider"

    const-string v2, "mSocketMPC == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I
    invoke-static {v1, v0, v3}, Lcom/android/server/location/AgpsConnectProvider;->access$400(Lcom/android/server/location/AgpsConnectProvider;II)I

    .line 277
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v1, "AgpsConnectProvider"

    const-string v2, "Create MPC_SERVICE SocketThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    new-instance v2, Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    iget-object v3, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/location/AgpsConnectProvider$SocketThread;-><init>(Lcom/android/server/location/AgpsConnectProvider;Ljava/net/Socket;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/location/AgpsConnectProvider;->mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    invoke-static {v1, v2}, Lcom/android/server/location/AgpsConnectProvider;->access$502(Lcom/android/server/location/AgpsConnectProvider;Lcom/android/server/location/AgpsConnectProvider$SocketThread;)Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    .line 276
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$500(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/AgpsConnectProvider$SocketThread;->start()V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;

    if-nez v1, :cond_2

    .line 269
    const-string v1, "AgpsConnectProvider"

    const-string v2, "mSocketPDE == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_sock_status(II)I
    invoke-static {v1, v0, v3}, Lcom/android/server/location/AgpsConnectProvider;->access$400(Lcom/android/server/location/AgpsConnectProvider;II)I

    goto :goto_0

    .line 273
    :cond_2
    const-string v1, "AgpsConnectProvider"

    const-string v2, "Create PDE_SERVICE SocketThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    new-instance v2, Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    iget-object v3, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    iget-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/location/AgpsConnectProvider$SocketThread;-><init>(Lcom/android/server/location/AgpsConnectProvider;Ljava/net/Socket;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/location/AgpsConnectProvider;->mSocketThread:Lcom/android/server/location/AgpsConnectProvider$SocketThread;
    invoke-static {v1, v2}, Lcom/android/server/location/AgpsConnectProvider;->access$502(Lcom/android/server/location/AgpsConnectProvider;Lcom/android/server/location/AgpsConnectProvider$SocketThread;)Lcom/android/server/location/AgpsConnectProvider$SocketThread;

    goto :goto_1
.end method

.method private renewSuplConnectivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 580
    const-string v1, "AgpsConnectProvider"

    const-string v2, "renewSuplConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->forceOpenData(Landroid/net/ConnectivityManager;)I

    move-result v0

    .line 583
    .local v0, "feature":I
    if-nez v0, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v1, v3}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mHandler:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$800(Lcom/android/server/location/AgpsConnectProvider;)Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->removeMessages(I)V

    .line 593
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    .line 597
    :cond_0
    :goto_1
    return-void

    .line 585
    :cond_1
    if-ne v0, v3, :cond_2

    .line 587
    const-string v1, "AgpsConnectProvider"

    const-string v2, "   FORCE_START_DOING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/location/AgpsConnectProvider;->native_agps_data_conn_status(I)I
    invoke-static {v1, v2}, Lcom/android/server/location/AgpsConnectProvider;->access$700(Lcom/android/server/location/AgpsConnectProvider;I)I

    goto :goto_0
.end method

.method private startConnection(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "server"    # I

    .prologue
    const/4 v5, 0x1

    .line 325
    const/4 v3, 0x0

    .line 326
    .local v3, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 327
    .local v1, "retryNum":I
    invoke-direct {p0, p1}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->addRoute(Ljava/lang/String;)V

    move-object v4, v3

    .line 328
    .end local v3    # "socket":Ljava/net/Socket;
    .local v4, "socket":Ljava/net/Socket;
    :goto_0
    if-nez v4, :cond_2

    .line 329
    const/4 v6, 0x2

    if-le v1, v6, :cond_0

    .line 330
    const-string v5, "AgpsConnectProvider"

    const-string v6, "socket is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v5, 0x0

    .line 361
    :goto_1
    return v5

    .line 336
    :cond_0
    :try_start_0
    const-string v6, "AgpsConnectProvider"

    const-string v7, "create new Socket"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 338
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :try_start_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 339
    .local v2, "socAddress":Ljava/net/SocketAddress;
    const/16 v6, 0x3a98

    invoke-virtual {v3, v2, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 347
    .end local v2    # "socAddress":Ljava/net/SocketAddress;
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    const/4 v3, 0x0

    .line 349
    const-string v6, "AgpsConnectProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connect fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 341
    .end local v4    # "socket":Ljava/net/Socket;
    .local v0, "e":Ljava/net/UnknownHostException;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_3
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2

    .line 342
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 343
    .end local v4    # "socket":Ljava/net/Socket;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v0

    move-object v3, v4

    .line 345
    .end local v4    # "socket":Ljava/net/Socket;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    :cond_2
    if-ne p3, v5, :cond_3

    .line 354
    const-string v6, "AgpsConnectProvider"

    const-string v7, "Create MPC_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketMPC:Ljava/net/Socket;

    goto :goto_1

    .line 357
    :cond_3
    const-string v6, "AgpsConnectProvider"

    const-string v7, "Create PDE_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-object v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mSocketPDE:Ljava/net/Socket;

    goto :goto_1

    .line 344
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    goto :goto_5

    .line 342
    :catch_4
    move-exception v0

    goto :goto_4

    .line 340
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private startReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    iput-object v3, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    .line 496
    :cond_0
    new-instance v1, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;Lcom/android/server/location/AgpsConnectProvider$1;)V

    iput-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    .line 497
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 498
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->this$0:Lcom/android/server/location/AgpsConnectProvider;

    # getter for: Lcom/android/server/location/AgpsConnectProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/AgpsConnectProvider;->access$600(Lcom/android/server/location/AgpsConnectProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mReceiver:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x32

    .line 201
    const-string v4, "AgpsConnectProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    # getter for: Lcom/android/server/location/AgpsConnectProvider;->IS_HISI_CDMA_SUPPORTED:Z
    invoke-static {}, Lcom/android/server/location/AgpsConnectProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "delayedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastMsgTime:J

    sub-long v2, v4, v6

    .line 207
    .local v2, "intervalTime":J
    const-string v4, "AgpsConnectProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interval between msg is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    .line 209
    sub-long v0, v8, v2

    .line 210
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 211
    const-wide/16 v0, 0x32

    .line 214
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->mLastMsgTime:J

    .line 222
    .end local v0    # "delayedTime":J
    .end local v2    # "intervalTime":J
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 249
    :goto_1
    return-void

    .line 224
    :pswitch_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$1;-><init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 231
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleCheckConnect(Landroid/os/Bundle;)V

    goto :goto_1

    .line 234
    :pswitch_2
    const-string v4, "AgpsConnectProvider"

    const-string v5, "enter case MSG_CONTROL_SOCKET_CONNECT:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleControlSocketConnet(Landroid/os/Bundle;)V

    goto :goto_1

    .line 238
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleSocketCommunication(Landroid/os/Bundle;)V

    goto :goto_1

    .line 241
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleForeOpenDataTimeout()V

    goto :goto_1

    .line 244
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleForeOpenDataSuccess()V

    goto :goto_1

    .line 215
    .restart local v0    # "delayedTime":J
    .restart local v2    # "intervalTime":J
    :catch_0
    move-exception v4

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

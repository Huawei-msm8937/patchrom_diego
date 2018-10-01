.class public Lcom/android/internal/telephony/cat/BipProxy;
.super Landroid/os/Handler;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$1;,
        Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;,
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$BipChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;,
        Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;,
        Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    }
.end annotation


# static fields
.field static final CHANNEL_CLOSED:I = 0x2

.field static final CHANNEL_IDENTIFIER_NOT_VALID:I = 0x3

.field static final CH_STATUS_LINK_DROP:I = 0x5

.field static final CMD_QUAL_AUTO_RECONN:I = 0x2

.field static final CMD_QUAL_BACKGROUND:I = 0x4

.field static final CMD_QUAL_IMMEDIATE_LINK_ESTABLISH:I = 0x1

.field private static final DEFAULT_DC_TIMEOUT:I = 0x2bf20

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x249f0

.field static final EVENT_DC_TIMEOUT:I = 0x64

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x63

.field static final MAX_CHANNEL_NUM:I = 0x7

.field static final MAX_LEN_OF_CHANNEL_DATA:I = 0xec

.field static final MAX_TCP_SERVER_CHANNEL_NUM:I = 0x3

.field static final MAX_TCP_SERVER_CLIENT_CHANNEL_NUM:I = 0xf

.field static final MSG_ID_DATA_STATE_CHANGED:I = 0xc

.field static final MSG_ID_GET_DATA_STATE:I = 0xd

.field static final MSG_ID_SETUP_DATA_CALL:I = 0xa

.field static final MSG_ID_TEARDOWN_DATA_CALL:I = 0xb

.field static final NO_CHANNEL_AVAILABLE:I = 0x1

.field static final NO_SPECIFIC_CAUSE_CAN_BE_GIVEN:I = 0x0

.field static final REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final REQUESTED_SIM_ME_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final SECURITY_ERROR:I = 0x5

.field static final TCP_CHANNEL_BUFFER_SIZE:I = 0x4000

.field static final UDP_CHANNEL_BUFFER_SIZE:I = 0x5dc

.field static final mSupportBipWifi:Z


# instance fields
.field private mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

.field private mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

.field private mContext:Landroid/content/Context;

.field private mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

.field mImmediateLinkEstablish:Z

.field protected mIsWifiConnected:[Z

.field private mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWakeLockTimeout:I

.field openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "ro.config.bip_over_wlan"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->mSupportBipWifi:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 4
    .param p1, "stkService"    # Lcom/android/internal/telephony/cat/CatService;
    .param p2, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x7

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 103
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    .line 105
    new-array v1, v2, [Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .line 106
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    .line 108
    new-array v1, v2, [Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    .line 143
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsWifiConnected:[Z

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    .line 149
    new-instance v1, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    .line 151
    const-string v1, "power"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 152
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "BipProxy"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 154
    const v1, 0x249f0

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLockTimeout:I

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->checkSetStatusOrNot(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mServerChannels:[Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/BipProxy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 794
    :try_start_0
    const-string v1, "acquireWakeLock."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 797
    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 798
    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLockTimeout:I

    int-to-long v4, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 800
    monitor-exit v2

    .line 801
    return-void

    .line 800
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private allChannelsClosed()Z
    .locals 5

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .local v0, "arr$":[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 350
    .local v1, "channel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v1, :cond_0

    .line 351
    const-string v4, "not all Channels Closed"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    const/4 v4, 0x0

    .line 356
    .end local v1    # "channel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :goto_1
    return v4

    .line 349
    .restart local v1    # "channel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "channel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_1
    const-string v4, "all Channels Closed"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private cancelDataConnectionTimer()V
    .locals 1

    .prologue
    .line 786
    const-string v0, "cancelDataConnectionTimer."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 788
    return-void
.end method

.method private checkSetStatusOrNot(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 5
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v4, 0x5

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->getChannelId(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v0

    .line 539
    .local v0, "channel":I
    add-int/lit8 v1, v0, -0x1

    .line 541
    .local v1, "index":I
    if-lez v0, :cond_0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 542
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetStatusOrNot, channel_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is invalid, just return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetStatusOrNot, mBipChannel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, just return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ne v4, v2, :cond_3

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetStatusOrNot, mBipChannel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already link droped, just return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetStatusOrNot, mBipChannel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] CH_STATUS_LINK_DROP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v1

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->setStatus(I)V

    goto :goto_0
.end method

.method private cleanupBipChannel(I)V
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 361
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->stopListening()V

    .line 364
    :cond_0
    return-void
.end method

.method private clearWakeLock()V
    .locals 2

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const-string v0, "clearWakeLock."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 808
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 810
    :cond_0
    monitor-exit v1

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getBipCapability(Ljava/lang/String;)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    const/16 v0, 0x12

    .line 501
    .local v0, "cap":I
    const-string v1, "enableBIP0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    const/16 v0, 0x12

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    const-string v1, "enableBIP1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const/16 v0, 0x13

    goto :goto_0

    .line 505
    :cond_2
    const-string v1, "enableBIP2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    const/16 v0, 0x14

    goto :goto_0

    .line 507
    :cond_3
    const-string v1, "enableBIP3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    const/16 v0, 0x15

    goto :goto_0

    .line 509
    :cond_4
    const-string v1, "enableBIP4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 510
    const/16 v0, 0x16

    goto :goto_0

    .line 511
    :cond_5
    const-string v1, "enableBIP5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    const/16 v0, 0x17

    goto :goto_0

    .line 513
    :cond_6
    const-string v1, "enableBIP6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/16 v0, 0x18

    goto :goto_0
.end method

.method private getChannelId(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "channel":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_1

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 533
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    return v0

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_0

    .line 529
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    goto :goto_0
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 710
    if-nez p1, :cond_1

    .line 711
    const-string v0, "onSetupConnectionCompleted ar null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 717
    .local v6, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to setup data connection for channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v1, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 721
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 722
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    .line 723
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanChannelApnInfo(I)V

    goto :goto_0

    .line 725
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup data connection for channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    if-nez v0, :cond_4

    .line 728
    :cond_3
    const-string v0, "Succeeded to setup data connection for channel - Default bearer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    :cond_4
    const-string v0, "Continue processing open channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const-string v0, "fail to open channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0
.end method

.method private onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 747
    if-nez p1, :cond_1

    .line 748
    const-string v3, "onTeardownConnectionCompleted ar null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 754
    .local v1, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_3

    .line 755
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 762
    .local v0, "channel":I
    :goto_1
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to teardown data connection for channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 756
    .end local v0    # "channel":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_0

    .line 757
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .restart local v0    # "channel":I
    goto :goto_1

    .line 765
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succedded to teardown data connection for channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    .line 767
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " link drop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v2

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->setStatus(I)V

    .line 766
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private sendChannelStatusEvent(I)V
    .locals 5
    .param p1, "channelStatus"    # I

    .prologue
    .line 367
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 368
    .local v0, "additionalInfo":[B
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 369
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChannelStatusEvent channelStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    new-instance v2, Lcom/android/internal/telephony/cat/CatEventMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/EventCode;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/EventCode;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/telephony/cat/CatEventMessage;-><init>(I[BZ)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatEventMessage;)V

    .line 375
    return-void

    .line 367
    :array_0
    .array-data 1
        -0x48t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendDataAvailableEvent(II)V
    .locals 5
    .param p1, "channelStatus"    # I
    .param p2, "dataAvailable"    # I

    .prologue
    .line 378
    const/4 v1, 0x7

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 379
    .local v0, "additionalInfo":[B
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 380
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 381
    const/4 v1, 0x6

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataAvailableEvent channelStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    new-instance v2, Lcom/android/internal/telephony/cat/CatEventMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/EventCode;->DATA_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/EventCode;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/telephony/cat/CatEventMessage;-><init>(I[BZ)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatEventMessage;)V

    .line 387
    return-void

    .line 378
    :array_0
    .array-data 1
        -0x48t
        0x2t
        0x0t
        0x0t
        -0x49t
        0x1t
        0x0t
    .end array-data
.end method

.method private setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 617
    const/4 v9, 0x0

    .line 618
    .local v9, "result":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v8

    .line 620
    .local v8, "newChannel":Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v2, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v1, v2, :cond_0

    iget-object v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v2, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v1, v2, :cond_0

    .line 622
    const-string v1, "No data connection needed for this channel"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    :goto_0
    return v0

    .line 626
    :cond_0
    iget-object v6, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 629
    .local v6, "bd":Lcom/android/internal/telephony/cat/BearerDescription;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bd.type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isWifiConnectedFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v2, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v4, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {v3, v4, p1}, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;-><init>(ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    aput-object v3, v1, v2

    .line 633
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsWifiConnected:[Z

    iget v2, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 639
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_2

    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    :goto_1
    move v0, v9

    .line 657
    goto :goto_0

    .line 641
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->E_UTRAN:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_4

    .line 644
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_1

    .line 647
    :cond_4
    const-string v0, "Unsupported bearer type"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 650
    :catch_0
    move-exception v7

    .line 651
    .local v7, "csfe":Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDataConnection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    .line 654
    iget v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_1
.end method

.method private setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 398
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 399
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    .line 402
    .local v2, "newChannel":Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v7, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {v6, v7, p1}, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;-><init>(ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    aput-object v6, v4, v5

    .line 404
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsWifiConnected:[Z

    iget v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 409
    const-string v4, "gsm.bip.apn"

    const-string v5, "default"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v4, "setupDefaultDataConnection"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/BipProxy;->getBipCapability(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, "cap":I
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v4, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 415
    .local v3, "request":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v7, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    invoke-direct {v5, p0, v6, p1}, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;-><init>(Lcom/android/internal/telephony/cat/BipProxy;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v5, v4, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    .line 417
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->startDataConnectionTimer(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 423
    return v8
.end method

.method private setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 14
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 433
    .local v8, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 434
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v11

    .line 436
    .local v11, "newChannel":Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 437
    const-string v0, "no accessname for PS bearer req"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    .line 493
    :goto_0
    return v0

    .line 442
    :cond_0
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    .line 443
    .local v10, "networkType":I
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v9

    .line 445
    .local v9, "networkClass":I
    if-eq v3, v9, :cond_1

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer not setup, busy on voice call, networkClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v0, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 449
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 450
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "Busy on voice call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    const-string v1, "Detected new data connection parameters"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 458
    const-string v1, ""

    iput-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 460
    :cond_3
    iget-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 461
    const-string v1, ""

    iput-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    .line 470
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v4, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {v3, v4, p1}, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;-><init>(ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    aput-object v3, v1, v2

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsWifiConnected:[Z

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bipapn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", , , , , , ,3 , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v3, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "apnstring":Ljava/lang/String;
    const-string v1, "gsm.bip.apn"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "setupSpecificPdpConnection"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->getBipCapability(Ljava/lang/String;)I

    move-result v7

    .line 484
    .local v7, "cap":I
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v12

    .line 485
    .local v12, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v4, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;-><init>(Lcom/android/internal/telephony/cat/BipProxy;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    iget v2, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    invoke-virtual {v8, v12, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->startDataConnectionTimer(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0
.end method

.method private startDataConnectionTimer(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->cancelDataConnectionTimer()V

    .line 780
    const-string v1, "startDataConnectionTimer."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    const/16 v1, 0x64

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "msg":Landroid/os/Message;
    const-wide/32 v2, 0x2bf20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 783
    return-void
.end method

.method private declared-synchronized teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 5
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 669
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 672
    .local v0, "channel":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->getChannelId(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v0

    .line 673
    if-lez v0, :cond_0

    const/4 v3, 0x7

    if-le v0, v3, :cond_1

    .line 674
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teardownDataConnection, channel_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is invalid, just return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    monitor-exit p0

    return v2

    .line 679
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teardownDataConnection channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teardownDataConnection mChannelApnInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    .end local v0    # "channel":I
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 688
    .restart local v0    # "channel":I
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getWifiConnectedFlag()Z

    move-result v2

    if-nez v2, :cond_4

    .line 690
    const-string v2, "teardownDataConnection begin"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    if-eqz v2, :cond_3

    .line 694
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 695
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

    .line 696
    const-string v2, "unregisterNetworkCallback"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    :cond_3
    const-string v2, "teardownDataConnection end"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanChannelApnInfo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    const/4 v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public canHandleNewChannel()Z
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found. new channel can be handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x1

    .line 176
    :goto_1
    return v1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "new channel can\'t be handled"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cleanChannelApnInfo(I)V
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanChannelApnInfo, channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mChannelApnInfo:[Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 948
    return-void
.end method

.method public handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 20
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 190
    if-nez p1, :cond_1

    .line 191
    const-string v2, "handleBipCommand null cmdMsg"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v18

    if-eqz v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBipCommand handle channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v18

    invoke-interface {v2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->onSessionEnd()V

    .line 192
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 201
    .end local v18    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v16

    .line 202
    .local v16, "curCmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBipCommand curCmdType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channelSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cmd_qual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->mSupportBipWifi:Z

    if-nez v2, :cond_2

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->setWifiConnectedFlag(Z)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBipCommand, mSupportBipWifi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->mSupportBipWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 341
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 342
    .end local v16    # "curCmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_4
    :goto_1
    return-void

    .line 216
    .restart local v16    # "curCmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v14

    .line 218
    .local v14, "channelSettings":Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-eqz v14, :cond_3

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipProxy;->acquireWakeLock()V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->startListening()V

    .line 229
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v18

    if-nez v2, :cond_7

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBipChannels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    add-int/lit8 v2, v18, 0x1

    iput v2, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 237
    :cond_6
    iget v2, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v2, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 229
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 243
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$InterfaceTransportLevel$TransportProtocol:[I

    iget-object v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 261
    const-string v2, "invalid protocol found"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 245
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 252
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v4, v2, v3

    .line 266
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    .line 268
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/BipProxy;->openChCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    goto/16 :goto_1

    .line 257
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v4, v2, v3

    goto :goto_3

    .line 271
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mImmediateLinkEstablish:Z

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 274
    const-string v2, "Continue processing open channel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->preProcessOpen(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 277
    const-string v2, "open channel failed"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget v2, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_1

    .line 281
    :cond_a
    const-string v2, "handleBipCommand :setupDataConnection returned"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .end local v14    # "channelSettings":Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .end local v18    # "i":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v15, v2, v3

    .line 295
    .local v15, "curChannel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v15, :cond_d

    .line 296
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_b

    .line 297
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 316
    .end local v15    # "curChannel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :catch_0
    move-exception v17

    .line 318
    .local v17, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 319
    const-string v2, "handleBipCommand error"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    .end local v17    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v15    # "curChannel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_b
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_c

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1

    .line 302
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipProxy;->clearWakeLock()V

    .line 306
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_1

    .line 312
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 313
    const-string v2, "handleBipCommand, There is not open channel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 326
    .end local v15    # "curChannel":Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :pswitch_5
    const/4 v2, 0x7

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 327
    .local v19, "status":[I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_4
    const/4 v2, 0x7

    move/from16 v0, v18

    if-ge v0, v2, :cond_f

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v18

    if-eqz v2, :cond_e

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v18

    invoke-interface {v2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getStatus()I

    move-result v2

    aput v2, v19, v18

    .line 333
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get channel status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v19, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 331
    :cond_e
    const/4 v2, 0x0

    aput v2, v19, v18

    goto :goto_5

    .line 336
    :cond_f
    new-instance v7, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;-><init>([I)V

    .line 337
    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 880
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 840
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->cancelDataConnectionTimer()V

    .line 842
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 848
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 855
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->clearWakeLock()V

    goto :goto_0

    .line 861
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 863
    .local v6, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v0, "EVENT_DC_TIMEOUT teardownDataConnection"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v6, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 837
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

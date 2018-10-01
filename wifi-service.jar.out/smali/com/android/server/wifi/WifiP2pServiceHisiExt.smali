.class public Lcom/android/server/wifi/WifiP2pServiceHisiExt;
.super Ljava/lang/Object;
.source "WifiP2pServiceHisiExt.java"


# static fields
.field private static AP_START_BEGIN:I = 0x0

.field private static AP_START_END:I = 0x0

.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiP2pServiceHisiExt"

.field public static final WIFI_P2P_ENABLE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.ENABLE_CHANGED"


# instance fields
.field public P2pFindDeviceUpdate:Z

.field private isAirplaneRegister:Z

.field private mAirplaneStateFilter:Landroid/content/IntentFilter;

.field private final mAirplaneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mApFlag:I

.field private mContext:Landroid/content/Context;

.field public mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDialogNeedShow:Z

.field private mIsNeedRecoveryWifi:Z

.field private mIsStaToP2pDialogExist:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mP2pFlag:I

.field public mP2pStateMachine:Lcom/android/internal/util/StateMachine;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field public mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private startWifiForP2p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    sput-boolean v1, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->AP_START_BEGIN:I

    .line 96
    sput v1, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->AP_START_END:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/internal/util/AsyncChannel;Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "wifiChannel"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    .line 72
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    const-string v1, "p2p0"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 74
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 75
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 77
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 82
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->P2pFindDeviceUpdate:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z

    .line 91
    iput v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pFlag:I

    .line 97
    sget v0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->AP_START_END:I

    iput v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mApFlag:I

    .line 100
    iput-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.hisi.SWITCH_TO_P2P_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 146
    new-instance v0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt$1;-><init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneRegister:Z

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mAirplaneStateFilter:Landroid/content/IntentFilter;

    .line 206
    new-instance v0, Lcom/android/server/wifi/WifiP2pServiceHisiExt$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt$2;-><init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mAirplaneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 106
    iput-object p3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 107
    iput-object p4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "hisi_ap_start_begin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/net/wifi/HiSiWifiComm;

    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/HiSiWifiComm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->unregisterWifiStateReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->handleAirplaneStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsDialogNeedShow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsDialogNeedShow:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)Landroid/net/wifi/HiSiWifiComm;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pEnableChangedBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiP2pServiceHisiExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiP2pServiceHisiExt;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method private disableWifiAndApIfNeed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 675
    :cond_0
    const-string v0, "WifiP2pServiceHisiExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableWifiAndApIfNeed,WiFiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ApEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiStateByManual(Z)V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiApStateByManual(Z)V

    .line 682
    :cond_2
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 554
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 558
    const-string v2, "ro.config.marketing_name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 576
    :goto_0
    return-object v2

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 572
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    .line 576
    goto :goto_0
.end method

.method private handleAirplaneStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneModeOn()Z

    move-result v0

    .line 231
    .local v0, "airplaneOn":Z
    const-string v1, "WifiP2pServiceHisiExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAirplaneStateChanged Airplane:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    .line 234
    const-string v1, "WifiP2pServiceHisiExt"

    const-string v2, "handleAirplaneStateChanged Airplane is on, set wifi p2p off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pEnabled(I)Z

    .line 237
    :cond_0
    return-void
.end method

.method public static hisiWifiEnabled()Z
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Landroid/net/wifi/HiSiWifiComm;->hisiWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerAirplaneStateReceiver()V
    .locals 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneRegister:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mAirplaneStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mAirplaneStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneRegister:Z

    .line 244
    :cond_0
    return-void
.end method

.method private registerWifiStateReceiver()V
    .locals 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiEnableForP2p(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 6

    .prologue
    .line 396
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_0

    .line 398
    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending p2p connection changed broadcast,mNetworkInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiP2pInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const-string v2, "wifiP2pInfo"

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v3, v4}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 406
    const-string v2, "networkInfo"

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    const-string v2, "p2pGroupInfo"

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2300b

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 422
    :goto_1
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendP2pConnectionChangedBroadcast exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "WifiP2pServiceHisiExt"

    const-string v3, "mWifiChannel is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendP2pEnableChangedBroadcast()V
    .locals 3

    .prologue
    .line 372
    const-string v1, "WifiP2pServiceHisiExt"

    const-string v2, "sending p2p enable change broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.ENABLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private sendP2pFlagChangedBroadcast(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 706
    const-string v1, "WifiP2pServiceHisiExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendP2pFlagChangedBroadcast p2p flag broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.WIFI_P2P_FLAG_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_p2p_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 352
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    if-eqz p1, :cond_0

    .line 355
    const-string v2, "wifi_p2p_state"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_1
    return-void

    .line 358
    :cond_0
    const-string v2, "wifi_p2p_state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendP2pStateChangedBroadcast exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 5

    .prologue
    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const-string v2, "wifiP2pDevice"

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendThisDeviceChangedBroadcast exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 425
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    const-string v1, "WifiP2pServiceHisiExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 435
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 437
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendThisDeviceChangedBroadcast()V

    .line 438
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setWifiEnableForP2p(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnableForP2p(Z)V

    .line 201
    return-void
.end method

.method private switchWifiP2pEnabledState(I)Z
    .locals 8
    .param p1, "p2pFlag"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 582
    if-nez p1, :cond_2

    .line 583
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable P2p with arguments p2pFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->P2pFindDeviceUpdate:Z

    .line 587
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->enableP2p(I)Z

    move-result v0

    .line 589
    .local v0, "flag":Z
    new-instance v2, Lcom/android/server/wifi/WifiNative;

    const-string v3, "wlan0"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v7}, Lcom/android/server/wifi/WifiNative;->scan(ILjava/lang/String;)Z

    .line 591
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable P2p result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pStateChangedBroadcast(Z)V

    .line 606
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pFlagChangedBroadcast(I)V

    .line 610
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 611
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pNetworkChangedBroadcast()V

    move v1, v0

    .line 667
    .end local v0    # "flag":Z
    .local v1, "flag":Z
    :goto_0
    return v1

    .line 619
    .end local v1    # "flag":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->disableWifiAndApIfNeed()V

    .line 621
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->P2pFindDeviceUpdate:Z

    .line 622
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiP2pServiceHisiExt"

    const-string v3, "Save wifi config data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 625
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable P2p with arguments p2pFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->enableP2p(I)Z

    move-result v0

    .line 629
    .restart local v0    # "flag":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 632
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 633
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This P2p DeviceAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This P2p device name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 639
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setAndPersistDeviceName(Ljava/lang/String;)Z

    .line 640
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThisDevice.deviceName is null,set mThisDevice.deviceName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 649
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "WifiP2pServiceHisiExt"

    const-string v3, "Save p2p config data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 652
    sget-boolean v2, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "WifiP2pServiceHisiExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable P2p result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_a
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pStateChangedBroadcast(Z)V

    .line 655
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pConnectionChangedBroadcast()V

    .line 658
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pNetworkChangedBroadcast()V

    .line 663
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pFlagChangedBroadcast(I)V

    move v1, v0

    .line 667
    .end local v0    # "flag":Z
    .restart local v1    # "flag":Z
    goto/16 :goto_0

    .line 643
    .end local v1    # "flag":Z
    .restart local v0    # "flag":Z
    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 645
    iget-object v2, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private unregisterAirplaneStateReceiver()V
    .locals 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneRegister:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mAirplaneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isAirplaneRegister:Z

    .line 251
    :cond_0
    return-void
.end method

.method private unregisterWifiStateReceiver()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    .line 192
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiEnableForP2p(Z)V

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiP2pFlag()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pFlag:I

    return v0
.end method

.method public isWifiP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pFlag:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendP2pNetworkChangedBroadcast()V
    .locals 4

    .prologue
    .line 382
    sget-boolean v1, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "WifiP2pServiceHisiExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending p2p network changed broadcast,mNetworkInfo is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.WIFI_P2P_NETWORK_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public setRecoveryWifiFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    .line 165
    return-void
.end method

.method public setWifiP2pEnabled(I)Z
    .locals 12
    .param p1, "p2pFlag"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, "processed":Z
    sget-boolean v5, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->DBG:Z

    if-eqz v5, :cond_0

    .line 445
    const-string v5, "WifiP2pServiceHisiExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiP2pEnabled p2pFlag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->enforceAccessPermission()V

    .line 448
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->enforceChangePermission()V

    .line 450
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1

    .line 451
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 453
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 454
    .local v4, "wifiEnable":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    .line 455
    .local v2, "wifiApEnable":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->isWifiP2pEnabled()Z

    move-result v0

    .line 456
    .local v0, "p2pEnable":Z
    const-string v5, "WifiP2pServiceHisiExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi enable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", p2p enable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Ap Enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", startWifiForP2p:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 461
    .local v3, "wifiApState":I
    const-string v5, "WifiP2pServiceHisiExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiApState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mApFlag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mApFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v5, 0xc

    if-ne v5, v3, :cond_2

    .line 463
    const/4 v2, 0x1

    .line 465
    :cond_2
    if-nez v2, :cond_4

    if-eq v9, p1, :cond_3

    if-ne v10, p1, :cond_4

    .line 466
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v5, 0xb

    if-ne v5, v3, :cond_4

    sget v5, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->AP_START_BEGIN:I

    iget v7, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mApFlag:I

    if-ne v5, v7, :cond_4

    .line 468
    const-string v5, "WifiP2pServiceHisiExt"

    const-string v7, "AP is starting now,wait for a moment to try again."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 549
    :goto_0
    return v5

    .line 475
    :cond_4
    if-ne p1, v9, :cond_e

    .line 476
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->registerAirplaneStateReceiver()V

    .line 478
    if-nez v4, :cond_7

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    .line 479
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->registerWifiStateReceiver()V

    .line 480
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 481
    const/4 v1, 0x1

    .line 491
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pFlag(I)V

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->switchWifiP2pEnabledState(I)Z

    move-result v1

    .line 548
    :cond_6
    :goto_2
    const-string v5, "WifiP2pServiceHisiExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiP2pEnabled(),return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    .line 549
    goto :goto_0

    .line 482
    :cond_7
    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->startWifiForP2p:Z

    if-eqz v5, :cond_8

    .line 483
    const/4 v1, 0x0

    goto :goto_1

    .line 484
    :cond_8
    if-eqz v4, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    if-eqz v2, :cond_b

    if-nez v0, :cond_b

    .line 485
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v6, 0x23011

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 486
    const/4 v1, 0x1

    goto :goto_1

    .line 487
    :cond_b
    if-nez v4, :cond_c

    if-nez v0, :cond_d

    :cond_c
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 488
    :cond_d
    const/4 v1, 0x1

    goto :goto_1

    .line 495
    :cond_e
    if-ne p1, v10, :cond_12

    .line 496
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->registerAirplaneStateReceiver()V

    .line 498
    if-eqz v4, :cond_10

    if-nez v0, :cond_10

    .line 499
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    .line 500
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v11}, Landroid/net/wifi/WifiManager;->disable(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 501
    const/4 v1, 0x0

    .line 518
    :cond_f
    :goto_3
    if-nez v1, :cond_6

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pFlag(I)V

    .line 520
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->switchWifiP2pEnabledState(I)Z

    move-result v1

    goto :goto_2

    .line 502
    :cond_10
    if-eqz v2, :cond_11

    if-nez v0, :cond_11

    .line 503
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v11, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 504
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->registerWifiStateReceiver()V

    .line 505
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 506
    const/4 v1, 0x1

    goto :goto_3

    .line 510
    :cond_11
    if-nez v4, :cond_f

    if-nez v0, :cond_f

    .line 511
    const-string v5, "WifiP2pServiceHisiExt"

    const-string v6, "wifi is disabled or enabling ,wo should jump top2p first,so that wifiSettings cann\'t receiver WIFI_STATE_CHANGED_ACTION broadcast"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pEnableChangedBroadcast()V

    .line 514
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pEnabled(I)Z

    .line 515
    const/4 v1, 0x1

    goto :goto_3

    .line 522
    :cond_12
    const/4 v5, 0x3

    if-ne p1, v5, :cond_14

    .line 523
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->unregisterAirplaneStateReceiver()V

    .line 526
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pFlag(I)V

    .line 528
    if-eqz v0, :cond_13

    .line 529
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->switchWifiP2pEnabledState(I)Z

    move-result v1

    goto/16 :goto_2

    .line 531
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 534
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->unregisterAirplaneStateReceiver()V

    .line 536
    const/4 v1, 0x1

    .line 537
    const-string v5, "WifiP2pServiceHisiExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disalbe P2P, need recovery WiFi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz v0, :cond_15

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    if-eqz v5, :cond_15

    .line 539
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 540
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsNeedRecoveryWifi:Z

    goto/16 :goto_2

    .line 541
    :cond_15
    if-eqz v0, :cond_6

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pFlag(I)V

    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->switchWifiP2pEnabledState(I)Z

    move-result v1

    .line 544
    iget-object v5, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2
.end method

.method public setWifiP2pFlag(I)V
    .locals 0
    .param p1, "p2pFlag"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mP2pFlag:I

    .line 169
    return-void
.end method

.method public showP2pEanbleDialog()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 256
    iget-object v7, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mHiSiWifiComm:Landroid/net/wifi/HiSiWifiComm;

    const-string v8, "show_p2p_dialog_flag"

    invoke-virtual {v7, v8}, Landroid/net/wifi/HiSiWifiComm;->getSettingsGlobalIntValue(Ljava/lang/String;)I

    move-result v3

    .line 257
    .local v3, "flag":I
    if-eq v3, v11, :cond_1

    .line 259
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z

    if-eqz v7, :cond_0

    .line 260
    const-string v7, "WifiP2pServiceHisiExt"

    const-string v8, "the dialog already exist return"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v7, "WifiP2pServiceHisiExt"

    const-string v8, "showP2pEanbleDialog enter"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 266
    .local v4, "r":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "androidhwext:style/Theme.Emui"

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 268
    .local v6, "themeID":I
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 269
    .local v5, "themeContext":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 270
    .local v1, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 271
    const v7, 0x202012f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 273
    const/high16 v7, -0x1000000

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 274
    new-instance v7, Lcom/android/server/wifi/WifiP2pServiceHisiExt$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt$3;-><init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mContext:Landroid/content/Context;

    const v9, 0x206002b

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104039b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104039c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt$5;-><init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt$4;-><init>(Lcom/android/server/wifi/WifiP2pServiceHisiExt;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 314
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 315
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 316
    iput-boolean v11, p0, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->mIsStaToP2pDialogExist:Z

    .line 318
    const-string v7, "WifiP2pServiceHisiExt"

    const-string v8, "dialog showed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "themeContext":Landroid/view/ContextThemeWrapper;
    .end local v6    # "themeID":I
    :cond_1
    const-string v7, "WifiP2pServiceHisiExt"

    const-string v8, "do not show dialog!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->setWifiP2pEnabled(I)Z

    .line 322
    invoke-direct {p0}, Lcom/android/server/wifi/WifiP2pServiceHisiExt;->sendP2pEnableChangedBroadcast()V

    goto/16 :goto_0
.end method

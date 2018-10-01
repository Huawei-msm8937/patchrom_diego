.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/server/AbsNetworkMonitor;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$1;,
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BAKUP_SERVER:Ljava/lang/String; = "www.baidu.com"

.field private static final BAKUP_SERV_PAGE:Ljava/lang/String; = "/"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static DEFAULT_LINGER_DELAY_MS:I = 0x0

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field private static final DEFAULT_SERV_PAGE:Ljava/lang/String; = "/generate_204"

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SERVER_BAIDU:Ljava/lang/String; = "baidu"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUrlHeadFieldLocation:Ljava/lang/String;

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x7530

    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMonitor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/AbsNetworkMonitor;-><init>(Ljava/lang/String;)V

    .line 220
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    .line 227
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 244
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 253
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 254
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 255
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 256
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 257
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 258
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    .line 260
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 262
    new-instance v0, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 264
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUrlHeadFieldLocation:Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 277
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 279
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 281
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 283
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_server"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "connectivitycheck.gstatic.com"

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 295
    :cond_0
    const-string v0, "persist.netmon.linger"

    sget v3, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_detection_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 301
    return-void

    :cond_1
    move v0, v2

    .line 297
    goto :goto_0
.end method

.method public static SetDefaultLingerTime(I)V
    .locals 2
    .param p0, "time_ms"    # I

    .prologue
    .line 940
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 941
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SetDefaultLingerTime only for internal testing."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    sput p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    .line 944
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$2504(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;ZZJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUrlHeadFieldLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->parseHostByLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private isCaptivePortal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 24
    .param p1, "server_url"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;

    .prologue
    .line 748
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v5, :cond_1

    const/16 v18, 0xcc

    .line 852
    :cond_0
    :goto_0
    return v18

    .line 750
    :cond_1
    const/16 v23, 0x0

    .line 751
    .local v23, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x257

    .line 754
    .local v18, "httpResponseCode":I
    :try_start_0
    new-instance v22, Ljava/net/URL;

    const-string v5, "http"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v22, "url":Ljava/net/URL;
    const/16 v16, 0x0

    .line 773
    .local v16, "fetchPac":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v21

    .line 774
    .local v21, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v21, :cond_2

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 775
    new-instance v22, Ljava/net/URL;

    .end local v22    # "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 776
    .restart local v22    # "url":Ljava/net/URL;
    const/16 v16, 0x1

    .line 778
    :cond_2
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 779
    .local v14, "connectInfo":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .line 782
    .local v17, "hostToResolve":Ljava/lang/String;
    if-eqz v21, :cond_3

    if-eqz v16, :cond_6

    .line 783
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v17

    .line 787
    :cond_4
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    .line 791
    .local v12, "addresses":[Ljava/net/InetAddress;
    move-object v13, v12

    .local v13, "arr$":[Ljava/net/InetAddress;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v4, v13, v19

    .line 792
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    array-length v5, v12

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v12, v5

    if-eq v4, v5, :cond_5

    const-string v5, ","

    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 784
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v12    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "arr$":[Ljava/net/InetAddress;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    :cond_6
    if-eqz v21, :cond_4

    .line 785
    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 796
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    .line 799
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 800
    const/16 v5, 0x2710

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 801
    const/16 v5, 0x2710

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 802
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 807
    .local v8, "requestTimestamp":J
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 812
    .local v10, "responseTimestamp":J
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 814
    const-string v5, "Location"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mUrlHeadFieldLocation:Ljava/lang/String;

    .line 816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCaptivePortal: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " headers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 829
    const/16 v5, 0xc8

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    if-nez v5, :cond_8

    .line 830
    const-string v5, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 831
    const/16 v18, 0xcc

    .line 834
    :cond_8
    const/16 v5, 0xc8

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    if-eqz v16, :cond_9

    .line 835
    const-string v5, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 836
    const/16 v18, 0xcc

    .line 839
    :cond_9
    const/4 v6, 0x1

    const/16 v5, 0xcc

    move/from16 v0, v18

    if-eq v0, v5, :cond_a

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    if-eqz v23, :cond_0

    .line 849
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 839
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 842
    .end local v8    # "requestTimestamp":J
    .end local v10    # "responseTimestamp":J
    .end local v14    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v16    # "fetchPac":Z
    .end local v17    # "hostToResolve":Ljava/lang/String;
    .end local v21    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v22    # "url":Ljava/net/URL;
    :catch_0
    move-exception v15

    .line 843
    .local v15, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probably not a portal: exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    const/16 v5, 0x257

    move/from16 v0, v18

    if-ne v0, v5, :cond_b

    .line 848
    :cond_b
    if-eqz v23, :cond_0

    .line 849
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 848
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v23, :cond_c

    .line 849
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v5
.end method

.method private parseHostByLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 952
    if-eqz p1, :cond_3

    .line 953
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v0, 0x0

    .line 954
    .local v0, "end":I
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    const/4 v1, 0x7

    .line 959
    :cond_0
    :goto_0
    const-string v2, "/"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 960
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 963
    :cond_1
    if-gt v1, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 964
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 967
    .end local v0    # "end":I
    .end local v1    # "start":I
    :goto_1
    return-object v2

    .line 956
    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_2
    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    const/16 v1, 0x8

    goto :goto_0

    .line 967
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 13
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 864
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_scan_always_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v9, :cond_0

    .line 871
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v9, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 891
    :pswitch_0
    const-string v9, "extra_network_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 893
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_0

    .line 894
    const/4 v8, 0x0

    .line 895
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 896
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 897
    add-int/lit8 v8, v8, 0x1

    .line 898
    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 899
    const-string v9, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 874
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 875
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    .line 883
    const-string v9, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string v9, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v9, "extra_connectivity_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    const-string v9, "extra_response_received"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    const-string v9, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 929
    if-eqz p1, :cond_4

    .line 930
    const-string v9, "extra_is_captive_portal"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 931
    const-string v9, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 933
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    const-string v9, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 903
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    :cond_6
    instance-of v9, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_7

    .line 904
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 905
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 906
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_7
    instance-of v9, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_8

    .line 907
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 908
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 909
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v9, v3, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_9

    .line 910
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 911
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 912
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v9, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_a

    .line 913
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 914
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 916
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    const-string v9, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.class public Lcom/android/server/TrustedUIService;
.super Landroid/os/ITrustedUIService$Stub;
.source "TrustedUIService.java"


# static fields
.field private static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field private static final TAG:Ljava/lang/String; = "TrustedUIService"

.field private static mTUIStatus:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/server/TUIEventListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TrustedUIService;->mTUIStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/ITrustedUIService$Stub;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;

    .line 60
    new-instance v2, Lcom/android/server/TUIEventListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/TUIEventListener;-><init>(Lcom/android/server/TrustedUIService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/TrustedUIService;->mListener:Lcom/android/server/TUIEventListener;

    .line 61
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/TrustedUIService;->mListener:Lcom/android/server/TUIEventListener;

    const-class v3, Lcom/android/server/TUIEventListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    iget-object v2, p0, Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/TrustedUIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    new-instance v2, Lcom/android/server/TrustedUIService$1;

    invoke-direct {v2, p0}, Lcom/android/server/TrustedUIService$1;-><init>(Lcom/android/server/TrustedUIService;)V

    iput-object v2, p0, Lcom/android/server/TrustedUIService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 78
    iget-object v2, p0, Lcom/android/server/TrustedUIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/TrustedUIService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v2, Lcom/android/server/TrustedUIService$2;

    invoke-direct {v2, p0}, Lcom/android/server/TrustedUIService$2;-><init>(Lcom/android/server/TrustedUIService;)V

    iput-object v2, p0, Lcom/android/server/TrustedUIService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iget-object v2, p0, Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TrustedUIService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/server/TrustedUIService;->mTUIStatus:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/TrustedUIService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TrustedUIService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/TrustedUIService;->nativeSendTUIExitCmd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TrustedUIService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TrustedUIService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native nativeSendTUICmd(II)I
.end method

.method private native nativeSendTUIExitCmd()V
.end method

.method private native nativeTUILibraryDeInit()V
.end method

.method private native nativeTUILibraryInit()Z
.end method


# virtual methods
.method public TUIServiceLibraryInit()Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/TrustedUIService;->nativeTUILibraryInit()Z

    move-result v0

    return v0
.end method

.method public getTrustedUIStatus()Z
    .locals 3

    .prologue
    .line 106
    const-string v0, "TrustedUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getTrustedUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TrustedUIService;->mTUIStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getTrustedUIStatus should only be called by TrustedUIService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    sget-boolean v0, Lcom/android/server/TrustedUIService;->mTUIStatus:Z

    return v0
.end method

.method public sendTUICmd(II)I
    .locals 4
    .param p1, "event_type"    # I
    .param p2, "value"    # I

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 123
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "sendTUICmd should only be called by TrustedUIService"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TrustedUIService;->nativeSendTUICmd(II)I

    move-result v0

    .line 126
    .local v0, "ret":I
    const-string v1, "TrustedUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendTUICmd: event_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0
.end method

.method public sendTUIExitCmd()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "sendTUIExitCmd should only be called by TrustedUIService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TrustedUIService;->nativeSendTUIExitCmd()V

    .line 118
    iget-object v0, p0, Lcom/android/server/TrustedUIService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.secime.HIDE_WINDOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public setTrustedUIStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 101
    const-string v0, "TrustedUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setTrustedUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sput-boolean p1, Lcom/android/server/TrustedUIService;->mTUIStatus:Z

    .line 103
    return-void
.end method

.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mNextPostDialChar:I

.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mVendorCause:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;-><init>()V

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 116
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    .line 124
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 126
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 127
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 128
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 130
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 132
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;-><init>()V

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 185
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 187
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    .line 191
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 192
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 193
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 198
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 199
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 200
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;-><init>()V

    .line 67
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 69
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 142
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    .line 147
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XXXXXX"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection:formated dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XXXXXX"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    .line 157
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 161
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 163
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 164
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 167
    if-eqz p4, :cond_0

    .line 168
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 171
    iget-object v0, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 172
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 825
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 827
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 820
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 821
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CdmaConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 822
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 610
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    .line 612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    .line 615
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v3

    .line 860
    .local v3, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    .line 861
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 862
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 863
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 865
    .local v0, "cNext":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 866
    const/4 v3, 0x1

    .line 870
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 878
    .end local v0    # "cNext":C
    :cond_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    add-int/lit8 v1, p1, 0x1

    .line 882
    .end local v1    # "index":I
    :cond_2
    return v1

    .line 873
    .restart local v0    # "cNext":C
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 874
    goto :goto_0
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 894
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2c

    .line 902
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_0

    .line 903
    const/16 v1, 0x3b

    .line 905
    :cond_0
    return v1

    .line 894
    .end local v1    # "ret":C
    :cond_1
    const/16 v1, 0x3b

    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 926
    if-nez p0, :cond_0

    .line 927
    const/4 v6, 0x0

    .line 960
    :goto_0
    return-object v6

    .line 929
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 930
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 934
    .local v1, "currIndex":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 935
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 936
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 937
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 939
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 941
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    .line 942
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 943
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 947
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 948
    add-int/lit8 v1, v3, -0x1

    .line 958
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 950
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 952
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 956
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 960
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 847
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 851
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 964
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 972
    const-string v0, "<MASKED>"

    return-object v0
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 772
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 789
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 785
    :goto_0
    return-object v0

    .line 780
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 785
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 628
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v0, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    :goto_0
    move v0, v1

    .line 649
    :cond_0
    return v0

    .line 633
    :cond_1
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_2

    .line 634
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 641
    :cond_2
    const/16 v2, 0x3b

    if-ne p1, v2, :cond_3

    .line 642
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 643
    :cond_3
    const/16 v2, 0x4e

    if-ne p1, v2, :cond_0

    .line 644
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 840
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 835
    :cond_0
    monitor-exit v1

    .line 836
    return-void

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v2, 0x4

    .line 800
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 809
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListeners()V

    .line 817
    return-void

    .line 806
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 812
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 813
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 337
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .prologue
    const/4 v4, 0x2

    .line 362
    sparse-switch p1, :sswitch_data_0

    .line 408
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 409
    .local v1, "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 410
    .local v2, "serviceState":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 413
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 414
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 415
    const/16 v4, 0x11

    .line 431
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_0
    :goto_1
    return v4

    .line 364
    :sswitch_0
    const/4 v4, 0x4

    goto :goto_1

    .line 366
    :sswitch_1
    const/4 v4, 0x5

    goto :goto_1

    .line 368
    :sswitch_2
    const/16 v4, 0xf

    goto :goto_1

    .line 370
    :sswitch_3
    const/16 v4, 0x14

    goto :goto_1

    .line 372
    :sswitch_4
    const/16 v4, 0x15

    goto :goto_1

    .line 374
    :sswitch_5
    const/16 v4, 0x2e

    goto :goto_1

    .line 376
    :sswitch_6
    const/16 v4, 0x2f

    goto :goto_1

    .line 378
    :sswitch_7
    const/16 v4, 0x30

    goto :goto_1

    .line 380
    :sswitch_8
    const/16 v4, 0x1a

    goto :goto_1

    .line 382
    :sswitch_9
    const/16 v4, 0x1b

    goto :goto_1

    .line 384
    :sswitch_a
    const/16 v4, 0x1c

    goto :goto_1

    .line 386
    :sswitch_b
    const/16 v4, 0x1d

    goto :goto_1

    .line 388
    :sswitch_c
    const/16 v4, 0x1e

    goto :goto_1

    .line 390
    :sswitch_d
    const/16 v4, 0x1f

    goto :goto_1

    .line 392
    :sswitch_e
    const/16 v4, 0x20

    goto :goto_1

    .line 394
    :sswitch_f
    const/16 v4, 0x21

    goto :goto_1

    .line 396
    :sswitch_10
    const/16 v4, 0x22

    goto :goto_1

    .line 398
    :sswitch_11
    const/16 v4, 0x23

    goto :goto_1

    .line 401
    :sswitch_12
    const/16 v4, 0x5c

    goto :goto_1

    .line 403
    :sswitch_13
    const/16 v4, 0x5d

    goto :goto_1

    .line 413
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v2    # "serviceState":I
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 416
    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_2
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_4

    .line 419
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 423
    const/16 v4, 0x12

    goto :goto_1

    .line 424
    :cond_4
    iget v5, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v5, :cond_5

    .line 427
    const/16 v4, 0x13

    goto :goto_1

    .line 428
    :cond_5
    const/16 v5, 0x10

    if-eq p1, v5, :cond_0

    .line 431
    const/16 v4, 0x24

    goto :goto_1

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_5
        0xf5 -> :sswitch_6
        0xf6 -> :sswitch_7
        0x145 -> :sswitch_12
        0x146 -> :sswitch_13
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_b
        0x3ec -> :sswitch_c
        0x3ed -> :sswitch_d
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_10
        0x3f1 -> :sswitch_11
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseAllWakeLocks()V

    .line 210
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 572
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const-string v0, "CdmaConnection"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 698
    return-void
.end method

.method getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 576
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 577
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 579
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 253
    const-wide/16 v0, 0x0

    .line 255
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 977
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 658
    :cond_0
    const-string v1, ""

    .line 672
    :cond_1
    :goto_0
    return-object v1

    .line 661
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "subStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 663
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 664
    .local v2, "wIndex":I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 666
    .local v0, "pIndex":I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 667
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 668
    :cond_4
    if-lez v0, :cond_1

    .line 669
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 280
    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public isNewConnection(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z
    .locals 2
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    .line 590
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 598
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method onDisconnect(I)Z
    .locals 2
    .param p1, "cause"    # I

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 453
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cleanRilRecovery()V

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 467
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 349
    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 482
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .prologue
    .line 438
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 439
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    .line 441
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    .line 620
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 299
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 312
    const-string v1, "CdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 317
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 325
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method processNextPostDialChar()V
    .locals 9

    .prologue
    .line 701
    const/4 v1, 0x0

    .line 704
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 712
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 715
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 718
    const/4 v1, 0x0

    .line 737
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 740
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 744
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 747
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 748
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 749
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 750
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 753
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 755
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 722
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 724
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 726
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 728
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 730
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 732
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 289
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 490
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_6

    move v4, v5

    .line 492
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    .line 494
    .local v1, "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newParent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mNumberConverted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 497
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 499
    :cond_0
    const-string v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 501
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    :goto_1
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 502
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :goto_2
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    .line 504
    const/4 v0, 0x1

    .line 508
    :cond_1
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 509
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 510
    const/4 v0, 0x1

    .line 511
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 518
    :cond_2
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 519
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 520
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 522
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v1, v7, :cond_a

    .line 523
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 526
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 527
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 528
    const/4 v0, 0x1

    .line 537
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update, wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 544
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 548
    :cond_4
    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 553
    :cond_5
    return v0

    .end local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v4    # "wasHolding":Z
    :cond_6
    move v4, v6

    .line 490
    goto/16 :goto_0

    .line 501
    .restart local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .restart local v4    # "wasHolding":Z
    :cond_7
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    goto/16 :goto_1

    .line 502
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialAddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 513
    :cond_9
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 514
    const/4 v0, 0x1

    .line 515
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_3

    .line 531
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 532
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    move v0, v5

    :goto_5
    goto :goto_4

    :cond_c
    move v0, v6

    goto :goto_5
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    .line 676
    if-eq p2, p1, :cond_1

    .line 677
    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 680
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 681
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 683
    :cond_1
    return-void
.end method

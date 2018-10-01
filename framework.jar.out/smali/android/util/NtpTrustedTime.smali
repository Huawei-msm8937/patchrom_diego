.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mNtpTrustIpAddress:Ljava/lang/String;

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private final mbackupNtpServer:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "CN"

    const-string/jumbo v1, "ro.product.locale.region"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.cn.pool.ntp.org,1.asia.pool.ntp.org,2.asia.pool.ntp.org,ntp.neu6.edu.cn,s2f.time.edu.cn,clock.neu.edu.cn"

    :goto_0
    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mbackupNtpServer:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 69
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 70
    return-void

    .line 61
    :cond_0
    const-string/jumbo v0, "ro.config.spare_ntp_server"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 77
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x1040037

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e007c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 82
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 87
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 88
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 89
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 92
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 87
    goto :goto_0

    .line 73
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method

.method private tryOtherServer(Landroid/net/SntpClient;)Z
    .locals 6
    .param p1, "sClient"    # Landroid/net/SntpClient;

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v3, ""

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mbackupNtpServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 157
    :cond_1
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mbackupNtpServer:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "backupNtpServer":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 160
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_3
    aget-object v3, v0, v1

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mbackupNtpServer:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 135
    :goto_0
    return v2

    .line 107
    :cond_0
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 109
    sget-object v2, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 111
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 114
    .local v1, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v3

    .line 116
    goto :goto_0

    .line 111
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 113
    :cond_3
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_1

    .line 121
    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 123
    .local v0, "client":Landroid/net/SntpClient;
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Landroid/util/NtpTrustedTime;->tryOtherServer(Landroid/net/SntpClient;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    :cond_5
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 126
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 127
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 128
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 130
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mNtpTrustIpAddress:Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwDrmManager()Landroid/common/HwDrmManager;

    move-result-object v2

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-interface {v2, v6, v7, v8, v9}, Landroid/common/HwDrmManager;->setNtpTime(JJ)V

    move v2, v4

    .line 133
    goto :goto_0

    :cond_6
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 189
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 191
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

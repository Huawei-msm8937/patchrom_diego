.class public Landroid/net/wifi/HiSiWifiComm;
.super Ljava/lang/Object;
.source "HiSiWifiComm.java"


# static fields
.field private static SLEEP_POLICY_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HiSiWifiComm"

.field public static final checkboxNoSelected:I = 0x0

.field public static final checkboxSelected:I = 0x1

.field public static final mGroupOwnerIntent:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "/sys/hi110x/sleep_policy"

    sput-object v0, Landroid/net/wifi/HiSiWifiComm;->SLEEP_POLICY_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/net/wifi/HiSiWifiComm;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static hisiWifiEnabled()Z
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v1, "ro.connectivity.chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "HI110X_ENABLE":Ljava/lang/String;
    const-string/jumbo v1, "hi110x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeSleepOption(I)V
    .locals 6
    .param p0, "policy"    # I

    .prologue
    .line 68
    const-string v3, "HiSiWifiComm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteSleepOption,policy is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/net/wifi/HiSiWifiComm;->SLEEP_POLICY_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    if-eqz v2, :cond_2

    .line 79
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 86
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 80
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "HiSiWifiComm"

    const-string v4, "Failed close fileOutputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 82
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "HiSiWifiComm"

    const-string v4, "Failed setting sleep policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    if-eqz v1, :cond_0

    .line 79
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    const-string v3, "HiSiWifiComm"

    const-string v4, "Failed close fileOutputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 79
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 82
    :cond_1
    :goto_3
    throw v3

    .line 80
    :catch_3
    move-exception v0

    .line 81
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "HiSiWifiComm"

    const-string v5, "Failed close fileOutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 74
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public changeShowDialogFlag(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    if-eqz p2, :cond_0

    .line 117
    iget-object v0, p0, Landroid/net/wifi/HiSiWifiComm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/HiSiWifiComm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "HiSiWifiComm"

    const-string/jumbo v1, "invalid key"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsGlobalIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 107
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Landroid/net/wifi/HiSiWifiComm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    :cond_0
    return v0
.end method

.method public isP2pConnect()Z
    .locals 6

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "isConneted":Z
    const/4 v2, 0x0

    .line 92
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Landroid/net/wifi/HiSiWifiComm;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 95
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 96
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 98
    :cond_0
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 100
    const-string v3, "HiSiWifiComm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "p2p isConneted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    return v0
.end method

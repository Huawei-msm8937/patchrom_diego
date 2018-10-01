.class public Landroid/net/wifi/wifipro/NetworkHistoryUtils;
.super Ljava/lang/Object;
.source "NetworkHistoryUtils.java"


# static fields
.field public static final DBG:Z = true

.field public static final HISTORY_ITEM_INTERNET:I = 0x1

.field public static final HISTORY_ITEM_NO_INTERNET:I = 0x0

.field public static final HISTORY_ITEM_PORTAL:I = 0x2

.field public static final HISTORY_ITEM_UNCHECKED:I = -0x1

.field public static final INTERNET_HISTORY_INIT:Ljava/lang/String; = "-1/-1/-1/-1/-1/-1/-1/-1/-1/-1"

.field public static final INTERNET_HISTORY_KEY:Ljava/lang/String; = "INTERNET_HISTORY"

.field public static final PORTAL_NETWORK_KEY:Ljava/lang/String; = "PORTAL_NETWORK"

.field public static final RECOVERY_PERCENTAGE:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "NetworkHistoryUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "NetworkHistoryUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private static LOGW(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "NetworkHistoryUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public static allowWifiConfigRecovery(Ljava/lang/String;)Z
    .locals 15
    .param p0, "internetHistory"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x3

    const/4 v10, -0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "allowRecovery":Z
    if-eqz p0, :cond_0

    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 76
    :cond_0
    const-string v9, "allowWifiConfigRecovery, inputed arg is invalid, internetHistory = null"

    invoke-static {v9}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGW(Ljava/lang/String;)V

    move v1, v0

    .line 118
    .end local v0    # "allowRecovery":Z
    .local v1, "allowRecovery":I
    :goto_0
    return v1

    .line 80
    .end local v1    # "allowRecovery":I
    .restart local v0    # "allowRecovery":Z
    :cond_1
    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    new-array v3, v9, [I

    .line 82
    .local v3, "items":[I
    const/4 v4, 0x0

    .local v4, "numChecked":I
    const/4 v6, 0x0

    .local v6, "numNoInet":I
    const/4 v5, 0x0

    .line 83
    .local v5, "numHasInet":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_6

    .line 84
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v3, v2

    .line 86
    aget v9, v3, v2

    if-eq v9, v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 87
    :cond_2
    aget v9, v3, v2

    if-nez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 83
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_4
    aget v9, v3, v2

    if-eq v9, v11, :cond_5

    aget v9, v3, v2

    if-ne v9, v12, :cond_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 90
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowWifiConfigRecovery, numChecked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numNoInet = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numHasInet = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    .line 92
    if-lt v4, v12, :cond_7

    .line 94
    const/4 v0, 0x1

    .line 95
    const/4 v2, 0x1

    :goto_3
    if-ge v2, v4, :cond_7

    .line 96
    aget v9, v3, v2

    if-eq v9, v11, :cond_a

    .line 97
    const/4 v0, 0x0

    .line 103
    :cond_7
    if-nez v0, :cond_8

    if-lt v4, v14, :cond_8

    .line 105
    aget v9, v3, v11

    if-ne v9, v11, :cond_8

    aget v9, v3, v12

    if-ne v9, v11, :cond_8

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_8
    if-nez v0, :cond_9

    if-lt v4, v14, :cond_9

    .line 111
    int-to-float v9, v5

    int-to-float v10, v4

    div-float v7, v9, v10

    .line 112
    .local v7, "percentage":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowWifiConfigRecovery, percentage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", RECOVERY_PERCENTAGE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    .line 113
    cmpl-float v9, v7, v13

    if-ltz v9, :cond_9

    .line 114
    const/4 v0, 0x1

    .line 117
    .end local v7    # "percentage":F
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowWifiConfigRecovery, internetHistory = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", allowRecovery = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    move v1, v0

    .line 118
    .restart local v1    # "allowRecovery":I
    goto/16 :goto_0

    .line 95
    .end local v1    # "allowRecovery":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static insertWifiConfigHistory(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "internetHistory"    # Ljava/lang/String;
    .param p1, "status"    # I

    .prologue
    .line 44
    const-string v0, "-1/-1/-1/-1/-1/-1/-1/-1/-1/-1"

    .line 45
    .local v0, "newInternetHistory":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 46
    :cond_0
    const-string/jumbo v2, "insertWifiConfigHistory, inputed arg is invalid, internetHistory = null"

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGW(Ljava/lang/String;)V

    move-object v1, v0

    .line 55
    .end local v0    # "newInternetHistory":Ljava/lang/String;
    .local v1, "newInternetHistory":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    .end local v1    # "newInternetHistory":Ljava/lang/String;
    .restart local v0    # "newInternetHistory":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertWifiConfigHistory, internetHistory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertWifiConfigHistory, newInternetHistory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    move-object v1, v0

    .line 55
    .end local v0    # "newInternetHistory":Ljava/lang/String;
    .restart local v1    # "newInternetHistory":Ljava/lang/String;
    goto :goto_0
.end method

.method public static readNetworkHistory(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "INTERNET_HISTORY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    .line 37
    :cond_0
    const-string v0, "PORTAL_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    .line 40
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    .line 41
    return-void

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateWifiConfigHistory(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "internetHistory"    # Ljava/lang/String;
    .param p1, "status"    # I

    .prologue
    .line 59
    const-string v0, "-1/-1/-1/-1/-1/-1/-1/-1/-1/-1"

    .line 60
    .local v0, "newInternetHistory":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 61
    :cond_0
    const-string/jumbo v2, "updateWifiConfigHistory, inputed arg is invalid, internetHistory = null"

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGW(Ljava/lang/String;)V

    move-object v1, v0

    .line 70
    .end local v0    # "newInternetHistory":Ljava/lang/String;
    .local v1, "newInternetHistory":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 64
    .end local v1    # "newInternetHistory":Ljava/lang/String;
    .restart local v0    # "newInternetHistory":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWifiConfigHistory, internetHistory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    .line 67
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWifiConfigHistory, newInternetHistory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/wifipro/NetworkHistoryUtils;->LOGD(Ljava/lang/String;)V

    move-object v1, v0

    .line 70
    .end local v0    # "newInternetHistory":Ljava/lang/String;
    .restart local v1    # "newInternetHistory":Ljava/lang/String;
    goto :goto_0
.end method

.method public static writeNetworkHistory(Landroid/net/wifi/WifiConfiguration;Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "nl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNET_HISTORY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PORTAL_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 30
    return-void
.end method

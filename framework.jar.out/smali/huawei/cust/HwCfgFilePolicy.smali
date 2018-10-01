.class public Lhuawei/cust/HwCfgFilePolicy;
.super Ljava/lang/Object;
.source "HwCfgFilePolicy.java"


# static fields
.field public static final BASE:I = 0x3

.field private static CFG_DIRS:[Ljava/lang/String; = null

.field public static final CLOUD_APN:I = 0x7

.field public static final CLOUD_DPLMN:I = 0x6

.field public static final CLOUD_MCC:I = 0x5

.field public static final CUST:I = 0x4

.field public static final CUST_TYPE_CONFIG:I = 0x0

.field public static final CUST_TYPE_MEDIA:I = 0x1

.field public static final EMUI:I = 0x1

.field public static final GLOBAL:I = 0x0

.field private static MEDIA_DIRS:[Ljava/lang/String; = null

.field public static final PC:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final TXTSECTION:I = 0x2

.field private static final VERSION_MARK:[Ljava/lang/String;

.field private static mCfgVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    const-string v2, "CfgFilePolicy"

    sput-object v2, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    .line 46
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "global_cfg_version"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "emui_cfg_version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pc_cfg_version"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "carrier_cfg_version"

    aput-object v4, v2, v3

    sput-object v2, Lhuawei/cust/HwCfgFilePolicy;->VERSION_MARK:[Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lhuawei/cust/HwCfgFilePolicy;->mCfgVersions:Ljava/util/HashMap;

    .line 228
    const-string v2, "CUST_POLICY_DIRS"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "policy":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 230
    :cond_0
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    const-string v3, "****ERROR: env CUST_POLICY_DIRS not set, use default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v1, "/system/emui:/system/global:/system/etc:/oem:/data/cust:/cust_spec"

    .line 233
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    .line 234
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lhuawei/cust/HwCfgFilePolicy;->MEDIA_DIRS:[Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->MEDIA_DIRS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 236
    const-string v2, "/system/etc"

    sget-object v3, Lhuawei/cust/HwCfgFilePolicy;->MEDIA_DIRS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->MEDIA_DIRS:[Ljava/lang/String;

    const-string v3, "/system/media"

    aput-object v3, v2, v0

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCfgFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 77
    new-instance v0, Ljava/io/File;

    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v0

    .line 76
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 82
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    sget-object v2, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No config file found for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCfgFileList(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 58
    :cond_0
    sget-object v3, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: file = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    :goto_0
    return-object v2

    .line 62
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v3, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 69
    sget-object v3, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No config file found for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCfgPolicyDir(I)[Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 89
    sget-object v0, Lhuawei/cust/HwCfgFilePolicy;->MEDIA_DIRS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lhuawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCfgVersion(I)Ljava/lang/String;
    .locals 8
    .param p0, "cfgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "version":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 126
    :goto_0
    return-object v3

    .line 103
    :pswitch_0
    sget-object v4, Lhuawei/cust/HwCfgFilePolicy;->mCfgVersions:Ljava/util/HashMap;

    sget-object v5, Lhuawei/cust/HwCfgFilePolicy;->VERSION_MARK:[Ljava/lang/String;

    aget-object v5, v5, p0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    const-string v4, "version.txt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFileList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lhuawei/cust/HwCfgFilePolicy;->initFileVersions(Ljava/util/ArrayList;)V

    .line 106
    :cond_0
    sget-object v4, Lhuawei/cust/HwCfgFilePolicy;->mCfgVersions:Ljava/util/HashMap;

    sget-object v5, Lhuawei/cust/HwCfgFilePolicy;->VERSION_MARK:[Ljava/lang/String;

    aget-object v5, v5, p0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "version":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 107
    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_0

    .line 109
    :pswitch_1
    const-string v5, "ro.product.BaseVersion"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    goto :goto_0

    .line 112
    :pswitch_2
    const-string v5, "/cloud/mcc"

    const-string v6, "cloud/mcc/version.txt"

    invoke-static {v5, v6}, Lhuawei/cust/HwCfgFilePolicy;->getDownloadCfgFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "mccInfo":[Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 114
    :goto_1
    goto :goto_0

    .line 113
    :cond_1
    aget-object v3, v2, v7

    goto :goto_1

    .line 116
    .end local v2    # "mccInfo":[Ljava/lang/String;
    :pswitch_3
    const-string v5, "/cloud/dplmn"

    const-string v6, "cloud/dplmn/version.txt"

    invoke-static {v5, v6}, Lhuawei/cust/HwCfgFilePolicy;->getDownloadCfgFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "dplmnInfo":[Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v3, v4

    .line 118
    :goto_2
    goto :goto_0

    .line 117
    :cond_2
    aget-object v3, v1, v7

    goto :goto_2

    .line 120
    .end local v1    # "dplmnInfo":[Ljava/lang/String;
    :pswitch_4
    const-string v5, "/cloud/apn"

    const-string v6, "cloud/apn/version.txt"

    invoke-static {v5, v6}, Lhuawei/cust/HwCfgFilePolicy;->getDownloadCfgFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "apnInfo":[Ljava/lang/String;
    if-nez v0, :cond_3

    move-object v3, v4

    .line 122
    :goto_3
    goto :goto_0

    .line 121
    :cond_3
    aget-object v3, v0, v7

    goto :goto_3

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getDownloadCfgFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "verDir"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 213
    const-string v6, "/data/cota/"

    invoke-static {v6, p0, p1}, Lhuawei/cust/HwCfgFilePolicy;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "cotaInfo":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Lhuawei/cust/HwCfgFilePolicy;->getCfgPolicyDir(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    .line 215
    .local v2, "dir":Ljava/lang/String;
    invoke-static {v2, p0, p1}, Lhuawei/cust/HwCfgFilePolicy;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "info":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    aget-object v6, v4, v8

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 218
    :cond_0
    move-object v1, v4

    .line 214
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "dir":Ljava/lang/String;
    .end local v4    # "info":[Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "verDir"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v0, "cfgPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    const/4 v1, 0x0

    .line 197
    :cond_0
    :goto_0
    return-object v1

    .line 192
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, ""

    aput-object v3, v1, v6

    .line 193
    .local v1, "info":[Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/version.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lhuawei/cust/HwCfgFilePolicy;->getVersionsFromFile(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "vers":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 195
    aget-object v3, v2, v6

    aput-object v3, v1, v6

    goto :goto_0
.end method

.method private static getVersionsFromFile(Ljava/io/File;)[Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "sc":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    const-string v6, "UTF-8"

    invoke-direct {v3, p0, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v2    # "sc":Ljava/util/Scanner;
    .local v3, "sc":Ljava/util/Scanner;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "oneline":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "versions":[Ljava/lang/String;
    const/4 v6, 0x2

    array-length v7, v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v6, v7, :cond_0

    .line 174
    if-eqz v3, :cond_6

    .line 175
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 176
    const/4 v2, 0x0

    .line 180
    .end local v1    # "oneline":Ljava/lang/String;
    .end local v3    # "sc":Ljava/util/Scanner;
    .end local v4    # "versions":[Ljava/lang/String;
    .restart local v2    # "sc":Ljava/util/Scanner;
    :goto_0
    return-object v4

    .line 174
    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v3    # "sc":Ljava/util/Scanner;
    :cond_1
    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 176
    const/4 v2, 0x0

    .line 179
    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    :goto_1
    sget-object v6, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    const-string v7, "version file format is wrong."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 180
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    sget-object v6, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    const-string v7, "version file is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 176
    const/4 v2, 0x0

    :cond_2
    move-object v4, v5

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_3
    :try_start_3
    sget-object v6, Lhuawei/cust/HwCfgFilePolicy;->TAG:Ljava/lang/String;

    const-string v7, "version file format is wrong."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 176
    const/4 v2, 0x0

    :cond_3
    move-object v4, v5

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 176
    const/4 v2, 0x0

    :cond_4
    throw v5

    .line 174
    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v3    # "sc":Ljava/util/Scanner;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    goto :goto_4

    .line 170
    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v3    # "sc":Ljava/util/Scanner;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    goto :goto_3

    .line 167
    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v3    # "sc":Ljava/util/Scanner;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    goto :goto_2

    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v3    # "sc":Ljava/util/Scanner;
    :cond_5
    move-object v2, v3

    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    goto :goto_1

    .end local v2    # "sc":Ljava/util/Scanner;
    .restart local v1    # "oneline":Ljava/lang/String;
    .restart local v3    # "sc":Ljava/util/Scanner;
    .restart local v4    # "versions":[Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .end local v3    # "sc":Ljava/util/Scanner;
    .restart local v2    # "sc":Ljava/util/Scanner;
    goto :goto_0
.end method

.method private static initFileVersions(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "cfgFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 140
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lhuawei/cust/HwCfgFilePolicy;->getVersionsFromFile(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "versions":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 142
    sget-object v4, Lhuawei/cust/HwCfgFilePolicy;->mCfgVersions:Ljava/util/HashMap;

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, "oldversion":Ljava/lang/String;
    if-eqz v2, :cond_1

    aget-object v4, v3, v8

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 145
    :cond_1
    sget-object v4, Lhuawei/cust/HwCfgFilePolicy;->mCfgVersions:Ljava/util/HashMap;

    aget-object v5, v3, v7

    aget-object v6, v3, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "oldversion":Ljava/lang/String;
    .end local v3    # "versions":[Ljava/lang/String;
    :cond_2
    return-void
.end method

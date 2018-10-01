.class public Lcom/android/server/radar/FrameworkRadar;
.super Ljava/lang/Object;
.source "FrameworkRadar.java"


# static fields
.field private static final BODY_MAX_SIZE:I = 0x200

.field private static DEBUG:Z = false

.field public static final LEVEL_A:I = 0x41

.field public static final LEVEL_B:I = 0x42

.field public static final LEVEL_C:I = 0x43

.field private static final ONE_DAY_MILL_SEC:J

.field public static final RADAR_FWK_ERR_APP_CRASH_AT_START:I = 0xaf2

.field public static final RADAR_FWK_ERR_INSTALL_SD:I = 0xa8c

.field public static final RADAR_FWK_ERR_INSTALL_SHARED_UID:I = 0xa8d

.field private static final TAG:Ljava/lang/String; = "FrameworkRadar"

.field private static mLogException:Landroid/util/LogException;

.field private static mLogTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/radar/FrameworkRadar;->DEBUG:Z

    .line 47
    sget-boolean v0, Lcom/android/server/radar/FrameworkRadar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    sput-wide v0, Lcom/android/server/radar/FrameworkRadar;->ONE_DAY_MILL_SEC:J

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    sput-object v0, Lcom/android/server/radar/FrameworkRadar;->mLogException:Landroid/util/LogException;

    return-void

    .line 47
    :cond_0
    const-wide/32 v0, 0x5265c00

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isIntervalLargeEnough(I)Z
    .locals 10
    .param p0, "scene"    # I

    .prologue
    .line 57
    sget-object v5, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    monitor-enter v5

    .line 58
    :try_start_0
    sget-object v4, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 59
    sget-object v4, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 60
    .local v2, "recordTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "currentTime":J
    sub-long v6, v0, v2

    sget-wide v8, Lcom/android/server/radar/FrameworkRadar;->ONE_DAY_MILL_SEC:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 63
    const/4 v4, 0x0

    monitor-exit v5

    .line 68
    .end local v0    # "currentTime":J
    .end local v2    # "recordTime":J
    :goto_1
    return v4

    .line 59
    :cond_0
    sget-object v4, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v5

    .line 68
    const/4 v4, 0x1

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static msg(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "level"    # I
    .param p1, "scene"    # I
    .param p2, "func"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/server/radar/FrameworkRadar;->mLogException:Landroid/util/LogException;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/android/server/radar/FrameworkRadar;->isIntervalLargeEnough(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lcom/android/server/radar/RadarHeader;

    const-string v1, "PMS"

    const-string v2, "0"

    const/16 v3, 0x64

    move v4, p1

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/radar/RadarHeader;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 113
    .local v0, "headerObj":Lcom/android/server/radar/RadarHeader;
    invoke-virtual {v0}, Lcom/android/server/radar/RadarHeader;->getRadarHeader()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "header":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failfunc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "body":Ljava/lang/String;
    sget-object v1, Lcom/android/server/radar/FrameworkRadar;->mLogException:Landroid/util/LogException;

    const-string v2, "framework"

    invoke-interface {v1, v2, p0, v7, v6}, Landroid/util/LogException;->msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-boolean v1, Lcom/android/server/radar/FrameworkRadar;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FrameworkRadar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    invoke-static {p1}, Lcom/android/server/radar/FrameworkRadar;->updateSceneTimestamp(I)V

    goto :goto_0
.end method

.method public static msg(Lcom/android/server/radar/RadarHeader;Ljava/lang/String;)V
    .locals 6
    .param p0, "radarHeader"    # Lcom/android/server/radar/RadarHeader;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    sget-object v3, Lcom/android/server/radar/FrameworkRadar;->mLogException:Landroid/util/LogException;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/radar/RadarHeader;->getScene()I

    move-result v2

    .line 84
    .local v2, "scene":I
    invoke-static {v2}, Lcom/android/server/radar/FrameworkRadar;->isIntervalLargeEnough(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/radar/RadarHeader;->getRadarHeader()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "header":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "body":Ljava/lang/String;
    sget-object v3, Lcom/android/server/radar/FrameworkRadar;->mLogException:Landroid/util/LogException;

    const-string v4, "framework"

    invoke-virtual {p0}, Lcom/android/server/radar/RadarHeader;->getLevel()I

    move-result v5

    invoke-interface {v3, v4, v5, v1, v0}, Landroid/util/LogException;->msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v3, Lcom/android/server/radar/FrameworkRadar;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FrameworkRadar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-static {v2}, Lcom/android/server/radar/FrameworkRadar;->updateSceneTimestamp(I)V

    goto :goto_0
.end method

.method private static updateSceneTimestamp(I)V
    .locals 6
    .param p0, "scene"    # I

    .prologue
    .line 72
    sget-object v1, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/android/server/radar/FrameworkRadar;->mLogTime:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtProcUid:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "procRoot"    # Ljava/io/File;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "net/comm/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtProcUid:Ljava/io/File;

    .line 96
    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 12
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 286
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 288
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 289
    .local v7, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 291
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x1

    .line 292
    .local v2, "idx":I
    const/4 v3, 0x1

    .line 294
    .local v3, "lastIdx":I
    const/4 v4, 0x0

    .line 297
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 300
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 301
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 302
    add-int/lit8 v8, v3, 0x1

    if-eq v2, v8, :cond_0

    .line 303
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " after lastIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 326
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    .line 306
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v3, v2

    .line 308
    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 309
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 310
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 311
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 312
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 313
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 314
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 315
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 317
    if-eqz p2, :cond_1

    iget-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    if-eq p1, v11, :cond_2

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v8, :cond_4

    :cond_2
    if-eq p3, v11, :cond_3

    iget v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v8, :cond_4

    .line 320
    :cond_3
    invoke-virtual {v7, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 323
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 327
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 328
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_3
    :try_start_4
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 330
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 334
    return-object v7

    .line 330
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_2

    .line 327
    :catch_2
    move-exception v0

    goto :goto_3

    .line 325
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "stackedIface"    # Ljava/lang/String;
    .param p1, "baseIface"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_0
    monitor-exit v1

    .line 82
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p4, :cond_0

    .line 255
    move-object v0, p4

    .line 256
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string v1, "NetworkStatsFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse network stats! stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkStats;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v0    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    .line 272
    :cond_1
    return-object v0
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 402
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 406
    :cond_0
    const/4 v1, 0x0

    .line 407
    .local v1, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .line 408
    .local v0, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 409
    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 410
    invoke-virtual {p2, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 408
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_2
    return-void
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 200
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 24
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v22

    .line 208
    .local v22, "stats":Landroid/net/NetworkStats;
    sget-object v23, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v23

    .line 211
    :try_start_0
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v20

    .line 212
    .local v20, "size":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 213
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 214
    .local v21, "stackedIface":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 218
    .local v4, "baseIface":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 220
    .local v3, "adjust":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 221
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_1

    .line 222
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 223
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 225
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 221
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 228
    :cond_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 212
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "adjust":Landroid/net/NetworkStats$Entry;
    .end local v4    # "baseIface":Ljava/lang/String;
    .end local v19    # "j":I
    .end local v21    # "stackedIface":Ljava/lang/String;
    :cond_2
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    const/4 v2, 0x0

    .line 235
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    const/16 v18, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_4

    .line 236
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 237
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v6, "clat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v8, 0x14

    mul-long/2addr v6, v8

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 240
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 241
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 242
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 243
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 235
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 230
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v18    # "i":I
    .end local v20    # "size":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 247
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v18    # "i":I
    .restart local v20    # "size":I
    :cond_4
    return-object v22
.end method

.method public readNetworkStatsProcDetail(Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 348
    .local v9, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v11, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtProcUid:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 349
    const-string v11, "NetworkStatsFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStatsXtProcUid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtProcUid:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v10, 0x0

    .line 395
    :goto_0
    return-object v10

    .line 353
    :cond_0
    new-instance v10, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/16 v11, 0x18

    invoke-direct {v10, v12, v13, v11}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 354
    .local v10, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 356
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .line 358
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    iget-object v13, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtProcUid:Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 362
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "procArr":[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_1

    .line 364
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v6, "procName":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 366
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    array-length v11, v5

    add-int/lit8 v11, v11, -0x3

    if-ge v3, v11, :cond_2

    .line 367
    aget-object v11, v5, v3

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 369
    :cond_2
    iput-object p1, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 370
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    .line 371
    const/4 v11, -0x1

    iput v11, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 372
    const/4 v11, 0x0

    iput v11, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 374
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 375
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_2
    aget-object v11, v5, v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Landroid/net/NetworkStats$Entry;->uid:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 378
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :try_start_3
    aget-object v11, v5, v2

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 379
    aget-object v11, v5, v3

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 380
    invoke-virtual {v10, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    move v2, v3

    .line 382
    .end local v3    # "i":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "i":I
    :goto_3
    :try_start_4
    const-string v11, "NetworkStatsFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "problem parsing line:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 386
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "procArr":[Ljava/lang/String;
    .end local v6    # "procName":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v7, v8

    .line 387
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    const-string v11, "NetworkStatsFactory"

    const-string v12, "problem parsing proc stats"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 394
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    const-string v11, "NetworkStatsFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read stats:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/NetworkStats;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_3
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v7, v8

    .line 393
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 388
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_6
    const-string v11, "NetworkStatsFactory"

    const-string v12, "problem parsing proc stats"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_7
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v11

    .line 391
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 388
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 386
    :catch_4
    move-exception v0

    goto :goto_4

    .line 381
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "procArr":[Ljava/lang/String;
    .restart local v6    # "procName":Ljava/lang/StringBuffer;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 109
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 110
    .local v6, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 112
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 114
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 117
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 118
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 119
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 120
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 122
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 125
    .local v0, "active":Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 126
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 127
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 128
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 131
    if-eqz v0, :cond_0

    .line 132
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 133
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 134
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 135
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 138
    :cond_0
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 139
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 141
    .end local v0    # "active":Z
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 142
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    move v0, v7

    .line 122
    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 149
    return-object v6

    .line 143
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 143
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 141
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 163
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    .line 196
    :goto_0
    return-object v5

    .line 165
    :cond_0
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 166
    .local v5, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 168
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 171
    .local v2, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 174
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 176
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 177
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 178
    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 180
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 181
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 182
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 183
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 185
    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 186
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 189
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 193
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 190
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 190
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 188
    :catch_3
    move-exception v0

    goto :goto_2
.end method

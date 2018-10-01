.class Landroid/database/sqlite/JankSqlite$DBOprMonitor;
.super Ljava/lang/Object;
.source "JankSqlite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/JankSqlite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOprMonitor"
.end annotation


# instance fields
.field private mLimit:J

.field private mLogID:I

.field private mMaxtime:J

.field private mNextIndex:I

.field private mOprtimes:[J

.field private mTotaltime:J

.field private mbCircle:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 5
    .param p1, "limit"    # J
    .param p3, "logid"    # I

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v4, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    .line 42
    iput v4, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mOprtimes:[J

    .line 44
    iput-wide v2, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    .line 45
    iput-wide v2, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mMaxtime:J

    .line 46
    iput-wide v2, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mLimit:J

    .line 50
    iput-wide p1, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mLimit:J

    .line 51
    # getter for: Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J
    invoke-static {}, Landroid/database/sqlite/JankSqlite;->access$000()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    # getter for: Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J
    invoke-static {}, Landroid/database/sqlite/JankSqlite;->access$000()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mOprtimes:[J

    .line 54
    iput p3, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mLogID:I

    .line 55
    iput-boolean v4, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOpr(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mOprtimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 89
    :goto_0
    monitor-exit p0

    return v3

    .line 61
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    if-eqz v5, :cond_1

    .line 63
    iget-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    iget-object v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mOprtimes:[J

    iget v8, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    aget-wide v8, v5, v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    .line 65
    :cond_1
    iget-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mMaxtime:J

    cmp-long v5, v6, p1

    if-gez v5, :cond_2

    .line 67
    iput-wide p1, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mMaxtime:J

    .line 69
    :cond_2
    iget-object v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mOprtimes:[J

    iget v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    aput-wide p1, v5, v6

    .line 70
    iget v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    .line 71
    iget v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    int-to-long v6, v5

    # getter for: Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J
    invoke-static {}, Landroid/database/sqlite/JankSqlite;->access$000()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    .line 73
    const/4 v5, 0x0

    iput v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    .line 74
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    .line 76
    :cond_3
    iget-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    .line 77
    iget-boolean v5, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    if-eqz v5, :cond_4

    .line 79
    iget-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    # getter for: Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J
    invoke-static {}, Landroid/database/sqlite/JankSqlite;->access$000()J

    move-result-wide v8

    div-long v0, v6, v8

    .line 80
    .local v0, "averagetl":J
    iget-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mLimit:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_5

    move v2, v4

    .line 82
    .local v2, "bUIThread":Z
    :goto_1
    iget v3, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mLogID:I

    long-to-int v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mMaxtime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">,table("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "),database("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "),("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p4, v5, v6}, Landroid/util/Jlog;->d(ILjava/lang/String;ILjava/lang/String;)I

    .line 83
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mbCircle:Z

    .line 84
    const/4 v3, 0x0

    iput v3, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mNextIndex:I

    .line 85
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mTotaltime:J

    .line 86
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->mMaxtime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "averagetl":J
    .end local v2    # "bUIThread":Z
    :cond_4
    move v3, v4

    .line 89
    goto/16 :goto_0

    .restart local v0    # "averagetl":J
    :cond_5
    move v2, v3

    .line 81
    goto :goto_1

    .line 59
    .end local v0    # "averagetl":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

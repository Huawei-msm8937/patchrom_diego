.class public final Landroid/database/sqlite/JankSqlite;
.super Ljava/lang/Object;
.source "JankSqlite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/JankSqlite$DBOprMonitor;
    }
.end annotation


# static fields
.field private static final JANKDBCFG_PATTERN:Ljava/util/regex/Pattern;

.field private static mDeleteLimit:J

.field private static mExecsqlLimit:J

.field private static mInsertLimit:J

.field private static mJankSamplingNum:J

.field private static mQueryLimit:J

.field private static mUpdateLimit:J


# instance fields
.field private mDelete:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

.field private mExecsql:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

.field private mInsert:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

.field private mQuery:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

.field private mUpdate:Landroid/database/sqlite/JankSqlite$DBOprMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x190

    .line 30
    const-string v0, "<{1}(\\d+)>{1}<{1}(\\d+)>{1}<{1}(\\d+)>{1}<{1}(\\d+)>{1}<{1}(\\d+)>{1}<{1}(\\d+)>{1}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/JankSqlite;->JANKDBCFG_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    const-wide/16 v0, 0x14

    sput-wide v0, Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J

    .line 34
    sput-wide v2, Landroid/database/sqlite/JankSqlite;->mInsertLimit:J

    .line 35
    sput-wide v2, Landroid/database/sqlite/JankSqlite;->mUpdateLimit:J

    .line 36
    sput-wide v2, Landroid/database/sqlite/JankSqlite;->mQueryLimit:J

    .line 37
    sput-wide v2, Landroid/database/sqlite/JankSqlite;->mDeleteLimit:J

    .line 38
    sput-wide v2, Landroid/database/sqlite/JankSqlite;->mExecsqlLimit:J

    .line 128
    invoke-static {}, Landroid/database/sqlite/JankSqlite;->getProp()Z

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    sget-wide v2, Landroid/database/sqlite/JankSqlite;->mInsertLimit:J

    const/16 v1, 0x3e

    invoke-direct {v0, v2, v3, v1}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;-><init>(JI)V

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite;->mInsert:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    .line 101
    new-instance v0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    sget-wide v2, Landroid/database/sqlite/JankSqlite;->mUpdateLimit:J

    const/16 v1, 0x3f

    invoke-direct {v0, v2, v3, v1}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;-><init>(JI)V

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite;->mUpdate:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    .line 102
    new-instance v0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    sget-wide v2, Landroid/database/sqlite/JankSqlite;->mQueryLimit:J

    const/16 v1, 0x40

    invoke-direct {v0, v2, v3, v1}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;-><init>(JI)V

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite;->mQuery:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    .line 103
    new-instance v0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    sget-wide v2, Landroid/database/sqlite/JankSqlite;->mDeleteLimit:J

    const/16 v1, 0x41

    invoke-direct {v0, v2, v3, v1}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;-><init>(JI)V

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite;->mDelete:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    .line 104
    new-instance v0, Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    sget-wide v2, Landroid/database/sqlite/JankSqlite;->mExecsqlLimit:J

    const/16 v1, 0x42

    invoke-direct {v0, v2, v3, v1}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;-><init>(JI)V

    iput-object v0, p0, Landroid/database/sqlite/JankSqlite;->mExecsql:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    .line 105
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J

    return-wide v0
.end method

.method public static declared-synchronized getProp()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 132
    const-class v3, Landroid/database/sqlite/JankSqlite;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "persist.sys.jankdb"

    const-string v4, "<20><400><400><400><400><400>"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "jankdbcfg":Ljava/lang/String;
    sget-object v2, Landroid/database/sqlite/JankSqlite;->JANKDBCFG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 134
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mJankSamplingNum:J

    .line 137
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mInsertLimit:J

    .line 138
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mUpdateLimit:J

    .line 139
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mQueryLimit:J

    .line 140
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mDeleteLimit:J

    .line 141
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Landroid/database/sqlite/JankSqlite;->mExecsqlLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit v3

    return v6

    .line 132
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public addDelete(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/database/sqlite/JankSqlite;->mDelete:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->addOpr(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addExecsql(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/database/sqlite/JankSqlite;->mExecsql:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->addOpr(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addInsert(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Landroid/database/sqlite/JankSqlite;->mInsert:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->addOpr(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addQuery(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/sqlite/JankSqlite;->mQuery:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->addOpr(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addUpdate(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tl"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "dbname"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/database/sqlite/JankSqlite;->mUpdate:Landroid/database/sqlite/JankSqlite$DBOprMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/JankSqlite$DBOprMonitor;->addOpr(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

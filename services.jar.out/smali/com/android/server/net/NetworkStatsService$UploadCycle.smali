.class final Lcom/android/server/net/NetworkStatsService$UploadCycle;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UploadCycle"
.end annotation


# instance fields
.field mLastUploadTime:J

.field mLastUploadTraffic:J

.field mProc:Ljava/lang/String;

.field mUploadCount:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 306
    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService$UploadCycle;-><init>(Ljava/lang/String;JJ)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "lastUploadTraffic"    # J
    .param p4, "lastUploadTime"    # J

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$UploadCycle;->mProc:Ljava/lang/String;

    .line 311
    iput-wide p2, p0, Lcom/android/server/net/NetworkStatsService$UploadCycle;->mLastUploadTraffic:J

    .line 312
    iput-wide p4, p0, Lcom/android/server/net/NetworkStatsService$UploadCycle;->mLastUploadTime:J

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkStatsService$UploadCycle;->mUploadCount:I

    .line 314
    return-void
.end method

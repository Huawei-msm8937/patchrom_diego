.class final Lcom/android/server/net/NetworkStatsService$ProcInfo;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcInfo"
.end annotation


# instance fields
.field mPkgName:Ljava/lang/String;

.field mProcName:Ljava/lang/String;

.field mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mProcName:Ljava/lang/String;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mPkgName:Ljava/lang/String;

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mVersionName:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mProcName:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mPkgName:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$ProcInfo;->mVersionName:Ljava/lang/String;

    .line 290
    return-void
.end method

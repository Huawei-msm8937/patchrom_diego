.class public Lcom/android/server/HwCustContinuousRebootChecker;
.super Ljava/lang/Object;
.source "HwCustContinuousRebootChecker.java"

# interfaces
.implements Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;


# static fields
.field private static checker:Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/HwCustContinuousRebootChecker;->checker:Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;
    .locals 3

    .prologue
    .line 15
    const-class v1, Lcom/android/server/HwCustContinuousRebootChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/HwCustContinuousRebootChecker;->checker:Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;

    if-nez v0, :cond_0

    .line 16
    const-class v0, Lcom/android/server/HwCustContinuousRebootChecker;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;

    sput-object v0, Lcom/android/server/HwCustContinuousRebootChecker;->checker:Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;

    .line 18
    :cond_0
    sget-object v0, Lcom/android/server/HwCustContinuousRebootChecker;->checker:Lcom/android/server/HwServiceFactory$IContinuousRebootChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkAbnormalReboot()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

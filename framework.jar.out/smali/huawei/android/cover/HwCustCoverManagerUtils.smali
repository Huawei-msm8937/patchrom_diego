.class public Lhuawei/android/cover/HwCustCoverManagerUtils;
.super Ljava/lang/Object;
.source "HwCustCoverManagerUtils.java"


# static fields
.field private static mHwCustCoverManagerUtils:Lhuawei/android/cover/HwCustCoverManagerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/cover/HwCustCoverManagerUtils;->mHwCustCoverManagerUtils:Lhuawei/android/cover/HwCustCoverManagerUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lhuawei/android/cover/HwCustCoverManagerUtils;
    .locals 3

    .prologue
    .line 32
    const-class v1, Lhuawei/android/cover/HwCustCoverManagerUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhuawei/android/cover/HwCustCoverManagerUtils;->mHwCustCoverManagerUtils:Lhuawei/android/cover/HwCustCoverManagerUtils;

    if-nez v0, :cond_0

    .line 33
    const-class v0, Lhuawei/android/cover/HwCustCoverManagerUtils;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/android/cover/HwCustCoverManagerUtils;

    sput-object v0, Lhuawei/android/cover/HwCustCoverManagerUtils;->mHwCustCoverManagerUtils:Lhuawei/android/cover/HwCustCoverManagerUtils;

    .line 35
    :cond_0
    sget-object v0, Lhuawei/android/cover/HwCustCoverManagerUtils;->mHwCustCoverManagerUtils:Lhuawei/android/cover/HwCustCoverManagerUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isSupportSmartCover()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

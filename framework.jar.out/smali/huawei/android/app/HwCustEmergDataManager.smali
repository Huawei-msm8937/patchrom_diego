.class public Lhuawei/android/app/HwCustEmergDataManager;
.super Ljava/lang/Object;
.source "HwCustEmergDataManager.java"


# static fields
.field private static final EMERGENCY_PKG_NAME:Ljava/lang/String; = ""

.field private static mHwCustEmergDataManager:Lhuawei/android/app/HwCustEmergDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/app/HwCustEmergDataManager;->mHwCustEmergDataManager:Lhuawei/android/app/HwCustEmergDataManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lhuawei/android/app/HwCustEmergDataManager;
    .locals 3

    .prologue
    .line 17
    const-class v1, Lhuawei/android/app/HwCustEmergDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhuawei/android/app/HwCustEmergDataManager;->mHwCustEmergDataManager:Lhuawei/android/app/HwCustEmergDataManager;

    if-nez v0, :cond_0

    .line 18
    const-class v0, Lhuawei/android/app/HwCustEmergDataManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/android/app/HwCustEmergDataManager;

    sput-object v0, Lhuawei/android/app/HwCustEmergDataManager;->mHwCustEmergDataManager:Lhuawei/android/app/HwCustEmergDataManager;

    .line 20
    :cond_0
    sget-object v0, Lhuawei/android/app/HwCustEmergDataManager;->mHwCustEmergDataManager:Lhuawei/android/app/HwCustEmergDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backupEmergencyDataFile()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public getEmergencyPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public isEmergencyMountState()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyState()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

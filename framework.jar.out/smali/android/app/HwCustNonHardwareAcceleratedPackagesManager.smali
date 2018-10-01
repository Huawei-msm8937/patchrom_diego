.class public Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;
.super Ljava/lang/Object;
.source "HwCustNonHardwareAcceleratedPackagesManager.java"


# static fields
.field private static sInstance:Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;->sInstance:Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;
    .locals 3

    .prologue
    .line 34
    const-class v1, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;->sInstance:Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    if-nez v0, :cond_0

    .line 35
    const-class v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    sput-object v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;->sInstance:Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;

    .line 38
    :cond_0
    sget-object v0, Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;->sInstance:Landroid/app/HwCustNonHardwareAcceleratedPackagesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getForceEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public handlePackageAdded(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public handlePackageRemoved(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "removed"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public setForceEnabled(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 80
    return-void
.end method

.method public shouldForceEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "instrumentationClass"    # Landroid/content/ComponentName;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

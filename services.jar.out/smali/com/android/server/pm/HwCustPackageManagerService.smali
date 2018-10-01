.class public Lcom/android/server/pm/HwCustPackageManagerService;
.super Ljava/lang/Object;
.source "HwCustPackageManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustPackageManagerService"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "HwCustPackageManagerService"

    const-string v1, "HwCustPackageManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method


# virtual methods
.method public canAppMoveToPublicSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public customizeUninstallApk(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 64
    return-object p1
.end method

.method public getCustomizeAPKInstallFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "apkInstallFile"    # Ljava/lang/String;

    .prologue
    .line 85
    return-object p1
.end method

.method public getFactoryAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallApkForSKDFactoryMode()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public handleCustInitailizations(Ljava/lang/Object;)V
    .locals 0
    .param p1, "settings"    # Ljava/lang/Object;

    .prologue
    .line 53
    return-void
.end method

.method public hasWhiteListInFacMode()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isFactoryModeUninstall(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isHwCustHiddenInfoPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public isListedApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isMccMncMatch()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivAppInCust(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isSKDFactoryMode()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isSdInstallEnabled()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isSdVol(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isUnAppInstallAllowed(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public needDerivePkgAbi(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public scanCustPrivDir(ILcom/android/server/pm/AbsPackageManagerService;)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "service"    # Lcom/android/server/pm/AbsPackageManagerService;

    .prologue
    .line 40
    return-void
.end method

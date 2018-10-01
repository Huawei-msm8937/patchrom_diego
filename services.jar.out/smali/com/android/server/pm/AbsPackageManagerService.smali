.class public abstract Lcom/android/server/pm/AbsPackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "AbsPackageManagerService.java"


# static fields
.field public static final CUST_PRE_DEL_DIR:Ljava/lang/String; = "/data/cust/"

.field public static final CUST_PRE_DEL_FILE:Ljava/lang/String; = "delapp"

.field public static final DEL_APK_DIR:Ljava/lang/String; = "/data/cust/xml/"

.field public static final DEL_APK_NAME:Ljava/lang/String; = "unstall_apk.xml"

.field public static final FIRST_BOOT_TAG_DIR:Ljava/lang/String; = "/data/data/"

.field public static final FIRST_BOOT_TAG_FILE:Ljava/lang/String; = "firstbooted"

.field public static final NFCTAG_SAVE_PATCH:Ljava/lang/String; = "/system/app/HwNfcTag.apk"

.field public static final NFC_DEVICE_PATH:Ljava/lang/String;

.field public static final NFC_FEATURE:Ljava/lang/String; = "android.hardware.nfc"

.field public static final NFC_HCE_FEATURE:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final NFC_SAVE_PATCH:Ljava/lang/String; = "/system/app/NfcNci.apk"

.field public static final SYSTEM_PRE_DEL_DIR:Ljava/lang/String; = "/system/"

.field public static final SYSTEM_PRE_DEL_FILE:Ljava/lang/String; = "delapp"

.field public static final UNINSTALLED_DELAPP_DIR:Ljava/lang/String; = "/data/data/"

.field public static final UNINSTALLED_DELAPP_FILE:Ljava/lang/String; = "uninstalled_delapp.xml"

.field public static final mAPKInstallList_DIR:Ljava/lang/String; = "/data/cust/xml"

.field public static final mAPKInstallList_FILE:Ljava/lang/String; = "APKInstallList.txt"

.field public static final mDelAPKInstallList_FILE:Ljava/lang/String; = "DelAPKInstallList.txt"


# instance fields
.field protected mDexOptTotalTime:J

.field public mRemovableAppDirObserver:[Landroid/os/FileObserver;

.field mSetupDisabled:Z

.field public mUninstallUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "ro.cfg.nfc.node"

    const-string v1, "/dev/pn544"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AbsPackageManagerService;->NFC_DEVICE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/android/server/pm/AbsPackageManagerService;->mSetupDisabled:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AbsPackageManagerService;->mRemovableAppDirObserver:[Landroid/os/FileObserver;

    .line 64
    iput-boolean v1, p0, Lcom/android/server/pm/AbsPackageManagerService;->mUninstallUpdate:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/AbsPackageManagerService;->mDexOptTotalTime:J

    return-void
.end method


# virtual methods
.method public addFlagsForRemovablePreApk(Landroid/content/pm/PackageParser$Package;I)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "parseFlags"    # I

    .prologue
    .line 105
    return-void
.end method

.method public addFlagsForUpdatedRemovablePreApk(Landroid/content/pm/PackageParser$Package;I)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "hwFlags"    # I

    .prologue
    .line 183
    return-void
.end method

.method public addUpdatedRemoveableAppFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scanFileString"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method protected appendParseFlagsForCloudApk(II)I
    .locals 0
    .param p1, "pFlags"    # I
    .param p2, "defaultFlags"    # I

    .prologue
    .line 150
    return p2
.end method

.method protected appendPkgFlagsForCloudApk(Ljava/lang/String;Ljava/lang/String;IILandroid/content/pm/PackageParser$Package;)I
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "parseFlags"    # I
    .param p4, "defaultFlags"    # I
    .param p5, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 142
    return p4
.end method

.method protected checkHwCertification(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public containDelPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sensePath"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public custScanPrivDir(Ljava/io/File;IIJI)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p3, "scanFlags"    # I
    .param p4, "currentTime"    # J
    .param p6, "hwFlags"    # I

    .prologue
    .line 159
    return-void
.end method

.method protected filterDexoptInBootupApps(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected filterForceNotDexApps(Landroid/content/pm/PackageParser$Package;Z)Z
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "adjustCpuAbi"    # Z

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method protected filterShellApps(Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    .local p2, "sortedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    return-void
.end method

.method public getCust()Lcom/android/server/pm/HwCustPackageManagerService;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGMSPackagePermission(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected getHwCertificationPermission(ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "perm"    # Ljava/lang/String;

    .prologue
    .line 287
    return p1
.end method

.method public getUninstallApk()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected hasOtaUpdate()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method protected hwCertCleanUp()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method protected hwFindPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "priority"    # I
    .param p6, "always"    # Z
    .param p7, "removeMatches"    # Z
    .param p8, "debug"    # Z
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZZZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 229
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isCloudApk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isCustApkRecorded(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public isDelapp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public isDelappInCust(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isDelappInData(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected isHwCustHiddenInfoPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method protected isOdexMode()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isPackagePathWithNoSysFlag(Ljava/io/File;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/io/File;

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public isSetupDisabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/server/pm/AbsPackageManagerService;->mSetupDisabled:Z

    return v0
.end method

.method public isUninstallApk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected makeSetupDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public needAddUpdatedRemoveableAppFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public needInstallRemovablePreApk(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "parseFlags"    # I

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected notDexOptForBootingSpeedup(Z)Z
    .locals 1
    .param p1, "adjustCpuAbi"    # Z

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected parseInstalledPkgInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "pkgUri"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "pkgVerName"    # Ljava/lang/String;
    .param p4, "pkgVerCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "pkgUpdate"    # Z

    .prologue
    .line 167
    return-void
.end method

.method protected parseInstallerInfo(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageUri"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method protected performBootDexOptThermalControl(Z)V
    .locals 0
    .param p1, "resume"    # Z

    .prologue
    .line 246
    return-void
.end method

.method protected readCloudApkConfig()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected recordInstallAppInfo(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "endTime"    # J
    .param p4, "installFlags"    # I

    .prologue
    .line 328
    return-void
.end method

.method public recordUninstalledDelapp(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method protected removePkgFlagsForCloudApk(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "defaultFlags"    # I
    .param p4, "hwFlags"    # I

    .prologue
    .line 146
    return p3
.end method

.method public scanCustDir(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .prologue
    .line 82
    return-void
.end method

.method public scanDataDir(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .prologue
    .line 88
    return-void
.end method

.method public scanHwCustAppDir(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .prologue
    .line 113
    return-void
.end method

.method public scanRemovableAppDir(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .prologue
    .line 91
    return-void
.end method

.method public setGMSPackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 132
    return-void
.end method

.method protected skipSetupEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected sortRecentlyUsedApps(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected updatePackageBlackListInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

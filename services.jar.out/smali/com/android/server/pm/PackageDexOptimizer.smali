.class final Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private mDeferredDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mDexOptTotalTime:J

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field mPatchoatNeededApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPatchoatNeededApps:Ljava/util/ArrayList;

    .line 112
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexOptTotalTime:J

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 68
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 70
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*dexopt*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    return-void
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v2

    .line 287
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 290
    .local v1, "oatDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static dexEntryExists(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "apkFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .local v1, "apkFile":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v4, "classes.dex"

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 343
    :cond_0
    if-eqz v1, :cond_1

    .line 345
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 349
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 352
    .end local v1    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "apkFile":Ljava/util/zip/ZipFile;
    :goto_1
    return v3

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading apk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v0, :cond_2

    .line 345
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 349
    :cond_2
    :goto_3
    const/4 v0, 0x0

    .line 351
    goto :goto_1

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v0, :cond_3

    .line 345
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 349
    :cond_3
    :goto_5
    const/4 v0, 0x0

    throw v3

    .line 346
    .end local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "apkFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_5

    .line 343
    .end local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "apkFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "apkFile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 339
    .end local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "apkFile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "apkFile":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    const-string v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;Z)I

    move-result v0

    return v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;Z)I
    .locals 31
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p6, "adjustCpuAbi"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 122
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    move-object/from16 v4, p2

    .line 125
    .local v4, "instructionSets":[Ljava/lang/String;
    :goto_0
    if-eqz p5, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 128
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    .line 130
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 131
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    .line 136
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 137
    const/4 v2, 0x0

    .line 264
    :goto_1
    return v2

    .line 122
    .end local v4    # "instructionSets":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 140
    .restart local v4    # "instructionSets":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_5

    const/4 v12, 0x1

    .line 141
    .local v12, "vmSafeMode":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v13, 0x1

    .line 143
    .local v13, "debuggable":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v28

    .line 144
    .local v28, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .line 146
    .local v29, "performedDexOpt":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->filterForceNotDexApps(Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v25

    .line 147
    .local v25, "notDexApp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->filterDexoptInBootupApps(Landroid/content/pm/PackageParser$Package;)Z

    move-result v17

    .line 153
    .local v17, "dexoptInBootupApp":Z
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v15, v16

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    move/from16 v22, v21

    .end local v21    # "i$":I
    .local v22, "i$":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    aget-object v10, v15, v22

    .line 155
    .local v10, "dexCodeInstructionSet":Ljava/lang/String;
    if-nez p3, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    .end local v22    # "i$":I
    :cond_4
    :goto_5
    add-int/lit8 v21, v22, 0x1

    .restart local v21    # "i$":I
    move/from16 v22, v21

    .end local v21    # "i$":I
    .restart local v22    # "i$":I
    goto :goto_4

    .line 140
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v12    # "vmSafeMode":Z
    .end local v13    # "debuggable":Z
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v17    # "dexoptInBootupApp":Z
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v25    # "notDexApp":Z
    .end local v28    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "performedDexOpt":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 141
    .restart local v12    # "vmSafeMode":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 159
    .restart local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v13    # "debuggable":Z
    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v16    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v17    # "dexoptInBootupApp":Z
    .restart local v22    # "i$":I
    .restart local v24    # "len$":I
    .restart local v25    # "notDexApp":Z
    .restart local v28    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "performedDexOpt":Z
    :cond_7
    const/16 v27, 0x0

    .line 160
    .local v27, "optimizedByHw":Z
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v22    # "i$":I
    .local v21, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    .local v6, "path":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 163
    const/4 v11, 0x1

    .line 173
    .local v11, "dexoptNeeded":I
    :goto_7
    const/16 v2, 0xcc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performDexOptLI : for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", dexoptNeeded "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 174
    if-nez v17, :cond_c

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->notDexOptForBootingSpeedup(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    const/16 v26, 0x1

    .line 177
    .local v26, "notDexOptForBootingSpeedup":Z
    :goto_8
    if-nez p3, :cond_d

    if-eqz p4, :cond_d

    if-eqz v11, :cond_d

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 182
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V

    .line 183
    const/4 v2, 0x2

    if-ne v11, v2, :cond_a

    .line 184
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defer a needed dexopt on: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPatchoatNeededApps:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 166
    .end local v11    # "dexoptNeeded":I
    .end local v26    # "notDexOptForBootingSpeedup":Z
    :cond_b
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v6, v2, v10, v0}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .restart local v11    # "dexoptNeeded":I
    goto/16 :goto_7

    .line 168
    .end local v11    # "dexoptNeeded":I
    :catch_0
    move-exception v23

    .line 169
    .local v23, "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 174
    .end local v23    # "ioe":Ljava/io/IOException;
    .restart local v11    # "dexoptNeeded":I
    :cond_c
    const/16 v26, 0x0

    goto :goto_8

    .line 187
    .restart local v26    # "notDexOptForBootingSpeedup":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 191
    :cond_d
    if-nez p4, :cond_e

    if-eqz p6, :cond_e

    invoke-static {v6}, Lcom/android/server/pm/PackageDexOptimizer;->dexEntryExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 192
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performDexOptLI : for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", adjustedAbi no action"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 196
    :cond_e
    if-eqz v11, :cond_8

    .line 198
    const/4 v14, 0x0

    .line 199
    .local v14, "oatDir":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v11, v2, :cond_10

    .line 201
    invoke-static {v6}, Lcom/android/server/pm/PackageDexOptimizer;->dexEntryExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 202
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 206
    :cond_f
    const-string v20, "dex2oat"

    .line 208
    .local v20, "dexoptType":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    .line 223
    :goto_9
    if-eqz v26, :cond_13

    const-string v2, "dex2oat"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 225
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notDexOpt for Running dexopt on: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 209
    :catch_1
    move-exception v23

    .line 210
    .restart local v23    # "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create oatDir for package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 214
    .end local v20    # "dexoptType":Ljava/lang/String;
    .end local v23    # "ioe":Ljava/io/IOException;
    :cond_10
    const/4 v2, 0x2

    if-ne v11, v2, :cond_11

    .line 215
    const-string v20, "patchoat"

    .restart local v20    # "dexoptType":Ljava/lang/String;
    goto :goto_9

    .line 216
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x3

    if-ne v11, v2, :cond_12

    .line 217
    const-string v20, "self patchoat"

    .restart local v20    # "dexoptType":Ljava/lang/String;
    goto :goto_9

    .line 219
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dexopt needed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .restart local v20    # "dexoptType":Ljava/lang/String;
    :cond_13
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") on: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isa="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " vmSafeMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " debuggable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " oatDir = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    .line 234
    .local v7, "sharedGid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 235
    .local v18, "dexoptStartTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v8, 0x1

    :goto_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    move-result v30

    .line 238
    .local v30, "ret":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mDexOptTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    add-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mDexOptTotalTime:J

    .line 242
    if-nez v30, :cond_8

    .line 243
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 235
    .end local v30    # "ret":I
    :cond_14
    const/4 v8, 0x0

    goto :goto_a

    .line 255
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sharedGid":I
    .end local v11    # "dexoptNeeded":I
    .end local v14    # "oatDir":Ljava/lang/String;
    .end local v18    # "dexoptStartTime":J
    .end local v20    # "dexoptType":Ljava/lang/String;
    .end local v26    # "notDexOptForBootingSpeedup":Z
    :cond_15
    if-nez v27, :cond_4

    .line 256
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 264
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v27    # "optimizedByHw":Z
    .restart local v22    # "i$":I
    :cond_16
    if-eqz v29, :cond_17

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V
    .locals 8
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 304
    .local v7, "libName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibrary(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 306
    .local v1, "libPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-virtual {p5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I

    goto :goto_0

    .line 310
    .end local v1    # "libPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "libName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public clearDeferredDexOptPackages()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 318
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 319
    return-object v0
.end method

.method public getDexOptTotalTime()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexOptTotalTime:J

    return-wide v0
.end method

.method public getPatchoatNeededApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPatchoatNeededApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZ)I
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z

    .prologue
    .line 82
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZZ)I

    move-result v0

    return v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZZ)I
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z
    .param p6, "adjustCpuAbis"    # Z

    .prologue
    .line 88
    if-eqz p5, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 89
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 90
    .local v5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 95
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 96
    .local v7, "useLock":Z
    if-eqz v7, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 101
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 103
    if-eqz v7, :cond_2

    .line 104
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    monitor-exit v8

    return v0

    .line 92
    .end local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "useLock":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 103
    .restart local v7    # "useLock":Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    throw v0

    .line 107
    .end local v7    # "useLock":Z
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 331
    return-void
.end method

.class public Landroid/database/CursorResourceWrapper;
.super Ljava/lang/Object;
.source "CursorResourceWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CursorResourceWrapper"


# instance fields
.field private mCursorResouce:Landroid/rms/HwSysResource;

.field private mPid:I

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorResourceWrapper;->mProcessName:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/database/CursorResourceWrapper;->mPid:I

    .line 40
    return-void
.end method

.method public static isNeedResProtect(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "ret":Z
    if-nez p0, :cond_0

    move v2, v1

    .line 73
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 68
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 73
    .restart local v2    # "ret":I
    goto :goto_0

    .line 68
    .end local v2    # "ret":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CursorResourceWrapper"

    const-string v4, "context is wrong!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 73
    .restart local v2    # "ret":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    move v2, v1

    .restart local v2    # "ret":I
    goto :goto_0
.end method


# virtual methods
.method public acquireLocked(III)Z
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "usage"    # I

    .prologue
    const/4 v2, 0x1

    .line 44
    iget-object v1, p0, Landroid/database/CursorResourceWrapper;->mCursorResouce:Landroid/rms/HwSysResource;

    if-nez v1, :cond_0

    .line 45
    const/16 v1, 0x11

    invoke-static {v1}, Landroid/common/HwFrameworkFactory;->getHwResource(I)Landroid/rms/HwSysResource;

    move-result-object v1

    iput-object v1, p0, Landroid/database/CursorResourceWrapper;->mCursorResouce:Landroid/rms/HwSysResource;

    .line 47
    :cond_0
    iget-object v1, p0, Landroid/database/CursorResourceWrapper;->mCursorResouce:Landroid/rms/HwSysResource;

    if-eqz v1, :cond_3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "token":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/database/CursorResourceWrapper;->mProcessName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/database/CursorResourceWrapper;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Landroid/database/CursorResourceWrapper;->mCursorResouce:Landroid/rms/HwSysResource;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v1, p2, v3, v4, p3}, Landroid/rms/HwSysResource;->acquire(ILjava/lang/String;II)I

    move-result v1

    if-ne v2, v1, :cond_2

    move v1, v2

    .line 59
    .end local v0    # "token":Ljava/lang/StringBuilder;
    :goto_1
    return v1

    .line 50
    .restart local v0    # "token":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Landroid/database/CursorResourceWrapper;->mProcessName:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .end local v0    # "token":Ljava/lang/StringBuilder;
    :cond_3
    move v1, v2

    .line 59
    goto :goto_1
.end method

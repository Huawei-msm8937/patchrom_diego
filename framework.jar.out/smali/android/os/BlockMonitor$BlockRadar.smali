.class Landroid/os/BlockMonitor$BlockRadar;
.super Ljava/lang/Object;
.source "BlockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BlockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockRadar"
.end annotation


# static fields
.field private static final AUTO_UPLOAD_MIN_INTERVAL_TIME:J = 0x2932e00L

.field private static final CATEGORY_PREFIX:Ljava/lang/String; = "app-"

.field private static final LEVEL_B:I = 0x42

.field private static final LOG_MASK:I = 0x1f

.field private static sLastAutoUploadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/BlockMonitor$BlockRadar;->sLastAutoUploadTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upload(IILjava/lang/String;)V
    .locals 10
    .param p0, "bugType"    # I
    .param p1, "sceneDef"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "BlockMonitor"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 350
    .local v6, "currentTime":J
    sget-wide v0, Landroid/os/BlockMonitor$BlockRadar;->sLastAutoUploadTime:J

    sub-long v0, v6, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 351
    const-string v0, "BlockMonitor"

    const-string v1, "Upload too frequently, just discard it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    .line 355
    :cond_0
    sput-wide v6, Landroid/os/BlockMonitor$BlockRadar;->sLastAutoUploadTime:J

    .line 357
    # invokes: Landroid/os/BlockMonitor;->getPackageName()Ljava/lang/String;
    invoke-static {}, Landroid/os/BlockMonitor;->access$000()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v0, "Package:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, "APK version:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Landroid/os/BlockMonitor;->getVersionName()Ljava/lang/String;
    invoke-static {}, Landroid/os/BlockMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, "Bug type:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, "Scene def:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    const/16 v3, 0x1f

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/util/LogException;->msg(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

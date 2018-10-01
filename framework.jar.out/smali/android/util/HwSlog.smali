.class public final Landroid/util/HwSlog;
.super Ljava/lang/Object;
.source "HwSlog.java"


# static fields
.field public static final DEBUG_HIERACHY_CODE:I = 0x3e8

.field public static HWFLOW:Z = false

.field public static HW_DEBUG:Z = false

.field public static HW_DEBUG_STATES:Z = false

.field private static final TAG:Ljava/lang/String; = "CoreServices"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    sput-boolean v0, Landroid/util/HwSlog;->HW_DEBUG:Z

    .line 26
    sget-boolean v0, Landroid/util/HwSlog;->HW_DEBUG:Z

    sput-boolean v0, Landroid/util/HwSlog;->HW_DEBUG_STATES:Z

    .line 27
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_1

    const-string v0, "CoreServices"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/util/HwSlog;->HWFLOW:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwFlogManager;->slogd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static handleLogRequest([Ljava/lang/String;)Z
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/common/HwFlogManager;->handleLogRequest([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwFlogManager;->slogv(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.class public Landroid/common/HwFlogManagerDummy;
.super Ljava/lang/Object;
.source "HwFlogManagerDummy.java"

# interfaces
.implements Landroid/common/HwFlogManager;


# static fields
.field private static mHwFlogManager:Landroid/common/HwFlogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/common/HwFlogManagerDummy;->mHwFlogManager:Landroid/common/HwFlogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getDefault()Landroid/common/HwFlogManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/common/HwFlogManagerDummy;->mHwFlogManager:Landroid/common/HwFlogManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/common/HwFlogManagerDummy;

    invoke-direct {v0}, Landroid/common/HwFlogManagerDummy;-><init>()V

    sput-object v0, Landroid/common/HwFlogManagerDummy;->mHwFlogManager:Landroid/common/HwFlogManager;

    .line 34
    :cond_0
    sget-object v0, Landroid/common/HwFlogManagerDummy;->mHwFlogManager:Landroid/common/HwFlogManager;

    return-object v0
.end method


# virtual methods
.method public bdReport(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public bdReport(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I
    .param p3, "eventMsg"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public bdReport(Landroid/content/Context;ILorg/json/JSONObject;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I
    .param p3, "eventMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public handleLogRequest([Ljava/lang/String;)Z
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public slog(IILjava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public slog(IILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public slogd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public slogv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

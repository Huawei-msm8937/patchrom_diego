.class public final Landroid/util/Flog;
.super Ljava/lang/Object;
.source "Flog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Flog"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static bdReport(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I

    .prologue
    .line 91
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwFlogManager;->bdReport(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static bdReport(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwFlogManager;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bdReport(Landroid/content/Context;ILorg/json/JSONObject;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwFlogManager;->bdReport(Landroid/content/Context;ILorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public static d(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0, p1}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p0, p1}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0, p1}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static v(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, p1}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0, p1}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/common/HwFlogManager;->slog(IILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

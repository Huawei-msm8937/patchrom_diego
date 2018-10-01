.class public Lcom/android/server/wifi/ReportTool;
.super Ljava/lang/Object;
.source "ReportTool.java"


# static fields
.field private static final DBG:Z = false

.field private static final REPORTERINTERFACE_LIB_PATH:Ljava/lang/String; = "/system/framework/com.huawei.report.jar"

.field private static final REPORT_CLS:Ljava/lang/String; = "com.huawei.report.ReporterInterface"

.field private static final REPORT_METHOD_E:Ljava/lang/String; = "e"

.field private static final TAG:Ljava/lang/String; = "ReportTools"

.field private static mClient:Lcom/huawei/lcagent/client/LogCollectManager;

.field private static mContext:Landroid/content/Context;

.field private static sReportMethod:Ljava/lang/reflect/Method;

.field private static sReporterClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sSingleInstance:Lcom/android/server/wifi/ReportTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    .line 21
    sput-object v0, Lcom/android/server/wifi/ReportTool;->sReportMethod:Ljava/lang/reflect/Method;

    .line 22
    sput-object v0, Lcom/android/server/wifi/ReportTool;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    .line 23
    sput-object v0, Lcom/android/server/wifi/ReportTool;->mContext:Landroid/content/Context;

    .line 25
    sput-object v0, Lcom/android/server/wifi/ReportTool;->sSingleInstance:Lcom/android/server/wifi/ReportTool;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ReportTool;->initReporter(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/ReportTool;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/wifi/ReportTool;->sSingleInstance:Lcom/android/server/wifi/ReportTool;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/server/wifi/ReportTool;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/ReportTool;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wifi/ReportTool;->sSingleInstance:Lcom/android/server/wifi/ReportTool;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/server/wifi/ReportTool;->sSingleInstance:Lcom/android/server/wifi/ReportTool;

    return-object v0
.end method

.method private getUserType()I
    .locals 3

    .prologue
    .line 81
    const/4 v1, -0x1

    .line 84
    .local v1, "userType":I
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/ReportTool;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    invoke-virtual {v2}, Lcom/huawei/lcagent/client/LogCollectManager;->getUserType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private initReporter(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 41
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/com.huawei.report.jar"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 42
    .local v1, "loader":Ldalvik/system/PathClassLoader;
    const-string v2, "com.huawei.report.ReporterInterface"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    .line 43
    sget-object v2, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    const-string v3, "e"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/wifi/ReportTool;->sReportMethod:Ljava/lang/reflect/Method;

    .line 44
    new-instance v2, Lcom/huawei/lcagent/client/LogCollectManager;

    invoke-direct {v2, p1}, Lcom/huawei/lcagent/client/LogCollectManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/wifi/ReportTool;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    .line 45
    sput-object p1, Lcom/android/server/wifi/ReportTool;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v1    # "loader":Ldalvik/system/PathClassLoader;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "ReportTools"

    const-string v3, "Can\'t find sReporterClazz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sput-object v7, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ReportTools"

    const-string v3, "Can\'t find sReportMethod"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sput-object v7, Lcom/android/server/wifi/ReportTool;->sReportMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private isBetaUser()Z
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/android/server/wifi/ReportTool;->getUserType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public report(ILjava/lang/String;)Z
    .locals 7
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/ReportTool;->isBetaUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/ReportTool;->sReportMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/server/wifi/ReportTool;->sReportMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/server/wifi/ReportTool;->sReporterClazz:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/wifi/ReportTool;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReportTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    move v1, v2

    .line 67
    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "ReportTools"

    const-string v3, "This is not beta user build"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

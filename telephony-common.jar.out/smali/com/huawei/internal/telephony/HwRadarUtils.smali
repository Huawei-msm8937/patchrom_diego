.class public Lcom/huawei/internal/telephony/HwRadarUtils;
.super Ljava/lang/Object;
.source "HwRadarUtils.java"


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "1.0"

.field private static final CAT_CSP:Ljava/lang/String; = "csp"

.field private static final CAT_MMS:Ljava/lang/String; = "mms"

.field private static final CHR_ACTION:Ljava/lang/String; = "com.huawei.android.chr.action.ACTION_REPORT_CHR"

.field private static final CHR_RECEIVE_PERMISSION:Ljava/lang/String; = "com.huawei.android.permission.GET_CHR_DATA"

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "com.android.mms"

.field public static final DEFAULT_SMS_APPLICATION:Ljava/lang/String; = "com.android.mms"

.field public static final ERROR_BASE_MMS:I = 0x514

.field public static final ERR_SMS_RECEIVE:I = 0x520

.field public static final ERR_SMS_SEND:I = 0x51f

.field public static final ERR_SMS_SEND_BACKGROUND:I = 0x525

.field private static final MODULE_ID:I = 0x1388

.field private static final RADAR_BUG_TYPE_FUNCTION_ERROR:I = 0x64

.field public static final RADAR_LEVEL_A:I = 0x41

.field public static final RADAR_LEVEL_B:I = 0x42

.field public static final RADAR_LEVEL_C:I = 0x43

.field public static final RADAR_LEVEL_D:I = 0x44

.field private static final TAG:Ljava/lang/String; = "HwRadarUtils"

.field private static mLogException:Landroid/util/LogException;

.field private static final sAppInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "APK version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/internal/telephony/HwRadarUtils;->sAppInfo:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    sput-object v0, Lcom/huawei/internal/telephony/HwRadarUtils;->mLogException:Landroid/util/LogException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static isNeedToTriggerAppRadar(I)Z
    .locals 4
    .param p0, "errorType"    # I

    .prologue
    const/4 v0, 0x0

    .line 119
    const-string v1, "HwRadarUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedToTriggerAppRadar for error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sparse-switch p0, :sswitch_data_0

    .line 130
    const-string v1, "HwRadarUtils"

    const-string v2, "Not need to trigger APP Radar"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v0

    .line 123
    :sswitch_0
    const-string v1, "HwRadarUtils"

    const-string v2, "not need to trigger applicaton radar log"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :sswitch_1
    const-string v0, "HwRadarUtils"

    const-string v1, "need to trigger applicaton radar log"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x51f -> :sswitch_0
        0x520 -> :sswitch_1
        0x525 -> :sswitch_1
    .end sparse-switch
.end method

.method public static report(ILjava/lang/String;)V
    .locals 2
    .param p0, "errorType"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/huawei/internal/telephony/HwRadarUtils;->report(Landroid/content/Context;ILjava/lang/String;I)V

    .line 60
    return-void
.end method

.method public static report(ILjava/lang/String;I)V
    .locals 1
    .param p0, "errorType"    # I
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/huawei/internal/telephony/HwRadarUtils;->report(Landroid/content/Context;ILjava/lang/String;I)V

    .line 70
    return-void
.end method

.method public static report(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorType"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/internal/telephony/HwRadarUtils;->report(Landroid/content/Context;ILjava/lang/String;I)V

    .line 80
    return-void
.end method

.method public static report(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorType"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/huawei/internal/telephony/HwRadarUtils;->sAppInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bug type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/huawei/internal/telephony/HwRadarUtils;->transalateErrorToBugType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Scene def: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "header":Ljava/lang/String;
    invoke-static {p1}, Lcom/huawei/internal/telephony/HwRadarUtils;->isNeedToTriggerAppRadar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {v0, p2}, Lcom/huawei/internal/telephony/HwRadarUtils;->reportApplicationRadarLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static reportApplicationRadarLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "level"    # I
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v1, Lcom/huawei/internal/telephony/HwRadarUtils;->mLogException:Landroid/util/LogException;

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    const-string v1, "HwRadarUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radar report in FW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v1, Lcom/huawei/internal/telephony/HwRadarUtils;->mLogException:Landroid/util/LogException;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/util/LogException;->msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HwRadarUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call radar interface has exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string v1, "HwRadarUtils"

    const-string v2, "Radar interface is not support"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reportApplicationRadarLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "mms"

    const/16 v1, 0x41

    invoke-static {v0, v1, p0, p1}, Lcom/huawei/internal/telephony/HwRadarUtils;->reportApplicationRadarLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static reportChr(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorType"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 186
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne v1, p3, :cond_1

    .line 187
    :cond_0
    const-string v1, "HwRadarUtils"

    const-string v2, "para is error, not to trigger reportChr"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "module_id"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "sub"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "com.huawei.android.permission.GET_CHR_DATA"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 196
    const-string v1, "HwRadarUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportChr in FW errorType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final transalateErrorToBugType(I)I
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 111
    const/16 v0, 0x64

    return v0
.end method

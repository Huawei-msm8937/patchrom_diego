.class public Lcom/android/server/wifi/DataUploader;
.super Ljava/lang/Object;
.source "DataUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/DataUploader$UploadThread;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x3

.field public static final NEED_TO_UPLOAD:Ljava/lang/String; = "surfing_upload_date"

.field public static final SURFING_TIME:Ljava/lang/String; = "wifi_surfing_time"

.field private static final TAG:Ljava/lang/String; = "DataUploader"

.field private static mDataUploader:Lcom/android/server/wifi/DataUploader;


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private rTool:Lcom/android/server/wifi/ReportTool;

.field private uploadThread:Lcom/android/server/wifi/DataUploader$UploadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/DataUploader;->mDataUploader:Lcom/android/server/wifi/DataUploader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/android/server/wifi/DataUploader;->rTool:Lcom/android/server/wifi/ReportTool;

    .line 26
    new-instance v0, Lcom/android/server/wifi/DataUploader$UploadThread;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/DataUploader$UploadThread;-><init>(Lcom/android/server/wifi/DataUploader;Lcom/android/server/wifi/DataUploader$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/DataUploader;->uploadThread:Lcom/android/server/wifi/DataUploader$UploadThread;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/DataUploader;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    new-instance v0, Lcom/android/server/wifi/DataUploader$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/DataUploader$1;-><init>(Lcom/android/server/wifi/DataUploader;)V

    iput-object v0, p0, Lcom/android/server/wifi/DataUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/DataUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/DataUploader;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/wifi/DataUploader;->uploadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/DataUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/DataUploader;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/wifi/DataUploader;->executePerDay()V

    return-void
.end method

.method private executePerDay()V
    .locals 8

    .prologue
    .line 110
    const-wide/32 v4, 0x5265c00

    .line 111
    .local v4, "oneDay":J
    const-string v0, "24:00:00"

    invoke-static {v0}, Lcom/android/server/wifi/DataUploader;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 112
    .local v2, "initDelay":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/wifi/DataUploader;->uploadThread:Lcom/android/server/wifi/DataUploader$UploadThread;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 118
    return-void

    .line 112
    :cond_0
    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/wifi/DataUploader;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/wifi/DataUploader;->mDataUploader:Lcom/android/server/wifi/DataUploader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/DataUploader;

    invoke-direct {v0}, Lcom/android/server/wifi/DataUploader;-><init>()V

    sput-object v0, Lcom/android/server/wifi/DataUploader;->mDataUploader:Lcom/android/server/wifi/DataUploader;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/wifi/DataUploader;->mDataUploader:Lcom/android/server/wifi/DataUploader;

    return-object v0
.end method

.method private static getTimeMillis(Ljava/lang/String;)J
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "dayFormat":Ljava/text/DateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 125
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 129
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "dayFormat":Ljava/text/DateFormat;
    :goto_0
    return-wide v4

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 129
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private final uploadData()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x3c

    const-wide/16 v8, -0x1

    .line 91
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surfing_upload_date"

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 92
    .local v0, "date":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getDay()I

    move-result v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 93
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_surfing_time"

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 94
    .local v2, "time":J
    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    .line 97
    const/16 v4, 0x33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{Dur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, v2, v12

    div-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wifi/DataUploader;->e(ILjava/lang/String;)Z

    .line 100
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surfing_upload_date"

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 101
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_surfing_time"

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 102
    const-string v4, "DataUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, v2, v12

    div-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v2    # "time":J
    :cond_0
    return-void
.end method


# virtual methods
.method public e(ILjava/lang/String;)Z
    .locals 3
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "DataUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->rTool:Lcom/android/server/wifi/ReportTool;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->rTool:Lcom/android/server/wifi/ReportTool;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/ReportTool;->report(ILjava/lang/String;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public saveEachTime(JJ)V
    .locals 11
    .param p1, "time1"    # J
    .param p3, "time2"    # J

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    .line 78
    cmp-long v4, p1, v8

    if-eqz v4, :cond_1

    sub-long v4, p3, p1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_surfing_time"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 80
    .local v2, "tempTime":J
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_surfing_time"

    sub-long v6, p3, p1

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 82
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surfing_upload_date"

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    .local v0, "isUploaded":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surfing_upload_date"

    invoke-static {v4, v5, p3, p4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 86
    :cond_0
    const-string v4, "DataUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new Surfing_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, p3, p1

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "isUploaded":J
    .end local v2    # "tempTime":J
    :cond_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wifi/ReportTool;->getInstance(Landroid/content/Context;)Lcom/android/server/wifi/ReportTool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/DataUploader;->rTool:Lcom/android/server/wifi/ReportTool;

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/DataUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.class Lcom/android/server/am/ActivityManagerService$18;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$currProcessName:Ljava/lang/String;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 13443
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$currProcessName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 13446
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 13447
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13449
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    if-eqz v9, :cond_1

    .line 13452
    :try_start_0
    const-string v9, "1"

    const-string v10, "ro.debuggable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 13453
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13462
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 13463
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13466
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "logcat_for_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13467
    .local v8, "setting":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 13468
    .local v5, "lines":I
    if-lez v5, :cond_3

    .line 13469
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13472
    const/4 v3, 0x0

    .line 13474
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/16 v10, 0xd

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/logcat"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-v"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "time"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "-b"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "events"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "-b"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "system"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "-b"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "main"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "-b"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "crash"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "-t"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 13479
    .local v6, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13480
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13481
    :goto_2
    :try_start_4
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13484
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v4, "input":Ljava/io/InputStreamReader;
    const/16 v9, 0x2000

    :try_start_5
    new-array v1, v9, [C

    .line 13485
    .local v1, "buf":[C
    :goto_3
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    .local v7, "num":I
    if-lez v7, :cond_6

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 13486
    .end local v1    # "buf":[C
    .end local v7    # "num":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 13487
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "logcat":Ljava/lang/Process;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_6
    const-string v9, "ActivityManager"

    const-string v10, "Error running logcat"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 13489
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 13494
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/InputStreamReader;
    :cond_3
    :goto_5
    const-string v9, "com.huawei.bootFail"

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$currProcessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 13495
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getBootInfo()Ljava/lang/String;

    move-result-object v0

    .line 13496
    .local v0, "bootFailInfo":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 13497
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13502
    .end local v0    # "bootFailInfo":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 13503
    return-void

    .line 13455
    .end local v5    # "lines":I
    .end local v8    # "setting":Ljava/lang/String;
    :cond_5
    :try_start_8
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    const/high16 v11, 0x40000

    const-string v12, "\n\n[[TRUNCATED]]"

    invoke-static {v10, v11, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 13458
    :catch_1
    move-exception v2

    .line 13459
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 13489
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":[C
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "lines":I
    .restart local v6    # "logcat":Ljava/lang/Process;
    .restart local v7    # "num":I
    .restart local v8    # "setting":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    :catch_2
    move-exception v9

    goto :goto_5

    .end local v1    # "buf":[C
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "logcat":Ljava/lang/Process;
    .end local v7    # "num":I
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_7
    :goto_7
    throw v9

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_7

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 13486
    .end local v6    # "logcat":Ljava/lang/Process;
    :catch_5
    move-exception v2

    goto :goto_4

    .line 13480
    .restart local v6    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v9

    goto/16 :goto_2

    .line 13479
    :catch_7
    move-exception v9

    goto/16 :goto_1
.end method
